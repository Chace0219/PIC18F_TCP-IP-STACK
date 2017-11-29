/*********************************************************************
 *
 *	Keypad
 *
 *********************************************************************
 * FileName:        Keypad.c
 * Dependencies:    None
 * Processor:       PIC18
 * Compiler:        Mcrochip XC8 v1.35 or higher
 *					
 * Company:         Netwing AB
 *
 *
 * Copyright (C) 2009 Netwing.  All rights reserved.
 *
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Pär Wingfelt			2009-06-04  First version
 * Pär Wingfelt			2009-11-28  Restructure
 *  Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/
#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"

extern bool BeepIsBeeping(void);


//Prototypes
uint8_t readKeyboard(void);

static enum {
    FIRST_COLUMN1 = 0,
    FIRST_COLUMN2,
    SECOND_COLUMN1,
    SECOND_COLUMN2,
    THIRD_COLUMN1,
    THIRD_COLUMN2
} m_keyboardState = FIRST_COLUMN1;

static uint32_t m_localTimer = 0;

static enum {
    READ_KEY = 0,
    KEY_READ
} m_keyState = READ_KEY;

static uint8_t m_key = 30;
static uint8_t m_pressedKey = 30;


// local members
static uint8_t m_pressedButtonResult = 30;

/*****************************************************************************
  Function:
        void KeypadFSM(void)

  Summary:
        Handles all buttons

  Description:
        Handles all buttons in NBS.

  Precondition:
        None.

  Parameters:
        None

  Returns:
        None.
  	
  Remarks:
	
 ***************************************************************************/

void KeypadFSM(void) {
    switch (m_keyState) {
        case READ_KEY:
            m_key = readKeyboard();

            // check if state machine has executed
            if (m_key == 40)
                break;

            if (m_key == 30) //No Key pressed
            {
                break;
            } else //Key pressed
            {
                m_pressedKey = m_key;
                m_pressedButtonResult = 30;
                m_keyState = KEY_READ;
            }

            break;

        case KEY_READ:
            m_key = readKeyboard();

            // check if state machine has executed
            if (m_key == 40)
                break;

            if (m_key == 30) //Key released
            {
                m_keyState = READ_KEY;
                m_pressedButtonResult = m_pressedKey;
                break;
            }

            break;
    }

}

uint8_t readKeyboard(void) {
    if (BeepIsBeeping() == true)
        return 40;

    switch (m_keyboardState) {
        case FIRST_COLUMN1:
        {
            // select first column
            RH3_KBD_IO = 0;
            RH4_KBD_IO = 1;
            RH5_KBD_IO = 1;
            m_keyboardState = FIRST_COLUMN2;
            break;
        }
        case FIRST_COLUMN2:
        {
            if (B0_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_1;
            }
            if (B1_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_4;
            }
            if (B2_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_7;
            }
            if (B3_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_STAR;
            }
            m_keyboardState = SECOND_COLUMN1;
            break;
        }
        case SECOND_COLUMN1:
        {
            // select second column
            RH3_KBD_IO = 1;
            RH4_KBD_IO = 0;
            RH5_KBD_IO = 1;
            m_keyboardState = SECOND_COLUMN2;
            break;
        }
        case SECOND_COLUMN2:
        {
            if (B0_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_2;
            }
            if (B1_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_5;
            }
            if (B2_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_8;
            }
            if (B3_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_0;
            }
            m_keyboardState = THIRD_COLUMN1;
            break;
        }
        case THIRD_COLUMN1:
        {
            // third second column
            RH3_KBD_IO = 1;
            RH4_KBD_IO = 1;
            RH5_KBD_IO = 0;
            m_keyboardState = THIRD_COLUMN2;
            break;
        }
        case THIRD_COLUMN2:
        {
            if (B0_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_3;
            }
            if (B1_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_6;
            }
            if (B2_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_9;
            }
            if (B3_KBD_IO == 0) {
                m_keyboardState = FIRST_COLUMN1;
                return BUTTON_HASH;
            }
            m_keyboardState = FIRST_COLUMN1;

            return 30; // no key pressed
        }
    }

    return 40; // not executed
}


//---------------------------------------------------------------
// Public methods
//---------------------------------------------------------------

uint8_t KeypadPollKey(void) {
    return m_pressedButtonResult;
}

void KeypadSetKey(uint8_t key) {
    m_pressedButtonResult = key;
}
