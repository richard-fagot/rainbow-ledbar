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
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 5EDFB624
P 2550 4000
F 0 "U1" H 2021 4046 50  0000 R CNN
F 1 "ATtiny85-20PU" H 2021 3955 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2550 4000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2550 4000 50  0001 C CNN
	1    2550 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5EDFC705
P 6650 2200
F 0 "Q1" H 6840 2246 50  0000 L CNN
F 1 "PN2222A" H 6840 2155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6850 2125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 6650 2200 50  0001 L CNN
	1    6650 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 5EDFD2C2
P 6650 2950
F 0 "Q2" H 6840 2996 50  0000 L CNN
F 1 "PN2222A" H 6840 2905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6850 2875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 6650 2950 50  0001 L CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 5EDFF144
P 2550 4750
F 0 "#PWR0101" H 2550 4500 50  0001 C CNN
F 1 "GNDREF" H 2555 4577 50  0000 C CNN
F 2 "" H 2550 4750 50  0001 C CNN
F 3 "" H 2550 4750 50  0001 C CNN
	1    2550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EDFFD3A
P 6050 2200
F 0 "R1" V 6257 2200 50  0000 C CNN
F 1 "1k" V 6166 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 2200 50  0001 C CNN
F 3 "~" H 6050 2200 50  0001 C CNN
	1    6050 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EE00C74
P 6050 2950
F 0 "R2" V 6257 2950 50  0000 C CNN
F 1 "1k" V 6166 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 2950 50  0001 C CNN
F 3 "~" H 6050 2950 50  0001 C CNN
	1    6050 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EE014EA
P 6050 3700
F 0 "R3" V 6257 3700 50  0000 C CNN
F 1 "1k" V 6166 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 3700 50  0001 C CNN
F 3 "~" H 6050 3700 50  0001 C CNN
	1    6050 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q3
U 1 1 5EE0552A
P 6650 3700
F 0 "Q3" H 6840 3746 50  0000 L CNN
F 1 "PN2222A" H 6840 3655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6850 3625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 6650 3700 50  0001 L CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3700 6450 3700
Wire Wire Line
	6450 2950 6200 2950
Wire Wire Line
	6450 2200 6200 2200
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5EE06C5E
P 8150 2850
F 0 "J1" H 8230 2842 50  0000 L CNN
F 1 "Leds" H 8230 2751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8150 2850 50  0001 C CNN
F 3 "~" H 8150 2850 50  0001 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3150 6750 3100
Wire Wire Line
	6750 3150 7500 3150
Wire Wire Line
	6750 3900 7950 3900
Connection ~ 6750 3150
$Comp
L power:VCC #PWR0102
U 1 1 5EE091B7
P 6750 1900
F 0 "#PWR0102" H 6750 1750 50  0001 C CNN
F 1 "VCC" H 6765 2073 50  0000 C CNN
F 2 "" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5EE0A0E2
P 6750 2650
F 0 "#PWR0103" H 6750 2500 50  0001 C CNN
F 1 "VCC" H 6765 2823 50  0000 C CNN
F 2 "" H 6750 2650 50  0001 C CNN
F 3 "" H 6750 2650 50  0001 C CNN
	1    6750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5EE0A97F
P 6750 3400
F 0 "#PWR0104" H 6750 3250 50  0001 C CNN
F 1 "VCC" H 6765 3573 50  0000 C CNN
F 2 "" H 6750 3400 50  0001 C CNN
F 3 "" H 6750 3400 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1900 6750 2000
Wire Wire Line
	6750 2650 6750 2750
Wire Wire Line
	6750 3400 6750 3500
$Comp
L power:VCC #PWR0105
U 1 1 5EE0BACD
P 2550 3300
F 0 "#PWR0105" H 2550 3150 50  0001 C CNN
F 1 "VCC" H 2565 3473 50  0000 C CNN
F 2 "" H 2550 3300 50  0001 C CNN
F 3 "" H 2550 3300 50  0001 C CNN
	1    2550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3300 2550 3400
$Comp
L power:GNDREF #PWR0106
U 1 1 5EE0D4CF
P 7700 2250
F 0 "#PWR0106" H 7700 2000 50  0001 C CNN
F 1 "GNDREF" H 7705 2077 50  0000 C CNN
F 2 "" H 7700 2250 50  0001 C CNN
F 3 "" H 7700 2250 50  0001 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4750 2550 4600
Wire Wire Line
	7700 2250 7700 2100
Wire Wire Line
	7700 2100 7950 2100
Text GLabel 3400 4000 2    50   Input ~ 0
R
Wire Wire Line
	3400 4000 3150 4000
Text GLabel 3400 3800 2    50   Input ~ 0
G
Text GLabel 3400 3700 2    50   Input ~ 0
B
Text GLabel 5600 3700 0    50   Input ~ 0
R
Text GLabel 5600 2950 0    50   Input ~ 0
G
Text GLabel 5600 2200 0    50   Input ~ 0
B
Wire Wire Line
	3400 3700 3150 3700
Wire Wire Line
	3400 3800 3150 3800
Wire Wire Line
	5600 2200 5900 2200
Wire Wire Line
	5600 2950 5900 2950
Wire Wire Line
	5600 3700 5900 3700
Wire Wire Line
	7500 2850 7500 3150
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5EE21198
P 2500 1250
F 0 "J2" H 2580 1242 50  0000 L CNN
F 1 "Alimentation" H 2580 1151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2500 1250 50  0001 C CNN
F 3 "~" H 2500 1250 50  0001 C CNN
	1    2500 1250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5EE23575
P 4000 1300
F 0 "J3" H 4080 1292 50  0000 L CNN
F 1 "Pushbutton" H 4080 1201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4000 1300 50  0001 C CNN
F 3 "~" H 4000 1300 50  0001 C CNN
	1    4000 1300
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5EE245E6
P 5700 1250
F 0 "J5" H 5780 1292 50  0000 L CNN
F 1 "Potentiomètre" H 5780 1201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5700 1250 50  0001 C CNN
F 3 "~" H 5700 1250 50  0001 C CNN
	1    5700 1250
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5EE25A80
P 1750 900
F 0 "#PWR0107" H 1750 750 50  0001 C CNN
F 1 "VCC" H 1765 1073 50  0000 C CNN
F 2 "" H 1750 900 50  0001 C CNN
F 3 "" H 1750 900 50  0001 C CNN
	1    1750 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0108
U 1 1 5EE2666E
P 2100 1400
F 0 "#PWR0108" H 2100 1150 50  0001 C CNN
F 1 "GNDREF" H 2105 1227 50  0000 C CNN
F 2 "" H 2100 1400 50  0001 C CNN
F 3 "" H 2100 1400 50  0001 C CNN
	1    2100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1250 2100 1250
Wire Wire Line
	2100 1250 2100 1400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EE30DDA
P 850 1050
F 0 "#FLG0101" H 850 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 850 1223 50  0000 C CNN
F 2 "" H 850 1050 50  0001 C CNN
F 3 "~" H 850 1050 50  0001 C CNN
	1    850  1050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EE31B88
P 1250 1050
F 0 "#FLG0102" H 1250 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1223 50  0000 C CNN
F 2 "" H 1250 1050 50  0001 C CNN
F 3 "~" H 1250 1050 50  0001 C CNN
	1    1250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0109
U 1 1 5EE33412
P 3800 1400
F 0 "#PWR0109" H 3800 1150 50  0001 C CNN
F 1 "GNDREF" H 3805 1227 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 5EE3454D
P 5500 1450
F 0 "#PWR0110" H 5500 1200 50  0001 C CNN
F 1 "GNDREF" H 5505 1277 50  0000 C CNN
F 2 "" H 5500 1450 50  0001 C CNN
F 3 "" H 5500 1450 50  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1300 3800 1400
Wire Wire Line
	5500 1350 5500 1450
Text GLabel 3800 1200 0    50   Input ~ 0
PushButton
Text GLabel 3150 3900 2    50   Input ~ 0
PushButton
$Comp
L power:VCC #PWR0111
U 1 1 5EE36D47
P 5500 1050
F 0 "#PWR0111" H 5500 900 50  0001 C CNN
F 1 "VCC" H 5515 1223 50  0000 C CNN
F 2 "" H 5500 1050 50  0001 C CNN
F 3 "" H 5500 1050 50  0001 C CNN
	1    5500 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1050 5500 1150
Text GLabel 5500 1250 0    50   Input ~ 0
Potentiomètre
Text GLabel 3150 4100 2    50   Input ~ 0
Potentiomètre
NoConn ~ 3150 4200
Wire Wire Line
	7950 3900 7950 3050
Wire Wire Line
	7700 2400 6750 2400
Wire Wire Line
	7950 2100 7950 2750
Wire Wire Line
	7700 2400 7700 2950
Wire Wire Line
	7700 2950 7950 2950
Wire Wire Line
	7500 2850 7950 2850
$Comp
L Device:D_Schottky D1
U 1 1 5F56C874
P 2150 1150
F 0 "D1" H 2150 1367 50  0000 C CNN
F 1 "D_Schottky" H 2150 1276 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2150 1150 50  0001 C CNN
F 3 "~" H 2150 1150 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0112
U 1 1 5F573609
P 1250 1050
F 0 "#PWR0112" H 1250 800 50  0001 C CNN
F 1 "GNDREF" H 1255 877 50  0000 C CNN
F 2 "" H 1250 1050 50  0001 C CNN
F 3 "" H 1250 1050 50  0001 C CNN
	1    1250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5F573AD9
P 850 1050
F 0 "#PWR0113" H 850 900 50  0001 C CNN
F 1 "VCC" H 865 1223 50  0000 C CNN
F 2 "" H 850 1050 50  0001 C CNN
F 3 "" H 850 1050 50  0001 C CNN
	1    850  1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 900  1750 1150
Wire Wire Line
	1750 1150 2000 1150
$EndSCHEMATC
