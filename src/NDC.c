/*********************************************************************
 *
 *	nLockDoorController
 *
 *********************************************************************
 * FileName:        NDC.c
 * Dependencies:    -
 * Processor:       PIC18
 * Compiler:        Mcrochip XC8 v1.35 or higher
 *					
 * Company:         Netwing AB
 *
 *
 * Copyright (C) 2014 Netwing.  All rights reserved.
 *
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Pär Wingfelt			2014-08-20  First version
 * 
 * Modified By jinzhouyun   Date 2016.10.01
 ********************************************************************/
#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"
//#include "TCPIP Stack/Delay.h"

// global variables
extern uint8_t g_serializedMACAddress[6];
extern bool g_wiegandFlag;

// external prototypes
extern void Beep(uint32_t beepTimer);
extern void SendDoorSwitchPressedEvent(void);
extern void SendDoorOpenEvent(void);
extern void SendDoorClosedEvent(void);
extern void SendDoorOpenTooLongEvent(void);
extern uint8_t KeypadPollKey(void);
extern void KeypadSetKey(uint8_t key);
extern uint32_t GetWiegandCode(void);
extern void EEPROMWriteConfig(struct _CONFIG* config);
extern void SetUpdateConfigFlag(bool value);
extern void DoorSwitchUpdateConfig(struct _CONFIG *configData);
extern void DoorIndicatorUpdateConfig(struct _CONFIG *configData);
extern bool DoorIndicatorGetStatus(void);

// local methods
void SendUDPMessage(uint8_t *message, int messageSize, UDP_SOCKET udpSocket);
void SendDoorTimerExpiredEvent(void);
void SendDoorStatus(void);


// local variables
static uint8_t m_messageBuffer[500];

static enum {
    STATE_START = 0,
    STATE_SEND_CONNECTION_REQUEST,
    STATE_WAIT_FOR_CONNECTION_RESPONSE,
    STATE_WAIT_FOR_CONFIG_DATA,
    STATE_CONNECTED
} m_state = STATE_START;

static NODE_INFO m_NBSNodeInfo;

static struct _CONFIG m_config;

static UDP_SOCKET m_udpSocket;

int m_recvBytes;
int m_sentBytes;
int m_bytesAvailable;
int m_bytesRead;

static bool m_pressedKey;

static bool m_openDoorFlag = false;
static bool m_keyPressedFlag = false;
static bool m_flashDiodeState = false;
static bool m_flashDiodeEnable = false;
static bool m_firstConnectionAfterBootFlag = true;

static long m_tmpLong;
static int m_tmpInt;
static int m_waitForCodeTime = 0;

static uint32_t m_openDoorTime = 0;
static uint32_t m_tempDoorTime = 0;

static uint8_t m_userCode[8];
static uint8_t m_codeLength;

static TICK m_timerState = 0;
static TICK m_timerSendHeartbeat = 0;
static TICK m_timerReceiveHeartbeat = 0;
static TICK m_timerKeyPressed = 0;
static TICK m_timerWaitForPinCode = 0;
static TICK m_timerFlashDiod = 0;

static uint32_t m_idleTimer = 0;

void NDCInitData(void) {
    // Assign default values to _CONFIG struct
    m_config.doorRelayActiveTime = 5;
    m_config.doorOpenTooLongTime = 0;
    m_config.doorSwitchPressedTooLongTime = 30;
    m_config.doorIndicatorPolarity = 0;
    m_config.doorSwitchPolarity = 0;

    // Close door
    RF2_LOCK_IO = 1;
    RF3_UNLOCK_IO = 0;

    // turn off keyboard LED
    RD2_LED_IO = 0;
}

int NDCGetRelayActiveTime(void) {
    return m_config.doorRelayActiveTime;
}

// called every 50ms

void NDCTick(void) {
    if (m_openDoorFlag == true)
        m_openDoorTime -= 50;
}

void InitStartState(void) {
    RC7_LED_S3_IO = 0; // led D15

    m_keyPressedFlag = false;
    m_codeLength = 0;
    m_timerWaitForPinCode = 0;

    // Close if door is open
    RF2_LOCK_IO = 1;
    RF3_UNLOCK_IO = 0;

    // turn off keypad LED
    RD2_LED_IO = 0;

    m_openDoorFlag = false;
}

void OpenUDPsocket(void) {
    if (TickGet() - m_timerState > TICK_SECOND) {
        // Set the MAC destination to be a broadcast
        memset(&m_NBSNodeInfo, 0xFF, sizeof (m_NBSNodeInfo));

        //Open Socket at local port 0 ==dynamically assign , boadcast, destination port 29000
        m_udpSocket = UDPOpen(0, &m_NBSNodeInfo, NBS_UDP_PORT);

        if (m_udpSocket == INVALID_UDP_SOCKET) {
            m_timerState = TickGet();
        }

        m_state = STATE_SEND_CONNECTION_REQUEST;
    }
}

void KeyPressedResetIdleTimer(void) {
    if (m_keyPressedFlag == true) {
        if (TickGet() - m_timerKeyPressed > TICK_SECOND * 30) {
            m_codeLength = 0;
            m_keyPressedFlag = false;
            m_timerWaitForPinCode = 0;
            RD2_LED_IO = 0;
        }
    }
}

void NDCResetState(void) {
    UDPClose(m_udpSocket);
    m_state = STATE_START;
    m_timerState = TickGet();

    InitStartState();
}

bool CheckDoorTimer(void) {
    if (m_openDoorFlag == true) {

        // always set door led to green when not flashing
        if (m_flashDiodeEnable == false)
            RD2_LED_IO = 1;

        if (m_openDoorTime <= 0) {
            m_openDoorFlag = false;

            // Close door
            RF2_LOCK_IO = 1;
            RF3_UNLOCK_IO = 0;

            // turn off keypad LED
            RD2_LED_IO = 0;

            return true;
        }
    }

    return false;
}

void CheckFlashingLEDTimer(void) {

    if (m_timerWaitForPinCode == 0 || m_flashDiodeEnable == false)
        return;

    if ((TickGet() - m_timerFlashDiod) > TICK_SECOND / 5) {

        // flash the diod
        if (m_flashDiodeState) {
            m_flashDiodeState = false;
            RD2_LED_IO = 1;
        } else {
            m_flashDiodeState = true;
            RD2_LED_IO = 0;
        }

        m_timerFlashDiod = TickGet();

    }
}

void CheckWaitForCodeTimer(void) {

    if (m_timerWaitForPinCode == 0)
        return;

    // check if time is up for entering pin code
    if (TickGet() - m_timerWaitForPinCode > (TICK_SECOND * m_waitForCodeTime)) {
        m_flashDiodeState = false;
        m_flashDiodeEnable = false;
        m_timerWaitForPinCode = 0;

        RD2_LED_IO = 0;
    }
}

bool CheckIfFirstTimeConnection(void) {
    if (m_firstConnectionAfterBootFlag == true) {
        m_firstConnectionAfterBootFlag = false;
        return true;
    }
    return false;
}

void CheckHeartBeatTimer(void) {
    if (TickGet() - m_timerReceiveHeartbeat > TICK_SECOND * 8) {
        UDPClose(m_udpSocket);
        m_state = STATE_START;
        m_timerState = TickGet();
    }
}

void CheckKeypad(void) {
    long wiegandCode;
    long tmp;
    char buff[8];
    int index;
    int i, stopIndex;
    int messageSize;

    if (m_state != STATE_CONNECTED)
        return;

    if (g_wiegandFlag == true) {
        wiegandCode = GetWiegandCode();


        // RFID tag
        if (wiegandCode > 12) {
            m_codeLength = 0;

            tmp = wiegandCode;

            memset((void*) buff, 0, 8);

            ltoa(wiegandCode, buff, 10);

            //NLK  05 ->  NLHC     // RFID Open request   <tag(2)> <MAC address(6)> <code(8)>

            index = 0;

            m_messageBuffer[index++] = 0;
            m_messageBuffer[index++] = 5;
            m_messageBuffer[index++] = g_serializedMACAddress[0];
            m_messageBuffer[index++] = g_serializedMACAddress[1];
            m_messageBuffer[index++] = g_serializedMACAddress[2];
            m_messageBuffer[index++] = g_serializedMACAddress[3];
            m_messageBuffer[index++] = g_serializedMACAddress[4];
            m_messageBuffer[index++] = g_serializedMACAddress[5];

            m_messageBuffer[index++] = 8; // code length

            for (stopIndex = 7; stopIndex > 0; stopIndex--) {
                if (buff[stopIndex] != 0)
                    break;

                m_messageBuffer[index++] = 0;
            }

            for (i = 0; i <= stopIndex; i++) {
                m_messageBuffer[index++] = buff[i] - 0x30;
            }

            SendUDPMessage(m_messageBuffer, 17, m_udpSocket);

            m_codeLength = 0;

            return;
        }

        // key pressed
        if (wiegandCode <= 9) // Key 0-9 adds to user code array
        {
            m_timerKeyPressed = TickGet();
            m_keyPressedFlag = true;

            if (m_codeLength < 8) {
                m_userCode[m_codeLength] = wiegandCode;
                m_codeLength++;
            }

            return;
        }

        if (wiegandCode == BUTTON_HASH) {
            //send code	from KeypadFSM

            if (m_codeLength != 0) {
                m_messageBuffer[0] = 0;
                m_messageBuffer[1] = 3;
                m_messageBuffer[2] = g_serializedMACAddress[0];
                m_messageBuffer[3] = g_serializedMACAddress[1];
                m_messageBuffer[4] = g_serializedMACAddress[2];
                m_messageBuffer[5] = g_serializedMACAddress[3];
                m_messageBuffer[6] = g_serializedMACAddress[4];
                m_messageBuffer[7] = g_serializedMACAddress[5];
                m_messageBuffer[8] = m_codeLength;

                for (i = 0; i < m_codeLength; i++) {
                    m_messageBuffer [9 + i] = m_userCode[i];
                }

                messageSize = 9 + m_codeLength;

                SendUDPMessage(m_messageBuffer, messageSize, m_udpSocket);

                m_codeLength = 0;
                m_keyPressedFlag = false;
            }
            m_timerWaitForPinCode = 0;

            if (m_openDoorFlag == false)
                RD2_LED_IO = 0;

            return;
        }


        if (wiegandCode == BUTTON_STAR) {
            m_codeLength = 0;
            m_keyPressedFlag = false;
            m_timerWaitForPinCode = 0;

            if (m_openDoorFlag == false)
                RD2_LED_IO = 0;
        }

    }
}

void CheckConnectionResponseWaitTimer(void) {
    if (TickGet() - m_timerState > TICK_SECOND * 4) {
        m_timerState = TickGet();
        m_state = STATE_SEND_CONNECTION_REQUEST;
    }
}

void CheckConfigDataWaitTimer(void) {
    if (TickGet() - m_timerState > TICK_SECOND * 10) {
        m_timerState = TickGet();
        m_state = STATE_START;
    }
}

bool isOpenDoorFlag() {
    return m_openDoorFlag;
}

void SendUDPMessage(uint8_t *message, int messageSize, UDP_SOCKET udpSocket) {

    int i;

    // Trying to send 10 times
    for (i = 0; i < 10; i++) {
        if (UDPIsPutReady(udpSocket) != 0) {
            // send message
            m_sentBytes = UDPPutArray(message, messageSize);
            UDPFlush();

            // process stack
            StackTask();

            break;
        } else {
            // process stack
            StackTask();
        }
        DelayMs(10);
    }

}

void setDoorOpen(long time) {
    m_openDoorTime = time;

    //Open door
    RF2_LOCK_IO = 0;
    RF3_UNLOCK_IO = 1;
    RD2_LED_IO = 1;

    m_openDoorFlag = true;

    Beep(1000);
}

void SendDoorStatus() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x8;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    // check door relay
    if (RF2_LOCK_IO == 0 && RF3_UNLOCK_IO == 1)
        m_messageBuffer[8] = 1; // door is open
    else
        m_messageBuffer[8] = 0;

    // check door magnet
    if (DoorIndicatorGetStatus() == true)
        m_messageBuffer[9] = 1;
    else
        m_messageBuffer[9] = 0;

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 10, m_udpSocket);
}

void SendDoorSwitchPressedEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x10;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendFirstConnectionMadeEvent(void) {
    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x31; //EVENT_FIRST_CONNECTION_MADE
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDoorOpenEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x11;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDoorClosedEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x12;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDoorOpenTooLongEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x13;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDoorSwitchPressedTooLongEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x14;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDoorTimerExpiredEvent() {

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x30;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendGetConfigData(void) {
    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0x20;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendDeviceReadySignal(void) {
    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0xAA;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    SendUDPMessage(m_messageBuffer, 8, m_udpSocket);
}

void SendConnectionRequest(void) {
    if (TickGet() - m_timerState > TICK_SECOND) {
        m_messageBuffer[0] = 0;
        m_messageBuffer[1] = 1;
        m_messageBuffer[2] = g_serializedMACAddress[0];
        m_messageBuffer[3] = g_serializedMACAddress[1];
        m_messageBuffer[4] = g_serializedMACAddress[2];
        m_messageBuffer[5] = g_serializedMACAddress[3];
        m_messageBuffer[6] = g_serializedMACAddress[4];
        m_messageBuffer[7] = g_serializedMACAddress[5];

        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);

        m_timerState = TickGet();

        if (m_sentBytes > 0) {
            // move to next state
            m_state = STATE_WAIT_FOR_CONNECTION_RESPONSE;
        }
    }
}

void SendVersionString(void) {
    uint8_t index, textLength;

    m_messageBuffer[0] = 0;
    m_messageBuffer[1] = 0xc;
    m_messageBuffer[2] = g_serializedMACAddress[0];
    m_messageBuffer[3] = g_serializedMACAddress[1];
    m_messageBuffer[4] = g_serializedMACAddress[2];
    m_messageBuffer[5] = g_serializedMACAddress[3];
    m_messageBuffer[6] = g_serializedMACAddress[4];
    m_messageBuffer[7] = g_serializedMACAddress[5];

    for (index = 0; index < 255; index++) {

        m_messageBuffer[9 + index] = NDC_VERSION_STRING[index];

        if (NDC_VERSION_STRING[index] == '\0')
            break;
    }

    textLength = index;

    m_messageBuffer[8] = textLength;

    if (m_state == STATE_CONNECTED)
        SendUDPMessage(m_messageBuffer, 9 + textLength, m_udpSocket);
}

void SendHeartBeat(void) {
    if (TickGet() - m_timerSendHeartbeat > TICK_SECOND * 2) {

        // this event is for tracking NDC reboots
        if (CheckIfFirstTimeConnection())
            SendFirstConnectionMadeEvent();


        m_messageBuffer[0] = 0;
        m_messageBuffer[1] = 0;
        m_messageBuffer[2] = g_serializedMACAddress[0];
        m_messageBuffer[3] = g_serializedMACAddress[1];
        m_messageBuffer[4] = g_serializedMACAddress[2];
        m_messageBuffer[5] = g_serializedMACAddress[3];
        m_messageBuffer[6] = g_serializedMACAddress[4];
        m_messageBuffer[7] = g_serializedMACAddress[5];

        SendUDPMessage(m_messageBuffer, 8, m_udpSocket);

        m_timerSendHeartbeat = TickGet();
    }
}

void HandleConnectionResponse(void) {

    // read all received data
    m_bytesRead = UDPGetArray(m_messageBuffer, m_bytesAvailable);

    // if connection accepted uppdate UDP socket
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 2) {
        m_timerState = TickGet();

        // get the configuration data
        SendGetConfigData();

        if (m_sentBytes > 0) {
            // move to next state
            m_state = STATE_WAIT_FOR_CONFIG_DATA;
        }

    }
}

bool HandleConfigData(void) {
    uint32_t doorRelayActiveTime = 0;
    int doorOpenTooLongTime = 0;
    int doorSwitchPressedTooLongTime = 0;
    uint8_t doorIndicatorPolarity = 0;
    uint8_t doorSwitchPolarity = 0;

    // read all received data
    m_bytesRead = UDPGetArray(m_messageBuffer, m_bytesAvailable);

    // check if config data
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0x21) {
        // Getting door relay active time [milliseconds](4)
        // Assembling a long from messagebuffer
        m_tmpLong = m_messageBuffer[2];
        doorRelayActiveTime = m_tmpLong << 24;
        m_tmpLong = m_messageBuffer[3];
        doorRelayActiveTime += m_tmpLong << 16;
        m_tmpLong = m_messageBuffer[4];
        doorRelayActiveTime += m_tmpLong << 8;
        m_tmpLong = m_messageBuffer[5];
        doorRelayActiveTime += m_tmpLong;

        // Getting door open too long time[seconds](2)
        // Assembling an integer from messagebuffer
        m_tmpInt = m_messageBuffer[6];
        doorOpenTooLongTime = m_tmpInt << 8;
        m_tmpInt = m_messageBuffer[7];
        doorOpenTooLongTime += m_tmpInt;

        // Getting door switch pressed too long time [seconds](2)
        m_tmpInt = m_messageBuffer[8];
        doorSwitchPressedTooLongTime = m_tmpInt << 8;
        m_tmpInt = m_messageBuffer[9];
        doorSwitchPressedTooLongTime += m_tmpInt;

        // Getting door indicator polarity(1)
        doorIndicatorPolarity = m_messageBuffer[10];

        // Getting door door switch polarity(1)
        doorSwitchPolarity = m_messageBuffer[11];

        // Assign values to _CONFIG struct
        m_config.doorRelayActiveTime = doorRelayActiveTime;
        m_config.doorOpenTooLongTime = doorOpenTooLongTime;
        m_config.doorSwitchPressedTooLongTime = doorSwitchPressedTooLongTime;
        m_config.doorIndicatorPolarity = doorIndicatorPolarity;
        m_config.doorSwitchPolarity = doorSwitchPolarity;

        //	// Write configuration to EPROM
        //	EEPROMWriteConfig(&config);

        // Read and apply configuration from EPROM
        DoorSwitchUpdateConfig(&m_config);
        DoorIndicatorUpdateConfig(&m_config);

        m_timerState = TickGet();
        m_state = STATE_CONNECTED;

        // empty any read tags
        GetWiegandCode();
        m_codeLength = 0;
        m_timerWaitForPinCode = 0;

        m_timerReceiveHeartbeat = TickGet();
        m_timerSendHeartbeat = TickGet();

        return true;
    }

    return true;
}

void HandleReceivedBytes(void) {

    // read all received data
    m_bytesRead = UDPGetArray(m_messageBuffer, m_bytesAvailable);

    // Heartbeat recived
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0) {
        m_timerReceiveHeartbeat = TickGet();

        return;
    }

    //Open command recived
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 4 && m_bytesRead >= 7) {

        if (m_openDoorFlag == true)
            return;

        // Assamble a long from messagebuffer
        m_tmpLong = m_messageBuffer[2];
        m_tempDoorTime = m_tmpLong << 24;
        m_tmpLong = m_messageBuffer[3];
        m_tempDoorTime += m_tmpLong << 16;
        m_tmpLong = m_messageBuffer[4];
        m_tempDoorTime += m_tmpLong << 8;
        m_tmpLong = m_messageBuffer[5];
        m_tempDoorTime += m_tmpLong;

        if (m_tempDoorTime > 0) {
            m_openDoorTime = m_tempDoorTime;
            //Open door
            RF2_LOCK_IO = 0;
            RF3_UNLOCK_IO = 1;

            RD2_LED_IO = 1;

            m_openDoorFlag = true;

            // check if beep should sound
            if (m_messageBuffer[6] == 1)
                Beep(1000);
        }

        // reset heartbeat timer
        m_timerReceiveHeartbeat = TickGet();

        m_timerWaitForPinCode = 0;

        return;
    }

    //Close door command recived
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 9 && m_bytesRead == 2) {
        RF2_LOCK_IO = 1;
        RF3_UNLOCK_IO = 0;
        RD2_LED_IO = 0;

        m_openDoorTime = 0;
        m_openDoorFlag = false;

        SendDoorTimerExpiredEvent();

        return;
    }

    // reset NHS connection and connect again
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0xA && m_bytesRead == 2) {

        // close door
        RF2_LOCK_IO = 1;
        RF3_UNLOCK_IO = 0;

        // set led red
        RD2_LED_IO = 0;

        m_openDoorTime = 0;
        m_openDoorFlag = false;

        // close socket and reset state
        UDPClose(m_udpSocket);
        m_state = STATE_START;
        m_timerState = TickGet();

        return;
    }

    //Next code required, user needs to enter pin code
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 6 && m_bytesRead == 5) {
        m_tmpInt = m_messageBuffer[2];
        m_waitForCodeTime = m_tmpInt << 8;
        m_tmpInt = m_messageBuffer[3];
        m_waitForCodeTime += m_tmpInt;

        m_timerWaitForPinCode = TickGet();
        m_timerFlashDiod = 0;
        m_flashDiodeEnable = false;

        // check if led flashing should be enabled
        if (m_messageBuffer[4] == 1) {
            m_timerFlashDiod = m_timerWaitForPinCode;
            m_flashDiodeEnable = true;
        }

        return;
    }

    // Check if we received a Configuration Update
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0x21) {
        HandleConfigData();
        m_timerWaitForPinCode = 0;
        RD2_LED_IO = 0;

        return;
    }


    // check if get door status command
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0x7) {
        SendDoorStatus();

        return;
    }

    // check if get version
    if (m_messageBuffer[0] == 0 && m_messageBuffer[1] == 0xb) {
        SendVersionString();

        return;
    }
}

/*****************************************************************************
  Function:
        void NDCFSM(void)
 ***************************************************************************/
void NDCFSM(void) {

    // check if the led should flash.
    CheckFlashingLEDTimer();

    // check if waitForCodeTimer has expired.
    CheckWaitForCodeTimer();


    // check if door is open and should be closed
    if (CheckDoorTimer()) {
        SendDoorTimerExpiredEvent();
    }

    // NDC state machine
    switch (m_state) {
        case STATE_START:

            // init all parameters and IO
            InitStartState();

            // create a new socket
            OpenUDPsocket();

            break;

        case STATE_SEND_CONNECTION_REQUEST:

            // Check if the socket is ready for sending
            if (!UDPIsPutReady(m_udpSocket))
                break;

            // send connection request broadcast
            SendConnectionRequest();

            break;

        case STATE_WAIT_FOR_CONNECTION_RESPONSE:

            // if no connection response is recieved in 4 seconds, send new request
            CheckConnectionResponseWaitTimer();

            //check if socket has received any bytes
            m_bytesAvailable = UDPIsGetReady(m_udpSocket);

            if (m_bytesAvailable != 0) {
                // handle received UDP message
                HandleConnectionResponse();
            }

            break;

        case STATE_WAIT_FOR_CONFIG_DATA:
            // if no connection response is recieved in 20 seconds, state will be set to start
            CheckConfigDataWaitTimer();

            //check if socket has received any bytes
            m_bytesAvailable = UDPIsGetReady(m_udpSocket);

            if (m_bytesAvailable != 0) {

                // handle received UDP message
                if (HandleConfigData() == true)
                    SendDeviceReadySignal();

            }
            break;

        case STATE_CONNECTED:
        {
            //check if socket has received any bytes
            m_bytesAvailable = UDPIsGetReady(m_udpSocket);

            // key pressed idle timer. when trigged, key buffer is cleared.
            KeyPressedResetIdleTimer();

            if (m_bytesAvailable != 0) {
                // handle received UDP message
                HandleReceivedBytes();
            }

            //Send Heartbeat every other second
            SendHeartBeat();

            // Heartbeat lost for 8 sek ?.
            CheckHeartBeatTimer();

            // check keypad
            CheckKeypad();

        }

    } // switch

}
