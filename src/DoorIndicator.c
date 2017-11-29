/*********************************************************************
 *
 *	DoorIndicator 
 *
 *********************************************************************
 * FileName:        DoorIndicator.c
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

// External function prototypes
extern void EEPROMReadConfig(struct _CONFIG* config);
extern void SendDoorOpenEvent(void);
extern void SendDoorOpenTooLongEvent(void);
extern void SendDoorClosedEvent(void);
extern void Beep(uint32_t beepTime);

// Local function prototypes
void ProcessStateDoorIndicatorClosed(void);
void ProcessStateDoorIndicatorOpen(void);
void ProcessStateDoorIndicatorOpenTooLong(void);
bool isDoorIndicatorOpen(void);
void ProcessDoorIndicatorIsOpen(void);
void ProcessDoorIndicatorIsClosed(void);

// Local variables
static bool m_doorIndicatorInvertPolarityFlag = false;
static bool m_doorIndicatorOpenTooLongFunctionalityActiveFlag = false;
static uint32_t m_doorIndicatorOpenTooLongTimer = 0;
static uint32_t m_doorIndicatorOpenTooLongTimerStartValue = 20000 / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;
static uint32_t m_doorIndicatorProcessDelayTimer = 0;

static enum {
    STATE_DOOR_INDICATOR_CLOSED = 0,
    STATE_DOOR_INDICATOR_OPEN,
    STATE_DOOR_INDICATOR_OPEN_TOO_LONG
} doorIndicatorState = STATE_DOOR_INDICATOR_CLOSED;

static bool isDoorIndicatorOpenFlagCachedValue = false;

void ProcessDoorIndicator() {
    switch (doorIndicatorState) {
        case STATE_DOOR_INDICATOR_CLOSED:
            ProcessStateDoorIndicatorClosed();
            break;

        case STATE_DOOR_INDICATOR_OPEN:
            ProcessStateDoorIndicatorOpen();
            break;

        case STATE_DOOR_INDICATOR_OPEN_TOO_LONG:
            ProcessStateDoorIndicatorOpenTooLong();
            break;
    }
}

void ProcessStateDoorIndicatorClosed() {
    if (isDoorIndicatorOpen() == true) {
        ProcessDoorIndicatorIsOpen();

    } else {
        ProcessDoorIndicatorIsClosed();
    }
}

bool isDoorIndicatorOpen() {
    // Processing delay of 500 milliseconds
    // Makes sure that the indicator does not change state too quickly.
    if (m_doorIndicatorProcessDelayTimer == 0) {
        // Reset the timer.
        m_doorIndicatorProcessDelayTimer = 500 / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;

        // Check door indicator polarity.
        // The door is open when indicator has the value 1
        if (m_doorIndicatorInvertPolarityFlag == false) {
            if (RH0_DOOR_IND_IO == 1) {
                isDoorIndicatorOpenFlagCachedValue = true;
            }
            else {
                isDoorIndicatorOpenFlagCachedValue = false;
            }
            // Check door indicator polarity.
            // The door is open when indicator has the value 0
        } else {
            if (RH0_DOOR_IND_IO == 0) {
                isDoorIndicatorOpenFlagCachedValue = true;
            }
            else {
                isDoorIndicatorOpenFlagCachedValue = false;
            }
        }

    }

    return isDoorIndicatorOpenFlagCachedValue;
}

void ProcessDoorIndicatorIsOpen() {
    doorIndicatorState = STATE_DOOR_INDICATOR_OPEN;

    // If the functionality is active we start timer.
    if (m_doorIndicatorOpenTooLongFunctionalityActiveFlag == true) {
        // Set timer. This means that the timer is now started.
        m_doorIndicatorOpenTooLongTimer = m_doorIndicatorOpenTooLongTimerStartValue;
    }

    SendDoorOpenEvent();
}

void ProcessDoorIndicatorIsClosed() {
    // Turn off LED
    RC1_LED_S1_IO = 0;
}

void ProcessStateDoorIndicatorOpen() {
    // Turn on LED
    RC1_LED_S1_IO = 1;

    // Check if door has been open too long.
    if (m_doorIndicatorOpenTooLongTimer == 0 && m_doorIndicatorOpenTooLongFunctionalityActiveFlag == true) {
        doorIndicatorState = STATE_DOOR_INDICATOR_OPEN_TOO_LONG;

        SendDoorOpenTooLongEvent();
    }

    if (isDoorIndicatorOpen() == false) {
        doorIndicatorState = STATE_DOOR_INDICATOR_CLOSED;

        SendDoorClosedEvent();
    }
}

void ProcessStateDoorIndicatorOpenTooLong() {
    Beep(100);

    if (isDoorIndicatorOpen() == false) {
        doorIndicatorState = STATE_DOOR_INDICATOR_CLOSED;

        SendDoorClosedEvent();
    }
}

void DoorIndicatorUpdateConfig(struct _CONFIG *configData) 
{

    // If Door open too long value is 0, the timer should not be activated.
    if (configData->doorOpenTooLongTime == 0) {
        // Turning OFF door open too long functionality.
        m_doorIndicatorOpenTooLongFunctionalityActiveFlag = false;
    } else {
        // Turning ON door open too long functionality.
        m_doorIndicatorOpenTooLongFunctionalityActiveFlag = true;

        // Converting time in seconds to timer start value in ticks.
        m_doorIndicatorOpenTooLongTimerStartValue = (configData->doorOpenTooLongTime * 1000) / NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS;
    }

    // Check if the door indicator polatity is inverted.
    if (configData->doorIndicatorPolarity == 1) {
        m_doorIndicatorInvertPolarityFlag = true;
    } else {
        m_doorIndicatorInvertPolarityFlag = false;
    }
}

void DoorIndicatorTimerUpdate() {
    if (m_doorIndicatorOpenTooLongTimer > 0) {
        m_doorIndicatorOpenTooLongTimer--;
    }

    if (m_doorIndicatorProcessDelayTimer > 0) {
        m_doorIndicatorProcessDelayTimer--;
    }
}

bool DoorIndicatorGetStatus() {
    if(doorIndicatorState == STATE_DOOR_INDICATOR_CLOSED)
        return false;

    return true;
}