/*********************************************************************
 *
 *	Beep 
 *
 *********************************************************************
 * FileName:        Beep.c
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
 * Pär Wingfelt			2009-11-01	First version
 *  Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/
#include <xc.h>
#include "tcpip/tcpip.h"
#include "main.h"

static bool 	m_beepFlag = false;
static uint32_t	m_beepValue; // ms
static uint32_t m_beepTimer;


void Beep(uint32_t value)
{
	m_beepValue = value;
	m_beepFlag = true;
	m_beepTimer = TickGet();

	RD1_BUZZ_IO = 1;
}	


bool BeepIsBeeping(void)
{
	return m_beepFlag;
}	


void BeepTimerUpdate(void)
{
	if( m_beepFlag == true)
	{
		if( TickGet() - m_beepTimer > (TICK_SECOND/1000)*m_beepValue )
		{
			RD1_BUZZ_IO = 0;
			m_beepFlag = false;
		}
	}
}	