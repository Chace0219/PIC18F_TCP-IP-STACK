/*********************************************************************
 *
 *	Misc
 *
 *********************************************************************
 * FileName:        Misc.c
 * Dependencies:    None
 * Processor:       PIC18
 * Compiler:        Mcrochip XC8 v1.35 or higher
 *					
 * Company:         Netwing AB
 *
 *
 * Copyright (C) 2009 Netwing.  All rights reserved.
 *
 * Description:
 * Collects all functions that doesn't fit else where
 *
 * Author               Date    	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Pär Wingfelt			2009-11-11	First version
 *  Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/
#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"

bool MiscIsMACEqual(uint8_t* mac1, uint8_t* mac2 )
 {
	 int i;
	 
     for(i=0; i<6 ;i++ )
     {
         if( mac1[i] != mac2[i] )
             return false;
     }

     return true;
 }
 
 
bool MiscIsCodeEqual( 	uint8_t codeLen1,
						uint8_t* code1,
						uint8_t codeLen2,
						uint8_t* code2 ) 
{
	int i;
	
	if( codeLen1 != codeLen2 )
		return false;
		
	for(i=0; i<codeLen1; i++)
	{
		if( code1[i] != code2[i] )
			return false;
	}
	
	return true;
} 


// Converts 2 HEX chars to a byte. ex "FE" -> 0xfe
uint8_t MiscHexStringToByte(uint8_t* value)
{
	uint8_t result;
	uint8_t tmpByte;
	
	tmpByte = value[0];
	
	if( tmpByte >= 'A' && tmpByte <= 'F' )
		result = (((tmpByte-'A')+10) << 4);
	else
		result = ((tmpByte-0x30) << 4);

	tmpByte = value[1];
	
	if( tmpByte >= 'A' && tmpByte <= 'F' )
		result += ((tmpByte-'A')+10);
	else
		result += (tmpByte-0x30);
		
	return result;	
}


