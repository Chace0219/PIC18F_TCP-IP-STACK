/*********************************************************************
 *
 *	EEPROM
 *
 *********************************************************************
 * FileName:        EEPROM.c
 * Dependencies:    None
 * Processor:       PIC18
 * Compiler:        Mcrochip XC8 v1.35 or higher
 *					
 * Company:         Netwing AB
 *
 *
 * Copyright (C) 2011 Netwing.  All rights reserved.
 *
 * Description:
 * Acts as an interface to the EEPROM chip on NDS
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Bengt-Inge Jakobsson			2011-09-22	First version
 * 
 *  Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/
#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"

// Local Functions
void EEPROMWriteConfig(struct _CONFIG* config);
void EEPROMReadConfig(struct _CONFIG* config);
void EEPROMSetAutoLogoutTime(int time);
int EEPROMGetAutoLogoutTime(void);

void EEPROMWriteConfig(struct _CONFIG* config)
{
	
	struct _CONFIG* configTemp = config;
	
	XEEBeginWrite(EEPROM_ADDRESS_CONFIG);
	XEEWriteArray((uint8_t*)config, sizeof(struct _CONFIG));
	XEEEndWrite();
}

void EEPROMReadConfig(struct _CONFIG* config)
{	
	struct _CONFIG* configTemp;
	
	XEEBeginRead( EEPROM_ADDRESS_CONFIG );
	XEEReadArray( EEPROM_ADDRESS_CONFIG, (uint8_t*)config, sizeof(struct _CONFIG));
	XEEEndRead();
	
	configTemp = config;
}		