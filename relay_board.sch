EESchema Schematic File Version 2
LIBS:4xxx
LIBS:4xxx_IEEE
LIBS:74xGxx
LIBS:74xx
LIBS:74xx_IEEE
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
LIBS:Converter_ACDC
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:CPU_NXP_6800
LIBS:CPU_NXP_68000
LIBS:CPU_PowerPC
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Graphic
LIBS:Display_Character
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Motorola
LIBS:DSP_Texas
LIBS:Filter
LIBS:FPGA_Microsemi
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:GPU
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:MCU_AnalogDevices
LIBS:MCU_Cypress
LIBS:MCU_Espressif
LIBS:MCU_Intel
LIBS:MCU_Microchip_8051
LIBS:MCU_Microchip_ATmega
LIBS:MCU_Microchip_ATtiny
LIBS:MCU_Microchip_AVR
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_Nordic
LIBS:MCU_NXP_ColdFire
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_HC12
LIBS:MCU_NXP_HCS12
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_MAC7100
LIBS:MCU_NXP_MCore
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32F0
LIBS:MCU_ST_STM32F1
LIBS:MCU_ST_STM32F2
LIBS:MCU_ST_STM32F3
LIBS:MCU_ST_STM32F4
LIBS:MCU_ST_STM32F7
LIBS:MCU_ST_STM32H7
LIBS:MCU_ST_STM32L0
LIBS:MCU_ST_STM32L1
LIBS:MCU_ST_STM32L4
LIBS:MCU_ST_STM32L4+
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_EPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:power
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Amplifier
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_Switch
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_PLL
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Oven control - Relay board"
Date "2018-06-17"
Rev "0.01"
Comp "Jethro"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ULN2803A U4
U 1 1 5B1467C3
P 3800 3400
F 0 "U4" H 3800 3925 50  0000 C CNN
F 1 "ULN2803A" H 3800 3850 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 3850 2750 50  0001 L CNN
F 3 "" H 3900 3200 50  0001 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B146966
P 3800 4200
F 0 "#PWR01" H 3800 3950 50  0001 C CNN
F 1 "GND" H 3800 4050 50  0000 C CNN
F 2 "" H 3800 4200 50  0001 C CNN
F 3 "" H 3800 4200 50  0001 C CNN
	1    3800 4200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 5B146983
P 4400 2800
F 0 "#PWR02" H 4400 2650 50  0001 C CNN
F 1 "+12V" H 4400 2940 50  0000 C CNN
F 2 "" H 4400 2800 50  0001 C CNN
F 3 "" H 4400 2800 50  0001 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
$Comp
L G5Q-1A RE1
U 1 1 5B146AB5
P 5300 1400
F 0 "RE1" H 5650 1550 50  0000 L CNN
F 1 "G5Q-1A" H 5650 1450 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_Hongfa_HF105F1" H 5650 1350 50  0001 L CNN
F 3 "" H 6400 1100 50  0001 C CNN
	1    5300 1400
	0    1    1    0   
$EndComp
$Comp
L G5Q-1A RE3
U 1 1 5B146AF8
P 6350 4600
F 0 "RE3" H 6700 4750 50  0000 L CNN
F 1 "G5Q-1A" H 6700 4650 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_Hongfa_HF105F1" H 6700 4550 50  0001 L CNN
F 3 "" H 7450 4300 50  0001 C CNN
	1    6350 4600
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR03
U 1 1 5B14716F
P 5750 1150
F 0 "#PWR03" H 5750 1000 50  0001 C CNN
F 1 "+12V" H 5750 1290 50  0000 C CNN
F 2 "" H 5750 1150 50  0001 C CNN
F 3 "" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U2
U 4 1 5B147CB6
P 2300 4400
F 0 "U2" H 2100 4600 50  0000 L CNN
F 1 "LTV-847" H 2300 4600 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 4200 50  0001 L CIN
F 3 "" H 2300 4400 50  0001 L CNN
	4    2300 4400
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U2
U 3 1 5B147D85
P 2300 4900
F 0 "U2" H 2100 5100 50  0000 L CNN
F 1 "LTV-847" H 2300 5100 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 4700 50  0001 L CIN
F 3 "" H 2300 4900 50  0001 L CNN
	3    2300 4900
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U2
U 2 1 5B147F9A
P 2300 5350
F 0 "U2" H 2100 5550 50  0000 L CNN
F 1 "LTV-847" H 2300 5550 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 5150 50  0001 L CIN
F 3 "" H 2300 5350 50  0001 L CNN
	2    2300 5350
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U2
U 1 1 5B14808B
P 2300 5800
F 0 "U2" H 2100 6000 50  0000 L CNN
F 1 "LTV-847" H 2300 6000 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 5600 50  0001 L CIN
F 3 "" H 2300 5800 50  0001 L CNN
	1    2300 5800
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U1
U 1 1 5B14A110
P 2300 2400
F 0 "U1" H 2100 2600 50  0000 L CNN
F 1 "LTV-847" H 2300 2600 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 2200 50  0001 L CIN
F 3 "" H 2300 2400 50  0001 L CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U1
U 2 1 5B14A116
P 2300 2900
F 0 "U1" H 2100 3100 50  0000 L CNN
F 1 "LTV-847" H 2300 3100 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 2700 50  0001 L CIN
F 3 "" H 2300 2900 50  0001 L CNN
	2    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U1
U 3 1 5B14A11C
P 2300 3350
F 0 "U1" H 2100 3550 50  0000 L CNN
F 1 "LTV-847" H 2300 3550 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 3150 50  0001 L CIN
F 3 "" H 2300 3350 50  0001 L CNN
	3    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L LTV-847S U1
U 4 1 5B14A122
P 2300 3800
F 0 "U1" H 2100 4000 50  0000 L CNN
F 1 "LTV-847" H 2300 4000 50  0000 L CNN
F 2 "Package_DIP:SMDIP-16_W9.53mm" H 2100 3600 50  0001 L CIN
F 3 "" H 2300 3800 50  0001 L CNN
	4    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L L78L05_SO8 U3
U 1 1 5B14AA41
P 2800 1450
F 0 "U3" H 2650 1575 50  0000 C CNN
F 1 "L78L05_SO8" H 2800 1575 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2900 1650 50  0001 C CIN
F 3 "" H 3000 1450 50  0001 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR04
U 1 1 5B14AD06
P 3400 1350
F 0 "#PWR04" H 3400 1200 50  0001 C CNN
F 1 "+5VP" H 3400 1490 50  0000 C CNN
F 2 "" H 3400 1350 50  0001 C CNN
F 3 "" H 3400 1350 50  0001 C CNN
	1    3400 1350
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR05
U 1 1 5B14AD50
P 2750 2250
F 0 "#PWR05" H 2750 2100 50  0001 C CNN
F 1 "+5VP" H 2750 2390 50  0000 C CNN
F 2 "" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0001 C CNN
	1    2750 2250
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR06
U 1 1 5B14AD9A
P 2700 2800
F 0 "#PWR06" H 2700 2650 50  0001 C CNN
F 1 "+5VP" H 2700 2940 50  0000 C CNN
F 2 "" H 2700 2800 50  0001 C CNN
F 3 "" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR07
U 1 1 5B14ADE2
P 2700 3250
F 0 "#PWR07" H 2700 3100 50  0001 C CNN
F 1 "+5VP" H 2700 3390 50  0000 C CNN
F 2 "" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR08
U 1 1 5B14B20B
P 2700 3700
F 0 "#PWR08" H 2700 3550 50  0001 C CNN
F 1 "+5VP" H 2700 3840 50  0000 C CNN
F 2 "" H 2700 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0001 C CNN
	1    2700 3700
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR09
U 1 1 5B14B25E
P 2700 4300
F 0 "#PWR09" H 2700 4150 50  0001 C CNN
F 1 "+5VP" H 2700 4440 50  0000 C CNN
F 2 "" H 2700 4300 50  0001 C CNN
F 3 "" H 2700 4300 50  0001 C CNN
	1    2700 4300
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR010
U 1 1 5B14B635
P 2700 4800
F 0 "#PWR010" H 2700 4650 50  0001 C CNN
F 1 "+5VP" H 2700 4940 50  0000 C CNN
F 2 "" H 2700 4800 50  0001 C CNN
F 3 "" H 2700 4800 50  0001 C CNN
	1    2700 4800
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR011
U 1 1 5B14B676
P 2700 5250
F 0 "#PWR011" H 2700 5100 50  0001 C CNN
F 1 "+5VP" H 2700 5390 50  0000 C CNN
F 2 "" H 2700 5250 50  0001 C CNN
F 3 "" H 2700 5250 50  0001 C CNN
	1    2700 5250
	1    0    0    -1  
$EndComp
$Comp
L +5VP #PWR012
U 1 1 5B14BBC7
P 2700 5700
F 0 "#PWR012" H 2700 5550 50  0001 C CNN
F 1 "+5VP" H 2700 5840 50  0000 C CNN
F 2 "" H 2700 5700 50  0001 C CNN
F 3 "" H 2700 5700 50  0001 C CNN
	1    2700 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5B14C2EE
P 2800 1800
F 0 "#PWR013" H 2800 1550 50  0001 C CNN
F 1 "GND" H 2800 1650 50  0000 C CNN
F 2 "" H 2800 1800 50  0001 C CNN
F 3 "" H 2800 1800 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR014
U 1 1 5B1528C7
P 6600 1750
F 0 "#PWR014" H 6600 1600 50  0001 C CNN
F 1 "+12V" H 6600 1890 50  0000 C CNN
F 2 "" H 6600 1750 50  0001 C CNN
F 3 "" H 6600 1750 50  0001 C CNN
	1    6600 1750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR015
U 1 1 5B152908
P 5700 2250
F 0 "#PWR015" H 5700 2100 50  0001 C CNN
F 1 "+12V" H 5700 2390 50  0000 C CNN
F 2 "" H 5700 2250 50  0001 C CNN
F 3 "" H 5700 2250 50  0001 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 5B152949
P 6550 2950
F 0 "#PWR016" H 6550 2800 50  0001 C CNN
F 1 "+12V" H 6550 3090 50  0000 C CNN
F 2 "" H 6550 2950 50  0001 C CNN
F 3 "" H 6550 2950 50  0001 C CNN
	1    6550 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR017
U 1 1 5B15298A
P 6750 4300
F 0 "#PWR017" H 6750 4150 50  0001 C CNN
F 1 "+12V" H 6750 4440 50  0000 C CNN
F 2 "" H 6750 4300 50  0001 C CNN
F 3 "" H 6750 4300 50  0001 C CNN
	1    6750 4300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR018
U 1 1 5B152DF1
P 5800 4750
F 0 "#PWR018" H 5800 4600 50  0001 C CNN
F 1 "+12V" H 5800 4890 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR019
U 1 1 5B152E32
P 6750 5350
F 0 "#PWR019" H 6750 5200 50  0001 C CNN
F 1 "+12V" H 6750 5490 50  0000 C CNN
F 2 "" H 6750 5350 50  0001 C CNN
F 3 "" H 6750 5350 50  0001 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR020
U 1 1 5B152E73
P 5800 6050
F 0 "#PWR020" H 5800 5900 50  0001 C CNN
F 1 "+12V" H 5800 6190 50  0000 C CNN
F 2 "" H 5800 6050 50  0001 C CNN
F 3 "" H 5800 6050 50  0001 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR021
U 1 1 5B1567CA
P 2350 1400
F 0 "#PWR021" H 2350 1250 50  0001 C CNN
F 1 "+12V" H 2350 1540 50  0000 C CNN
F 2 "" H 2350 1400 50  0001 C CNN
F 3 "" H 2350 1400 50  0001 C CNN
	1    2350 1400
	1    0    0    -1  
$EndComp
$Comp
L G5LE-1 RE7
U 1 1 5B159DA7
P 6350 5550
F 0 "RE7" H 6800 5700 50  0000 L CNN
F 1 "G5LE-1" H 6800 5600 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 6800 5500 50  0001 L CNN
F 3 "" H 6350 5150 50  0001 C CNN
	1    6350 5550
	0    1    1    0   
$EndComp
$Comp
L Conn_01x10_Male J2
U 1 1 5B15A616
P 7800 2250
F 0 "J2" H 7800 2750 50  0000 C CNN
F 1 "Conn_01x10_Male" H 7800 1650 50  0000 C CNN
F 2 "Connector:Faston_1x10_P7.62mm_Horizontal" H 7800 2250 50  0001 C CNN
F 3 "" H 7800 2250 50  0001 C CNN
	1    7800 2250
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x10_Male J3
U 1 1 5B15E8FA
P 8150 5550
F 0 "J3" H 8150 6050 50  0000 C CNN
F 1 "Conn_01x10_Male" H 8150 4950 50  0000 C CNN
F 2 "Connector:Faston_1x10_P7.62mm_Horizontal" H 8150 5550 50  0001 C CNN
F 3 "" H 8150 5550 50  0001 C CNN
	1    8150 5550
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5B1618AA
P 1750 2300
F 0 "R1" V 1830 2300 50  0000 C CNN
F 1 "R" V 1750 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5B1619A9
P 1750 2800
F 0 "R2" V 1830 2800 50  0000 C CNN
F 1 "R" V 1750 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 2800 50  0001 C CNN
F 3 "" H 1750 2800 50  0001 C CNN
	1    1750 2800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B161A1D
P 1750 3250
F 0 "R3" V 1830 3250 50  0000 C CNN
F 1 "R" V 1750 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 3250 50  0001 C CNN
F 3 "" H 1750 3250 50  0001 C CNN
	1    1750 3250
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5B162396
P 1750 3700
F 0 "R4" V 1830 3700 50  0000 C CNN
F 1 "R" V 1750 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 3700 50  0001 C CNN
F 3 "" H 1750 3700 50  0001 C CNN
	1    1750 3700
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5B162418
P 1750 4300
F 0 "R5" V 1830 4300 50  0000 C CNN
F 1 "R" V 1750 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 4300 50  0001 C CNN
F 3 "" H 1750 4300 50  0001 C CNN
	1    1750 4300
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5B1624A0
P 1750 4800
F 0 "R6" V 1830 4800 50  0000 C CNN
F 1 "R" V 1750 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 4800 50  0001 C CNN
F 3 "" H 1750 4800 50  0001 C CNN
	1    1750 4800
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5B162512
P 1750 5250
F 0 "R7" V 1830 5250 50  0000 C CNN
F 1 "R" V 1750 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 5250 50  0001 C CNN
F 3 "" H 1750 5250 50  0001 C CNN
	1    1750 5250
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5B1625B3
P 1750 5700
F 0 "R8" V 1830 5700 50  0000 C CNN
F 1 "R" V 1750 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1680 5700 50  0001 C CNN
F 3 "" H 1750 5700 50  0001 C CNN
	1    1750 5700
	0    1    1    0   
$EndComp
$Comp
L GNDD #PWR022
U 1 1 5B162637
P 1900 2500
F 0 "#PWR022" H 1900 2250 50  0001 C CNN
F 1 "GNDD" H 1900 2375 50  0000 C CNN
F 2 "" H 1900 2500 50  0001 C CNN
F 3 "" H 1900 2500 50  0001 C CNN
	1    1900 2500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR023
U 1 1 5B1626F1
P 1900 3000
F 0 "#PWR023" H 1900 2750 50  0001 C CNN
F 1 "GNDD" H 1900 2875 50  0000 C CNN
F 2 "" H 1900 3000 50  0001 C CNN
F 3 "" H 1900 3000 50  0001 C CNN
	1    1900 3000
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR024
U 1 1 5B162750
P 1900 3450
F 0 "#PWR024" H 1900 3200 50  0001 C CNN
F 1 "GNDD" H 1900 3325 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR025
U 1 1 5B1627AF
P 1900 3900
F 0 "#PWR025" H 1900 3650 50  0001 C CNN
F 1 "GNDD" H 1900 3775 50  0000 C CNN
F 2 "" H 1900 3900 50  0001 C CNN
F 3 "" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR026
U 1 1 5B162E2E
P 1900 4500
F 0 "#PWR026" H 1900 4250 50  0001 C CNN
F 1 "GNDD" H 1900 4375 50  0000 C CNN
F 2 "" H 1900 4500 50  0001 C CNN
F 3 "" H 1900 4500 50  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR027
U 1 1 5B162E8D
P 1900 5000
F 0 "#PWR027" H 1900 4750 50  0001 C CNN
F 1 "GNDD" H 1900 4875 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR028
U 1 1 5B162EEC
P 1900 5450
F 0 "#PWR028" H 1900 5200 50  0001 C CNN
F 1 "GNDD" H 1900 5325 50  0000 C CNN
F 2 "" H 1900 5450 50  0001 C CNN
F 3 "" H 1900 5450 50  0001 C CNN
	1    1900 5450
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR029
U 1 1 5B162F4B
P 1900 5900
F 0 "#PWR029" H 1900 5650 50  0001 C CNN
F 1 "GNDD" H 1900 5775 50  0000 C CNN
F 2 "" H 1900 5900 50  0001 C CNN
F 3 "" H 1900 5900 50  0001 C CNN
	1    1900 5900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09_Male J1
U 1 1 5B165B40
P 600 4050
F 0 "J1" H 600 4550 50  0000 C CNN
F 1 "Conn_01x09_Male" H 600 3550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Horizontal" H 600 4050 50  0001 C CNN
F 3 "" H 600 4050 50  0001 C CNN
	1    600  4050
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR030
U 1 1 5B165C2A
P 900 4450
F 0 "#PWR030" H 900 4200 50  0001 C CNN
F 1 "GNDD" H 900 4325 50  0000 C CNN
F 2 "" H 900 4450 50  0001 C CNN
F 3 "" H 900 4450 50  0001 C CNN
	1    900  4450
	1    0    0    -1  
$EndComp
$Comp
L G5Q-1A RE4
U 1 1 5B146A59
P 5350 4950
F 0 "RE4" H 5700 5100 50  0000 L CNN
F 1 "G5Q-1A" H 5700 5000 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_Hongfa_HF105F1" H 5700 4900 50  0001 L CNN
F 3 "" H 6450 4650 50  0001 C CNN
	1    5350 4950
	0    1    1    0   
$EndComp
$Comp
L G5Q-1A RE2
U 1 1 5B145C48
P 6150 2000
F 0 "RE2" H 6500 2150 50  0000 L CNN
F 1 "G5Q-1A" H 6500 2050 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_Hongfa_HF105F1" H 6500 1950 50  0001 L CNN
F 3 "" H 7250 1700 50  0001 C CNN
	1    6150 2000
	0    1    1    0   
$EndComp
$Comp
L G5LE-1 RE8
U 1 1 5B159E3C
P 5400 6250
F 0 "RE8" H 5850 6400 50  0000 L CNN
F 1 "G5LE-1" H 5850 6300 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 5850 6200 50  0001 L CNN
F 3 "" H 5400 5850 50  0001 C CNN
	1    5400 6250
	0    1    1    0   
$EndComp
$Comp
L G5LE-1 RE6
U 1 1 5B159CE8
P 6200 3200
F 0 "RE6" H 6650 3350 50  0000 L CNN
F 1 "G5LE-1" H 6650 3250 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 6650 3150 50  0001 L CNN
F 3 "" H 6200 2800 50  0001 C CNN
	1    6200 3200
	0    1    1    0   
$EndComp
$Comp
L G5LE-1 RE5
U 1 1 5B171B5B
P 5300 2500
F 0 "RE5" H 5750 2650 50  0000 L CNN
F 1 "G5LE-1" H 5750 2550 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 5750 2450 50  0001 L CNN
F 3 "" H 5300 2100 50  0001 C CNN
	1    5300 2500
	0    1    1    0   
$EndComp
Text Label 7350 1950 0    60   ~ 0
R1IN
Text Label 7350 1850 0    60   ~ 0
R1NO
Text Label 7350 2050 0    60   ~ 0
R2IN
Text Label 7350 2150 0    60   ~ 0
R2NO
Text Label 7350 2250 0    60   ~ 0
R5NC
Text Label 7350 2350 0    60   ~ 0
R5IN
Text Label 7350 2450 0    60   ~ 0
R5NO
Text Label 7350 2550 0    60   ~ 0
R6NC
Text Label 7350 2650 0    60   ~ 0
R6IN
Text Label 7450 3000 1    60   ~ 0
R6NO
Text Label 7500 4800 0    60   ~ 0
R3IN
Text Label 7350 4950 0    60   ~ 0
R3NO
Text Label 7500 5250 0    60   ~ 0
R4IN
Text Label 7450 5350 0    60   ~ 0
R4NO
Text Label 7450 5450 0    60   ~ 0
R7NC
Text Label 7450 5550 0    60   ~ 0
R7IN
Text Label 7450 5650 0    60   ~ 0
R7NO
Text Label 7450 5750 0    60   ~ 0
R8NC
Text Label 7450 5850 0    60   ~ 0
R8IN
Text Label 7450 5950 0    60   ~ 0
R8NO
Wire Wire Line
	4200 3100 4400 3100
Wire Wire Line
	4400 3100 4400 2800
Wire Wire Line
	3800 4100 3800 4200
Wire Wire Line
	2800 1750 2800 1800
Wire Wire Line
	3100 1450 3400 1450
Wire Wire Line
	3400 1450 3400 1350
Wire Wire Line
	2600 2300 2750 2300
Wire Wire Line
	2750 2300 2750 2250
Wire Wire Line
	2600 2800 2700 2800
Wire Wire Line
	2600 3250 2700 3250
Wire Wire Line
	2600 3700 2700 3700
Wire Wire Line
	2600 4300 2700 4300
Wire Wire Line
	2600 4800 2700 4800
Wire Wire Line
	2600 5250 2700 5250
Wire Wire Line
	2600 5700 2700 5700
Wire Wire Line
	2600 2500 3300 2500
Wire Wire Line
	3300 2500 3300 3200
Wire Wire Line
	3300 3200 3400 3200
Wire Wire Line
	3400 3300 3250 3300
Wire Wire Line
	3250 3300 3250 3000
Wire Wire Line
	3250 3000 2600 3000
Wire Wire Line
	3400 3400 2950 3400
Wire Wire Line
	2950 3400 2950 3450
Wire Wire Line
	2950 3450 2600 3450
Wire Wire Line
	3400 3500 3000 3500
Wire Wire Line
	3000 3500 3000 3900
Wire Wire Line
	3000 3900 2600 3900
Wire Wire Line
	3400 3600 3100 3600
Wire Wire Line
	3100 3600 3100 4500
Wire Wire Line
	3100 4500 2600 4500
Wire Wire Line
	3400 3700 3200 3700
Wire Wire Line
	3200 3700 3200 5000
Wire Wire Line
	3200 5000 2600 5000
Wire Wire Line
	3400 3800 3300 3800
Wire Wire Line
	3300 3800 3300 5450
Wire Wire Line
	3300 5450 2600 5450
Wire Wire Line
	3400 3900 3350 3900
Wire Wire Line
	3350 3900 3350 5900
Wire Wire Line
	3350 5900 2600 5900
Wire Wire Line
	4200 3200 4550 3200
Wire Wire Line
	4550 3200 4550 1200
Wire Wire Line
	4650 1800 4650 3300
Wire Wire Line
	4650 3300 4200 3300
Wire Wire Line
	4200 3400 4750 3400
Wire Wire Line
	4750 3400 4750 2300
Wire Wire Line
	4200 3500 4850 3500
Wire Wire Line
	4200 3600 5100 3600
Wire Wire Line
	4200 3700 4950 3700
Wire Wire Line
	4950 3700 4950 4750
Wire Wire Line
	4200 3800 4850 3800
Wire Wire Line
	4750 3900 4200 3900
Wire Wire Line
	5650 4750 5800 4750
Wire Wire Line
	2350 1400 2350 1450
Wire Wire Line
	2350 1450 2500 1450
Wire Wire Line
	7250 1850 7600 1850
Wire Wire Line
	7150 1950 7600 1950
Wire Wire Line
	6750 2050 7600 2050
Wire Wire Line
	6850 2150 7600 2150
Wire Wire Line
	6950 2500 6950 2250
Wire Wire Line
	6950 2250 7600 2250
Wire Wire Line
	6750 2200 6750 2050
Wire Wire Line
	6850 2150 6850 2400
Wire Wire Line
	7050 2350 7050 2600
Wire Wire Line
	7050 2350 7600 2350
Wire Wire Line
	7600 2450 7150 2450
Wire Wire Line
	7600 2550 7250 2550
Wire Wire Line
	7600 2650 7350 2650
Wire Wire Line
	7600 2750 7450 2750
Wire Wire Line
	7600 4950 7600 5150
Wire Wire Line
	7600 5150 7800 5150
Wire Wire Line
	7500 5250 7800 5250
Wire Wire Line
	7050 5550 7950 5550
Wire Wire Line
	7150 5650 7800 5650
Wire Wire Line
	7250 5750 7800 5750
Wire Wire Line
	7350 5850 7950 5850
Wire Wire Line
	1900 5900 2000 5900
Wire Wire Line
	2000 5700 1900 5700
Wire Wire Line
	1900 5450 2000 5450
Wire Wire Line
	2000 5250 1900 5250
Wire Wire Line
	1900 5000 2000 5000
Wire Wire Line
	2000 4800 1900 4800
Wire Wire Line
	1900 4500 2000 4500
Wire Wire Line
	2000 4300 1900 4300
Wire Wire Line
	1900 3900 2000 3900
Wire Wire Line
	2000 3700 1900 3700
Wire Wire Line
	1900 3450 2000 3450
Wire Wire Line
	2000 3250 1900 3250
Wire Wire Line
	1900 3000 2000 3000
Wire Wire Line
	2000 2800 1900 2800
Wire Wire Line
	1900 2500 2000 2500
Wire Wire Line
	2000 2300 1900 2300
Wire Wire Line
	800  4450 900  4450
Wire Wire Line
	1600 2300 900  2300
Wire Wire Line
	900  2300 900  3650
Wire Wire Line
	900  3650 800  3650
Wire Wire Line
	800  3750 1000 3750
Wire Wire Line
	1000 3750 1000 2800
Wire Wire Line
	1000 2800 1600 2800
Wire Wire Line
	800  3850 1100 3850
Wire Wire Line
	1100 3850 1100 3250
Wire Wire Line
	1100 3250 1600 3250
Wire Wire Line
	800  3950 1200 3950
Wire Wire Line
	1200 3950 1200 3700
Wire Wire Line
	1200 3700 1600 3700
Wire Wire Line
	800  4050 1500 4050
Wire Wire Line
	1500 4050 1500 4300
Wire Wire Line
	1500 4300 1600 4300
Wire Wire Line
	800  4150 1400 4150
Wire Wire Line
	1400 4150 1400 4800
Wire Wire Line
	1400 4800 1600 4800
Wire Wire Line
	800  4250 1300 4250
Wire Wire Line
	1300 4250 1300 5250
Wire Wire Line
	1300 5250 1600 5250
Wire Wire Line
	800  4350 1250 4350
Wire Wire Line
	1250 4350 1250 5700
Wire Wire Line
	1250 5700 1600 5700
Wire Wire Line
	4550 1200 5000 1200
Wire Wire Line
	5600 1200 5750 1200
Wire Wire Line
	5750 1200 5750 1150
Wire Wire Line
	5850 1800 4650 1800
Wire Wire Line
	6450 1800 6600 1800
Wire Wire Line
	6600 1800 6600 1750
Wire Wire Line
	4750 2300 5000 2300
Wire Wire Line
	5600 2300 5700 2300
Wire Wire Line
	5700 2300 5700 2250
Wire Wire Line
	4850 3500 4850 3000
Wire Wire Line
	4850 3000 5900 3000
Wire Wire Line
	6500 3000 6550 3000
Wire Wire Line
	6550 3000 6550 2950
Wire Wire Line
	6650 4400 6750 4400
Wire Wire Line
	6750 4400 6750 4300
Wire Wire Line
	6650 5350 6750 5350
Wire Wire Line
	5100 3600 5100 4400
Wire Wire Line
	5100 4400 6050 4400
Wire Wire Line
	4950 4750 5050 4750
Wire Wire Line
	6050 5350 4850 5350
Wire Wire Line
	4850 5350 4850 3800
Wire Wire Line
	4750 3900 4750 6050
Wire Wire Line
	4750 6050 5100 6050
Wire Wire Line
	5700 6050 5800 6050
Wire Wire Line
	5050 5150 5050 5300
Wire Wire Line
	5050 5300 5850 5300
Wire Wire Line
	5850 5300 5850 5100
Wire Wire Line
	5850 5100 7400 5100
Wire Wire Line
	5600 1600 5700 1600
Wire Wire Line
	5700 1600 5700 1400
Wire Wire Line
	5700 1400 7250 1400
Wire Wire Line
	7250 1400 7250 1850
Wire Wire Line
	7150 1950 7150 1500
Wire Wire Line
	7150 1500 5800 1500
Wire Wire Line
	5800 1500 5800 1750
Wire Wire Line
	5800 1750 5000 1750
Wire Wire Line
	5000 1750 5000 1600
Wire Wire Line
	6450 2200 6750 2200
Wire Wire Line
	5850 2200 5850 2400
Wire Wire Line
	5850 2400 6850 2400
Wire Wire Line
	5800 2500 6950 2500
Wire Wire Line
	5000 2950 5900 2950
Wire Wire Line
	5000 2950 5000 2700
Wire Wire Line
	7150 2450 7150 2700
Wire Wire Line
	5900 3700 5900 3400
Wire Wire Line
	7350 2650 7350 3700
Wire Wire Line
	7450 2750 7450 3500
Wire Wire Line
	6650 4800 7700 4800
Wire Wire Line
	7700 4800 7700 5100
Wire Wire Line
	7600 4950 6050 4950
Wire Wire Line
	6050 4950 6050 4800
Wire Wire Line
	5650 5150 5650 5050
Wire Wire Line
	5650 5050 7500 5050
Wire Wire Line
	7500 5050 7500 5250
Wire Wire Line
	7400 5100 7400 5350
Wire Wire Line
	7400 5350 7750 5350
Wire Wire Line
	6050 5750 6050 6050
Wire Wire Line
	6050 6050 7050 6050
Wire Wire Line
	6750 5450 7750 5450
Wire Wire Line
	7050 6050 7050 5550
Wire Wire Line
	6650 5850 7150 5850
Wire Wire Line
	7150 5850 7150 5650
Wire Wire Line
	7250 5750 7250 6350
Wire Wire Line
	5100 6750 6700 6750
Wire Wire Line
	5100 6750 5100 6450
Wire Wire Line
	5700 6550 5950 6550
Wire Wire Line
	5950 6550 5950 6450
Wire Wire Line
	5950 6450 7450 6450
Wire Wire Line
	7450 6450 7450 5950
Wire Wire Line
	7450 5950 7750 5950
Wire Wire Line
	5600 2600 5800 2600
Wire Wire Line
	5800 2600 5800 2500
Wire Wire Line
	5900 2950 5900 2600
Wire Wire Line
	5900 2600 7050 2600
Wire Wire Line
	7150 2700 5750 2700
Wire Wire Line
	5750 2700 5750 2800
Wire Wire Line
	5750 2800 5600 2800
Wire Wire Line
	7250 2550 7250 3300
Wire Wire Line
	7250 3300 6500 3300
Wire Wire Line
	7350 3700 5900 3700
Wire Wire Line
	7450 3500 6500 3500
Wire Wire Line
	6750 5450 6750 5650
Wire Wire Line
	6750 5650 6650 5650
Wire Wire Line
	7250 6350 5700 6350
Wire Wire Line
	6700 6750 6700 6250
Wire Wire Line
	6700 6250 7350 6250
Wire Wire Line
	7350 6250 7350 5850
Wire Wire Line
	7800 5750 7800 5950
Wire Wire Line
	7800 5950 7950 5950
Wire Wire Line
	7750 5950 7750 5900
Wire Wire Line
	7750 5900 7850 5900
Wire Wire Line
	7850 5900 7850 5750
Wire Wire Line
	7850 5750 7950 5750
Wire Wire Line
	7800 5650 7800 5450
Wire Wire Line
	7800 5450 7950 5450
Wire Wire Line
	7750 5450 7750 5500
Wire Wire Line
	7750 5500 7850 5500
Wire Wire Line
	7850 5500 7850 5650
Wire Wire Line
	7850 5650 7950 5650
Wire Wire Line
	7750 5350 7750 5300
Wire Wire Line
	7750 5300 7900 5300
Wire Wire Line
	7900 5300 7900 5250
Wire Wire Line
	7900 5250 7950 5250
Wire Wire Line
	7800 5250 7800 5350
Wire Wire Line
	7800 5350 7950 5350
Wire Wire Line
	7800 5150 7800 5050
Wire Wire Line
	7800 5050 7950 5050
Wire Wire Line
	7700 5100 7900 5100
Wire Wire Line
	7900 5100 7900 5150
Wire Wire Line
	7900 5150 7950 5150
$Comp
L Conn_01x02_Male J4
U 1 1 5B1998F2
P 1300 1350
F 0 "J4" H 1300 1450 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1300 1150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 1300 1350 50  0001 C CNN
F 3 "" H 1300 1350 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR031
U 1 1 5B199E31
P 2000 1300
F 0 "#PWR031" H 2000 1150 50  0001 C CNN
F 1 "+12V" H 2000 1440 50  0000 C CNN
F 2 "" H 2000 1300 50  0001 C CNN
F 3 "" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5B199E96
P 1750 1500
F 0 "#PWR032" H 1750 1250 50  0001 C CNN
F 1 "GND" H 1750 1350 50  0000 C CNN
F 2 "" H 1750 1500 50  0001 C CNN
F 3 "" H 1750 1500 50  0001 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1450 1750 1450
Wire Wire Line
	1750 1450 1750 1500
$Comp
L D_Schottky D2
U 1 1 5B19A7DA
P 1650 1350
F 0 "D2" H 1650 1450 50  0000 C CNN
F 1 "D_Schottky" H 1650 1250 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1650 1350
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5B19AC7B
P 750 1600
F 0 "D1" H 750 1700 50  0000 C CNN
F 1 "LED" H 750 1500 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 750 1600 50  0001 C CNN
F 3 "" H 750 1600 50  0001 C CNN
	1    750  1600
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR033
U 1 1 5B19BA28
P 750 1400
F 0 "#PWR033" H 750 1250 50  0001 C CNN
F 1 "+12V" H 750 1540 50  0000 C CNN
F 2 "" H 750 1400 50  0001 C CNN
F 3 "" H 750 1400 50  0001 C CNN
	1    750  1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5B19BB27
P 750 2100
F 0 "#PWR034" H 750 1850 50  0001 C CNN
F 1 "GND" H 750 1950 50  0000 C CNN
F 2 "" H 750 2100 50  0001 C CNN
F 3 "" H 750 2100 50  0001 C CNN
	1    750  2100
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5B19BBFC
P 750 1950
F 0 "R9" V 830 1950 50  0000 C CNN
F 1 "R" V 750 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 680 1950 50  0001 C CNN
F 3 "" H 750 1950 50  0001 C CNN
	1    750  1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	750  1750 750  1800
Wire Wire Line
	750  1400 750  1450
Wire Wire Line
	1800 1350 2000 1350
Wire Wire Line
	2000 1350 2000 1300
$EndSCHEMATC
