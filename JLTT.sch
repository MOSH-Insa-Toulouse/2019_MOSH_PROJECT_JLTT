EESchema Schematic File Version 4
LIBS:JLTT-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10
Text Label 10550 1800 0    60   ~ 0
11
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L power:+5V #PWR0101
U 1 1 5DE7D6B0
P 8000 1250
F 0 "#PWR0101" H 8000 1100 50  0001 C CNN
F 1 "+5V" H 8015 1423 50  0000 C CNN
F 2 "" H 8000 1250 50  0001 C CNN
F 3 "" H 8000 1250 50  0001 C CNN
	1    8000 1250
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DE7E3C6
P 8000 1000
F 0 "#FLG0101" H 8000 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 8000 1173 50  0000 C CNN
F 2 "" H 8000 1000 50  0001 C CNN
F 3 "~" H 8000 1000 50  0001 C CNN
	1    8000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1250 8000 1000
$Comp
L Device:R R1
U 1 1 5DE87BE8
P 3950 5000
F 0 "R1" H 4020 5046 50  0000 L CNN
F 1 "100k" H 4020 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3880 5000 50  0001 C CNN
F 3 "~" H 3950 5000 50  0001 C CNN
	1    3950 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DE8803D
P 4300 5000
F 0 "R2" H 4370 5046 50  0000 L CNN
F 1 "1k" H 4370 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4230 5000 50  0001 C CNN
F 3 "~" H 4300 5000 50  0001 C CNN
	1    4300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DE881FA
P 6850 4200
F 0 "R3" H 6920 4246 50  0000 L CNN
F 1 "100k" H 6920 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6780 4200 50  0001 C CNN
F 3 "~" H 6850 4200 50  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DE88368
P 3050 4750
F 0 "R4" H 3120 4796 50  0000 L CNN
F 1 "10k" H 3120 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2980 4750 50  0001 C CNN
F 3 "~" H 3050 4750 50  0001 C CNN
	1    3050 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DE884B1
P 7250 4650
F 0 "R5" H 7320 4696 50  0000 L CNN
F 1 "1k" H 7320 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7180 4650 50  0001 C CNN
F 3 "~" H 7250 4650 50  0001 C CNN
	1    7250 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5DE891EF
P 3550 5000
F 0 "C1" H 3665 5046 50  0000 L CNN
F 1 "100n" H 3665 4955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 3588 4850 50  0001 C CNN
F 3 "~" H 3550 5000 50  0001 C CNN
	1    3550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DE896CF
P 7600 4950
F 0 "C2" H 7715 4996 50  0000 L CNN
F 1 "100n" H 7715 4905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 7638 4800 50  0001 C CNN
F 3 "~" H 7600 4950 50  0001 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DE898A1
P 7400 3600
F 0 "C3" H 7515 3646 50  0000 L CNN
F 1 "100n" H 7515 3555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 7438 3450 50  0001 C CNN
F 3 "~" H 7400 3600 50  0001 C CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DE89B7D
P 6350 4200
F 0 "C4" H 6465 4246 50  0000 L CNN
F 1 "1µ" H 6465 4155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 6388 4050 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
$Comp
L librairie_capteur_gaz:capteur_gaz_aime S1
U 1 1 5DF0F93D
P 2450 2200
F 0 "S1" H 2450 2715 50  0000 C CNN
F 1 "capteur_gaz_aime" H 2450 2624 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-5-10_Window" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L LTC:LTC1050 U1
U 1 1 5DF0FED5
P 5350 4650
F 0 "U1" H 5944 4696 50  0000 L CNN
F 1 "LTC1050" H 5944 4605 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 5450 4650 50  0001 C CNN
F 3 "" H 5450 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4750 3550 4750
Wire Wire Line
	3550 4850 3550 4750
Connection ~ 3550 4750
Wire Wire Line
	3550 4750 3950 4750
Wire Wire Line
	3950 4850 3950 4750
Connection ~ 3950 4750
Wire Wire Line
	3950 4750 5050 4750
Wire Wire Line
	5900 4650 6350 4650
Wire Wire Line
	7400 4650 7600 4650
Wire Wire Line
	7600 4650 7600 4800
Wire Wire Line
	8100 4650 7600 4650
Connection ~ 7600 4650
$Comp
L power:GND #PWR0102
U 1 1 5DF1BBB4
P 4300 5450
F 0 "#PWR0102" H 4300 5200 50  0001 C CNN
F 1 "GND" H 4305 5277 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5100 7600 5300
Wire Wire Line
	7600 5300 5500 5300
Wire Wire Line
	3550 5300 3550 5150
Wire Wire Line
	3950 5150 3950 5300
Connection ~ 3950 5300
Wire Wire Line
	3950 5300 3550 5300
Wire Wire Line
	4300 5150 4300 5300
Connection ~ 4300 5300
Wire Wire Line
	4300 5300 3950 5300
Wire Wire Line
	4300 5450 4300 5300
Wire Wire Line
	5500 4900 5500 5300
Connection ~ 5500 5300
Wire Wire Line
	5500 5300 4300 5300
Wire Wire Line
	2650 4750 2900 4750
$Comp
L power:GND #PWR0103
U 1 1 5DF2347E
P 7400 3850
F 0 "#PWR0103" H 7400 3600 50  0001 C CNN
F 1 "GND" H 7405 3677 50  0000 C CNN
F 2 "" H 7400 3850 50  0001 C CNN
F 3 "" H 7400 3850 50  0001 C CNN
	1    7400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DF23933
P 7550 3250
F 0 "#PWR0104" H 7550 3100 50  0001 C CNN
F 1 "+5V" V 7565 3378 50  0000 L CNN
F 2 "" H 7550 3250 50  0001 C CNN
F 3 "" H 7550 3250 50  0001 C CNN
	1    7550 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3850 7400 3750
Wire Wire Line
	7550 3250 7400 3250
Wire Wire Line
	7400 3250 7400 3450
Wire Wire Line
	5500 4400 5500 3250
Wire Wire Line
	5500 3250 7400 3250
Connection ~ 7400 3250
Wire Wire Line
	4300 4850 4300 4550
Wire Wire Line
	4300 4550 5050 4550
Wire Wire Line
	6350 4050 6350 3500
Wire Wire Line
	6350 3500 4300 3500
Wire Wire Line
	4300 3500 4300 4550
Connection ~ 4300 4550
Wire Wire Line
	6850 4050 6850 3500
Wire Wire Line
	6850 3500 6350 3500
Connection ~ 6350 3500
Wire Wire Line
	6350 4350 6350 4650
Connection ~ 6350 4650
Wire Wire Line
	6350 4650 6850 4650
Wire Wire Line
	6850 4350 6850 4650
Connection ~ 6850 4650
Wire Wire Line
	6850 4650 7100 4650
$Comp
L power:GND #PWR0105
U 1 1 5DF37133
P 3500 2650
F 0 "#PWR0105" H 3500 2400 50  0001 C CNN
F 1 "GND" H 3505 2477 50  0000 C CNN
F 2 "" H 3500 2650 50  0001 C CNN
F 3 "" H 3500 2650 50  0001 C CNN
	1    3500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2550 3500 2550
Wire Wire Line
	3300 2450 3500 2450
Wire Wire Line
	3500 2450 3500 2550
Connection ~ 3500 2550
Wire Wire Line
	3500 2550 3500 2650
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5DF58A51
P 1400 3850
F 0 "J2" V 1364 4030 50  0000 L CNN
F 1 "Conn_01x03" V 1273 4030 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical" H 1400 3850 50  0001 C CNN
F 3 "~" H 1400 3850 50  0001 C CNN
	1    1400 3850
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5DF5BE19
P 1400 3650
F 0 "J1" V 1272 3462 50  0000 R CNN
F 1 "Conn_01x03" V 1363 3462 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical" H 1400 3650 50  0001 C CNN
F 3 "~" H 1400 3650 50  0001 C CNN
	1    1400 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	2050 3300 1500 3300
Wire Wire Line
	1500 3300 1500 3450
Wire Wire Line
	2050 3200 1400 3200
Wire Wire Line
	1400 3200 1400 3450
Wire Wire Line
	2050 3100 1300 3100
Wire Wire Line
	1300 3100 1300 3450
Wire Wire Line
	2050 4200 1500 4200
Wire Wire Line
	1500 4200 1500 4050
Wire Wire Line
	2050 4300 1400 4300
Wire Wire Line
	1400 4300 1400 4050
Wire Wire Line
	2050 4400 1300 4400
Wire Wire Line
	1300 4400 1300 4050
Text Label 2050 3100 0    50   ~ 0
GasSensorLeft1
Text Label 2050 4400 0    50   ~ 0
GasSensorLeft2
Text Label 2050 3300 0    50   ~ 0
GasSensorRight1
Text Label 2050 4200 0    50   ~ 0
GasSensorRight2
Wire Wire Line
	1200 2200 1600 2200
Wire Wire Line
	1200 2300 1600 2300
Wire Wire Line
	3850 2200 3300 2200
Wire Wire Line
	3850 2300 3300 2300
Text Label 3850 2200 0    50   ~ 0
GasSensorRight1
Text Label 3850 2300 0    50   ~ 0
GasSensorRight2
Text Label 1200 2200 2    50   ~ 0
GasSensorLeft1
Text Label 1200 2300 2    50   ~ 0
GasSensorLeft2
Text Label 2050 3200 0    50   ~ 0
GasSelected1
Text Label 2650 4750 2    50   ~ 0
GasSelected1
Text Label 2050 4300 0    50   ~ 0
GasSelected2
Wire Wire Line
	3150 3750 3300 3750
Text Label 3150 3750 2    50   ~ 0
GasSelected2
$Comp
L power:+5V #PWR0106
U 1 1 5DF9272E
P 3300 3600
F 0 "#PWR0106" H 3300 3450 50  0001 C CNN
F 1 "+5V" H 3315 3773 50  0000 C CNN
F 2 "" H 3300 3600 50  0001 C CNN
F 3 "" H 3300 3600 50  0001 C CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3600 3300 3750
$Comp
L Device:Buzzer BZ1
U 1 1 5DF96B5C
P 9300 4500
F 0 "BZ1" H 9452 4529 50  0000 L CNN
F 1 "Buzzer" H 9452 4438 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 9275 4600 50  0001 C CNN
F 3 "~" V 9275 4600 50  0001 C CNN
	1    9300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4250 8950 4400
Wire Wire Line
	8950 4400 9200 4400
Wire Wire Line
	8950 4600 9200 4600
Text Label 8950 4250 0    50   ~ 0
2
$Comp
L power:GND #PWR0107
U 1 1 5DF9F008
P 8950 4800
F 0 "#PWR0107" H 8950 4550 50  0001 C CNN
F 1 "GND" H 8955 4627 50  0000 C CNN
F 2 "" H 8950 4800 50  0001 C CNN
F 3 "" H 8950 4800 50  0001 C CNN
	1    8950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 8950 4800
Text Label 8100 4650 0    50   ~ 0
A1
$Comp
L librairie_capteur_gaz:RN2483 RN24831
U 1 1 5DFB5417
P 6050 1900
F 0 "RN24831" H 6878 1913 50  0000 L CNN
F 1 "RN2483" H 6878 1822 50  0000 L CNN
F 2 "RN24_Breakout_lib:RN2483_breakout" H 6050 1900 50  0001 C CNN
F 3 "" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2450 5850 2250
Wire Wire Line
	6000 2450 6000 2250
$Comp
L power:+5V #PWR0108
U 1 1 5DFC6754
P 6600 2550
F 0 "#PWR0108" H 6600 2400 50  0001 C CNN
F 1 "+5V" H 6615 2723 50  0000 C CNN
F 2 "" H 6600 2550 50  0001 C CNN
F 3 "" H 6600 2550 50  0001 C CNN
	1    6600 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2250 6600 2550
Wire Wire Line
	6750 2250 6750 2550
$Comp
L power:GND #PWR0109
U 1 1 5DFC5FD4
P 6750 2550
F 0 "#PWR0109" H 6750 2300 50  0001 C CNN
F 1 "GND" H 6755 2377 50  0000 C CNN
F 2 "" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	1    0    0    -1  
$EndComp
Text Label 5850 2450 3    50   ~ 0
10
Text Label 6000 2450 3    50   ~ 0
11
$EndSCHEMATC
