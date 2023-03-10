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
L MCU_Microchip_ATtiny:ATtiny13A-SSU U3
U 1 1 5C50463B
P 4850 3900
F 0 "U3" H 4900 3950 50  0000 R CNN
F 1 "ATtiny13A-SSU" H 5100 3850 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4850 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L05_SOT89 U1
U 1 1 5C50484F
P 1700 1150
F 0 "U1" H 1700 1392 50  0000 C CNN
F 1 "L78L05_SOT89" H 1700 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 1700 1350 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 1700 1100 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C5049B0
P 1300 1250
F 0 "C1" H 1392 1296 50  0000 L CNN
F 1 "1u" H 1392 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1300 1250 50  0001 C CNN
F 3 "~" H 1300 1250 50  0001 C CNN
	1    1300 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C504A79
P 2100 1250
F 0 "C2" H 2192 1296 50  0000 L CNN
F 1 "1u" H 2192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2100 1250 50  0001 C CNN
F 3 "~" H 2100 1250 50  0001 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C504C86
P 6450 3400
F 0 "R4" V 6500 3400 50  0000 C CNN
F 1 "10k" V 6600 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6450 3400 50  0001 C CNN
F 3 "~" H 6450 3400 50  0001 C CNN
	1    6450 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C504CC0
P 7200 3400
F 0 "R5" H 7141 3354 50  0000 R CNN
F 1 "10k" H 7141 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7200 3400 50  0001 C CNN
F 3 "~" H 7200 3400 50  0001 C CNN
	1    7200 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C504D01
P 5650 3600
F 0 "R1" V 5454 3600 50  0000 C CNN
F 1 "100" V 5545 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5650 3600 50  0001 C CNN
F 3 "~" H 5650 3600 50  0001 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C504F59
P 6750 4100
F 0 "SW1" H 6750 4385 50  0000 C CNN
F 1 "SW_Push" H 6750 4294 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 6750 4300 50  0001 C CNN
F 3 "" H 6750 4300 50  0001 C CNN
	1    6750 4100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5C50520D
P 950 7200
F 0 "#PWR02" H 950 7050 50  0001 C CNN
F 1 "VCC" H 967 7373 50  0000 C CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5C505251
P 2100 900
F 0 "#PWR09" H 2100 750 50  0001 C CNN
F 1 "+5V" H 2115 1073 50  0000 C CNN
F 2 "" H 2100 900 50  0001 C CNN
F 3 "" H 2100 900 50  0001 C CNN
	1    2100 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C505295
P 1700 1600
F 0 "#PWR07" H 1700 1350 50  0001 C CNN
F 1 "GND" H 1705 1427 50  0000 C CNN
F 2 "" H 1700 1600 50  0001 C CNN
F 3 "" H 1700 1600 50  0001 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C5052B9
P 2100 1600
F 0 "#PWR010" H 2100 1350 50  0001 C CNN
F 1 "GND" H 2105 1427 50  0000 C CNN
F 2 "" H 2100 1600 50  0001 C CNN
F 3 "" H 2100 1600 50  0001 C CNN
	1    2100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C5052D6
P 1300 1600
F 0 "#PWR03" H 1300 1350 50  0001 C CNN
F 1 "GND" H 1305 1427 50  0000 C CNN
F 2 "" H 1300 1600 50  0001 C CNN
F 3 "" H 1300 1600 50  0001 C CNN
	1    1300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1700 1600
Wire Wire Line
	2100 1600 2100 1350
Wire Wire Line
	2100 1150 2100 900 
Wire Wire Line
	2000 1150 2100 1150
Connection ~ 2100 1150
Wire Wire Line
	1400 1150 1300 1150
Wire Wire Line
	1300 1350 1300 1600
$Comp
L power:+5V #PWR016
U 1 1 5C5053FC
P 4850 3200
F 0 "#PWR016" H 4850 3050 50  0001 C CNN
F 1 "+5V" H 4865 3373 50  0000 C CNN
F 2 "" H 4850 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3300 4850 3250
Wire Wire Line
	4850 4500 4850 4550
$Comp
L power:GND #PWR05
U 1 1 5C50600E
P 1350 3350
F 0 "#PWR05" H 1350 3100 50  0001 C CNN
F 1 "GND" H 1355 3177 50  0000 C CNN
F 2 "" H 1350 3350 50  0001 C CNN
F 3 "" H 1350 3350 50  0001 C CNN
	1    1350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3350 1350 3250
Wire Wire Line
	1200 1150 1300 1150
Connection ~ 1300 1150
Wire Wire Line
	900  900  900  1150
$Comp
L power:+5V #PWR019
U 1 1 5C507360
P 6450 3200
F 0 "#PWR019" H 6450 3050 50  0001 C CNN
F 1 "+5V" H 6465 3373 50  0000 C CNN
F 2 "" H 6450 3200 50  0001 C CNN
F 3 "" H 6450 3200 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 5C508466
P 4850 4600
F 0 "#PWR017" H 4850 4350 50  0001 C CNN
F 1 "GNDD" H 4854 4445 50  0000 C CNN
F 2 "" H 4850 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5C50848E
P 1950 3350
F 0 "#PWR08" H 1950 3100 50  0001 C CNN
F 1 "GNDD" H 1954 3195 50  0000 C CNN
F 2 "" H 1950 3350 50  0001 C CNN
F 3 "" H 1950 3350 50  0001 C CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3250 1950 3350
$Comp
L power:GNDD #PWR021
U 1 1 5C508839
P 6750 4600
F 0 "#PWR021" H 6750 4350 50  0001 C CNN
F 1 "GNDD" H 6754 4445 50  0000 C CNN
F 2 "" H 6750 4600 50  0001 C CNN
F 3 "" H 6750 4600 50  0001 C CNN
	1    6750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5C508E74
P 7200 3200
F 0 "#PWR022" H 7200 3050 50  0001 C CNN
F 1 "+5V" H 7215 3373 50  0000 C CNN
F 2 "" H 7200 3200 50  0001 C CNN
F 3 "" H 7200 3200 50  0001 C CNN
	1    7200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3200 7200 3300
Wire Wire Line
	5450 3600 5550 3600
Wire Wire Line
	5750 3600 6100 3600
Text Label 5950 3600 0    50   ~ 0
SIG
Wire Wire Line
	7200 3500 7200 3700
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5C513BAC
P 10500 5750
F 0 "J1" H 10580 5792 50  0000 L CNN
F 1 "Conn_01x03" H 10580 5701 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_4-G_1x04_P5.00mm_Vertical" H 10500 5750 50  0001 C CNN
F 3 "~" H 10500 5750 50  0001 C CNN
	1    10500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5C515E0D
P 10200 6100
F 0 "#PWR027" H 10200 5850 50  0001 C CNN
F 1 "GND" H 10205 5927 50  0000 C CNN
F 2 "" H 10200 6100 50  0001 C CNN
F 3 "" H 10200 6100 50  0001 C CNN
	1    10200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5650 10300 5650
Wire Wire Line
	10300 5750 9900 5750
Text Label 9950 5750 0    50   ~ 0
SIG_OUT
NoConn ~ 5450 4000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C51A478
P 950 7300
F 0 "#FLG01" H 950 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7473 50  0000 C CNN
F 2 "" H 950 7300 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
	1    950  7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  7200 950  7300
$Comp
L power:GNDD #PWR04
U 1 1 5C51E1CA
P 1300 7300
F 0 "#PWR04" H 1300 7050 50  0001 C CNN
F 1 "GNDD" H 1304 7145 50  0000 C CNN
F 2 "" H 1300 7300 50  0001 C CNN
F 3 "" H 1300 7300 50  0001 C CNN
	1    1300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C51E1EF
P 1650 7300
F 0 "#PWR06" H 1650 7050 50  0001 C CNN
F 1 "GND" H 1655 7127 50  0000 C CNN
F 2 "" H 1650 7300 50  0001 C CNN
F 3 "" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C51E214
P 1300 7200
F 0 "#FLG02" H 1300 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 7374 50  0000 C CNN
F 2 "" H 1300 7200 50  0001 C CNN
F 3 "~" H 1300 7200 50  0001 C CNN
	1    1300 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C51E253
P 1650 7200
F 0 "#FLG03" H 1650 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 7374 50  0000 C CNN
F 2 "" H 1650 7200 50  0001 C CNN
F 3 "~" H 1650 7200 50  0001 C CNN
	1    1650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7200 1300 7300
Wire Wire Line
	1650 7200 1650 7300
$Comp
L Device:R_Small R2
U 1 1 5C56FCC8
P 5650 3900
F 0 "R2" V 5454 3900 50  0000 C CNN
F 1 "1k" V 5545 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5650 3900 50  0001 C CNN
F 3 "~" H 5650 3900 50  0001 C CNN
	1    5650 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5C56FEBA
P 6000 3900
F 0 "D3" H 5850 3850 50  0000 C CNN
F 1 "LED_Small" H 6000 4000 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 6000 3900 50  0001 C CNN
F 3 "~" V 6000 3900 50  0001 C CNN
	1    6000 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 3900 5550 3900
Wire Wire Line
	5750 3900 5900 3900
$Comp
L power:GNDD #PWR018
U 1 1 5C571ABD
P 6250 4600
F 0 "#PWR018" H 6250 4350 50  0001 C CNN
F 1 "GNDD" H 6254 4445 50  0000 C CNN
F 2 "" H 6250 4600 50  0001 C CNN
F 3 "" H 6250 4600 50  0001 C CNN
	1    6250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3900 6250 3900
Wire Wire Line
	6250 3900 6250 4600
Wire Wire Line
	10300 5950 10200 5950
Wire Wire Line
	10200 5950 10200 6100
Wire Wire Line
	10300 5850 9900 5850
Text Label 9950 5850 0    50   ~ 0
SIG_IN
$Comp
L Regulator_Linear:L78L05_SOT89 U2
U 1 1 63CBC9F2
P 4250 1150
F 0 "U2" H 4250 1392 50  0000 C CNN
F 1 "L78L05_SOT89" H 4250 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 4250 1350 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4250 1100 50  0001 C CNN
	1    4250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 63CBCCD0
P 3850 1250
F 0 "C4" H 3942 1296 50  0000 L CNN
F 1 "1u" H 3942 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3850 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 63CBCCDA
P 4650 1250
F 0 "C6" H 4742 1296 50  0000 L CNN
F 1 "1u" H 4742 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4650 1250 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 63CBCCE4
P 4650 900
F 0 "#PWR014" H 4650 750 50  0001 C CNN
F 1 "VCC" H 4665 1073 50  0000 C CNN
F 2 "" H 4650 900 50  0001 C CNN
F 3 "" H 4650 900 50  0001 C CNN
	1    4650 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 63CBCCEE
P 4250 1600
F 0 "#PWR013" H 4250 1350 50  0001 C CNN
F 1 "GND" H 4255 1427 50  0000 C CNN
F 2 "" H 4250 1600 50  0001 C CNN
F 3 "" H 4250 1600 50  0001 C CNN
	1    4250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 63CBCCF8
P 4650 1600
F 0 "#PWR015" H 4650 1350 50  0001 C CNN
F 1 "GND" H 4655 1427 50  0000 C CNN
F 2 "" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 63CBCD02
P 3850 1600
F 0 "#PWR012" H 3850 1350 50  0001 C CNN
F 1 "GND" H 3855 1427 50  0000 C CNN
F 2 "" H 3850 1600 50  0001 C CNN
F 3 "" H 3850 1600 50  0001 C CNN
	1    3850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1450 4250 1600
Wire Wire Line
	4650 1600 4650 1350
Wire Wire Line
	4650 1150 4650 900 
Wire Wire Line
	4550 1150 4650 1150
Connection ~ 4650 1150
Wire Wire Line
	3950 1150 3850 1150
Wire Wire Line
	3850 1350 3850 1600
Wire Wire Line
	3750 1150 3850 1150
Connection ~ 3850 1150
Wire Wire Line
	3450 900  3450 1150
$Comp
L power:+BATT #PWR01
U 1 1 63CC6C4D
P 900 900
F 0 "#PWR01" H 900 750 50  0001 C CNN
F 1 "+BATT" H 915 1073 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR011
U 1 1 63CC9398
P 3450 900
F 0 "#PWR011" H 3450 750 50  0001 C CNN
F 1 "+BATT" H 3465 1073 50  0000 C CNN
F 2 "" H 3450 900 50  0001 C CNN
F 3 "" H 3450 900 50  0001 C CNN
	1    3450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3250 1950 3250
$Comp
L Relay:FINDER-36.11 K1
U 1 1 63CD110C
P 9850 1650
F 0 "K1" H 10280 1696 50  0000 L CNN
F 1 "FINDER-36.11" H 10280 1605 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 11120 1620 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 9850 1650 50  0001 C CNN
	1    9850 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 63CD2DE6
P 9550 2400
F 0 "Q1" H 9741 2446 50  0000 L CNN
F 1 "BC817" H 9741 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 2325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 9550 2400 50  0001 L CNN
	1    9550 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 63CD4C85
P 9650 1100
F 0 "R7" V 9454 1100 50  0000 C CNN
F 1 "43" V 9545 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9650 1100 50  0001 C CNN
F 3 "~" H 9650 1100 50  0001 C CNN
	1    9650 1100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 63CD62A7
P 9050 1650
F 0 "D4" V 9004 1730 50  0000 L CNN
F 1 "1N4007" V 9095 1730 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9050 1475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9050 1650 50  0001 C CNN
	1    9050 1650
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 63CD7D51
P 9650 850
F 0 "#PWR024" H 9650 700 50  0001 C CNN
F 1 "VCC" H 9665 1023 50  0000 C CNN
F 2 "" H 9650 850 50  0001 C CNN
F 3 "" H 9650 850 50  0001 C CNN
	1    9650 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 850  9650 1000
Wire Wire Line
	9650 1200 9650 1250
Wire Wire Line
	9650 1250 9050 1250
Wire Wire Line
	9050 1250 9050 1500
Connection ~ 9650 1250
Wire Wire Line
	9650 1250 9650 1350
Wire Wire Line
	9650 1950 9650 2050
Wire Wire Line
	9050 1800 9050 2050
Wire Wire Line
	9050 2050 9650 2050
Connection ~ 9650 2050
Wire Wire Line
	9650 2050 9650 2200
$Comp
L power:GND #PWR025
U 1 1 63CDCA79
P 9650 2900
F 0 "#PWR025" H 9650 2650 50  0001 C CNN
F 1 "GND" H 9655 2727 50  0000 C CNN
F 2 "" H 9650 2900 50  0001 C CNN
F 3 "" H 9650 2900 50  0001 C CNN
	1    9650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2600 9650 2900
$Comp
L Device:R_Small R6
U 1 1 63CDE3D7
P 9100 2400
F 0 "R6" V 8904 2400 50  0000 C CNN
F 1 "100" V 8995 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9100 2400 50  0001 C CNN
F 3 "~" H 9100 2400 50  0001 C CNN
	1    9100 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2400 9350 2400
Wire Wire Line
	9000 2400 8250 2400
Text Label 8700 2400 0    50   ~ 0
RELAY
$Comp
L power:+BATT #PWR026
U 1 1 63CE1E67
P 10200 5400
F 0 "#PWR026" H 10200 5250 50  0001 C CNN
F 1 "+BATT" H 10215 5573 50  0000 C CNN
F 2 "" H 10200 5400 50  0001 C CNN
F 3 "" H 10200 5400 50  0001 C CNN
	1    10200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5400 10200 5650
Wire Wire Line
	10050 1950 10050 2050
Wire Wire Line
	10050 2050 11050 2050
Wire Wire Line
	9950 1350 9950 1100
Wire Wire Line
	9950 1100 11050 1100
Wire Wire Line
	10150 1350 10150 1250
Wire Wire Line
	10150 1250 10600 1250
Text Label 11050 2050 2    50   ~ 0
SIG_OUT
Text Label 11050 1100 2    50   ~ 0
SIG_IN
Text Label 10600 1250 2    50   ~ 0
SIG
Text Notes 9550 1150 2    50   ~ 0
For 3V relay on 5V line:\nRi=23; R=43; I=0.063
Text Notes 1950 2150 2    50   ~ 0
uC PowerSource
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 63D1CA3E
P 4100 800
F 0 "JP1" H 4100 985 50  0000 C CNN
F 1 "No_Regulator" H 4100 894 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4100 800 50  0001 C CNN
F 3 "~" H 4100 800 50  0001 C CNN
	1    4100 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 800  4000 800 
Wire Wire Line
	4200 800  4550 800 
Wire Wire Line
	4550 800  4550 1150
Connection ~ 4550 1150
Wire Wire Line
	3850 800  3850 1150
Text Notes 3750 2250 0    50   ~ 0
Relay PowerSource\nConnect jumper pads if there\nis relay with +BATT operational\nvoltage
Wire Wire Line
	5450 3800 6100 3800
Text Label 6100 3800 2    50   ~ 0
RELAY
$Comp
L Device:CP C5
U 1 1 63D25F7B
P 4050 3900
F 0 "C5" H 4168 3946 50  0000 L CNN
F 1 "1u" H 4168 3855 50  0000 L CNN
F 2 "" H 4088 3750 50  0001 C CNN
F 3 "~" H 4050 3900 50  0001 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3750 4050 3250
Wire Wire Line
	4050 3250 4850 3250
Connection ~ 4850 3250
Wire Wire Line
	4850 3250 4850 3200
Wire Wire Line
	4050 4050 4050 4550
Wire Wire Line
	4050 4550 4850 4550
Connection ~ 4850 4550
Wire Wire Line
	4850 4550 4850 4600
$Comp
L Device:C_Small C3
U 1 1 63D30751
P 3750 3900
F 0 "C3" H 3500 3950 50  0000 L CNN
F 1 "0.15" H 3500 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3750 3900 50  0001 C CNN
F 3 "~" H 3750 3900 50  0001 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3800 3750 3250
Wire Wire Line
	3750 3250 4050 3250
Connection ~ 4050 3250
Wire Wire Line
	3750 4000 3750 4550
Wire Wire Line
	3750 4550 4050 4550
Connection ~ 4050 4550
$Comp
L Device:C_Small C7
U 1 1 63D38719
P 6450 4300
F 0 "C7" H 6542 4346 50  0000 L CNN
F 1 "4.7n" H 6542 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6450 4300 50  0001 C CNN
F 3 "~" H 6450 4300 50  0001 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR020
U 1 1 63D3C4C2
P 6450 4600
F 0 "#PWR020" H 6450 4350 50  0001 C CNN
F 1 "GNDD" H 6454 4445 50  0000 C CNN
F 2 "" H 6450 4600 50  0001 C CNN
F 3 "" H 6450 4600 50  0001 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4100 6450 4200
Wire Wire Line
	6450 4400 6450 4600
Wire Wire Line
	6450 3200 6450 3300
Wire Wire Line
	6450 3500 6450 4100
Connection ~ 6450 4100
Wire Wire Line
	5450 4100 6450 4100
$Comp
L Device:C_Small C8
U 1 1 63D55C5B
P 7200 4100
F 0 "C8" H 7292 4146 50  0000 L CNN
F 1 "4.7n" H 7292 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7200 4100 50  0001 C CNN
F 3 "~" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 63D5667A
P 6300 3700
F 0 "R3" V 6104 3700 50  0000 C CNN
F 1 "1k" V 6195 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6300 3700 50  0001 C CNN
F 3 "~" H 6300 3700 50  0001 C CNN
	1    6300 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3700 6750 3900
Wire Wire Line
	6750 3700 7200 3700
Wire Wire Line
	6750 4300 6750 4600
$Comp
L power:GNDD #PWR023
U 1 1 63D5E83D
P 7200 4600
F 0 "#PWR023" H 7200 4350 50  0001 C CNN
F 1 "GNDD" H 7204 4445 50  0000 C CNN
F 2 "" H 7200 4600 50  0001 C CNN
F 3 "" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4200 7200 4600
Wire Wire Line
	7200 4000 7200 3700
Connection ~ 7200 3700
Wire Wire Line
	5450 3700 6200 3700
Wire Wire Line
	6400 3700 6750 3700
Connection ~ 6750 3700
$Comp
L Diode:1N4007 D1
U 1 1 63D88F02
P 1050 1150
F 0 "D1" H 1050 933 50  0000 C CNN
F 1 "1N4007" H 1050 1024 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1050 975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1050 1150 50  0001 C CNN
	1    1050 1150
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D2
U 1 1 63D8A873
P 3600 1150
F 0 "D2" H 3600 933 50  0000 C CNN
F 1 "1N4007" H 3600 1024 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3600 975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3600 1150 50  0001 C CNN
	1    3600 1150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
