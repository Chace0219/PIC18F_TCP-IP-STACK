/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    zero_conf_helper.c

  Summary:
    Module for Microchip TCP/IP Stack

  Description:
    Zero Confiruation (Zeroconf) Helper

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#define __ZERO_CONF_HELPER_C_

#include <xc.h>
#include "tcpip/tcpip.h"
#include "tcpip/src/zero_conf_helper.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL) || defined(STACK_USE_ZEROCONF_MDNS_SD)

uint8_t zeroconf_dbg_level = 3; // All levels of debug info are printed.

#if defined(NEED_TO_DEFINE_zeroconf_dbg_msg)

char zeroconf_dbg_msg[ZEROCONF_DBG_MSG_SIZE];

#endif

#if defined(INFO_ZCLL)

void info_zcll_print(char *msg)
{
    if (zeroconf_dbg_level >= 1)
        putsUART(msg);
}
#endif

#if defined(DEBUG_ZCLL)

void debug_zcll_print(char *msg)
{
    if (zeroconf_dbg_level >= 2)
        putsUART(msg);
}
#endif

#if defined(INFO_MDNS)

void info_mdns_print(char *msg)
{
    if (zeroconf_dbg_level >= 1)
        putsUART(msg);
}
#endif

#if defined(DEBUG_MDNS)

void debug_mdns_print(char *msg)
{
    if (zeroconf_dbg_level >= 2)
        putsUART(msg);
}
#endif

/*
The calling convention is:

    static TICK event_time = 0;
    static TICK random_delay = 0;
    static uint8_t time_recorded = 0;

    switch (zgzc_wait_for(&random_delay, &event_time, &time_recorded))
    {
    case ZGZC_STARTED_WAITING:

        # Set random_delay value;

        // Intentional fall-through

    case ZGZC_KEEP_WAITING:

        // Not Completed the delay proposed
        return;
    }

    // Completed the delay required

    # Do the scheduled work;
*/

uint8_t zgzc_wait_for(uint32_t *pTicksToWait, uint32_t *pStartingTickTime, uint8_t *pWaitingHasStarted)
{
    if (!(*pWaitingHasStarted)) {
        // start a new waiting period
        *pStartingTickTime = TickGet(); // The time we started the waiting.
        *pWaitingHasStarted = 1; // To indicate that the timer has started.

        return ZGZC_STARTED_WAITING;
    }

    if ((TickGet() - *pStartingTickTime) < (*pTicksToWait)) {
        /* Not Completed the delay proposed */
        return ZGZC_KEEP_WAITING;
    }

    // We have completed the required waiting.

    *pStartingTickTime = 0; /* Reset starting time. Not really necessary. */
    *pWaitingHasStarted = 0; /* Reset timer */

    return ZGZC_DONE_WAITING;
}

#endif // (STACK_USE_ZEROCONF_LINK_LOCAL) || defined(STACK_USE_ZEROCONF_MDNS_SD)
