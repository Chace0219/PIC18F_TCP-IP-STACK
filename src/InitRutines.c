/*********************************************************************
 *
 *  InitRutines
 *   - All init functions
 *
 *********************************************************************
 * FileName:        InitRutines.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18
 * Compiler:        Microchip C32 v1.00 or higher
 *
 * Company:         Netwing AB
 * Modified By jinzhouyun   Date 2016.10.02
 ********************************************************************/
// Include all headers for any enabled TCPIP Stack functions
#include <xc.h>
#include "tcpip/tcpip.h"
#include "tcpip/src/common/stack_task.h"
#include "main.h"


// externs
extern void RTC(void);
extern bool g_beepFlag;
extern APP_CONFIG AppConfig;
extern uint8_t MiscHexStringToByte(uint8_t* value);

// globals
uint8_t g_serializedMACAddress[6];
bool g_wiegandFlag = false;

// locals
static uint8_t m_wiegandSync = 0; // if = 2 then the wiegand sequence is complete
static uint32_t m_wiegandCode;
static uint8_t m_wiegandCounter = 0;
static uint8_t m_timer2postscaler = 0;

//
// PIC18 Interrupt Service Routines
// 
// NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
// The interruptlow keyword is used to work around the bug when using C18
//#if defined(__XC8)
void interrupt low_priority LowISR(void)
{
    RTC();
    TickUpdate();
}

void interrupt high_priority HighISR(void)
{
    if (INTCON3bits.INT1IF == 1 || INTCONbits.INT0IF == 1) {
        PIE1bits.TMR2IE = 1; //ENABLE INTERRUPT
        PIR1bits.TMR2IF = 0; // reset timer
        TMR2 = 0; // set start value of timer
        m_timer2postscaler = 0;
        g_wiegandFlag = false;

        //	    RC7_LED_S3_IO = 1;  // led D15

        m_wiegandCode <<= 1;

        if (INTCON3bits.INT1IF == 1)
            m_wiegandCode |= 1;
        else
            m_wiegandCode &= ~(1);

        m_wiegandCounter++;
    }

    if (PIR1bits.TMR2IF == 1) {
        if (m_timer2postscaler < 2) {
            PIR1bits.TMR2IF = 0; // reset timer
            TMR2 = 0; // set start value of timer
            m_timer2postscaler++;
        } else {
            PIE1bits.TMR2IE = 0; //DISABLE INTERRUPT
            PIR1bits.TMR2IF = 0; // reset timer

            if (m_wiegandCounter == 4 || m_wiegandCounter == 26
                    && m_wiegandCode > 0) {
                g_wiegandFlag = true;
            } else {
                m_wiegandCode = 0;
                g_wiegandFlag = false;
            }

            m_wiegandCounter = 0;

            //		    RC7_LED_S3_IO = 0;  // led D15
        }
    }

    INTCONbits.INT0IF = 0; //reset INT0
    INTCON3bits.INT1IF = 0; //reset INT1

#if defined(STACK_USE_UART2TCP_BRIDGE)
    UART2TCPBridgeISR();
#endif

#if defined(WF_CS_TRIS)
    WFEintISR();
#endif // WF_CS_TRIS
}
//#endif

uint32_t GetWiegandCode(void) {
    uint32_t tmp;

    tmp = m_wiegandCode;
    m_wiegandCode = 0;
    g_wiegandFlag = false; // done with wiegand.

    if (tmp < 12)
        return tmp;

    tmp >>= 1; // remove lower parity bit
    tmp &= 0xFFFFFF; // remove higher parity bit

#if defined BEWATOR
    return tmp + 663296;
#else
    return tmp;
#endif
}

/*********************************************************************
 * Function:        void InitializeBoard(int)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Initialize board specific hardware.
 *
 * Note:            None
 ********************************************************************/
void InitializeBoard(int a) {
    int macStringIndex, arrayindex;
    uint8_t macArray[18] = NDS_MAC;


    //Set as output
    //G output direction
    TRISG = 0;
    //F output direction
    TRISF = 0;

    //LED_Status output direction
    RC0_LED_S0_TRIS = 0;
    RC1_LED_S1_TRIS = 0;
    RC2_LED_S2_TRIS = 0;
    RC7_LED_S3_TRIS = 0;
    RC6_LED_DOPEN_TRIS = 0;

    //BUSSER + DIM
    TRISD = 0;
    RD1_BUZZ_IO = 0; //Buzzer off
    RD2_LED_IO = 0;

    //Keybaord
    TRISH = 0;
    //keyboard Input
    B0_KBD_TRIS = 1;
    B1_KBD_TRIS = 1;
    B2_KBD_TRIS = 1;
    B3_KBD_TRIS = 1;
    //	B4_KBD_TRIS = 1;  //Not used
    //	TRISBbits.TRISB5 = 0; //Set B5 to output (not used)

    // door indicator and switch
    RH0_DOOR_IND_TRIS = 1;
    RH1_DOOR_SWITCH_TRIS = 1;

    //Set all on
    RC0_LED_S0_IO = 0;
    RC1_LED_S1_IO = 0;
    RC2_LED_S2_IO = 0;
    RC7_LED_S3_IO = 0;

    RC6_LED_DOPEN_IO = 1; //Dörrpip.  1 = 0ff
#if defined(__XC8)
    // Enable 4x/5x PLL on PIC18F87J10, PIC18F97J60, etc.
    OSCTUNE = 0x40;

    // Set up analog features of PORTA

    // PICDEM.net 2 board has POT on AN2, Temp Sensor on AN3
#if defined(PICDEMNET2)
    //		ADCON0 = 0x09;		// ADON, Channel 2
    //		ADCON1 = 0x0B;		// Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are analog
#elif defined(PICDEMZ)
    ADCON0 = 0x81; // ADON, Channel 0, Fosc/32
    ADCON1 = 0x0F; // Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are all digital
#else
    ADCON0 = 0x01; // ADON, Channel 0
    ADCON1 = 0x0E; // Vdd/Vss is +/-REF, AN0 is analog
#endif
#if defined(__18F87J50) || defined(_18F87J50)
#define ADCON2		ADCON1
#endif
    ADCON2 = 0xBE; // Right justify, 20TAD ACQ time, Fosc/64 (~21.0kHz)


    // Enable internal PORTB pull-ups
    INTCON2bits.RBPU = 0;

    // Enable Interrupts
    RCONbits.IPEN = 1; // Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;

#if defined RFID_READER
    INTCON2bits.INTEDG0 = 0; // faling edge interrupt on port B0
    INTCON2bits.INTEDG1 = 0; // faling edge interrupt on port B1

    INTCONbits.INT0IE = 1; //ENABLE INT0
    INTCON3bits.INT1IE = 1; //ENABLE INT1

    INTCONbits.INT0IF = 0; //reset INT0
    INTCON3bits.INT1IF = 0; //reset INT1

    INTCON3bits.INT1IP = 1; //prio high
#endif

    // Do a calibration A/D conversion
#if defined(__18F87J10) || defined(__18F86J15) || defined(__18F86J10) || defined(__18F85J15) || defined(__18F85J10) || defined(__18F67J10) || defined(__18F66J15) || defined(__18F66J10) || defined(__18F65J15) || defined(__18F65J10) || defined(__18F97J60) || defined(__18F96J65) || defined(__18F96J60) || defined(__18F87J60) || defined(__18F86J65) || defined(__18F86J60) || defined(__18F67J60) || defined(__18F66J65) || defined(__18F66J60) || \
	defined(_18F87J10)  || defined(_18F86J15)  || defined(_18F86J10)  || defined(_18F85J15)  || defined(_18F85J10)  || defined(_18F67J10)  || defined(_18F66J15)  || defined(_18F66J10)  || defined(_18F65J15)  || defined(_18F65J10)  || defined(_18F97J60)  || defined(_18F96J65)  || defined(_18F96J60)  || defined(_18F87J60)  || defined(_18F86J65)  || defined(_18F86J60)  || defined(_18F67J60)  || defined(_18F66J65)  || defined(_18F66J60)
    ADCON0bits.ADCAL = 1;
    ADCON0bits.GO = 1;
    while (ADCON0bits.GO);
    ADCON0bits.ADCAL = 0;
#endif
#endif

#if defined(DSPICDEM11)
    // Deselect the LCD controller (PIC18F252 onboard) to ensure there is no SPI2 contention
    LCDCTRL_CS_TRIS = 0;
    LCDCTRL_CS_IO = 1;

    // Hold the codec in reset to ensure there is no SPI2 contention
    CODEC_RST_TRIS = 0;
    CODEC_RST_IO = 0;
#endif

#if defined(SPIRAM_CS_TRIS)
    SPIRAMInit();
#endif

    //  Init timer1 for RTC
    T1CON = 0b00110101; //TIMER1 CONFIG (system tick rate)scale 8x,osc off,no sync,Fosc/4,Enable
    PIE1bits.TMR1IE = 1; //ENABLE INTERRUPT
    IPR1bits.TMR1IP = 0; //Priority
    PIR1bits.TMR1IF = 0; //CLEAR FLAG

#if defined RFID_READER
    T2CON = 0b01111111; //Timer2 CONFIG (postscale1:16),TMR2ON,Prescale 1:16
    PIE1bits.TMR2IE = 0; //DISABLE INTERRUPT
    IPR1bits.TMR2IP = 1; //Priority high
    PIR1bits.TMR2IF = 0; //Clear Flag

    PR2 = 255; //Set period register to 166 = 35Hz
#endif

    // init mac address
    while (macStringIndex < 17) {
        g_serializedMACAddress[arrayindex++] = MiscHexStringToByte((uint8_t*) (macArray + macStringIndex));
        macStringIndex += 3;
    }

}

/*********************************************************************
 * Function:        void InitAppConfig(APP_CONFIG *AppConfig)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
void InitAppConfig() {
#if (defined(MPFS_USE_EEPROM) || defined(MPFS_USE_SPI_FLASH)) && (defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2))
    BYTE c;
    BYTE *p;
#endif

    //	AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flags.bInConfigMode = true;
    memcpy(AppConfig.MyMACAddr.v, (const void*) &g_serializedMACAddress[0], sizeof (AppConfig.MyMACAddr));

    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul;
    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul;
    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul;


    // Load the default NetBIOS Host Name
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*) MY_DEFAULT_HOST_NAME, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);

#if defined(MPFS_USE_EEPROM) && (defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2))
#elif defined(MPFS_USE_SPI_FLASH) && (defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2))
#endif


}

#if (defined(MPFS_USE_EEPROM) || defined(MPFS_USE_SPI_FLASH)) && (defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2))

void SaveAppConfig(void) {
}
#endif

