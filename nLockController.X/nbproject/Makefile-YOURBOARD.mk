#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-YOURBOARD.mk)" "nbproject/Makefile-local-YOURBOARD.mk"
include nbproject/Makefile-local-YOURBOARD.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=YOURBOARD
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/DoorIndicator.c ../src/DoorSwitch.c ../src/EEPROM.c ../src/Keypad.c ../src/Misc.c ../src/NDC.c ../src/InitRutines.c ../src/Beep.c ../framework/tcpip/src/common/arc4.c ../framework/tcpip/src/common/big_int.c ../framework/tcpip/src/common/delay.c ../framework/tcpip/src/common/hashes.c ../framework/tcpip/src/common/helpers.c ../framework/tcpip/src/common/lcd_blocking.c ../framework/tcpip/src/common/mpfs2.c ../framework/tcpip/src/common/rsa.c ../framework/tcpip/src/common/spi_eeprom.c ../framework/tcpip/src/common/spi_flash.c ../framework/tcpip/src/common/spi_ram.c ../framework/tcpip/src/common/stack_task.c ../framework/tcpip/src/common/tick.c ../framework/tcpip/src/common/uart.c ../framework/tcpip/src/announce.c ../framework/tcpip/src/arp.c ../framework/tcpip/src/auto_ip.c ../framework/tcpip/src/berkeley_api.c ../framework/tcpip/src/ddns.c ../framework/tcpip/src/dhcp_client.c ../framework/tcpip/src/dhcp_server.c ../framework/tcpip/src/dns_client.c ../framework/tcpip/src/dns_server.c ../framework/tcpip/src/ftp.c ../framework/tcpip/src/http2.c ../framework/tcpip/src/icmp.c ../framework/tcpip/src/ip.c ../framework/tcpip/src/nbns.c ../framework/tcpip/src/random.c ../framework/tcpip/src/reboot.c ../framework/tcpip/src/smtp.c ../framework/tcpip/src/sntp.c ../framework/tcpip/src/ssl.c ../framework/tcpip/src/tcp.c ../framework/tcpip/src/tcp_performance_test.c ../framework/tcpip/src/telnet.c ../framework/tcpip/src/tftp.c ../framework/tcpip/src/uart_to_tcp_bridge.c ../framework/tcpip/src/udp.c ../framework/tcpip/src/udp_performance_test.c ../framework/tcpip/src/zero_conf_helper.c ../framework/tcpip/src/zero_conf_link_local.c ../framework/tcpip/src/zero_conf_link_multicast_dns.c ../framework/tcpip/src/eth97j60.c ../src/system_config/YourBoard/system.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1 ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1 ${OBJECTDIR}/_ext/1360937237/EEPROM.p1 ${OBJECTDIR}/_ext/1360937237/Keypad.p1 ${OBJECTDIR}/_ext/1360937237/Misc.p1 ${OBJECTDIR}/_ext/1360937237/NDC.p1 ${OBJECTDIR}/_ext/1360937237/InitRutines.p1 ${OBJECTDIR}/_ext/1360937237/Beep.p1 ${OBJECTDIR}/_ext/1948914109/arc4.p1 ${OBJECTDIR}/_ext/1948914109/big_int.p1 ${OBJECTDIR}/_ext/1948914109/delay.p1 ${OBJECTDIR}/_ext/1948914109/hashes.p1 ${OBJECTDIR}/_ext/1948914109/helpers.p1 ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1 ${OBJECTDIR}/_ext/1948914109/mpfs2.p1 ${OBJECTDIR}/_ext/1948914109/rsa.p1 ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1 ${OBJECTDIR}/_ext/1948914109/spi_flash.p1 ${OBJECTDIR}/_ext/1948914109/spi_ram.p1 ${OBJECTDIR}/_ext/1948914109/stack_task.p1 ${OBJECTDIR}/_ext/1948914109/tick.p1 ${OBJECTDIR}/_ext/1948914109/uart.p1 ${OBJECTDIR}/_ext/1535991171/announce.p1 ${OBJECTDIR}/_ext/1535991171/arp.p1 ${OBJECTDIR}/_ext/1535991171/auto_ip.p1 ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1 ${OBJECTDIR}/_ext/1535991171/ddns.p1 ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1 ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1 ${OBJECTDIR}/_ext/1535991171/dns_client.p1 ${OBJECTDIR}/_ext/1535991171/dns_server.p1 ${OBJECTDIR}/_ext/1535991171/ftp.p1 ${OBJECTDIR}/_ext/1535991171/http2.p1 ${OBJECTDIR}/_ext/1535991171/icmp.p1 ${OBJECTDIR}/_ext/1535991171/ip.p1 ${OBJECTDIR}/_ext/1535991171/nbns.p1 ${OBJECTDIR}/_ext/1535991171/random.p1 ${OBJECTDIR}/_ext/1535991171/reboot.p1 ${OBJECTDIR}/_ext/1535991171/smtp.p1 ${OBJECTDIR}/_ext/1535991171/sntp.p1 ${OBJECTDIR}/_ext/1535991171/ssl.p1 ${OBJECTDIR}/_ext/1535991171/tcp.p1 ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1 ${OBJECTDIR}/_ext/1535991171/telnet.p1 ${OBJECTDIR}/_ext/1535991171/tftp.p1 ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1 ${OBJECTDIR}/_ext/1535991171/udp.p1 ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1 ${OBJECTDIR}/_ext/1535991171/eth97j60.p1 ${OBJECTDIR}/_ext/1103055652/system.p1 ${OBJECTDIR}/_ext/1360937237/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d ${OBJECTDIR}/_ext/1360937237/Misc.p1.d ${OBJECTDIR}/_ext/1360937237/NDC.p1.d ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d ${OBJECTDIR}/_ext/1360937237/Beep.p1.d ${OBJECTDIR}/_ext/1948914109/arc4.p1.d ${OBJECTDIR}/_ext/1948914109/big_int.p1.d ${OBJECTDIR}/_ext/1948914109/delay.p1.d ${OBJECTDIR}/_ext/1948914109/hashes.p1.d ${OBJECTDIR}/_ext/1948914109/helpers.p1.d ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d ${OBJECTDIR}/_ext/1948914109/rsa.p1.d ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d ${OBJECTDIR}/_ext/1948914109/tick.p1.d ${OBJECTDIR}/_ext/1948914109/uart.p1.d ${OBJECTDIR}/_ext/1535991171/announce.p1.d ${OBJECTDIR}/_ext/1535991171/arp.p1.d ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d ${OBJECTDIR}/_ext/1535991171/ddns.p1.d ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d ${OBJECTDIR}/_ext/1535991171/ftp.p1.d ${OBJECTDIR}/_ext/1535991171/http2.p1.d ${OBJECTDIR}/_ext/1535991171/icmp.p1.d ${OBJECTDIR}/_ext/1535991171/ip.p1.d ${OBJECTDIR}/_ext/1535991171/nbns.p1.d ${OBJECTDIR}/_ext/1535991171/random.p1.d ${OBJECTDIR}/_ext/1535991171/reboot.p1.d ${OBJECTDIR}/_ext/1535991171/smtp.p1.d ${OBJECTDIR}/_ext/1535991171/sntp.p1.d ${OBJECTDIR}/_ext/1535991171/ssl.p1.d ${OBJECTDIR}/_ext/1535991171/tcp.p1.d ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d ${OBJECTDIR}/_ext/1535991171/telnet.p1.d ${OBJECTDIR}/_ext/1535991171/tftp.p1.d ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d ${OBJECTDIR}/_ext/1535991171/udp.p1.d ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d ${OBJECTDIR}/_ext/1103055652/system.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1 ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1 ${OBJECTDIR}/_ext/1360937237/EEPROM.p1 ${OBJECTDIR}/_ext/1360937237/Keypad.p1 ${OBJECTDIR}/_ext/1360937237/Misc.p1 ${OBJECTDIR}/_ext/1360937237/NDC.p1 ${OBJECTDIR}/_ext/1360937237/InitRutines.p1 ${OBJECTDIR}/_ext/1360937237/Beep.p1 ${OBJECTDIR}/_ext/1948914109/arc4.p1 ${OBJECTDIR}/_ext/1948914109/big_int.p1 ${OBJECTDIR}/_ext/1948914109/delay.p1 ${OBJECTDIR}/_ext/1948914109/hashes.p1 ${OBJECTDIR}/_ext/1948914109/helpers.p1 ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1 ${OBJECTDIR}/_ext/1948914109/mpfs2.p1 ${OBJECTDIR}/_ext/1948914109/rsa.p1 ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1 ${OBJECTDIR}/_ext/1948914109/spi_flash.p1 ${OBJECTDIR}/_ext/1948914109/spi_ram.p1 ${OBJECTDIR}/_ext/1948914109/stack_task.p1 ${OBJECTDIR}/_ext/1948914109/tick.p1 ${OBJECTDIR}/_ext/1948914109/uart.p1 ${OBJECTDIR}/_ext/1535991171/announce.p1 ${OBJECTDIR}/_ext/1535991171/arp.p1 ${OBJECTDIR}/_ext/1535991171/auto_ip.p1 ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1 ${OBJECTDIR}/_ext/1535991171/ddns.p1 ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1 ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1 ${OBJECTDIR}/_ext/1535991171/dns_client.p1 ${OBJECTDIR}/_ext/1535991171/dns_server.p1 ${OBJECTDIR}/_ext/1535991171/ftp.p1 ${OBJECTDIR}/_ext/1535991171/http2.p1 ${OBJECTDIR}/_ext/1535991171/icmp.p1 ${OBJECTDIR}/_ext/1535991171/ip.p1 ${OBJECTDIR}/_ext/1535991171/nbns.p1 ${OBJECTDIR}/_ext/1535991171/random.p1 ${OBJECTDIR}/_ext/1535991171/reboot.p1 ${OBJECTDIR}/_ext/1535991171/smtp.p1 ${OBJECTDIR}/_ext/1535991171/sntp.p1 ${OBJECTDIR}/_ext/1535991171/ssl.p1 ${OBJECTDIR}/_ext/1535991171/tcp.p1 ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1 ${OBJECTDIR}/_ext/1535991171/telnet.p1 ${OBJECTDIR}/_ext/1535991171/tftp.p1 ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1 ${OBJECTDIR}/_ext/1535991171/udp.p1 ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1 ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1 ${OBJECTDIR}/_ext/1535991171/eth97j60.p1 ${OBJECTDIR}/_ext/1103055652/system.p1 ${OBJECTDIR}/_ext/1360937237/main.p1

# Source Files
SOURCEFILES=../src/DoorIndicator.c ../src/DoorSwitch.c ../src/EEPROM.c ../src/Keypad.c ../src/Misc.c ../src/NDC.c ../src/InitRutines.c ../src/Beep.c ../framework/tcpip/src/common/arc4.c ../framework/tcpip/src/common/big_int.c ../framework/tcpip/src/common/delay.c ../framework/tcpip/src/common/hashes.c ../framework/tcpip/src/common/helpers.c ../framework/tcpip/src/common/lcd_blocking.c ../framework/tcpip/src/common/mpfs2.c ../framework/tcpip/src/common/rsa.c ../framework/tcpip/src/common/spi_eeprom.c ../framework/tcpip/src/common/spi_flash.c ../framework/tcpip/src/common/spi_ram.c ../framework/tcpip/src/common/stack_task.c ../framework/tcpip/src/common/tick.c ../framework/tcpip/src/common/uart.c ../framework/tcpip/src/announce.c ../framework/tcpip/src/arp.c ../framework/tcpip/src/auto_ip.c ../framework/tcpip/src/berkeley_api.c ../framework/tcpip/src/ddns.c ../framework/tcpip/src/dhcp_client.c ../framework/tcpip/src/dhcp_server.c ../framework/tcpip/src/dns_client.c ../framework/tcpip/src/dns_server.c ../framework/tcpip/src/ftp.c ../framework/tcpip/src/http2.c ../framework/tcpip/src/icmp.c ../framework/tcpip/src/ip.c ../framework/tcpip/src/nbns.c ../framework/tcpip/src/random.c ../framework/tcpip/src/reboot.c ../framework/tcpip/src/smtp.c ../framework/tcpip/src/sntp.c ../framework/tcpip/src/ssl.c ../framework/tcpip/src/tcp.c ../framework/tcpip/src/tcp_performance_test.c ../framework/tcpip/src/telnet.c ../framework/tcpip/src/tftp.c ../framework/tcpip/src/uart_to_tcp_bridge.c ../framework/tcpip/src/udp.c ../framework/tcpip/src/udp_performance_test.c ../framework/tcpip/src/zero_conf_helper.c ../framework/tcpip/src/zero_conf_link_local.c ../framework/tcpip/src/zero_conf_link_multicast_dns.c ../framework/tcpip/src/eth97j60.c ../src/system_config/YourBoard/system.c ../src/main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-YOURBOARD.mk dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F97J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1: ../src/DoorIndicator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1  ../src/DoorIndicator.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.d ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1: ../src/DoorSwitch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1  ../src/DoorSwitch.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.d ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/EEPROM.p1: ../src/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/EEPROM.p1  ../src/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/EEPROM.d ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Keypad.p1: ../src/Keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Keypad.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Keypad.p1  ../src/Keypad.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Keypad.d ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Misc.p1: ../src/Misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Misc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Misc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Misc.p1  ../src/Misc.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Misc.d ${OBJECTDIR}/_ext/1360937237/Misc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Misc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/NDC.p1: ../src/NDC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NDC.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NDC.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/NDC.p1  ../src/NDC.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/NDC.d ${OBJECTDIR}/_ext/1360937237/NDC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/NDC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/InitRutines.p1: ../src/InitRutines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/InitRutines.p1  ../src/InitRutines.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/InitRutines.d ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Beep.p1: ../src/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Beep.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Beep.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Beep.p1  ../src/Beep.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Beep.d ${OBJECTDIR}/_ext/1360937237/Beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/arc4.p1: ../framework/tcpip/src/common/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/arc4.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/arc4.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/arc4.p1  ../framework/tcpip/src/common/arc4.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/arc4.d ${OBJECTDIR}/_ext/1948914109/arc4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/arc4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/big_int.p1: ../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/big_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/big_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/big_int.p1  ../framework/tcpip/src/common/big_int.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/big_int.d ${OBJECTDIR}/_ext/1948914109/big_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/big_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/delay.p1: ../framework/tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/delay.p1  ../framework/tcpip/src/common/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/delay.d ${OBJECTDIR}/_ext/1948914109/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/hashes.p1: ../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/hashes.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/hashes.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/hashes.p1  ../framework/tcpip/src/common/hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/hashes.d ${OBJECTDIR}/_ext/1948914109/hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/helpers.p1: ../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/helpers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/helpers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/helpers.p1  ../framework/tcpip/src/common/helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/helpers.d ${OBJECTDIR}/_ext/1948914109/helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1: ../framework/tcpip/src/common/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1  ../framework/tcpip/src/common/lcd_blocking.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.d ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/mpfs2.p1: ../framework/tcpip/src/common/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/mpfs2.p1  ../framework/tcpip/src/common/mpfs2.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/mpfs2.d ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/rsa.p1: ../framework/tcpip/src/common/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/rsa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/rsa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/rsa.p1  ../framework/tcpip/src/common/rsa.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/rsa.d ${OBJECTDIR}/_ext/1948914109/rsa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/rsa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1: ../framework/tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1  ../framework/tcpip/src/common/spi_eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.d ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_flash.p1: ../framework/tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_flash.p1  ../framework/tcpip/src/common/spi_flash.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_flash.d ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_ram.p1: ../framework/tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_ram.p1  ../framework/tcpip/src/common/spi_ram.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_ram.d ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/stack_task.p1: ../framework/tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/stack_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/stack_task.p1  ../framework/tcpip/src/common/stack_task.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/stack_task.d ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/tick.p1: ../framework/tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/tick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/tick.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/tick.p1  ../framework/tcpip/src/common/tick.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/tick.d ${OBJECTDIR}/_ext/1948914109/tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/uart.p1: ../framework/tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/uart.p1  ../framework/tcpip/src/common/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/uart.d ${OBJECTDIR}/_ext/1948914109/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/announce.p1: ../framework/tcpip/src/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/announce.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/announce.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/announce.p1  ../framework/tcpip/src/announce.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/announce.d ${OBJECTDIR}/_ext/1535991171/announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/arp.p1: ../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/arp.p1  ../framework/tcpip/src/arp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/arp.d ${OBJECTDIR}/_ext/1535991171/arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/auto_ip.p1: ../framework/tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/auto_ip.p1  ../framework/tcpip/src/auto_ip.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/auto_ip.d ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/berkeley_api.p1: ../framework/tcpip/src/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/berkeley_api.p1  ../framework/tcpip/src/berkeley_api.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/berkeley_api.d ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ddns.p1: ../framework/tcpip/src/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ddns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ddns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ddns.p1  ../framework/tcpip/src/ddns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ddns.d ${OBJECTDIR}/_ext/1535991171/ddns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ddns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dhcp_client.p1: ../framework/tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dhcp_client.p1  ../framework/tcpip/src/dhcp_client.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dhcp_client.d ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dhcp_server.p1: ../framework/tcpip/src/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dhcp_server.p1  ../framework/tcpip/src/dhcp_server.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dhcp_server.d ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dns_client.p1: ../framework/tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dns_client.p1  ../framework/tcpip/src/dns_client.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dns_client.d ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dns_server.p1: ../framework/tcpip/src/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dns_server.p1  ../framework/tcpip/src/dns_server.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dns_server.d ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ftp.p1: ../framework/tcpip/src/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ftp.p1  ../framework/tcpip/src/ftp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ftp.d ${OBJECTDIR}/_ext/1535991171/ftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/http2.p1: ../framework/tcpip/src/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/http2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/http2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/http2.p1  ../framework/tcpip/src/http2.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/http2.d ${OBJECTDIR}/_ext/1535991171/http2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/http2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/icmp.p1: ../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/icmp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/icmp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/icmp.p1  ../framework/tcpip/src/icmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/icmp.d ${OBJECTDIR}/_ext/1535991171/icmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/icmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ip.p1: ../framework/tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ip.p1  ../framework/tcpip/src/ip.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ip.d ${OBJECTDIR}/_ext/1535991171/ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/nbns.p1: ../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/nbns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/nbns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/nbns.p1  ../framework/tcpip/src/nbns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/nbns.d ${OBJECTDIR}/_ext/1535991171/nbns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/nbns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/random.p1: ../framework/tcpip/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/random.p1  ../framework/tcpip/src/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/random.d ${OBJECTDIR}/_ext/1535991171/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/reboot.p1: ../framework/tcpip/src/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/reboot.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/reboot.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/reboot.p1  ../framework/tcpip/src/reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/reboot.d ${OBJECTDIR}/_ext/1535991171/reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/smtp.p1: ../framework/tcpip/src/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/smtp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/smtp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/smtp.p1  ../framework/tcpip/src/smtp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/smtp.d ${OBJECTDIR}/_ext/1535991171/smtp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/smtp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/sntp.p1: ../framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/sntp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/sntp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/sntp.p1  ../framework/tcpip/src/sntp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/sntp.d ${OBJECTDIR}/_ext/1535991171/sntp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/sntp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ssl.p1: ../framework/tcpip/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ssl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ssl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ssl.p1  ../framework/tcpip/src/ssl.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ssl.d ${OBJECTDIR}/_ext/1535991171/ssl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ssl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tcp.p1: ../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tcp.p1  ../framework/tcpip/src/tcp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tcp.d ${OBJECTDIR}/_ext/1535991171/tcp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tcp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1: ../framework/tcpip/src/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1  ../framework/tcpip/src/tcp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.d ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/telnet.p1: ../framework/tcpip/src/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/telnet.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/telnet.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/telnet.p1  ../framework/tcpip/src/telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/telnet.d ${OBJECTDIR}/_ext/1535991171/telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tftp.p1: ../framework/tcpip/src/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tftp.p1  ../framework/tcpip/src/tftp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tftp.d ${OBJECTDIR}/_ext/1535991171/tftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1: ../framework/tcpip/src/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1  ../framework/tcpip/src/uart_to_tcp_bridge.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.d ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/udp.p1: ../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/udp.p1  ../framework/tcpip/src/udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/udp.d ${OBJECTDIR}/_ext/1535991171/udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1: ../framework/tcpip/src/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1  ../framework/tcpip/src/udp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.d ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1: ../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1  ../framework/tcpip/src/zero_conf_helper.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.d ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1: ../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1  ../framework/tcpip/src/zero_conf_link_local.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1: ../framework/tcpip/src/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1  ../framework/tcpip/src/zero_conf_link_multicast_dns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/eth97j60.p1: ../framework/tcpip/src/eth97j60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/eth97j60.p1  ../framework/tcpip/src/eth97j60.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/eth97j60.d ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103055652/system.p1: ../src/system_config/YourBoard/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1103055652" 
	@${RM} ${OBJECTDIR}/_ext/1103055652/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103055652/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1103055652/system.p1  ../src/system_config/YourBoard/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1103055652/system.d ${OBJECTDIR}/_ext/1103055652/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103055652/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/main.p1  ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1: ../src/DoorIndicator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1  ../src/DoorIndicator.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.d ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/DoorIndicator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1: ../src/DoorSwitch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1  ../src/DoorSwitch.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.d ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/DoorSwitch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/EEPROM.p1: ../src/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/EEPROM.p1  ../src/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/EEPROM.d ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Keypad.p1: ../src/Keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Keypad.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Keypad.p1  ../src/Keypad.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Keypad.d ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Misc.p1: ../src/Misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Misc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Misc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Misc.p1  ../src/Misc.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Misc.d ${OBJECTDIR}/_ext/1360937237/Misc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Misc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/NDC.p1: ../src/NDC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NDC.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NDC.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/NDC.p1  ../src/NDC.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/NDC.d ${OBJECTDIR}/_ext/1360937237/NDC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/NDC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/InitRutines.p1: ../src/InitRutines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/InitRutines.p1  ../src/InitRutines.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/InitRutines.d ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/InitRutines.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/Beep.p1: ../src/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Beep.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Beep.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/Beep.p1  ../src/Beep.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/Beep.d ${OBJECTDIR}/_ext/1360937237/Beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/Beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/arc4.p1: ../framework/tcpip/src/common/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/arc4.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/arc4.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/arc4.p1  ../framework/tcpip/src/common/arc4.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/arc4.d ${OBJECTDIR}/_ext/1948914109/arc4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/arc4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/big_int.p1: ../framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/big_int.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/big_int.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/big_int.p1  ../framework/tcpip/src/common/big_int.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/big_int.d ${OBJECTDIR}/_ext/1948914109/big_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/big_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/delay.p1: ../framework/tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/delay.p1  ../framework/tcpip/src/common/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/delay.d ${OBJECTDIR}/_ext/1948914109/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/hashes.p1: ../framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/hashes.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/hashes.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/hashes.p1  ../framework/tcpip/src/common/hashes.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/hashes.d ${OBJECTDIR}/_ext/1948914109/hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/helpers.p1: ../framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/helpers.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/helpers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/helpers.p1  ../framework/tcpip/src/common/helpers.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/helpers.d ${OBJECTDIR}/_ext/1948914109/helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1: ../framework/tcpip/src/common/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1  ../framework/tcpip/src/common/lcd_blocking.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.d ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/lcd_blocking.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/mpfs2.p1: ../framework/tcpip/src/common/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/mpfs2.p1  ../framework/tcpip/src/common/mpfs2.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/mpfs2.d ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/mpfs2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/rsa.p1: ../framework/tcpip/src/common/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/rsa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/rsa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/rsa.p1  ../framework/tcpip/src/common/rsa.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/rsa.d ${OBJECTDIR}/_ext/1948914109/rsa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/rsa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1: ../framework/tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1  ../framework/tcpip/src/common/spi_eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.d ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_flash.p1: ../framework/tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_flash.p1  ../framework/tcpip/src/common/spi_flash.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_flash.d ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_flash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/spi_ram.p1: ../framework/tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/spi_ram.p1  ../framework/tcpip/src/common/spi_ram.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/spi_ram.d ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/spi_ram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/stack_task.p1: ../framework/tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/stack_task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/stack_task.p1  ../framework/tcpip/src/common/stack_task.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/stack_task.d ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/stack_task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/tick.p1: ../framework/tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/tick.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/tick.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/tick.p1  ../framework/tcpip/src/common/tick.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/tick.d ${OBJECTDIR}/_ext/1948914109/tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1948914109/uart.p1: ../framework/tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1948914109" 
	@${RM} ${OBJECTDIR}/_ext/1948914109/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1948914109/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1948914109/uart.p1  ../framework/tcpip/src/common/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1948914109/uart.d ${OBJECTDIR}/_ext/1948914109/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1948914109/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/announce.p1: ../framework/tcpip/src/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/announce.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/announce.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/announce.p1  ../framework/tcpip/src/announce.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/announce.d ${OBJECTDIR}/_ext/1535991171/announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/arp.p1: ../framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/arp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/arp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/arp.p1  ../framework/tcpip/src/arp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/arp.d ${OBJECTDIR}/_ext/1535991171/arp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/arp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/auto_ip.p1: ../framework/tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/auto_ip.p1  ../framework/tcpip/src/auto_ip.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/auto_ip.d ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/auto_ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/berkeley_api.p1: ../framework/tcpip/src/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/berkeley_api.p1  ../framework/tcpip/src/berkeley_api.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/berkeley_api.d ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/berkeley_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ddns.p1: ../framework/tcpip/src/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ddns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ddns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ddns.p1  ../framework/tcpip/src/ddns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ddns.d ${OBJECTDIR}/_ext/1535991171/ddns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ddns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dhcp_client.p1: ../framework/tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dhcp_client.p1  ../framework/tcpip/src/dhcp_client.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dhcp_client.d ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dhcp_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dhcp_server.p1: ../framework/tcpip/src/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dhcp_server.p1  ../framework/tcpip/src/dhcp_server.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dhcp_server.d ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dhcp_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dns_client.p1: ../framework/tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_client.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dns_client.p1  ../framework/tcpip/src/dns_client.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dns_client.d ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dns_client.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/dns_server.p1: ../framework/tcpip/src/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/dns_server.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/dns_server.p1  ../framework/tcpip/src/dns_server.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/dns_server.d ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/dns_server.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ftp.p1: ../framework/tcpip/src/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ftp.p1  ../framework/tcpip/src/ftp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ftp.d ${OBJECTDIR}/_ext/1535991171/ftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/http2.p1: ../framework/tcpip/src/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/http2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/http2.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/http2.p1  ../framework/tcpip/src/http2.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/http2.d ${OBJECTDIR}/_ext/1535991171/http2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/http2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/icmp.p1: ../framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/icmp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/icmp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/icmp.p1  ../framework/tcpip/src/icmp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/icmp.d ${OBJECTDIR}/_ext/1535991171/icmp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/icmp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ip.p1: ../framework/tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ip.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ip.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ip.p1  ../framework/tcpip/src/ip.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ip.d ${OBJECTDIR}/_ext/1535991171/ip.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ip.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/nbns.p1: ../framework/tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/nbns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/nbns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/nbns.p1  ../framework/tcpip/src/nbns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/nbns.d ${OBJECTDIR}/_ext/1535991171/nbns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/nbns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/random.p1: ../framework/tcpip/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/random.p1  ../framework/tcpip/src/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/random.d ${OBJECTDIR}/_ext/1535991171/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/reboot.p1: ../framework/tcpip/src/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/reboot.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/reboot.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/reboot.p1  ../framework/tcpip/src/reboot.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/reboot.d ${OBJECTDIR}/_ext/1535991171/reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/reboot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/smtp.p1: ../framework/tcpip/src/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/smtp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/smtp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/smtp.p1  ../framework/tcpip/src/smtp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/smtp.d ${OBJECTDIR}/_ext/1535991171/smtp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/smtp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/sntp.p1: ../framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/sntp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/sntp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/sntp.p1  ../framework/tcpip/src/sntp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/sntp.d ${OBJECTDIR}/_ext/1535991171/sntp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/sntp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/ssl.p1: ../framework/tcpip/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ssl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/ssl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/ssl.p1  ../framework/tcpip/src/ssl.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/ssl.d ${OBJECTDIR}/_ext/1535991171/ssl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/ssl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tcp.p1: ../framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tcp.p1  ../framework/tcpip/src/tcp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tcp.d ${OBJECTDIR}/_ext/1535991171/tcp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tcp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1: ../framework/tcpip/src/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1  ../framework/tcpip/src/tcp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.d ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tcp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/telnet.p1: ../framework/tcpip/src/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/telnet.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/telnet.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/telnet.p1  ../framework/tcpip/src/telnet.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/telnet.d ${OBJECTDIR}/_ext/1535991171/telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/telnet.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/tftp.p1: ../framework/tcpip/src/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tftp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/tftp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/tftp.p1  ../framework/tcpip/src/tftp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/tftp.d ${OBJECTDIR}/_ext/1535991171/tftp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/tftp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1: ../framework/tcpip/src/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1  ../framework/tcpip/src/uart_to_tcp_bridge.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.d ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/uart_to_tcp_bridge.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/udp.p1: ../framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/udp.p1  ../framework/tcpip/src/udp.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/udp.d ${OBJECTDIR}/_ext/1535991171/udp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/udp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1: ../framework/tcpip/src/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1  ../framework/tcpip/src/udp_performance_test.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.d ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/udp_performance_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1: ../framework/tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1  ../framework/tcpip/src/zero_conf_helper.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.d ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_helper.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1: ../framework/tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1  ../framework/tcpip/src/zero_conf_link_local.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_local.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1: ../framework/tcpip/src/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1  ../framework/tcpip/src/zero_conf_link_multicast_dns.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.d ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/zero_conf_link_multicast_dns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1535991171/eth97j60.p1: ../framework/tcpip/src/eth97j60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1535991171" 
	@${RM} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1535991171/eth97j60.p1  ../framework/tcpip/src/eth97j60.c 
	@-${MV} ${OBJECTDIR}/_ext/1535991171/eth97j60.d ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1535991171/eth97j60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103055652/system.p1: ../src/system_config/YourBoard/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1103055652" 
	@${RM} ${OBJECTDIR}/_ext/1103055652/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103055652/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1103055652/system.p1  ../src/system_config/YourBoard/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1103055652/system.d ${OBJECTDIR}/_ext/1103055652/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103055652/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/main.p1  ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../18f97j60_g.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../18f97j60_g.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/YourBoard" -I"../src" -I"../framework" -I"../nLockController.X" --warn=0 --asmlist -DXPRJ_YOURBOARD=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/nLockController.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/YOURBOARD
	${RM} -r dist/YOURBOARD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
