/*********************************************************************
 *
 *	DoorSwitch 
 *
 *********************************************************************
 * FileName:        DoorSwitch.c
 * Dependencies:    None
 * Processor:       PIC18
 * Compiler:        Mcrochip XC8 v1.35 or higher
 *					
 * Company:         Netwing AB
 *
 *
 * Copyright (C) 2011 Netwing.  All rights reserved.
 *
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Bengt-Inge Jakobsson	2011-09-29	First version
 *  Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/

#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"

// Extrenal function prototypes
extern void EEPROMReadConfig(struct _CONFIG* config);
extern void SendDoorSwitchPressedEvent(void);
extern void SendDoorSwitchPressedTooLongEvent(void);
extern bool isOpenDoorFlag(void);
extern void setDoorOpen(long time);
extern int NDCGetRelayActiveTime(void);
extern void Beep(uint32_t beepTime);

// Local function prototypes
void ProcessStateDoorSwitchIdle(void);
void ProcessStateDoorSwitchPressed(void);
void ProcessStateDoorSwitchPressedTooLong(void);
bool IsDoorSwitchPressed(void);
void ProcessDoorSwitchIsPressed(void);
void ProcessDoorSwitchIsReleased(void);
void DeactivateRelay(void);

// Local variables
static bool m_doorSwitchInvertPolarityFlag = false;
static bool m_doorSwitchPressedTooLongFunctionalityIsActiveFlag = false;
static uint32_t m_doorSwitchPressedTooLongTimer = 0;
static uint32_t m_doorSwitchPressedTooLongTimerStartValue = 60000 / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;


static enum {
    STATE_DOOR_SWITCH_IDLE = 0,
    STATE_DOOR_SWITCH_PRESSED,
    STATE_DOOR_SWITCH_PRESSED_TOO_LONG,
    STATE_DOOR_SWITCH_RELEASED
} doorSwitchState = STATE_DOOR_SWITCH_IDLE;

void ProcessDoorSwitch() {
    switch (doorSwitchState) {
        case STATE_DOOR_SWITCH_IDLE:
            ProcessStateDoorSwitchIdle();
            break;

        case STATE_DOOR_SWITCH_PRESSED:
            ProcessStateDoorSwitchPressed();
            break;

        case STATE_DOOR_SWITCH_PRESSED_TOO_LONG:
            ProcessStateDoorSwitchPressedTooLong();
            break;
    }
}

void ProcessStateDoorSwitchIdle() {
    if (IsDoorSwitchPressed() == true) {
        ProcessDoorSwitchIsPressed();
    }
    else {
        ProcessDoorSwitchIsReleased();
    }
}

void ProcessDoorSwitchIsPressed() {
    doorSwitchState = STATE_DOOR_SWITCH_PRESSED;
    
    // If the functionality is active we start timer.
    if(m_doorSwitchPressedTooLongFunctionalityIsActiveFlag == true) {
        // Set timer. This means that the timer is now started.
        m_doorSwitchPressedTooLongTimer = m_doorSwitchPressedTooLongTimerStartValue;
    }

    if (isOpenDoorFlag() == false) {
        setDoorOpen(NDCGetRelayActiveTime());

        // Send event
        SendDoorSwitchPressedEvent();
    }
}

bool IsDoorSwitchPressed() {
    // Check door switch polarity.
    // Switch is pressed when switch has the value 0.
    if (m_doorSwitchInvertPolarityFlag == false) {
        if (RH1_DOOR_SWITCH_IO == 0) {
            return true;
        } else {
            return false;
        }
    }// Check door switch polarity.
        // Door switch is pressed when the switch has the value 1.
    else {
        if (RH1_DOOR_SWITCH_IO == 1) {
            return true;
        } else {
            return false;
        }
    }
}

void ProcessDoorSwitchIsReleased() {
    // Turn OFF door switch LED
    RC0_LED_S0_IO = 0;
}

void ProcessStateDoorSwitchPressed() {
    // Turn ON door switch LED
    RC0_LED_S0_IO = 1;

    // Check if switch has been pressed too long.
    if (m_doorSwitchPressedTooLongTimer == 0 && m_doorSwitchPressedTooLongFunctionalityIsActiveFlag == true) {
        doorSwitchState = STATE_DOOR_SWITCH_PRESSED_TOO_LONG;

        SendDoorSwitchPressedTooLongEvent();
    }

    if (IsDoorSwitchPressed() == false) {
        doorSwitchState = STATE_DOOR_SWITCH_IDLE;
    }
}

void ProcessStateDoorSwitchPressedTooLong() {
    Beep(100);

    if (IsDoorSwitchPressed() == false) {
        doorSwitchState = STATE_DOOR_SWITCH_IDLE;
    }
}

void DoorSwitchTimerUpdate() {
    if (m_doorSwitchPressedTooLongTimer > 0) {
        m_doorSwitchPressedTooLongTimer--;
    }
}

void DoorSwitchUpdateConfig(struct _CONFIG *configData) {

    // Check if the door switch polatity is inverted.
    if (configData->doorSwitchPolarity == 1) {
        m_doorSwitchInvertPolarityFlag = true;
    } else {
        m_doorSwitchInvertPolarityFlag = false;
    }

    // If door door swich pressed too long time value is 0, the timer should not be activated.
    if (configData->doorSwitchPressedTooLongTime == 0) {
        // Turning OFF door swich pressed too long functionality.
        m_doorSwitchPressedTooLongFunctionalityIsActiveFlag = false;
    } else {
        // Turning ON door swich pressed too long functionality.
        m_doorSwitchPressedTooLongFunctionalityIsActiveFlag = true;

        // Converting time in seconds to timer start value in ticks.
        m_doorSwitchPressedTooLongTimerStartValue = (configData->doorSwitchPressedTooLongTime * 1000) / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;
        //m_doorSwitchPressedTooLongTimerStartValue = 12000 / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;
    }
}