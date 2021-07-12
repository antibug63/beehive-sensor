EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Beehive Cubecell Board"
Date "2021-07-09"
Rev "1.0"
Comp "Jörg Keller"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5350 2900 0    50   BiDi ~ 0
OneDta
Text GLabel 5350 2800 0    50   BiDi ~ 0
DHTDta
Text GLabel 7350 2800 2    50   BiDi ~ 0
WDta
Text GLabel 7350 2700 2    50   Output ~ 0
WClk
Text GLabel 7350 2900 2    50   Output ~ 0
LED
$Comp
L power:GND #PWR04
U 1 1 60E7F6F6
P 7350 2000
F 0 "#PWR04" H 7350 1750 50  0001 C CNN
F 1 "GND" V 7355 1872 50  0000 R CNN
F 2 "" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0001 C CNN
	1    7350 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60E7FAF7
P 6100 2000
F 0 "#PWR03" H 6100 1750 50  0001 C CNN
F 1 "GND" V 6105 1872 50  0000 R CNN
F 2 "" H 6100 2000 50  0001 C CNN
F 3 "" H 6100 2000 50  0001 C CNN
	1    6100 2000
	0    1    1    0   
$EndComp
$Comp
L power:VS #PWR05
U 1 1 60E813D2
P 6100 2100
F 0 "#PWR05" H 5900 1950 50  0001 C CNN
F 1 "VS" V 6115 2228 50  0000 L CNN
F 2 "" H 6100 2100 50  0001 C CNN
F 3 "" H 6100 2100 50  0001 C CNN
	1    6100 2100
	0    -1   -1   0   
$EndComp
Text GLabel 6550 3200 3    50   Input ~ 0
UsrBtn
$Comp
L power:GND #PWR09
U 1 1 60E85959
P 3950 3350
F 0 "#PWR09" H 3950 3100 50  0001 C CNN
F 1 "GND" V 3955 3177 50  0000 C CNN
F 2 "" H 3950 3350 50  0001 C CNN
F 3 "" H 3950 3350 50  0001 C CNN
	1    3950 3350
	0    -1   -1   0   
$EndComp
Text GLabel 4000 3550 2    50   BiDi ~ 0
DHTDta
$Comp
L Device:R R1
U 1 1 60E873E5
P 5500 2550
F 0 "R1" H 5350 2500 50  0000 C CNN
F 1 "4k7" H 5350 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P20.32mm_Horizontal" V 5430 2550 50  0001 C CNN
F 3 "~" H 5500 2550 50  0001 C CNN
	1    5500 2550
	1    0    0    1   
$EndComp
$Comp
L Sensor_Temperature:DS18B20 U3
U 1 1 60E969EF
P 3200 6500
F 0 "U3" H 2970 6546 50  0000 R CNN
F 1 "DS18B20" H 2970 6455 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2200 6250 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 3050 6750 50  0001 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E9BDDF
P 5650 2550
F 0 "R2" H 5580 2504 50  0000 R CNN
F 1 "4k7" H 5580 2595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P20.32mm_Horizontal" V 5580 2550 50  0001 C CNN
F 3 "~" H 5650 2550 50  0001 C CNN
	1    5650 2550
	-1   0    0    1   
$EndComp
Text GLabel 4600 4200 2    50   BiDi ~ 0
OneDta
$Comp
L Switch:SW_Push SW1
U 1 1 60EABADE
P 9600 2450
F 0 "SW1" H 9600 2735 50  0000 C CNN
F 1 "Pushbutton" H 9600 2644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 9600 2650 50  0001 C CNN
F 3 "~" H 9600 2650 50  0001 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60EAC46A
P 9600 2700
F 0 "D1" H 9593 2445 50  0000 C CNN
F 1 "LED" H 9600 2600 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 9600 2700 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60EACB6E
P 8650 2800
F 0 "#PWR08" H 8650 2550 50  0001 C CNN
F 1 "GND" V 8655 2672 50  0000 R CNN
F 2 "" H 8650 2800 50  0001 C CNN
F 3 "" H 8650 2800 50  0001 C CNN
	1    8650 2800
	0    1    1    0   
$EndComp
Text GLabel 8650 2600 0    50   Output ~ 0
UsrBtn
Text GLabel 8650 2700 0    50   Input ~ 0
LED
Wire Wire Line
	9800 2450 9800 2700
Wire Wire Line
	9750 2700 9800 2700
Connection ~ 9800 2700
Wire Wire Line
	3000 2850 3000 2450
Wire Wire Line
	2800 2850 2800 2450
Wire Wire Line
	3200 6200 3200 5650
Wire Wire Line
	3500 6500 3500 6200
Wire Wire Line
	3500 6200 3300 6200
Wire Wire Line
	3300 6200 3300 5650
Wire Wire Line
	3200 6800 2500 6800
Wire Wire Line
	2500 6800 2500 6100
Wire Wire Line
	2500 6100 3100 6100
Wire Wire Line
	3100 6100 3100 5650
$Comp
L power:GND #PWR011
U 1 1 60EFF97C
P 4550 4000
F 0 "#PWR011" H 4550 3750 50  0001 C CNN
F 1 "GND" V 4550 3900 50  0000 R CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60F12AC8
P 8650 1800
F 0 "#PWR02" H 8650 1550 50  0001 C CNN
F 1 "GND" V 8655 1672 50  0000 R CNN
F 2 "" H 8650 1800 50  0001 C CNN
F 3 "" H 8650 1800 50  0001 C CNN
	1    8650 1800
	0    1    1    0   
$EndComp
$Comp
L power:VS #PWR01
U 1 1 60F12F95
P 8650 1700
F 0 "#PWR01" H 8450 1550 50  0001 C CNN
F 1 "VS" V 8665 1828 50  0000 L CNN
F 2 "" H 8650 1700 50  0001 C CNN
F 3 "" H 8650 1700 50  0001 C CNN
	1    8650 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 60F1D387
P 6100 2400
F 0 "#PWR07" H 6100 2150 50  0001 C CNN
F 1 "GND" V 6105 2272 50  0000 R CNN
F 2 "" H 6100 2400 50  0001 C CNN
F 3 "" H 6100 2400 50  0001 C CNN
	1    6100 2400
	0    1    1    0   
$EndComp
NoConn ~ -1050 5500
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60F7EC9F
P 8900 2700
F 0 "J4" H 8950 2900 50  0000 R CNN
F 1 "Pin 1x3" H 9050 3000 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8900 2700 50  0001 C CNN
F 3 "~" H 8900 2700 50  0001 C CNN
	1    8900 2700
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 60F7F76C
P 8850 2700
F 0 "J3" H 8742 2375 50  0000 C CNN
F 1 "User" H 8742 2466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8850 2700 50  0001 C CNN
F 3 "~" H 8850 2700 50  0001 C CNN
	1    8850 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	9800 2700 9800 2800
Wire Wire Line
	9100 2800 9800 2800
Wire Wire Line
	9400 2450 9100 2450
Wire Wire Line
	9100 2450 9100 2600
$Comp
L skorokithakis:DHT22_Temperature_Humidity TH1
U 1 1 60E84B6C
P 2850 2450
F 0 "TH1" H 3128 2913 50  0000 L CNN
F 1 "DHT22 Sensor" H 3128 2822 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 2850 2450 60  0001 C CNN
F 3 "" H 2850 2450 60  0000 C CNN
	1    2850 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J8
U 1 1 60ED200A
P 3000 4850
F 0 "J8" H 2900 5150 50  0000 L CNN
F 1 "GND" H 2850 4450 50  0000 L CNN
F 2 "" H 3000 4850 50  0001 C CNN
F 3 "~" H 3000 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J9
U 1 1 60ED2F10
P 3350 4850
F 0 "J9" H 3250 5150 50  0000 L CNN
F 1 "VDD" H 3200 4450 50  0000 L CNN
F 2 "" H 3350 4850 50  0001 C CNN
F 3 "~" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J10
U 1 1 60ED379F
P 3700 4850
F 0 "J10" H 3600 5150 50  0000 L CNN
F 1 "DTA" H 3550 4450 50  0000 L CNN
F 2 "" H 3700 4850 50  0001 C CNN
F 3 "~" H 3700 4850 50  0001 C CNN
	1    3700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4100 3150 4650
Connection ~ 3150 4650
Wire Wire Line
	3150 4650 3150 4750
Connection ~ 3150 4750
Wire Wire Line
	3150 4750 3150 4850
Connection ~ 3150 4850
Wire Wire Line
	3150 4850 3150 4950
Connection ~ 3150 4950
Wire Wire Line
	3150 4950 3150 5050
Connection ~ 3150 5050
Wire Wire Line
	3150 5050 3150 5150
Wire Wire Line
	4550 4000 2800 4000
Wire Wire Line
	2800 4000 2800 4650
Connection ~ 2800 4650
Wire Wire Line
	2800 4650 2800 4750
Connection ~ 2800 4750
Wire Wire Line
	2800 4750 2800 4850
Connection ~ 2800 4850
Wire Wire Line
	2800 4850 2800 4950
Connection ~ 2800 4950
Wire Wire Line
	2800 4950 2800 5050
Connection ~ 2800 5050
Wire Wire Line
	2800 5050 2800 5150
Wire Wire Line
	3500 4200 3500 4650
Connection ~ 3500 4650
Wire Wire Line
	3500 4650 3500 4750
Connection ~ 3500 4750
Wire Wire Line
	3500 4750 3500 4850
Connection ~ 3500 4850
Wire Wire Line
	3500 4850 3500 4950
Connection ~ 3500 4950
Wire Wire Line
	3500 4950 3500 5050
Connection ~ 3500 5050
Wire Wire Line
	3500 5050 3500 5150
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 60EDEB36
P 3200 5450
F 0 "J11" V 3262 5262 50  0000 R CNN
F 1 "Pin 1x3" V 3353 5262 50  0000 R CNN
F 2 "" H 3200 5450 50  0001 C CNN
F 3 "~" H 3200 5450 50  0001 C CNN
	1    3200 5450
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60EEAB23
P 2900 3050
F 0 "J5" V 3054 3194 50  0000 L CNN
F 1 "Pin 1x3" V 2963 3194 50  0000 L CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	2700 2450 2700 2650
Wire Wire Line
	2700 2650 2900 2650
Wire Wire Line
	2900 2650 2900 2850
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 60EF525B
P 2900 3100
F 0 "J6" V 2838 3248 50  0000 L CNN
F 1 "DHTxx" V 2747 3248 50  0000 L CNN
F 2 "" H 2900 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    1    -1   0   
$EndComp
Wire Wire Line
	3950 3350 3000 3350
Wire Wire Line
	3000 3350 3000 3300
Wire Wire Line
	2900 3450 2900 3300
Wire Wire Line
	2800 3550 2800 3300
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 60F332C2
P 8850 1800
F 0 "J1" H 8742 1475 50  0000 C CNN
F 1 "SolarCell" H 8742 1566 50  0000 C CNN
F 2 "" H 8850 1800 50  0001 C CNN
F 3 "~" H 8850 1800 50  0001 C CNN
	1    8850 1800
	1    0    0    1   
$EndComp
NoConn ~ 6650 3200
NoConn ~ 6100 3000
NoConn ~ 6100 2300
NoConn ~ 6100 2700
NoConn ~ 7350 2500
NoConn ~ 7350 2600
NoConn ~ 7350 2400
NoConn ~ 7350 2300
NoConn ~ 7350 2200
NoConn ~ 7350 2100
NoConn ~ 7350 3000
$Comp
L heltec-cubecell:HTCC-AB01 U1
U 1 1 60F8E3CC
P 6750 2450
F 0 "U1" H 6725 3165 50  0000 C CNN
F 1 "HTCC-AB01" H 6725 3074 50  0000 C CNN
F 2 "" H 6750 2450 50  0000 C CNN
F 3 "" H 6750 2450 50  0001 C CNN
	1    6750 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60F97C77
P 6850 3400
F 0 "BT1" H 6968 3496 50  0000 L CNN
F 1 "LiPo 3.7V" H 6968 3405 50  0000 L CNN
F 2 "" V 6850 3460 50  0001 C CNN
F 3 "~" V 6850 3460 50  0001 C CNN
	1    6850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3500 6950 3500
Wire Wire Line
	6950 3500 6950 3200
$Comp
L breakout-boards:HX711-Board U2
U 1 1 60F9B401
P 6700 4150
F 0 "U2" H 6700 4165 50  0000 C CNN
F 1 "HX711-Board" H 6700 4074 50  0000 C CNN
F 2 "" H 6700 4150 50  0001 C CNN
F 3 "" H 6700 4150 50  0001 C CNN
	1    6700 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60F9BB6B
P 7100 4450
F 0 "#PWR013" H 7100 4200 50  0001 C CNN
F 1 "GND" V 7105 4322 50  0000 R CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	1    7100 4450
	0    -1   -1   0   
$EndComp
Text GLabel 7100 4650 2    50   Input ~ 0
WClk
Text GLabel 7100 4550 2    50   BiDi ~ 0
WDta
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 60FA0812
P 5700 4450
F 0 "J7" H 5592 4735 50  0000 C CNN
F 1 "LoadCell" H 5592 4644 50  0000 C CNN
F 2 "" H 5700 4450 50  0001 C CNN
F 3 "~" H 5700 4450 50  0001 C CNN
	1    5700 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4350 6300 4350
Wire Wire Line
	5900 4450 6300 4450
Wire Wire Line
	5900 4550 6300 4550
Wire Wire Line
	5900 4650 6300 4650
NoConn ~ 6300 4750
NoConn ~ 6300 4850
$Comp
L Device:Solar_Cell SC1
U 1 1 60FA9628
P 9600 1700
F 0 "SC1" H 9708 1796 50  0000 L CNN
F 1 "Solar_Cell" H 9708 1705 50  0000 L CNN
F 2 "" V 9600 1760 50  0001 C CNN
F 3 "~" V 9600 1760 50  0001 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60FAC15C
P 8900 1800
F 0 "J2" H 8950 1900 50  0000 R CNN
F 1 "Pin 1x2" H 9050 2000 50  0000 R CNN
F 2 "" H 8900 1800 50  0001 C CNN
F 3 "~" H 8900 1800 50  0001 C CNN
	1    8900 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 1800 9600 1800
Wire Wire Line
	9100 1700 9350 1700
Wire Wire Line
	9350 1700 9350 1500
Wire Wire Line
	9350 1500 9600 1500
$Comp
L Device:R R3
U 1 1 60FBFA32
P 9300 2700
F 0 "R3" V 9200 2700 50  0000 C CNN
F 1 "R" V 9300 2700 50  0000 C CNN
F 2 "" V 9230 2700 50  0001 C CNN
F 3 "~" H 9300 2700 50  0001 C CNN
	1    9300 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2700 9100 2700
Text Notes 9200 3250 0    50   ~ 0
Current limiting resistor\ndepends on specific \nLED used.\nGPIO7 is pulled-up\nby MCU.\n
Wire Wire Line
	2900 3450 3950 3450
Wire Wire Line
	2800 3550 4000 3550
Wire Wire Line
	5350 2800 5650 2800
Wire Wire Line
	3500 4200 4600 4200
Wire Wire Line
	3150 4100 4550 4100
Wire Wire Line
	5350 2900 5500 2900
Wire Wire Line
	5500 2900 5500 2700
Connection ~ 5500 2900
Wire Wire Line
	5500 2900 6100 2900
Wire Wire Line
	5500 2400 5500 2200
Wire Wire Line
	5500 2200 5350 2200
Wire Wire Line
	5500 2200 5650 2200
Connection ~ 5500 2200
Wire Wire Line
	5650 2400 5650 2200
Connection ~ 5650 2200
Wire Wire Line
	5650 2200 6100 2200
Wire Wire Line
	5650 2700 5650 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 6100 2800
$Comp
L power:+3V3 #PWR06
U 1 1 60FFE7DE
P 5350 2200
F 0 "#PWR06" H 5350 2050 50  0001 C CNN
F 1 "+3V3" V 5350 2300 50  0000 L CNN
F 2 "" H 5350 2200 50  0001 C CNN
F 3 "" H 5350 2200 50  0001 C CNN
	1    5350 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 60FFF092
P 7100 4750
F 0 "#PWR014" H 7100 4600 50  0001 C CNN
F 1 "+3V3" V 7100 4850 50  0000 L CNN
F 2 "" H 7100 4750 50  0001 C CNN
F 3 "" H 7100 4750 50  0001 C CNN
	1    7100 4750
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 61005626
P 3950 3450
F 0 "#PWR010" H 3950 3300 50  0001 C CNN
F 1 "+3V3" V 3950 3550 50  0000 L CNN
F 2 "" H 3950 3450 50  0001 C CNN
F 3 "" H 3950 3450 50  0001 C CNN
	1    3950 3450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 61005AEB
P 4550 4100
F 0 "#PWR012" H 4550 3950 50  0001 C CNN
F 1 "+3V3" V 4550 4200 50  0000 L CNN
F 2 "" H 4550 4100 50  0001 C CNN
F 3 "" H 4550 4100 50  0001 C CNN
	1    4550 4100
	0    1    1    0   
$EndComp
$EndSCHEMATC
