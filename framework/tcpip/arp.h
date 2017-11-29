/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    arp.h

  Summary:
    

  Description:
    ARP Module Defs for Microchip TCP/IP Stack

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

 * Confirmed By jinzhouyun, Date 2016.10.01
 *******************************************************************************/
//DOM-IGNORE-END

#ifndef __ARP_H_
#define __ARP_H_


#ifdef __cplusplus  // Provide C++ Compatibility
    extern "C" {
#endif

#ifdef STACK_CLIENT_MODE
void ARPInit(void);
#else
#define ARPInit()
#endif

#define ARP_OPERATION_REQ   0x0001u  // Operation code indicating an ARP Request
#define ARP_OPERATION_RESP  0x0002u  // Operation code indicating an ARP Response

#define HW_ETHERNET         (0x0001u) // ARP Hardware type as defined by IEEE 802.3
#define ARP_IP              (0x0800u) // ARP IP packet type as defined by IEEE 802.3

// ARP packet structure

typedef struct __attribute__((aligned(2), packed)) {
    uint16_t HardwareType; // Link-layer protocol type (Ethernet is 1).
    uint16_t Protocol; // The upper-layer protocol issuing an ARP request (0x0800 for IPv4)..
    uint8_t MACAddrLen; // MAC address length (6).
    uint8_t ProtocolLen; // Length of addresses used in the upper-layer protocol (4).
    uint16_t Operation; // The operation the sender is performing (ARP_REQ or ARP_RESP).
    MAC_ADDR SenderMACAddr; // The sender's hardware (MAC) address.
    IP_ADDR SenderIPAddr; // The sender's IP address.
    MAC_ADDR TargetMACAddr; // The target node's hardware (MAC) address.
    IP_ADDR TargetIPAddr; // The target node's IP address.
}
ARP_PACKET;

bool ARPProcess(void);
void ARPResolve(IP_ADDR *IPAddr);
bool ARPIsResolved(IP_ADDR *IPAddr, MAC_ADDR *MACAddr);
void SwapARPPacket(ARP_PACKET *p);

#ifdef STACK_USE_ZEROCONF_LINK_LOCAL
/* API specific Definitions */
#define ARP_REQ   0x0001u // Operation code indicating an ARP Request
#define ARP_RESP  0x0002u // Operation code indicating an ARP Response

struct arp_app_callbacks {
    bool used;
    void (*ARPPkt_notify)(uint32_t SenderIPAddr, uint32_t TargetIPAddr,
            MAC_ADDR *SenderMACAddr, MAC_ADDR *TargetMACAddr, uint8_t op_req);
};
int8_t ARPRegisterCallbacks(struct arp_app_callbacks *app);
bool ARPDeRegisterCallbacks(int8_t id);
#endif
bool ARPSendPkt(uint32_t SrcIPAddr, uint32_t DestIPAddr, uint8_t op_req);

#ifdef __cplusplus  // Provide C++ Compatibility
    }
#endif
#endif
