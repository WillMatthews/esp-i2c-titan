EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Overview Motor Driver"
Date "2020-03-16"
Rev ""
Comp "University of Oxford Engineering VLC Group"
Comment1 "APPV: ____________________"
Comment2 "CHK:  ____________________"
Comment3 "DSG: William Matthews"
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 5E6BFFF7
P 2650 1950
F 0 "#PWR02" H 2650 1700 50  0001 C CNN
F 1 "GND" H 2655 1777 50  0000 C CNN
F 2 "" H 2650 1950 50  0001 C CNN
F 3 "" H 2650 1950 50  0001 C CNN
	1    2650 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5E6BEE53
P 2650 1450
F 0 "#PWR01" H 2650 1300 50  0001 C CNN
F 1 "+12V" H 2665 1623 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E6EA469
P 2550 4100
F 0 "#PWR07" H 2550 3850 50  0001 C CNN
F 1 "GND" H 2555 3927 50  0000 C CNN
F 2 "" H 2550 4100 50  0001 C CNN
F 3 "" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5E6EB068
P 3450 3700
F 0 "#PWR010" H 3450 3550 50  0001 C CNN
F 1 "+5V" H 3465 3873 50  0000 C CNN
F 2 "" H 3450 3700 50  0001 C CNN
F 3 "" H 3450 3700 50  0001 C CNN
	1    3450 3700
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:SPX3819M5-L-5-0 U1
U 1 1 5E6F742F
P 2550 3800
F 0 "U1" H 2550 4142 50  0000 C CNN
F 1 "SPX3819M5-L-5-0" H 2550 4051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2550 4125 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 2550 3800 50  0001 C CNN
F 4 "1016-1874-1-ND" H 2550 3800 50  0001 C CNN "Part"
	1    2550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E6FC8EA
P 3300 3800
F 0 "C2" H 3392 3846 50  0000 L CNN
F 1 "1u" H 3392 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 3800 50  0001 C CNN
F 3 "~" H 3300 3800 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3800 2250 3700
Wire Wire Line
	2250 3700 1950 3700
Connection ~ 2250 3700
$Comp
L power:+12V #PWR06
U 1 1 5E70222C
P 1950 3700
F 0 "#PWR06" H 1950 3550 50  0001 C CNN
F 1 "+12V" H 1965 3873 50  0000 C CNN
F 2 "" H 1950 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E7033FC
P 2850 3900
F 0 "C1" H 2942 3946 50  0000 L CNN
F 1 "0.1n" H 2942 3855 50  0000 L CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2850 3900 50  0001 C CNN
F 3 "~" H 2850 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3700 3300 3700
$Comp
L power:GND #PWR09
U 1 1 5E708740
P 3300 3900
F 0 "#PWR09" H 3300 3650 50  0001 C CNN
F 1 "GND" H 3305 3727 50  0000 C CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E708E57
P 2850 4000
F 0 "#PWR08" H 2850 3750 50  0001 C CNN
F 1 "GND" H 2855 3827 50  0000 C CNN
F 2 "" H 2850 4000 50  0001 C CNN
F 3 "" H 2850 4000 50  0001 C CNN
	1    2850 4000
	1    0    0    -1  
$EndComp
Connection ~ 3300 3700
Wire Wire Line
	3300 3700 3450 3700
NoConn ~ 8700 4500
$Comp
L Connector:TestPoint TP3
U 1 1 5E734107
P 1950 3700
F 0 "TP3" H 2150 3850 50  0000 R CNN
F 1 "TestPoint" H 2350 3950 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2150 3700 50  0001 C CNN
F 3 "~" H 2150 3700 50  0001 C CNN
	1    1950 3700
	-1   0    0    1   
$EndComp
Connection ~ 1950 3700
$Comp
L Connector:Conn_01x09_Male J2
U 1 1 5E745A1B
P 2400 6600
F 0 "J2" H 2372 6532 50  0000 R CNN
F 1 "FlatFlex Molex" H 2372 6623 50  0000 R CNN
F 2 "flatflex:9pos" H 2400 6600 50  0001 C CNN
F 3 "~" H 2400 6600 50  0001 C CNN
F 4 "WM7958CT-ND" H 2400 6600 50  0001 C CNN "PartA"
F 5 "WM23729-ND" H 2400 6600 50  0001 C CNN "PartB"
	1    2400 6600
	-1   0    0    1   
$EndComp
NoConn ~ 2200 6400
Wire Wire Line
	2200 6200 1650 6200
$Comp
L power:GND #PWR012
U 1 1 5E748770
P 1650 7000
F 0 "#PWR012" H 1650 6750 50  0001 C CNN
F 1 "GND" H 1655 6827 50  0000 C CNN
F 2 "" H 1650 7000 50  0001 C CNN
F 3 "" H 1650 7000 50  0001 C CNN
	1    1650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6500 1650 6500
Wire Wire Line
	1650 6600 2200 6600
Wire Wire Line
	2200 6900 1650 6900
Text Label 1650 6600 0    50   ~ 0
SCL
Text Label 1650 6500 0    50   ~ 0
SDA
Wire Wire Line
	2200 7000 1650 7000
Wire Wire Line
	1650 7000 1650 6900
Connection ~ 1650 7000
Wire Wire Line
	2200 6300 1650 6300
Wire Wire Line
	1650 6300 1650 6200
$Comp
L power:+12V #PWR011
U 1 1 5E74991B
P 1650 6200
F 0 "#PWR011" H 1650 6050 50  0001 C CNN
F 1 "+12V" H 1665 6373 50  0000 C CNN
F 2 "" H 1650 6200 50  0001 C CNN
F 3 "" H 1650 6200 50  0001 C CNN
	1    1650 6200
	1    0    0    -1  
$EndComp
Connection ~ 1650 6200
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E7929BD
P 2650 1450
F 0 "#FLG01" H 2650 1525 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 1577 50  0000 L CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E792F6F
P 2650 1950
F 0 "#FLG02" H 2650 2025 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 2077 50  0000 L CNN
F 2 "" H 2650 1950 50  0001 C CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 1950 2650 1800
Connection ~ 2650 1950
Wire Wire Line
	2650 1600 2650 1450
Connection ~ 2650 1450
$Comp
L JACK-C-PC-10A-RA_R_:JACK-C-PC-10A-RA(R) J1
U 1 1 5E7A394D
P 3150 1700
F 0 "J1" H 3288 1732 50  0000 L CNN
F 1 "JACK-C-PC-10A-RA(R)" H 3288 1641 50  0000 L CNN
F 2 "globteck:GLOBTECK_JACK-C-PC-10A-RA(R)" H 3150 1700 50  0001 L BNN
F 3 "Manufacturer Recommendations" H 3150 1700 50  0001 L BNN
F 4 "A" H 3150 1700 50  0001 L BNN "Field4"
F 5 "Globe Tek" H 3150 1700 50  0001 L BNN "Field5"
F 6 "1939-1434-ND" H 3150 1700 50  0001 C CNN "Part"
F 7 "1939-1086-ND" H 3150 1700 50  0001 C CNN "PartB"
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5E7C84F6
P 2650 1950
F 0 "TP6" V 2604 2138 50  0000 L CNN
F 1 "TestPoint" V 2695 2138 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_3.0x3.0mm" H 2850 1950 50  0001 C CNN
F 3 "~" H 2850 1950 50  0001 C CNN
	1    2650 1950
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E7FFF81
P 7800 2100
F 0 "H1" H 7900 2146 50  0000 L CNN
F 1 "MountingHole" H 7900 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 7800 2100 50  0001 C CNN
F 3 "~" H 7800 2100 50  0001 C CNN
	1    7800 2100
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E80164D
P 8200 2100
F 0 "H2" H 8300 2146 50  0000 L CNN
F 1 "MountingHole" H 8300 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8200 2100 50  0001 C CNN
F 3 "~" H 8200 2100 50  0001 C CNN
	1    8200 2100
	0    -1   -1   0   
$EndComp
Wire Notes Line style solid
	7450 1350 7450 2350
Wire Notes Line style solid
	7450 2350 8800 2350
Wire Notes Line style solid
	8800 2350 8800 2600
Wire Notes Line style solid
	8800 2600 9500 2600
Wire Notes Line style solid
	9500 2600 9500 1350
Wire Notes Line style solid
	9500 1350 7450 1350
Text Notes 7400 1950 1    50   ~ 0
30.5
Text Notes 8200 2900 2    50   ~ 0
40.5\n
Text Notes 8550 2500 1    50   ~ 0
8
Text Notes 8550 1350 2    50   ~ 0
64
Wire Notes Line
	7800 2200 7800 2600
Wire Notes Line
	8200 2600 8200 2200
Wire Notes Line
	7400 2350 7150 2350
Wire Notes Line
	7450 2400 7450 2950
Wire Notes Line
	8800 2650 8800 2950
Wire Notes Line style solid
	8800 2900 7450 2900
Wire Notes Line style solid
	7200 2350 7200 2100
Wire Notes Line
	8750 2600 8500 2600
Wire Notes Line style solid
	8550 2600 8550 2350
Text Notes 7550 2500 0    50   ~ 0
6.5
Wire Notes Line style solid
	7450 2500 7800 2500
Text Notes 7200 2300 1    50   ~ 0
6.5
Text Notes 8050 2550 2    50   ~ 0
10
Wire Notes Line style solid
	8200 2550 7800 2550
Text Label 2050 6200 2    50   ~ 0
MSupp
$Comp
L Connector:Conn_01x09_Male J3
U 1 1 5E83518C
P 4300 6600
F 0 "J3" H 4272 6532 50  0000 R CNN
F 1 "FlatFlex Molex" H 4272 6623 50  0000 R CNN
F 2 "flatflex:9pos" H 4300 6600 50  0001 C CNN
F 3 "~" H 4300 6600 50  0001 C CNN
F 4 "WM7958CT-ND" H 4300 6600 50  0001 C CNN "PartA"
F 5 "WM23729-ND" H 4300 6600 50  0001 C CNN "PartB"
	1    4300 6600
	-1   0    0    1   
$EndComp
NoConn ~ 4100 6400
Wire Wire Line
	4100 6200 3550 6200
$Comp
L power:GND #PWR013
U 1 1 5E835194
P 3550 7000
F 0 "#PWR013" H 3550 6750 50  0001 C CNN
F 1 "GND" H 3555 6827 50  0000 C CNN
F 2 "" H 3550 7000 50  0001 C CNN
F 3 "" H 3550 7000 50  0001 C CNN
	1    3550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6500 3550 6500
Wire Wire Line
	3550 6600 4100 6600
Wire Wire Line
	4100 6900 3550 6900
Text Label 3550 6600 0    50   ~ 0
SCL
Text Label 3550 6500 0    50   ~ 0
SDA
Wire Wire Line
	4100 7000 3550 7000
Wire Wire Line
	3550 7000 3550 6900
Connection ~ 3550 7000
Wire Wire Line
	4100 6300 3550 6300
Wire Wire Line
	3550 6300 3550 6200
$Comp
L power:+12V #PWR05
U 1 1 5E8351A6
P 3550 6200
F 0 "#PWR05" H 3550 6050 50  0001 C CNN
F 1 "+12V" H 3565 6373 50  0000 C CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
Connection ~ 3550 6200
Text Label 3950 6200 2    50   ~ 0
MSupp
Text Notes 1800 5850 0    89   ~ 0
Motor 1
Text Notes 3700 5850 0    89   ~ 0
Motor 2
Text Notes 1750 5550 0    90   ~ 18
FlatFlex Connectors for Overview Motor
Text Notes 2250 1000 0    90   ~ 18
12V Barrel Jack
Text Notes 2000 3150 0    90   ~ 18
12V -> 5V Regulator
Wire Notes Line
	500  5000 5500 5000
Wire Notes Line
	500  2550 5500 2550
Wire Notes Line
	5500 500  5500 7800
Wire Notes Line
	5500 3500 11200 3500
Text Notes 7900 1000 0    90   ~ 18
Mechanical Layout
Wire Notes Line
	7700 2100 7150 2100
Text Notes 7300 3300 0    50   ~ 0
can fit 2x boards in 100x100 with room for a 100x40 board
NoConn ~ 4100 6800
NoConn ~ 4100 6700
NoConn ~ 2200 6800
NoConn ~ 2200 6700
$Comp
L power:GND #PWR0101
U 1 1 5E7E8D3D
P 7800 5400
F 0 "#PWR0101" H 7800 5150 50  0001 C CNN
F 1 "GND" V 7805 5272 50  0000 R CNN
F 2 "" H 7800 5400 50  0001 C CNN
F 3 "" H 7800 5400 50  0001 C CNN
	1    7800 5400
	0    1    1    0   
$EndComp
NoConn ~ 8700 4800
NoConn ~ 8700 4900
NoConn ~ 8700 5600
NoConn ~ 8700 5700
NoConn ~ 8700 5900
$Comp
L power:GND #PWR0103
U 1 1 5E7EBCFF
P 8700 5800
F 0 "#PWR0103" H 8700 5550 50  0001 C CNN
F 1 "GND" V 8705 5672 50  0000 R CNN
F 2 "" H 8700 5800 50  0001 C CNN
F 3 "" H 8700 5800 50  0001 C CNN
	1    8700 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E7EAC22
P 8700 5100
F 0 "#PWR0102" H 8700 4850 50  0001 C CNN
F 1 "GND" V 8650 5000 50  0000 R CNN
F 2 "" H 8700 5100 50  0001 C CNN
F 3 "" H 8700 5100 50  0001 C CNN
	1    8700 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5E7179F5
P 10100 5400
F 0 "J4" H 10072 5282 50  0000 R CNN
F 1 "Conn_01x04_Male" H 10072 5373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10100 5400 50  0001 C CNN
F 3 "~" H 10100 5400 50  0001 C CNN
	1    10100 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 5500 9900 5500
Wire Wire Line
	8700 5400 9900 5400
Wire Wire Line
	8700 5300 9900 5300
Wire Wire Line
	8700 5200 9900 5200
Text Label 9900 5300 2    50   ~ 0
ADDR1B
Text Label 9900 5200 2    50   ~ 0
ADDR2B
Text Label 9900 5500 2    50   ~ 0
ADDR1A
Text Label 9900 5400 2    50   ~ 0
ADDR2A
Wire Wire Line
	9000 5000 8700 5000
Connection ~ 9000 5000
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E794D3B
P 9000 5000
F 0 "#FLG03" H 9000 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 5150 50  0000 C CNN
F 2 "" H 9000 5000 50  0001 C CNN
F 3 "~" H 9000 5000 50  0001 C CNN
	1    9000 5000
	-1   0    0    1   
$EndComp
Connection ~ 9350 5000
Wire Wire Line
	9350 5000 9000 5000
Wire Wire Line
	9800 5000 9350 5000
Wire Wire Line
	8800 4600 9800 4600
Wire Wire Line
	9800 4700 9800 4600
$Comp
L Device:R R3
U 1 1 5E73AB0D
P 9800 4850
F 0 "R3" H 9870 4896 50  0000 L CNN
F 1 "1K5" H 9870 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 4850 50  0001 C CNN
F 3 "~" H 9800 4850 50  0001 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4700 9500 4700
Connection ~ 9350 4700
$Comp
L Device:R R2
U 1 1 5E73A02C
P 9350 4850
F 0 "R2" H 9420 4896 50  0000 L CNN
F 1 "1K5" H 9420 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9280 4850 50  0001 C CNN
F 3 "~" H 9350 4850 50  0001 C CNN
	1    9350 4850
	1    0    0    -1  
$EndComp
Text Label 9500 4600 2    50   ~ 0
SCL
Text Label 9500 4700 2    50   ~ 0
SDA
Wire Wire Line
	8800 4700 9350 4700
Connection ~ 8800 4700
$Comp
L Connector:TestPoint TP5
U 1 1 5E6DF073
P 8800 4700
F 0 "TP5" H 8750 4800 50  0000 R CNN
F 1 "TestPoint" H 8750 4900 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 9000 4700 50  0001 C CNN
F 3 "~" H 9000 4700 50  0001 C CNN
	1    8800 4700
	-1   0    0    1   
$EndComp
Connection ~ 8800 4600
$Comp
L Connector:TestPoint TP4
U 1 1 5E6DE8EE
P 8800 4600
F 0 "TP4" H 8850 4800 50  0000 L CNN
F 1 "TestPoint" H 8850 4700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 9000 4600 50  0001 C CNN
F 3 "~" H 9000 4600 50  0001 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4700 8800 4700
Wire Wire Line
	8700 4600 8800 4600
Text Notes 7400 4050 0    90   ~ 18
ESP8266 Microcontroller
Wire Wire Line
	7250 5900 7800 5900
Wire Wire Line
	7250 5900 7200 5900
Connection ~ 7250 5900
$Comp
L Connector:TestPoint TP2
U 1 1 5E72F027
P 7250 5900
F 0 "TP2" H 7450 6050 50  0000 R CNN
F 1 "TestPoint" H 7650 6150 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7450 5900 50  0001 C CNN
F 3 "~" H 7450 5900 50  0001 C CNN
	1    7250 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 5800 7200 5800
Connection ~ 7250 5800
$Comp
L Connector:TestPoint TP1
U 1 1 5E72E2B6
P 7250 5800
F 0 "TP1" H 7308 5918 50  0000 L CNN
F 1 "TestPoint" H 7308 5827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7450 5800 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7250 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5E6E93E1
P 7200 5900
F 0 "#PWR04" H 7200 5750 50  0001 C CNN
F 1 "+5V" V 7215 6028 50  0000 L CNN
F 2 "" H 7200 5900 50  0001 C CNN
F 3 "" H 7200 5900 50  0001 C CNN
	1    7200 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E6E9149
P 7200 5800
F 0 "#PWR03" H 7200 5550 50  0001 C CNN
F 1 "GND" V 7205 5672 50  0000 R CNN
F 2 "" H 7200 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
	1    7200 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 5800 7250 5800
NoConn ~ 7800 5700
NoConn ~ 7800 5600
NoConn ~ 7800 5500
NoConn ~ 7800 5300
NoConn ~ 7800 5200
NoConn ~ 7800 5100
NoConn ~ 7800 5000
NoConn ~ 7800 4900
NoConn ~ 7800 4800
NoConn ~ 7800 4500
$Comp
L nodemcu:NodeMCU_Amica_R2 U2
U 1 1 5E6DA47F
P 8250 5200
F 0 "U2" H 8250 6125 50  0000 C CNN
F 1 "NodeMCU_Amica_R2" H 8250 6034 50  0000 C CNN
F 2 "nodemcu:NodeMCU_Amica_R2" H 8500 5200 50  0001 C CNN
F 3 "" H 8500 5200 50  0000 C CNN
	1    8250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5EA460C8
P 2800 1600
F 0 "F1" V 2603 1600 50  0000 C CNN
F 1 "Fuse" V 2694 1600 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2730 1600 50  0001 C CNN
F 3 "~" H 2800 1600 50  0001 C CNN
	1    2800 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1800 2650 1800
$EndSCHEMATC
