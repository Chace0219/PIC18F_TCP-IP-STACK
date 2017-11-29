/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    system_config.h

  Summary:
    System level definitions for the specific Microchip Development Board used.

  Description:
      System Specific Definitions

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __SYSTEM_CONFIG_H_
#define __SYSTEM_CONFIG_H_

#include <stdio.h>
#include <string.h>

#include "system.h"

#include "tcpip_config.h"

//#define MRF24WG

// Define a macro describing this hardware set up (used in other files)
//#define PIC18_EXPLORER

#define YOUR_BOARD
// Hardware I/O pin mappings
//------------------------------------------------------------------------------

/*
// LEDs
#define LED0_TRIS           (TRISDbits.TRISD0)  // Ref D1
#define LED0_IO             (LATDbits.LATD0)
#define LED1_TRIS           (TRISDbits.TRISD1)  // Ref D2
#define LED1_IO             (LATDbits.LATD1)
#define LED2_TRIS           (TRISDbits.TRISD2)  // Ref D3
#define LED2_IO             (LATDbits.LATD2)
#define LED3_TRIS           (TRISDbits.TRISD3)  // Ref D4
#define LED3_IO             (LATDbits.LATD3)
#define LED4_TRIS           (TRISDbits.TRISD4)  // Ref D5
#define LED4_IO             (LATDbits.LATD4)
#define LED5_TRIS           (TRISDbits.TRISD5)  // Ref D6
#define LED5_IO             (LATDbits.LATD5)
#define LED6_TRIS           (TRISDbits.TRISD6)  // Ref D7
#define LED6_IO             (LATDbits.LATD6)
#define LED7_TRIS           (TRISDbits.TRISD7)  // Ref D8
#define LED7_IO             (LATDbits.LATD7)
#define LED_GET()           (LATD)
#define LED_PUT(a)          (LATD = (a))

// Momentary push buttons
#define BUTTON0_TRIS        (TRISAbits.TRISA5)
#define BUTTON0_IO          (PORTAbits.RA5)
#define BUTTON1_TRIS        (TRISBbits.TRISB0)
#define BUTTON1_IO          (PORTBbits.RB0)
#define BUTTON2_TRIS        (TRISBbits.TRISB0)  // No Button2 on this board
#define BUTTON2_IO          (1u)
#define BUTTON3_TRIS        (TRISBbits.TRISB0)  // No Button3 on this board
#define BUTTON3_IO          (1u)

// MRF24W I/O pins
#define WF_CS_TRIS          (TRISCbits.TRISC2)
#define WF_SDI_TRIS         (TRISCbits.TRISC4)
#define WF_SCK_TRIS         (TRISCbits.TRISC3)
#define WF_SDO_TRIS         (TRISCbits.TRISC5)
#define WF_RESET_TRIS       (TRISBbits.TRISB1)
#define WF_RESET_IO         (LATBbits.LATB1)
#define WF_INT_TRIS         (TRISBbits.TRISB0)
#define WF_INT_IO           (PORTBbits.RB0)
#define WF_CS_IO            (LATCbits.LATC2)
#define WF_HIBERNATE_TRIS   (TRISBbits.TRISB2)
#define WF_HIBERNATE_IO     (PORTBbits.RB2)
#define WF_INT_EDGE         (INTCON2bits.INTEDG0)
#define WF_INT_IE           (INTCONbits.INT0IE)
#define WF_INT_IF           (INTCONbits.INT0IF)
#define WF_SPI_IF           (PIR1bits.SSPIF)
#define WF_SSPBUF           (SSP1BUF)
#define WF_SPISTAT          (SSP1STAT)
#define WF_SPISTATbits      (SSP1STATbits)
#define WF_SPICON1          (SSP1CON1)
#define WF_SPICON1bits      (SSP1CON1bits)
#define WF_SPICON2          (SSP1CON2)
#define WF_SPI_IE           (PIE1bits.SSPIE)
#define WF_SPI_IP           (IPR1bits.SSPIP)

// 25LC256 I/O pins
#define EEPROM_CS_TRIS      (TRISAbits.TRISA3)
#define EEPROM_CS_IO        (LATAbits.LATA3)
#define EEPROM_SCK_TRIS     (TRISCbits.TRISC3)
#define EEPROM_SDI_TRIS     (TRISCbits.TRISC4)
#define EEPROM_SDO_TRIS     (TRISCbits.TRISC5)
#define EEPROM_SPI_IF       (PIR1bits.SSPIF)
#define EEPROM_SSPBUF       (SSP1BUF)
#define EEPROM_SPICON1      (SSP1CON1)
#define EEPROM_SPICON1bits  (SSP1CON1bits)
#define EEPROM_SPICON2      (SSP1CON2)
#define EEPROM_SPISTAT      (SSP1STAT)
#define EEPROM_SPISTATbits  (SSP1STATbits)

// Register name fix up for certain processors
#define SPBRGH    SPBRGH1
#define ADCON2    ADCON1
 * 
*/

// Define your own board hardware profile here
	//RH3-5 KBD output col
	#define RH3_KBD_TRIS			(TRISHbits.TRISH3)
	#define RH3_KBD_IO				(LATHbits.LATH3)
	#define RH4_KBD_TRIS			(TRISHbits.TRISH4)
	#define RH4_KBD_IO				(LATHbits.LATH4)
	#define RH5_KBD_TRIS			(TRISHbits.TRISH5)
	#define RH5_KBD_IO				(LATHbits.LATH5)
	#define RH6_TRIS				(TRISHbits.TRISH6)
	#define RH6_IO					(LATHbits.LATH6)
	#define RH7_TRIS				(TRISHbits.TRISH7)
	#define RH7_IO					(LATHbits.LATH7)
	#define RH_KBD_PUT(a)			(LATH = (a))
	
	//RB0-3 KBD input
	#define B0_KBD_TRIS				(TRISBbits.TRISB0)
	#define B0_KBD_IO				(PORTBbits.RB0)
	#define B1_KBD_TRIS				(TRISBbits.TRISB1)
	#define B1_KBD_IO				(PORTBbits.RB1)
	#define B2_KBD_TRIS				(TRISBbits.TRISB2)
	#define B2_KBD_IO				(PORTBbits.RB2)
	#define B3_KBD_TRIS				(TRISBbits.TRISB3)
	#define B3_KBD_IO				(PORTBbits.RB3)
	#define B4_TRIS					(TRISBbits.TRISB4)
	#define B4_IO					(PORTBbits.RB4)

	//RH0-1 inputs
	#define RH0_DOOR_IND_TRIS		(TRISHbits.TRISH0)
	#define RH0_DOOR_IND_IO			(PORTHbits.RH0)
	#define RH1_DOOR_SWITCH_TRIS	(TRISHbits.TRISH1)
	#define RH1_DOOR_SWITCH_IO		(PORTHbits.RH1)

	
	//LED
	
	#define G_PUT(a)				(LATG = (a))
	
	#define RF0_BUZZ_TRIS				(TRISFbits.TRISF0)
	#define RF0_BUZZ_IO					(LATFbits.LATF0)
	#define RF1_TRIS					(TRISFbits.TRISF1)
	#define RF1_IO						(LATFbits.LATF1)
	#define RF2_LOCK_TRIS				(TRISFbits.TRISF2)
	#define RF2_LOCK_IO					(LATFbits.LATF2)
	#define RF3_UNLOCK_TRIS				(TRISFbits.TRISF3)
	#define RF3_UNLOCK_IO				(LATFbits.LATF3)
	#define RF4_TRIS					(TRISFbits.TRISF4)
	#define RF4_IO						(LATFbits.LATF4)
	#define RF5_TRIS					(TRISFbits.TRISF5)
	#define RF5_IO						(LATFbits.LATF5)
	#define LED_ROW_PUT(a)				(LATF = (a))
	
	#define RC0_LED_S0_TRIS				(TRISCbits.TRISC0)
	#define RC0_LED_S0_IO				(LATCbits.LATC0)
	#define RC1_LED_S1_TRIS				(TRISCbits.TRISC1)
	#define RC1_LED_S1_IO				(LATCbits.LATC1)
	#define RC2_LED_S2_TRIS				(TRISCbits.TRISC2)
	#define RC2_LED_S2_IO				(LATCbits.LATC2)
	#define RC6_LED_DOPEN_TRIS			(TRISCbits.TRISC6)
	#define RC6_LED_DOPEN_IO			(LATCbits.LATC6)
	#define RC7_LED_S3_TRIS				(TRISCbits.TRISC7)
	#define RC7_LED_S3_IO				(LATCbits.LATC7)	
	#define RC_PUT(a)					(LATC = (a))

	// Contrast
	#define RD3_LCD_TRIS				(TRISDbits.TRISD3)
	#define RD3_LCD_IO					(LATDbits.LATD3)
	
	// Buzzer
	#define RD1_BUZZ_TRIS				(TRISDbits.TRISD1)
	#define RD1_BUZZ_IO					(LATDbits.LATD1)
	
	// Led
	#define RD2_LED_TRIS				(TRISDbits.TRISD2)
	#define RD2_LED_IO					(LATDbits.LATD2)

	// LCD I/O pins
	#define LCD_DATA_TRIS		(TRISE)
	#define LCD_DATA_IO			(LATE)
	#define LCD_RD_WR_TRIS		(TRISHbits.TRISH1)
	#define LCD_RD_WR_IO		(LATHbits.LATH1)
	#define LCD_RS_TRIS			(TRISHbits.TRISH2)
	#define LCD_RS_IO			(LATHbits.LATH2)
	#define LCD_E_TRIS			(TRISHbits.TRISH0)
	#define LCD_E_IO			(LATHbits.LATH0)

	// 25AA1024 I/O pins  
	#define EEPROM_CS_TRIS		(TRISDbits.TRISD7)
	#define EEPROM_CS_IO		(LATDbits.LATD7)
	#define EEPROM_SCK_TRIS		(TRISCbits.TRISC3)
	#define EEPROM_SDI_TRIS		(TRISCbits.TRISC4)
	#define EEPROM_SDO_TRIS		(TRISCbits.TRISC5)
	#define EEPROM_SPI_IF		(PIR1bits.SSP1IF)
	#define EEPROM_SSPBUF		(SSP1BUF)
	#define EEPROM_SPICON1		(SSP1CON1)
	#define EEPROM_SPICON1bits	(SSP1CON1bits)
	#define EEPROM_SPICON2		(SSP1CON2)
	#define EEPROM_SPISTAT		(SSP1STAT)
	#define EEPROM_SPISTATbits	(SSP1STATbits)

// UART mapping functions for consistent API names across 8-bit and 16 or
// 32 bit compilers.  For simplicity, everything will use "UART" instead
// of USART/EUSART/etc.
//#define BusyUART()          BusyUSART()
//#define CloseUART()         CloseUSART()
//#define ConfigIntUART(a)    ConfigIntUSART(a)
//#define DataRdyUART()       DataRdyUSART()
//#define OpenUART(a,b,c)     OpenUSART(a,b,c)
//#define ReadUART()          ReadUSART()
//#define WriteUART(a)        WriteUSART(a)
//#define getsUART(a,b,c)     getsUSART(b,a)
//#define putsUART(a)         putsUSART(a)
//#define getcUART()          ReadUSART()
//#define putcUART(a)         WriteUSART(a)
//#define putrsUART(a)        putrsUSART((far rom char *)a)

//------------------------------------------------------------------------------
// End of /* Hardware I/O pin mappings */


// Compiler information
//------------------------------------------------------------------------------

// Include proper device header file
#include <xc.h>

// Base RAM and ROM pointer types for given architecture
#define PTR_BASE        unsigned short
#define ROM_PTR_BASE    unsigned long



// Definitions that apply to all except Microchip MPLAB C Compiler for PIC18 MCUs (C18)
#define memcmppgm2ram(a,b,c)    memcmp(a,b,c)
#define strcmppgm2ram(a,b)      strcmp(a,b)
#define memcpypgm2ram(a,b,c)    memcpy(a,b,c)
#define strcpypgm2ram(a,b)      strcpy(a,b)
#define strncpypgm2ram(a,b,c)   strncpy(a,b,c)
#define strstrrampgm(a,b)       strstr(a,b)
#define strlenpgm(a)            strlen(a)
#define strchrpgm(a,b)          strchr(a,b)
#define strcatpgm2ram(a,b)      strcat(a,b)

// Compiler specific definitions
#define __attribute__(a)
#define FAR    far
#define ROM    const
#define rom

//------------------------------------------------------------------------------
// End of /* Compiler information */

#endif /* __SYSTEM_CONFIG_H_ */
