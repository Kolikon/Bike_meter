EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega8-16PU U1
U 1 1 5F11BD9C
P 3000 4000
F 0 "U1" H 3000 5581 50  0000 C CNN
F 1 "ATmega8-16PU" H 3000 5490 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 3000 4000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 3000 4000 50  0001 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5F11F86B
P 3100 2350
F 0 "#PWR05" H 3100 2200 50  0001 C CNN
F 1 "+5V" H 3115 2523 50  0000 C CNN
F 2 "" H 3100 2350 50  0001 C CNN
F 3 "" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 3000 2500
$Comp
L Device:R R1
U 1 1 5F12083D
P 2500 2500
F 0 "R1" V 2293 2500 50  0000 C CNN
F 1 "10k" V 2384 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2430 2500 50  0001 C CNN
F 3 "~" H 2500 2500 50  0001 C CNN
	1    2500 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2500 3000 2500
Wire Wire Line
	2400 2900 2350 2900
Wire Wire Line
	2350 2900 2350 2500
Wire Wire Line
	5150 4400 4850 4400
Wire Wire Line
	4850 4400 4850 4800
Wire Wire Line
	4850 4800 3600 4800
Wire Wire Line
	3800 4850 3800 4900
Wire Wire Line
	3800 4900 3600 4900
Wire Wire Line
	3850 4200 3850 5000
Wire Wire Line
	3850 5000 3600 5000
Wire Wire Line
	5150 4700 3600 4700
Wire Wire Line
	5150 4600 3600 4600
Wire Wire Line
	5150 5000 4100 5000
Wire Wire Line
	4100 5000 4100 4500
Wire Wire Line
	4100 4500 3600 4500
Wire Wire Line
	5150 4500 4600 4500
Wire Wire Line
	4600 4500 4600 4400
Wire Wire Line
	4600 4400 3600 4400
Wire Wire Line
	4400 4900 4400 4300
Wire Wire Line
	4400 4300 3600 4300
Wire Wire Line
	3100 5500 3100 5400
Wire Wire Line
	3000 5400 3000 5500
$Comp
L power:GND #PWR06
U 1 1 5F122ADA
P 3100 5500
F 0 "#PWR06" H 3100 5250 50  0001 C CNN
F 1 "GND" H 3105 5327 50  0000 C CNN
F 2 "" H 3100 5500 50  0001 C CNN
F 3 "" H 3100 5500 50  0001 C CNN
	1    3100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F144650
P 4900 3150
F 0 "#PWR09" H 4900 2900 50  0001 C CNN
F 1 "GND" H 4905 2977 50  0000 C CNN
F 2 "" H 4900 3150 50  0001 C CNN
F 3 "" H 4900 3150 50  0001 C CNN
	1    4900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2100 4900 2500
$Comp
L Switch:SW_Push SW1
U 1 1 5F14B375
P 4700 2100
F 0 "SW1" H 4700 2385 50  0000 C CNN
F 1 "SW_Push" H 4700 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4700 2300 50  0001 C CNN
F 3 "~" H 4700 2300 50  0001 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F14BED2
P 4700 2500
F 0 "SW2" H 4700 2785 50  0000 C CNN
F 1 "SW_Push" H 4700 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4700 2700 50  0001 C CNN
F 3 "~" H 4700 2700 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
Connection ~ 4900 2500
Wire Wire Line
	3600 3600 4050 3600
Wire Wire Line
	4050 3600 4050 2100
Wire Wire Line
	4050 2100 4500 2100
Wire Wire Line
	4500 2500 4100 2500
Wire Wire Line
	4100 2500 4100 3700
Wire Wire Line
	4100 3700 3600 3700
Wire Wire Line
	5050 3950 4700 3950
Wire Wire Line
	4050 3950 4050 4100
Wire Wire Line
	4050 4100 3600 4100
Connection ~ 3100 5500
Wire Wire Line
	3000 5500 3100 5500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F164C2E
P 2200 1900
F 0 "#FLG01" H 2200 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 2073 50  0000 C CNN
F 2 "" H 2200 1900 50  0001 C CNN
F 3 "~" H 2200 1900 50  0001 C CNN
	1    2200 1900
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F165470
P 2550 1850
F 0 "#FLG02" H 2550 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 2023 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "~" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Magnetic:A1101ELHL U3
U 1 1 5F167CDA
P 5850 1000
F 0 "U3" V 5483 1000 50  0000 C CNN
F 1 "A1101ELHL" V 5574 1000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92" H 5850 650 50  0001 L CIN
F 3 "http://www.allegromicro.com/en/Products/Part_Numbers/1101/1101.pdf" H 5850 1650 50  0001 C CNN
	1    5850 1000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F16A66D
P 6250 2100
F 0 "#PWR013" H 6250 1950 50  0001 C CNN
F 1 "+5V" H 6265 2273 50  0000 C CNN
F 2 "" H 6250 2100 50  0001 C CNN
F 3 "" H 6250 2100 50  0001 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F16B7BD
P 5450 2250
F 0 "#PWR011" H 5450 2000 50  0001 C CNN
F 1 "GND" H 5455 2077 50  0000 C CNN
F 2 "" H 5450 2250 50  0001 C CNN
F 3 "" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2500 5050 3950
Wire Wire Line
	3600 3200 3750 3200
$Comp
L power:GND #PWR07
U 1 1 5F17973A
P 4050 1750
F 0 "#PWR07" H 4050 1500 50  0001 C CNN
F 1 "GND" H 4055 1577 50  0000 C CNN
F 2 "" H 4050 1750 50  0001 C CNN
F 3 "" H 4050 1750 50  0001 C CNN
	1    4050 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5F177045
P 3900 1750
F 0 "D1" H 3893 1967 50  0000 C CNN
F 1 "LED_ALT" H 3893 1876 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3900 1750 50  0001 C CNN
F 3 "~" H 3900 1750 50  0001 C CNN
	1    3900 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 4900 4400 4900
NoConn ~ 3600 3900
NoConn ~ 3600 3400
NoConn ~ 3600 3300
$Comp
L Device:C C3
U 1 1 5F184246
P 2250 3650
F 0 "C3" H 2365 3696 50  0000 L CNN
F 1 "C" H 2365 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2288 3500 50  0001 C CNN
F 3 "~" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3500 2250 3500
$Comp
L power:GND #PWR03
U 1 1 5F185DE6
P 2250 3800
F 0 "#PWR03" H 2250 3550 50  0001 C CNN
F 1 "GND" H 2255 3627 50  0000 C CNN
F 2 "" H 2250 3800 50  0001 C CNN
F 3 "" H 2250 3800 50  0001 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F1861B0
P 2100 3200
F 0 "Y1" V 2054 3331 50  0000 L CNN
F 1 "Crystal" V 2145 3331 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2100 3200 50  0001 C CNN
F 3 "~" H 2100 3200 50  0001 C CNN
	1    2100 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3300 2400 3350
Wire Wire Line
	2400 3350 2100 3350
Wire Wire Line
	2400 3100 2400 3050
Wire Wire Line
	2400 3050 2100 3050
$Comp
L Device:C C2
U 1 1 5F18DE93
P 1750 3350
F 0 "C2" H 1865 3396 50  0000 L CNN
F 1 "C" H 1865 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1788 3200 50  0001 C CNN
F 3 "~" H 1750 3350 50  0001 C CNN
	1    1750 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F18F21F
P 1750 3050
F 0 "C1" H 1865 3096 50  0000 L CNN
F 1 "C" H 1865 3005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1788 2900 50  0001 C CNN
F 3 "~" H 1750 3050 50  0001 C CNN
	1    1750 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 3050 1900 3050
Connection ~ 2100 3050
Wire Wire Line
	2100 3350 1900 3350
Connection ~ 2100 3350
Wire Wire Line
	1600 3050 1600 3350
$Comp
L power:GND #PWR01
U 1 1 5F194BEF
P 1600 3450
F 0 "#PWR01" H 1600 3200 50  0001 C CNN
F 1 "GND" H 1605 3277 50  0000 C CNN
F 2 "" H 1600 3450 50  0001 C CNN
F 3 "" H 1600 3450 50  0001 C CNN
	1    1600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3350 1600 3450
Connection ~ 1600 3350
$Comp
L Device:R R12
U 1 1 5F16344A
P 6300 2900
F 0 "R12" V 6093 2900 50  0000 C CNN
F 1 "10k" V 6184 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 2900 50  0001 C CNN
F 3 "~" H 6300 2900 50  0001 C CNN
	1    6300 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5F164BC1
P 6550 3000
F 0 "R13" V 6343 3000 50  0000 C CNN
F 1 "10k" V 6434 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6480 3000 50  0001 C CNN
F 3 "~" H 6550 3000 50  0001 C CNN
	1    6550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F1660E1
P 6800 3100
F 0 "R14" V 6593 3100 50  0000 C CNN
F 1 "10k" V 6684 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 3100 50  0001 C CNN
F 3 "~" H 6800 3100 50  0001 C CNN
	1    6800 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2900 6150 2900
Wire Wire Line
	6400 3000 3600 3000
Wire Wire Line
	3600 3100 6650 3100
$Comp
L Device:R R11
U 1 1 5F1670B7
P 5300 5000
F 0 "R11" V 5093 5000 50  0000 C CNN
F 1 "200" V 5184 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 5000 50  0001 C CNN
F 3 "~" H 5300 5000 50  0001 C CNN
	1    5300 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 4800 7200 4800
$Comp
L Transistor_BJT:MMBTA42 Q1
U 1 1 5F1726B7
P 7500 3450
F 0 "Q1" H 7690 3496 50  0000 L CNN
F 1 "MMBTA42" H 7690 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7700 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 7500 3450 50  0001 L CNN
	1    7500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3650 7600 3750
Wire Wire Line
	7600 3750 7750 3750
$Comp
L Transistor_BJT:MMBTA42 Q2
U 1 1 5F17A873
P 7950 3100
F 0 "Q2" H 8140 3146 50  0000 L CNN
F 1 "MMBTA42" H 8140 3055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 7950 3100 50  0001 L CNN
	1    7950 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBTA42 Q3
U 1 1 5F17FC38
P 8450 2700
F 0 "Q3" H 8640 2746 50  0000 L CNN
F 1 "MMBTA42" H 8640 2655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8650 2625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA42LT1-D.PDF" H 8450 2700 50  0001 L CNN
	1    8450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3100 6950 3450
Wire Wire Line
	6950 3450 7300 3450
Wire Wire Line
	6700 3000 7750 3000
Wire Wire Line
	7750 3000 7750 3100
Wire Wire Line
	6450 2900 7200 2900
Wire Wire Line
	7200 2900 7200 2700
Wire Wire Line
	7200 2700 8250 2700
Wire Wire Line
	7600 3250 7600 2900
Wire Wire Line
	7600 2900 8050 2900
Wire Wire Line
	8050 2900 8050 2500
Wire Wire Line
	8050 2500 8550 2500
Connection ~ 8050 2900
Wire Wire Line
	8050 3300 8050 3750
Wire Wire Line
	8050 3750 7900 3750
Wire Wire Line
	8050 3850 8550 3850
Wire Wire Line
	8550 3850 8550 2900
$Comp
L Device:R R10
U 1 1 5F1ACA5C
P 5300 4900
F 0 "R10" V 5093 4900 50  0000 C CNN
F 1 "200" V 5184 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4900 50  0001 C CNN
F 3 "~" H 5300 4900 50  0001 C CNN
	1    5300 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F1AEA02
P 5300 4800
F 0 "R9" V 5093 4800 50  0000 C CNN
F 1 "200" V 5184 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4800 50  0001 C CNN
F 3 "~" H 5300 4800 50  0001 C CNN
	1    5300 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F1AEA08
P 5300 4700
F 0 "R8" V 5093 4700 50  0000 C CNN
F 1 "200" V 5184 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4700 50  0001 C CNN
F 3 "~" H 5300 4700 50  0001 C CNN
	1    5300 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F1B112A
P 5300 4600
F 0 "R7" V 5093 4600 50  0000 C CNN
F 1 "200" V 5184 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4600 50  0001 C CNN
F 3 "~" H 5300 4600 50  0001 C CNN
	1    5300 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F1B1130
P 5300 4500
F 0 "R6" V 5093 4500 50  0000 C CNN
F 1 "200" V 5184 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4500 50  0001 C CNN
F 3 "~" H 5300 4500 50  0001 C CNN
	1    5300 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F1B1136
P 5300 4400
F 0 "R5" V 5093 4400 50  0000 C CNN
F 1 "200" V 5184 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4400 50  0001 C CNN
F 3 "~" H 5300 4400 50  0001 C CNN
	1    5300 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1B113C
P 5300 4300
F 0 "R4" V 5093 4300 50  0000 C CNN
F 1 "200" V 5184 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 4300 50  0001 C CNN
F 3 "~" H 5300 4300 50  0001 C CNN
	1    5300 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 4850 4950 4850
Wire Wire Line
	4950 4850 4950 4800
Wire Wire Line
	4950 4800 5150 4800
Wire Wire Line
	3850 4200 4950 4200
Wire Wire Line
	4950 4200 4950 4300
Wire Wire Line
	4950 4300 5150 4300
$Comp
L Device:R R2
U 1 1 5F1D1101
P 3750 2200
F 0 "R2" V 3543 2200 50  0000 C CNN
F 1 "200" V 3634 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3680 2200 50  0001 C CNN
F 3 "~" H 3750 2200 50  0001 C CNN
	1    3750 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3200 3750 2350
Wire Wire Line
	3750 2050 3750 1750
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5F1E1CA2
P 6400 1100
F 0 "J7" V 6272 1180 50  0000 L CNN
F 1 "Conn_01x01" V 6363 1180 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 6400 1100 50  0001 C CNN
F 3 "~" H 6400 1100 50  0001 C CNN
	1    6400 1100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5F1E2D67
P 5850 1500
F 0 "J4" V 5722 1580 50  0000 L CNN
F 1 "Conn_01x01" V 5813 1580 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 5850 1500 50  0001 C CNN
F 3 "~" H 5850 1500 50  0001 C CNN
	1    5850 1500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5F1E4E14
P 5450 1100
F 0 "J2" V 5322 1180 50  0000 L CNN
F 1 "Conn_01x01" V 5413 1180 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 5450 1100 50  0001 C CNN
F 3 "~" H 5450 1100 50  0001 C CNN
	1    5450 1100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5F1E9C28
P 5450 2050
F 0 "J3" V 5322 2130 50  0000 L CNN
F 1 "Conn_01x01" V 5413 2130 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 5450 2050 50  0001 C CNN
F 3 "~" H 5450 2050 50  0001 C CNN
	1    5450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5F1EBDC2
P 5850 2300
F 0 "J5" V 5722 2380 50  0000 L CNN
F 1 "Conn_01x01" V 5813 2380 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 5850 2300 50  0001 C CNN
F 3 "~" H 5850 2300 50  0001 C CNN
	1    5850 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 900  6400 900 
Wire Wire Line
	5050 2500 5850 2500
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5F1FADB6
P 6250 2300
F 0 "J6" V 6122 2380 50  0000 L CNN
F 1 "Conn_01x01" V 6213 2380 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 6250 2300 50  0001 C CNN
F 3 "~" H 6250 2300 50  0001 C CNN
	1    6250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3650 4700 3550
$Comp
L Device:R R3
U 1 1 5F17308C
P 4700 3800
F 0 "R3" V 4493 3800 50  0000 C CNN
F 1 "10k" V 4584 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4630 3800 50  0001 C CNN
F 3 "~" H 4700 3800 50  0001 C CNN
	1    4700 3800
	-1   0    0    1   
$EndComp
Connection ~ 4700 3950
Wire Wire Line
	4700 3950 4050 3950
$Comp
L Switch:SW_Push SW3
U 1 1 5F17022B
P 4700 2850
F 0 "SW3" H 4700 3135 50  0000 C CNN
F 1 "SW_Push" H 4700 3044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4700 3050 50  0001 C CNN
F 3 "~" H 4700 3050 50  0001 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2500 4900 2850
Connection ~ 4900 2850
Wire Wire Line
	4900 2850 4900 3150
Wire Wire Line
	4500 2850 4150 2850
Wire Wire Line
	4150 2850 4150 3800
Wire Wire Line
	4150 3800 3600 3800
$Comp
L Display_Character:3DIGIT-7SEGMENT U4
U 1 1 5F180D13
P 6550 4600
F 0 "U4" H 6325 5267 50  0000 C CNN
F 1 "3DIGIT-7SEGMENT" H 6325 5176 50  0000 C CNN
F 2 "Display_7Segment:3DIGIT-7SEGMENT" H 6550 4000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CA56-12CGKWA(Ver.9A).pdf" H 6120 4630 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 5F1A7201
P 8050 4600
F 0 "J11" V 7922 4680 50  0000 L CNN
F 1 "Conn_01x01" V 8013 4680 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 8050 4600 50  0001 C CNN
F 3 "~" H 8050 4600 50  0001 C CNN
	1    8050 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5F1AA58B
P 7900 4600
F 0 "J9" V 7772 4680 50  0000 L CNN
F 1 "Conn_01x01" V 7863 4680 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 7900 4600 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5F1AF101
P 7900 4350
F 0 "J8" V 7772 4430 50  0000 L CNN
F 1 "Conn_01x01" V 7863 4430 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 7900 4350 50  0001 C CNN
F 3 "~" H 7900 4350 50  0001 C CNN
	1    7900 4350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5F1B1173
P 8050 4350
F 0 "J10" V 7922 4430 50  0000 L CNN
F 1 "Conn_01x01" V 8013 4430 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 8050 4350 50  0001 C CNN
F 3 "~" H 8050 4350 50  0001 C CNN
	1    8050 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3750 7900 4150
Wire Wire Line
	8050 4150 8050 3850
Wire Wire Line
	7900 4900 7200 4900
Wire Wire Line
	7200 5000 8050 5000
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5F1BDD14
P 8550 2300
F 0 "J12" V 8422 2380 50  0000 L CNN
F 1 "Conn_01x01" V 8513 2380 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 8550 2300 50  0001 C CNN
F 3 "~" H 8550 2300 50  0001 C CNN
	1    8550 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5F22BEE2
P 4700 3550
F 0 "#PWR08" H 4700 3400 50  0001 C CNN
F 1 "+5V" H 4715 3723 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Connection ~ 3100 2500
Wire Wire Line
	3100 2600 3100 2500
Wire Wire Line
	3100 2350 3100 2500
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5F1C0B65
P 3300 2500
F 0 "J1" V 3172 2580 50  0000 L CNN
F 1 "Conn_01x01" V 3263 2580 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 3300 2500 50  0001 C CNN
F 3 "~" H 3300 2500 50  0001 C CNN
	1    3300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3750 7750 4800
Wire Wire Line
	7900 4800 7900 4900
Wire Wire Line
	8050 4800 8050 5000
$Comp
L Sensor_Temperature:TMP36 U2
U 1 1 61306C7B
P 5550 3300
F 0 "U2" H 5550 3567 50  0000 C CNN
F 1 "TMP36" H 5550 3476 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92" H 5550 2750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/TMP35_36_37.pdf" H 5550 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 3600 4000
Wire Wire Line
	4300 3600 5550 3600
Wire Wire Line
	4300 3600 4300 4000
$Comp
L power:GND #PWR012
U 1 1 61319996
P 5900 3350
F 0 "#PWR012" H 5900 3100 50  0001 C CNN
F 1 "GND" H 5905 3177 50  0000 C CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 6131C230
P 5200 3350
F 0 "#PWR010" H 5200 3200 50  0001 C CNN
F 1 "+5V" H 5215 3523 50  0000 C CNN
F 2 "" H 5200 3350 50  0001 C CNN
F 3 "" H 5200 3350 50  0001 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2500 3100 2500
Connection ~ 3000 2500
$Comp
L power:+5V #PWR02
U 1 1 61329533
P 2200 1900
F 0 "#PWR02" H 2200 1750 50  0001 C CNN
F 1 "+5V" H 2215 2073 50  0000 C CNN
F 2 "" H 2200 1900 50  0001 C CNN
F 3 "" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6132BE87
P 2550 1850
F 0 "#PWR04" H 2550 1600 50  0001 C CNN
F 1 "GND" H 2555 1677 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
