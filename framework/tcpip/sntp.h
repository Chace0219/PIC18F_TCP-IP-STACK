/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    sntp.h

  Summary:
    

  Description:
    SNTP Client Module Header

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __SNTP_H_
#define __SNTP_H_

void SNTPInit(void);
void SNTPClient(void);
uint32_t SNTPGetUTCSeconds(void);

#endif
