/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    system.h

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

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

// Clock frequency values
// These directly influence timed events using the Tick module.  They also are used for UART and SPI baud rate generation.
#define SYS_CLK_FrequencySystemGet()  (25000000ul) // Hz
//#define SYS_CLK_FrequencySystemGet()  (40000000ul) // Hz
#define SYS_CLK_FrequencyInstructionGet()  (SYS_CLK_FrequencySystemGet() / 4) // Should be SYS_CLK_FrequencySystemGet() / 4 for PIC18
#define SYS_CLK_FrequencyPeripheralGet()  (SYS_CLK_FrequencySystemGet() / 4) // Should be SYS_CLK_FrequencySystemGet() / 4 for PIC18

#endif /* __SYSTEM_H_ */
