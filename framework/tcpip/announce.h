/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    announce.h

  Summary:
    

  Description:
    Announce Module Header
 
 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __ANNONCE_H_
#define __ANNONCE_H_

#ifdef __cplusplus  // Provide C++ Compatibility
    extern "C" {
#endif


typedef enum {
    DISCOVERY_HOME = 0,
    DISCOVERY_LISTEN,
    DISCOVERY_REQUEST_RECEIVED,
    DISCOVERY_DISABLED
} DiscoverySM;

void AnnounceInit(void);
void AnnounceIP(void);
void DiscoveryTask(void);

#ifdef __cplusplus  // Provide C++ Compatibility
    }
#endif
#endif
