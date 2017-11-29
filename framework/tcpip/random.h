/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    random.h

  Summary:
    

  Description:
    Secure Random Number Generator Headers

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __RANDOM_H_
#define __RANDOM_H_

#if defined(STACK_USE_RANDOM)

#define STACK_USE_SHA1

//Entropy is generated as follows:
//  1.  For every packet received, the last byte of the remote
//      MAC address and the four bytes of TickGet() are added
//      to a SHA-1 Hash (the seed)
//  2.  Every time a random byte is requested, the hash is
//      calculated and the hash sum is hashed into the seed.
//  3.  Up to 20 bytes are returned from this hash sum before
//      a new hash is calculated.
//  4.  Every time new entropy is added, the remaining random
//      output is discarded and new random bytes will be
//      generated upon future calls to RandomGet().

void RandomInit(void);
uint8_t RandomGet(void);
void RandomAdd(uint8_t data);

#endif

#endif
