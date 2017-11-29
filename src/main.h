/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    main.h

  Summary:
    

  Description:
    Headers for TCPIP Demo App

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

 * Modified By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef _MAINDEMO_H_
#define _MAINDEMO_H_

#define NDC_VERSION_STRING			"1.04"

//#define BEWATOR
#define RFID_READER

#define NDS_MAC					"00-01-2B-00-00-11"
#define NBS_UDP_PORT			18000

#define BUTTON_0			0
#define BUTTON_1			1
#define BUTTON_2			2
#define BUTTON_3			3
#define BUTTON_4			4
#define BUTTON_5			5
#define BUTTON_6			6
#define BUTTON_7			7
#define BUTTON_8			8
#define BUTTON_9			9
#define BUTTON_STAR			10
#define BUTTON_HASH			11

#define NUMBER_OF_MILLISECONDS_BETWEEN_TIMER_DECREMENTS 			50

// Configuration data
typedef struct _CONFIG
{
	uint16_t	doorRelayActiveTime;
	int 		doorOpenTooLongTime;
	int 		doorSwitchPressedTooLongTime;
	uint8_t		doorIndicatorPolarity;
	uint8_t		doorSwitchPolarity;
}CONFIG;

// ---------- EEPROM SPACE START -----
#define EEPROM_START						0
#define EEPROM_ADDRESS_CONFIG				(EEPROM_START + 0)											// 10 Byte * 100 st

#endif // _MAINDEMO_H
