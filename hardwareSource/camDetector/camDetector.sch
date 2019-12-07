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
L power:GND #PWR0102
U 1 1 5DDAF1F2
P 2650 3250
F 0 "#PWR0102" H 2650 3000 50  0001 C CNN
F 1 "GND" H 2655 3077 50  0000 C CNN
F 2 "" H 2650 3250 50  0001 C CNN
F 3 "" H 2650 3250 50  0001 C CNN
	1    2650 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5DDBBA8B
P 2000 2050
F 0 "#PWR0105" H 2000 1900 50  0001 C CNN
F 1 "VCC" H 2017 2223 50  0000 C CNN
F 2 "" H 2000 2050 50  0001 C CNN
F 3 "" H 2000 2050 50  0001 C CNN
	1    2000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2050 2000 2300
Wire Wire Line
	3400 2300 3400 2150
Text Notes 1850 1600 0    50   ~ 0
Power Section\n
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DE4194C
P 3250 1900
F 0 "#FLG0102" H 3250 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 2073 50  0000 C CNN
F 2 "" H 3250 1900 50  0001 C CNN
F 3 "~" H 3250 1900 50  0001 C CNN
	1    3250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1900 3250 2300
Connection ~ 3250 2300
Wire Wire Line
	3250 2300 3400 2300
$Comp
L Connector:USB_B_Micro J3
U 1 1 5DEC5D83
P 1000 2500
F 0 "J3" H 1057 2967 50  0000 C CNN
F 1 "USB_B_Micro" H 1057 2876 50  0000 C CNN
F 2 "digikey-footprints:USB_Micro_B_Female_10103594-0001LF" H 1150 2450 50  0001 C CNN
F 3 "~" H 1150 2450 50  0001 C CNN
	1    1000 2500
	1    0    0    -1  
$EndComp
NoConn ~ 1300 2500
NoConn ~ 1300 2600
NoConn ~ 1300 2700
Wire Wire Line
	1000 2900 1000 3000
Wire Wire Line
	1000 3000 900  3000
Wire Wire Line
	900  3000 900  2900
Connection ~ 900  3000
$Comp
L power:GND #PWR0114
U 1 1 5DECF8B0
P 900 3250
F 0 "#PWR0114" H 900 3000 50  0001 C CNN
F 1 "GND" H 905 3077 50  0000 C CNN
F 2 "" H 900 3250 50  0001 C CNN
F 3 "" H 900 3250 50  0001 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3000 900  3250
Text Notes 850  1100 0    394  ~ 79
CAMDETECTOR PROTOTYPE BOARD
$Comp
L power:+3V3 #PWR?
U 1 1 5DE33C4E
P 3400 2150
F 0 "#PWR?" H 3400 2000 50  0001 C CNN
F 1 "+3V3" H 3415 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5DF3027E
P 850 4550
F 0 "J?" H 850 4250 50  0000 C CNN
F 1 "Conn_01x04" H 950 4850 50  0001 C CNN
F 2 "" H 850 4550 50  0001 C CNN
F 3 "~" H 850 4550 50  0001 C CNN
	1    850  4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 4550 1400 4550
Wire Wire Line
	1050 4450 1400 4450
$Comp
L power:+3V3 #PWR?
U 1 1 5DF3C624
P 1400 4150
F 0 "#PWR?" H 1400 4000 50  0001 C CNN
F 1 "+3V3" H 1415 4323 50  0000 C CNN
F 2 "" H 1400 4150 50  0001 C CNN
F 3 "" H 1400 4150 50  0001 C CNN
	1    1400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4350 1400 4350
Wire Wire Line
	1400 4350 1400 4150
$Comp
L power:GND #PWR?
U 1 1 5DF3F058
P 1400 4850
F 0 "#PWR?" H 1400 4600 50  0001 C CNN
F 1 "GND" H 1405 4677 50  0000 C CNN
F 2 "" H 1400 4850 50  0001 C CNN
F 3 "" H 1400 4850 50  0001 C CNN
	1    1400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4650 1400 4650
Wire Wire Line
	1400 4650 1400 4850
Text Label 1400 4450 2    50   ~ 0
GPS_RX
Text Label 1400 4550 2    50   ~ 0
GPS_TX
Text Notes 1050 3850 0    50   ~ 0
NEO-6M Header\n
Wire Notes Line
	650  3750 650  5150
Wire Notes Line
	650  5150 2000 5150
Wire Notes Line
	2000 5150 2000 3750
Wire Notes Line
	2000 3750 650  3750
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5DF6210E
P 2400 4550
F 0 "J?" H 2400 4250 50  0000 C CNN
F 1 "Conn_01x04" H 2500 4850 50  0001 C CNN
F 2 "" H 2400 4550 50  0001 C CNN
F 3 "~" H 2400 4550 50  0001 C CNN
	1    2400 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4550 3050 4550
$Comp
L power:+3V3 #PWR?
U 1 1 5DF62116
P 3050 4150
F 0 "#PWR?" H 3050 4000 50  0001 C CNN
F 1 "+3V3" H 3065 4323 50  0000 C CNN
F 2 "" H 3050 4150 50  0001 C CNN
F 3 "" H 3050 4150 50  0001 C CNN
	1    3050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4350 3050 4350
Wire Wire Line
	3050 4350 3050 4150
Wire Wire Line
	2600 4650 3050 4650
Text Notes 2600 3850 0    50   ~ 0
MPU-6050 Header\n
Wire Notes Line
	2200 3750 2200 5150
Wire Notes Line
	2200 5150 3550 5150
Wire Notes Line
	3550 5150 3550 3750
Wire Notes Line
	3550 3750 2200 3750
Wire Wire Line
	3250 4450 3250 4850
Wire Wire Line
	2600 4450 3250 4450
$Comp
L power:GND #PWR?
U 1 1 5DF66C52
P 3250 4850
F 0 "#PWR?" H 3250 4600 50  0001 C CNN
F 1 "GND" H 3255 4677 50  0000 C CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
Text Label 3050 4550 2    50   ~ 0
ACCEL_SCL
Text Label 3050 4650 2    50   ~ 0
ACCEL_SDA
Text Notes 1450 5450 0    50   ~ 0
Push Button\n
Wire Notes Line
	650  5300 650  7150
Wire Notes Line
	2700 5300 650  5300
Wire Notes Line
	650  7150 2700 7150
Wire Wire Line
	1850 6400 2300 6400
Wire Wire Line
	1850 5800 1850 5750
$Comp
L power:+3V3 #PWR?
U 1 1 5DF81405
P 1850 5750
F 0 "#PWR?" H 1850 5600 50  0001 C CNN
F 1 "+3V3" H 1865 5923 50  0000 C CNN
F 2 "" H 1850 5750 50  0001 C CNN
F 3 "" H 1850 5750 50  0001 C CNN
	1    1850 5750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF7BA03
P 1850 5950
F 0 "R?" H 1920 5996 50  0000 L CNN
F 1 "10k" H 1920 5905 50  0000 L CNN
F 2 "" V 1780 5950 50  0001 C CNN
F 3 "~" H 1850 5950 50  0001 C CNN
	1    1850 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 6400 1850 6100
Wire Notes Line
	2700 7150 2700 5300
$Comp
L Switch:SW_Push SW?
U 1 1 5DF72A34
P 1100 6400
F 0 "SW?" H 1100 6685 50  0000 C CNN
F 1 "SW_Push" H 1100 6594 50  0000 C CNN
F 2 "" H 1100 6600 50  0001 C CNN
F 3 "~" H 1100 6600 50  0001 C CNN
	1    1100 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	900  6400 850  6400
$Comp
L power:GND #PWR?
U 1 1 5DF871BF
P 850 6900
F 0 "#PWR?" H 850 6650 50  0001 C CNN
F 1 "GND" H 855 6727 50  0000 C CNN
F 2 "" H 850 6900 50  0001 C CNN
F 3 "" H 850 6900 50  0001 C CNN
	1    850  6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	850  6400 850  6900
$Comp
L Device:R R?
U 1 1 5DFD2C28
P 1550 6400
F 0 "R?" V 1343 6400 50  0000 C CNN
F 1 "1k" V 1434 6400 50  0000 C CNN
F 2 "" V 1480 6400 50  0001 C CNN
F 3 "~" H 1550 6400 50  0001 C CNN
	1    1550 6400
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 6400 1700 6400
Connection ~ 1850 6400
Wire Wire Line
	1400 6400 1300 6400
$Comp
L Device:C C?
U 1 1 5DFD8909
P 1850 6650
F 0 "C?" H 1965 6696 50  0000 L CNN
F 1 "1uF" H 1965 6605 50  0000 L CNN
F 2 "" H 1888 6500 50  0001 C CNN
F 3 "~" H 1850 6650 50  0001 C CNN
	1    1850 6650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 6400 1850 6500
$Comp
L power:GND #PWR?
U 1 1 5DFDBFA2
P 1850 6900
F 0 "#PWR?" H 1850 6650 50  0001 C CNN
F 1 "GND" H 1855 6727 50  0000 C CNN
F 2 "" H 1850 6900 50  0001 C CNN
F 3 "" H 1850 6900 50  0001 C CNN
	1    1850 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 1850 6900
Text Label 2300 6400 2    50   ~ 0
ToMicro
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5E0019A0
P 2650 2300
F 0 "U?" H 2650 2542 50  0000 C CNN
F 1 "AMS1117-3.3" H 2650 2451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2650 2500 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2750 2050 50  0001 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2300 3250 2300
Wire Wire Line
	2650 2600 2650 3250
$Comp
L power:GND #PWR0103
U 1 1 5DE39E40
P 2000 3250
F 0 "#PWR0103" H 2000 3000 50  0001 C CNN
F 1 "GND" H 2005 3077 50  0000 C CNN
F 2 "" H 2000 3250 50  0001 C CNN
F 3 "" H 2000 3250 50  0001 C CNN
	1    2000 3250
	1    0    0    -1  
$EndComp
Connection ~ 2000 2300
Wire Wire Line
	2000 2300 2350 2300
Wire Wire Line
	2000 2750 2000 3250
Wire Wire Line
	2000 2300 2000 2450
$Comp
L Device:C C1
U 1 1 5DDAD4BC
P 2000 2600
F 0 "C1" H 1900 2700 50  0000 L CNN
F 1 "22uF" H 1800 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2038 2450 50  0001 C CNN
F 3 "~" H 2000 2600 50  0001 C CNN
	1    2000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2300 1550 2300
$Comp
L Device:C C?
U 1 1 5E029861
P 3250 2600
F 0 "C?" H 3150 2700 50  0000 L CNN
F 1 "22uF" H 3050 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3288 2450 50  0001 C CNN
F 3 "~" H 3250 2600 50  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2300 3250 2450
$Comp
L power:GND #PWR?
U 1 1 5E02C047
P 3250 3250
F 0 "#PWR?" H 3250 3000 50  0001 C CNN
F 1 "GND" H 3255 3077 50  0000 C CNN
F 2 "" H 3250 3250 50  0001 C CNN
F 3 "" H 3250 3250 50  0001 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2750 3250 3250
$Comp
L Device:R R?
U 1 1 5E02E659
P 1550 2650
F 0 "R?" H 1620 2696 50  0000 L CNN
F 1 "1k" H 1620 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1480 2650 50  0001 C CNN
F 3 "~" H 1550 2650 50  0001 C CNN
	1    1550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E02EE67
P 1550 3050
F 0 "D?" V 1589 2933 50  0000 R CNN
F 1 "onLED" V 1498 2933 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1550 3050 50  0001 C CNN
F 3 "~" H 1550 3050 50  0001 C CNN
	1    1550 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 2800 1550 2900
Wire Wire Line
	1550 2500 1550 2300
Connection ~ 1550 2300
Wire Wire Line
	1550 2300 2000 2300
$Comp
L power:GND #PWR?
U 1 1 5E0353D6
P 1550 3250
F 0 "#PWR?" H 1550 3000 50  0001 C CNN
F 1 "GND" H 1555 3077 50  0000 C CNN
F 2 "" H 1550 3250 50  0001 C CNN
F 3 "" H 1550 3250 50  0001 C CNN
	1    1550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3200 1550 3250
Wire Notes Line
	3550 1450 3550 3550
Wire Notes Line
	3550 3550 650  3550
Wire Notes Line
	650  3550 650  1450
Wire Notes Line
	650  1450 3550 1450
$EndSCHEMATC
