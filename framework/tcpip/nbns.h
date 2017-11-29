/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    nbns.h

  Summary:
    Responds to NBNS name requests to allow human name assignment to the board

  Description:
    NetBIOS Name Service (NBNS) Server

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __NBNS_H_
#define __NBNS_H_

void NBNSInit(void);
void NBNSTask(void);

#endif
