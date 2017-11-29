/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    dns.h

  Summary:


  Description:
    DNS Client/Server Module Header

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __DNS_H_
#define __DNS_H_

#define DNS_TYPE_A (1u) // Constant for record type in DNSResolve. Indicates an A (standard address) record.
#define DNS_TYPE_MX (15u) // Constant for record type in DNSResolve. Indicates an MX (mail exchanger) record.

// dns_client.c function prototypes
void DNSInit(void);
bool DNSBeginUsage(void);
void DNSResolve(uint8_t *HostName, uint8_t Type);
bool DNSIsResolved(IP_ADDR *HostIP);
bool DNSEndUsage(void);

#if defined(__XC8)
void DNSResolveROM(ROM uint8_t *Hostname, uint8_t Type);
#else
// Non-ROM variant for C30/C32
#define DNSResolveROM(a,b)  DNSResolve((uint8_t *)a,b)
#endif

// dns_server.c function prototype
void DNSServerTask(void);

#endif
