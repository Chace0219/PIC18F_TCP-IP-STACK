/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    auto_ip.h

  Summary:
    

  Description:
    AutoIP Defs for Microchip TCP/IP Stack

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __AUTO_IP_H_
#define __AUTO_IP_H_

// AutoIP State Machine

typedef enum _SM_AUTOIP {
    SM_AUTOIP_DISABLED = 0,
    SM_AUTOIP_INIT_RNG,
    SM_AUTOIP_CHECK_ADDRESS,
    SM_AUTOIP_SETUP_MESSAGE,
    SM_AUTOIP_GRATUITOUS_ARP1,
    SM_AUTOIP_GRATUITOUS_ARP2,
    SM_AUTOIP_GRATUITOUS_ARP3,
    SM_AUTOIP_DELAY,
    SM_AUTOIP_RATE_LIMIT_SET,
    SM_AUTOIP_RATE_LIMIT_WAIT,
    SM_AUTOIP_CONFIGURED,
    SM_AUTOIP_DEFEND
} SM_AUTOIP;

// Function prototypes
void AutoIPInit(uint8_t vInterface);
void AutoIPTasks(void);
void AutoIPConflict(uint8_t vInterface);
bool AutoIPIsConfigured(uint8_t vInterface);
bool AutoIPConfigIsInProgress(uint8_t vInterface);
bool AutoIPIsDisabled(uint8_t vInterface);
void AutoIPDisable(uint8_t vInterface);
void AutoIPEnable(uint8_t vInterface);

#endif
