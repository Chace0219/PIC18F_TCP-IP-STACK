/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    system.c

  Summary:
    System level initializations for the specific Microchip Development Board used.

  Description:
    System Specific Initializations

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Modified By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

// Set configuration fuses
// Previously it was applied only in main.c where THIS_IS_STACK_APPLICATION is defined
// Now it is moved to system.c without having #if defined around
//#pragma config WDTEN=OFF, FOSC=HSPLL
//#pragma config WDT=ON, FOSC2=ON, FOSC=HSPLL, ETHLED=ON, WDTPS = 2048
// Set Extended Instruction Set fuse based on compiler setting
//#pragma config XINST=OFF

// CONFIG1L
#pragma config WDT = OFF         // Watchdog Timer Enable bit (WDT enabled)
//#pragma config WDT = ON         // Watchdog Timer Enable bit (WDT enabled)
#pragma config STVR = ON        // Stack Overflow/Underflow Reset Enable bit (Reset on stack overflow/underflow enabled)
#pragma config XINST = OFF       // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode enabled)

// CONFIG1H
#pragma config CP0 = OFF        // Code Protection bit (Program memory is not code-protected)

// CONFIG2L
#pragma config FOSC = HSPLL     // Oscillator Selection bits (EC oscillator, PLL enabled and under software control, CLKO function on OSC2)
#pragma config FOSC2 = ON       // Default/Reset System Clock Select bit (Clock selected by FOSC1:FOSC0 as system clock is enabled when OSCCON<1:0> = 00)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor enabled)
#pragma config IESO = ON        // Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit (Two-Speed Start-up enabled)

// CONFIG2H
#pragma config WDTPS = 2048    // Watchdog Timer Postscaler Select bits (1:32768)

// CONFIG3L
#pragma config EASHFT = ON      // External Address Bus Shift Enable bit (Address shifting enabled; address on external bus is offset to start at 000000h)
#pragma config MODE = MM        // External Memory Bus (Microcontroller mode, external bus disabled)
#pragma config BW = 16          // Data Bus Width Select bit (16-Bit Data Width mode)
#pragma config WAIT = OFF       // External Bus Wait Enable bit (Wait states for operations on external memory bus disabled)

// CONFIG3H
#pragma config CCP2MX = ON      // ECCP2 MUX bit (ECCP2/P2A is multiplexed with RC1)
#pragma config ECCPMX = ON      // ECCP MUX bit (ECCP1 outputs (P1B/P1C) are multiplexed with RE6 and RE5; ECCP3 outputs (P3B/P3C) are multiplexed with RE4 and RE3)
#pragma config ETHLED = ON      // Ethernet LED Enable bit (RA0/RA1 are multiplexed with LEDA/LEDB when Ethernet module is enabled and function as I/O when Ethernet is disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
