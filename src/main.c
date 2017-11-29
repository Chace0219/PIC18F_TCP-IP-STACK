/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    Main Application Entry Point and TCP/IP Stack Demo

  Description:
    Module for Microchip TCP/IP Stack
    -Demonstrates how to call and use the Microchip TCP/IP stack
    -Reference: Microchip TCP/IP Stack Help (TCPIP Stack Help.chm)    

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

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
//DOM-IGNORE-END

/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION

// Include all headers for any enabled TCPIP Stack functions
#include <xc.h>
#include "tcpip/tcpip.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "tcpip/zero_conf_link_local.h"
#endif
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "tcpip/zero_conf_link_multicast_dns.h"
#endif

// Include functions specific to this stack application
#include "main.h"


#define DHCPBindCount	(1)
#define STACK_USE_UDP
#define STACK_CLIENT_MODE


//external prototypes
extern void NDCInitData(void);
extern void NDCFSM(void);

extern void KeypadFSM(void);
extern void InitializeBoard(int);
extern void InitAppConfig(void);
extern void BeepHandler(void);
extern void Beep(uint32_t beepTime);
extern void BeepTimerUpdate(void);
extern void KeypadTimerUpdate(void);
extern uint32_t GetWiegandCode(void);
//extern void DoorSwitchUpdateConfig(void);
extern void DoorIndicatorUpdateConfig(struct _CONFIG *configData);
extern void ProcessDoorIndicator(void);
extern void ProcessDoorSwitch(void);
extern void DoorIndicatorTimerUpdate(void);
extern void DoorSwitchTimerUpdate(void);

extern void NDCTick(void);
extern void NDCResetState(void);

// global variable
APP_CONFIG AppConfig;
extern uint8_t g_serializedMACAddress[6];
extern bool g_wiegandFlag;

// local variables
static uint8_t myDHCPBindCount = 0xFF;
static uint32_t m_secCounter = 0;

static enum {
    STATE_INIT = 0,
    STATE_RUN
} networkState = STATE_INIT;


//
// Main application entry point.
//

void main(void) {
    static TICK localTimer = 0;

    // Close door
    RF2_LOCK_IO = 1;
    RF3_UNLOCK_IO = 0;


    //Init Serial EEPROM
    XEEInit();

    // Initialize application specific hardware
    InitializeBoard(0);

    // Initialize Stack and application related NV variables into AppConfig.
    TickInit();

    AppConfig.Flags.bIsDHCPEnabled = 1;
    DHCPEnable(0);

    InitAppConfig();

    // Initialize core stack layers (MAC, ARP, TCP, UDP) and
    // application modules (HTTP, SNMP, etc.)
    StackInit();

    /* ******** ?????????????????????? **** */
    // Read and apply configuration data from EPROM
    //DoorSwitchUpdateConfig();
    //DoorIndicatorUpdateConfig();
    
    NDCInitData();

    while (1) {
        // clear watchdog timer
        ClrWdt();

        if (TickGet() - localTimer > TICK_SECOND) {
            localTimer = TickGet();
            RC2_LED_S2_IO ^= 1; // toggle led
        }

        StackTask();
        ProcessDoorIndicator();
        ProcessDoorSwitch();
        NDCFSM();

        switch (networkState) {
            case STATE_INIT:
                if (AppConfig.Flags.bIsDHCPEnabled == 1) {
                    if (MACIsLinked() && DHCPIsBound(0))
                        networkState = STATE_RUN;
                } else {
                    if (MACIsLinked())
                        networkState = STATE_RUN;
                }
                break;

            case STATE_RUN:
                if (!MACIsLinked()) {
                    NDCResetState();
                    networkState = STATE_INIT;
                    break;
                }

                if (AppConfig.Flags.bIsDHCPEnabled == 1) {
                    if (!DHCPIsBound(0)) {
                        NDCResetState();
                        networkState = STATE_INIT;
                        break;
                    }
                }
                break;
        }
    }
}


//50 ms PERIODIC INTERRUPT

void RTC(void) {
    if (PIR1bits.TMR1IF) //overflow ?
    {
        PIR1bits.TMR1IF = 0; //reset interupt
        TMR1L = 0xD4; // 41.6667MHz 1302084,38 ticks (Fosc/4, scaler/8)
        TMR1H = 0x01; //19,87ggr -65104

        // update all timers
        BeepTimerUpdate();

        DoorSwitchTimerUpdate();
        DoorIndicatorTimerUpdate();

        NDCTick();
    }
}

