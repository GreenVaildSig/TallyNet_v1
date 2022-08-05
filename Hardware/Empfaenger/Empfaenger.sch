EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
Title "Multi-Tally-Empfänger"
Date "2021-10-04"
Rev "v0.0.1"
Comp "Zweites Deutsches Fernsehen"
Comment1 "8-fach Tally-Ethernet Umsetzer"
Comment2 "designed by Sven Mathäs"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:XLR3 J3
U 1 1 611F7F24
P 1150 3900
F 0 "J3" H 1150 4265 50  0000 C CNN
F 1 "XLR3" H 1150 4174 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 3900 50  0001 C CNN
F 3 " ~" H 1150 3900 50  0001 C CNN
	1    1150 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3 J4
U 1 1 611F7F63
P 1150 5000
F 0 "J4" H 1150 5365 50  0000 C CNN
F 1 "XLR3" H 1150 5274 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 5000 50  0001 C CNN
F 3 " ~" H 1150 5000 50  0001 C CNN
	1    1150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5300 1150 5400
$Comp
L Connector:XLR3 J5
U 1 1 61207F4B
P 1150 6200
F 0 "J5" H 1150 6565 50  0000 C CNN
F 1 "XLR3" H 1150 6474 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 6200 50  0001 C CNN
F 3 " ~" H 1150 6200 50  0001 C CNN
	1    1150 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3 J6
U 1 1 61207F8A
P 1150 7250
F 0 "J6" H 1150 7615 50  0000 C CNN
F 1 "XLR3" H 1150 7524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 7250 50  0001 C CNN
F 3 " ~" H 1150 7250 50  0001 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7550 1150 7650
$Comp
L Connector:XLR3 J1
U 1 1 610B4D00
P 1150 1750
F 0 "J1" H 1150 2115 50  0000 C CNN
F 1 "XLR3" H 1150 2024 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 1750 50  0001 C CNN
F 3 " ~" H 1150 1750 50  0001 C CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3100 1150 3200
$Comp
L Connector:XLR3 J2
U 1 1 610CEFF4
P 1150 2800
F 0 "J2" H 1150 3165 50  0000 C CNN
F 1 "XLR3" H 1150 3074 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 2800 50  0001 C CNN
F 3 " ~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
$Comp
L teensy:Teensy4.1 U1
U 1 1 612248A1
P 9000 5800
F 0 "U1" H 9000 8365 50  0000 C CNN
F 1 "Teensy4.1" H 9000 8274 50  0000 C CNN
F 2 "teensy:Teensy41" H 8600 6200 50  0001 C CNN
F 3 "" H 8600 6200 50  0001 C CNN
	1    9000 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3 J7
U 1 1 61547F0B
P 1150 8400
F 0 "J7" H 1150 8765 50  0000 C CNN
F 1 "XLR3" H 1150 8674 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 8400 50  0001 C CNN
F 3 " ~" H 1150 8400 50  0001 C CNN
	1    1150 8400
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3 J8
U 1 1 61547F17
P 1150 9450
F 0 "J8" H 1150 9815 50  0000 C CNN
F 1 "XLR3" H 1150 9724 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 9450 50  0001 C CNN
F 3 " ~" H 1150 9450 50  0001 C CNN
	1    1150 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9750 1150 9850
Text GLabel 10100 3750 2    50   BiDi ~ 0
GND3V3
Text GLabel 10100 3850 2    50   Output ~ 0
3V3
Text GLabel 10100 3650 2    50   Input ~ 0
5VIC
Text GLabel 7900 3650 0    50   Input ~ 0
GNDIC
$Comp
L Connector:USB_B J10
U 1 1 614A35B4
P 2950 1150
F 0 "J10" H 3007 1617 50  0000 C CNN
F 1 "USB_B" H 3007 1526 50  0000 C CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 " ~" H 3100 1100 50  0001 C CNN
	1    2950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 2950 1550
$Comp
L Connector:USB_C_Receptacle J9
U 1 1 614A3DE3
P 2900 3000
F 0 "J9" H 3007 4267 50  0000 C CNN
F 1 "USB_C_Receptacle" H 3007 4176 50  0000 C CNN
F 2 "" H 3050 3000 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 3050 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4600 2900 4600
Text GLabel 3250 1150 2    50   BiDi ~ 0
USBDP
Text GLabel 3250 1250 2    50   BiDi ~ 0
USBDN
Text GLabel 3500 2500 2    50   3State ~ 0
USBDN
Text GLabel 3500 2600 2    50   3State ~ 0
USBDN
Text GLabel 3500 2700 2    50   BiDi ~ 0
USBDP
Text GLabel 3500 2800 2    50   BiDi ~ 0
USBDP
Text GLabel 7900 6150 0    50   BiDi ~ 0
USBDN
Text GLabel 7900 6250 0    50   BiDi ~ 0
USBDP
Text GLabel 10100 5050 2    50   BiDi ~ 0
GNDSPI
Text GLabel 7900 4850 0    50   Output ~ 0
SPI0-MOSI
Text GLabel 7900 4950 0    50   Input ~ 0
SPI0-MISO
Text GLabel 10100 4950 2    50   Output ~ 0
SPI0-SCK
Text GLabel 7900 4750 0    50   Output ~ 0
SPI0-CS0
$Comp
L power:+12V #PWR02
U 1 1 61520ED6
P 4900 1000
F 0 "#PWR02" H 4900 850 50  0001 C CNN
F 1 "+12V" H 4915 1173 50  0000 C CNN
F 2 "" H 4900 1000 50  0001 C CNN
F 3 "" H 4900 1000 50  0001 C CNN
	1    4900 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6152841C
P 4650 1000
F 0 "#PWR01" H 4650 750 50  0001 C CNN
F 1 "GND" H 4655 827 50  0000 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	-1   0    0    1   
$EndComp
Text GLabel 7900 5350 0    50   Output ~ 0
SPI1-MOSI
Text GLabel 7900 5450 0    50   Output ~ 0
SPI1-SCK
Text GLabel 7900 3850 0    50   Input ~ 0
SPI1-MISO
Text GLabel 7900 3750 0    50   Output ~ 0
SPI1-CS1
Text GLabel 10100 5550 2    50   Output ~ 0
SPI0-CS1
$Comp
L dk_Logic-Shift-Registers:SN74HC595N IC1
U 1 1 6152E6DE
P 8900 8300
F 0 "IC1" H 8700 9181 50  0000 R CNN
F 1 "SN74HC595N" H 8700 9090 50  0000 R CNN
F 2 "SamacSysFoot:DIP794W53P254L1930H508Q16N" H 9950 8400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9950 8300 50  0001 L CNN
F 4 "8-Bit Shift Registers With 3-State Output Registers" H 9950 8200 50  0001 L CNN "Description"
F 5 "5.08" H 9950 8100 50  0001 L CNN "Height"
F 6 "595-SN74HC595N" H 9950 8000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74HC595N?qs=IEl3ej0IqwBTHkYa8XPoMQ%3D%3D" H 9950 7900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9950 7800 50  0001 L CNN "Manufacturer_Name"
F 9 "SN74HC595N" H 9950 7700 50  0001 L CNN "Manufacturer_Part_Number"
	1    8900 8300
	1    0    0    -1  
$EndComp
Text GLabel 850  1750 0    50   Input ~ 0
GNDTally
Text GLabel 850  2800 0    50   Input ~ 0
GNDTally
Text GLabel 850  3900 0    50   Input ~ 0
GNDTally
Text GLabel 850  5000 0    50   Input ~ 0
GNDTally
Text GLabel 850  6200 0    50   Input ~ 0
GNDTally
Text GLabel 850  7250 0    50   Input ~ 0
GNDTally
Text GLabel 850  8400 0    50   Input ~ 0
GNDTally
Text GLabel 850  9450 0    50   Input ~ 0
GNDTally
Text GLabel 1150 9850 0    50   Input ~ 0
GNDTally
Text GLabel 1150 8800 0    50   Input ~ 0
GNDTally
Text GLabel 1150 7650 0    50   Input ~ 0
GNDTally
Text GLabel 1150 6600 0    50   Input ~ 0
GNDTally
Text GLabel 1150 5400 0    50   Input ~ 0
GNDTally
Text GLabel 1150 4300 0    50   Input ~ 0
GNDTally
Text GLabel 1150 3200 0    50   Input ~ 0
GNDTally
Text GLabel 1150 2150 0    50   Input ~ 0
GNDTally
Wire Wire Line
	1150 2050 1150 2150
Wire Wire Line
	1150 4200 1150 4300
Wire Wire Line
	1150 6500 1150 6600
Wire Wire Line
	1150 8700 1150 8800
Wire Wire Line
	8300 8000 7500 8000
Wire Wire Line
	7500 8000 7500 5650
Wire Wire Line
	7500 5650 7900 5650
Wire Wire Line
	7900 5750 7400 5750
Wire Wire Line
	7400 5750 7400 8200
Wire Wire Line
	7400 8200 8300 8200
Wire Wire Line
	7900 5850 7300 5850
Wire Wire Line
	7300 5850 7300 8300
Wire Wire Line
	7300 8300 8300 8300
Text GLabel 8300 8100 0    50   Input ~ 0
GND3V3
Text GLabel 8600 9150 3    50   Input ~ 0
GND3V3
Wire Wire Line
	10100 6600 10300 6600
Wire Wire Line
	10300 6600 10300 7100
Wire Wire Line
	10300 7100 9750 7100
Wire Wire Line
	10100 6300 10500 6300
Wire Wire Line
	9100 7900 9250 7900
Wire Wire Line
	9250 7900 9250 7700
Wire Wire Line
	9250 7700 9900 7700
Wire Wire Line
	9100 8000 9350 8000
Wire Wire Line
	9350 8000 9350 7800
Wire Wire Line
	9350 7800 9900 7800
Wire Wire Line
	9100 8100 9450 8100
Wire Wire Line
	9450 8100 9450 7900
Wire Wire Line
	9450 7900 9900 7900
Wire Wire Line
	9100 8200 9550 8200
Wire Wire Line
	9550 8200 9550 8000
Wire Wire Line
	9550 8000 9900 8000
Wire Wire Line
	9100 8300 10550 8300
Wire Wire Line
	10550 8300 10550 8000
Wire Wire Line
	10550 8000 10400 8000
Wire Wire Line
	9100 8400 10650 8400
Wire Wire Line
	10650 8400 10650 7900
Wire Wire Line
	10650 7900 10400 7900
Wire Wire Line
	9100 8500 10750 8500
Wire Wire Line
	10750 8500 10750 7800
Wire Wire Line
	10750 7800 10400 7800
Wire Wire Line
	9100 8600 10850 8600
Wire Wire Line
	10850 8600 10850 7700
Wire Wire Line
	10850 7700 10400 7700
$Comp
L Device:R R1
U 1 1 615F8836
P 7750 7750
F 0 "R1" H 7820 7796 50  0000 L CNN
F 1 "330" H 7820 7705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 7750 50  0001 C CNN
F 3 "~" H 7750 7750 50  0001 C CNN
	1    7750 7750
	1    0    0    -1  
$EndComp
Text GLabel 7750 7450 1    50   Input ~ 0
3V3
Wire Wire Line
	7750 7450 7750 7600
Wire Wire Line
	8700 7600 7750 7600
Connection ~ 7750 7600
Wire Wire Line
	7750 7900 7750 8400
Wire Wire Line
	7750 8400 8300 8400
$Comp
L Device:C C1
U 1 1 6160B2A3
P 7750 8550
F 0 "C1" H 7865 8596 50  0000 L CNN
F 1 "100nF" H 7865 8505 50  0000 L CNN
F 2 "SamacSysFoot:MONO-KAP_SIZE-15-L-5_" H 7788 8400 50  0001 C CNN
F 3 "~" H 7750 8550 50  0001 C CNN
	1    7750 8550
	1    0    0    -1  
$EndComp
Connection ~ 7750 8400
Wire Wire Line
	7750 8700 7750 9000
Wire Wire Line
	7750 9000 8600 9000
Wire Wire Line
	8600 9000 8600 8900
Wire Wire Line
	8600 9000 8600 9150
Connection ~ 8600 9000
$Comp
L Device:R R2
U 1 1 6161A5E6
P 9200 8850
F 0 "R2" H 9270 8896 50  0000 L CNN
F 1 "1K" H 9270 8805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9130 8850 50  0001 C CNN
F 3 "~" H 9200 8850 50  0001 C CNN
	1    9200 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 8700 9200 8700
Wire Wire Line
	8600 9000 9200 9000
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J11
U 1 1 61629A8D
P 10100 7700
F 0 "J11" H 10150 8117 50  0000 C CNN
F 1 "LED Matrix" H 10150 8026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 10100 7700 50  0001 C CNN
F 3 "~" H 10100 7700 50  0001 C CNN
	1    10100 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 7100 9750 7500
Wire Wire Line
	9750 7500 9900 7500
Wire Wire Line
	10500 6300 10500 7500
Wire Wire Line
	10500 7500 10400 7500
Text GLabel 10850 7600 2    50   Input ~ 0
GND3V3
$Comp
L Device:R R3
U 1 1 6164E3FF
P 10600 7600
F 0 "R3" V 10393 7600 50  0000 C CNN
F 1 "220" V 10484 7600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10530 7600 50  0001 C CNN
F 3 "~" H 10600 7600 50  0001 C CNN
	1    10600 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 7600 10450 7600
Wire Wire Line
	10750 7600 10850 7600
Wire Wire Line
	10100 6200 10700 6200
Wire Wire Line
	10500 6300 10700 6300
Connection ~ 10500 6300
Wire Wire Line
	10100 6400 10700 6400
Wire Wire Line
	10100 6500 10700 6500
Wire Wire Line
	10100 6700 10600 6700
Wire Wire Line
	10600 6700 10600 6600
Wire Wire Line
	10600 6600 10700 6600
$Comp
L Connector_Generic:Conn_01x08 J12
U 1 1 6167B57D
P 12750 5350
F 0 "J12" H 12830 5342 50  0000 L CNN
F 1 "SPI-Erweiterungsport" H 12830 5251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 12750 5350 50  0001 C CNN
F 3 "~" H 12750 5350 50  0001 C CNN
	1    12750 5350
	1    0    0    -1  
$EndComp
Text GLabel 14100 6450 0    50   Input ~ 0
3V3
Text GLabel 14100 6350 0    50   Input ~ 0
GNDSPI
Text GLabel 14100 6650 0    50   Input ~ 0
SPI0-MOSI
Text GLabel 14100 6550 0    50   Input ~ 0
SPI0-SCK
Text GLabel 12550 5050 0    50   Input ~ 0
3V3
Text GLabel 12550 5150 0    50   Input ~ 0
GNDSPI
Text GLabel 12550 5250 0    50   Input ~ 0
SPI1-CS1
Text GLabel 12550 5350 0    50   Output ~ 0
SPI1-MISO
Text GLabel 12550 5450 0    50   Input ~ 0
SPI1-MOSI
Text GLabel 12550 5550 0    50   Input ~ 0
SPI1-SCK
Wire Wire Line
	12550 5650 10100 5650
Wire Wire Line
	10100 5750 12550 5750
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J14
U 1 1 616767BC
P 14300 6450
F 0 "J14" H 14350 6767 50  0000 C CNN
F 1 "Display" H 14350 6676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 14300 6450 50  0001 C CNN
F 3 "~" H 14300 6450 50  0001 C CNN
	1    14300 6450
	1    0    0    -1  
$EndComp
Text GLabel 14600 6350 2    50   Input ~ 0
DISP-Res
Text GLabel 14600 6450 2    50   Input ~ 0
DISP-DC
Text GLabel 14600 6550 2    50   Input ~ 0
SPI0-CS0
Text GLabel 6400 2150 2    50   Output ~ 0
12V
Text GLabel 6400 2050 2    50   Output ~ 0
GND12V
$Sheet
S 3500 5150 1550 1100
U 615CE64B
F0 "Tallyausgangsschaltung" 50
F1 "TallyOut.sch" 50
F2 "12V" I R 5050 5250 50 
F3 "SCLK" I R 5050 5550 50 
F4 "MOSI" I R 5050 5650 50 
F5 "CS" I R 5050 5750 50 
F6 "EN1" I R 5050 5850 50 
F7 "GND" I R 5050 6100 50 
F8 "GNDTally" O L 3500 6150 50 
F9 "Tally1" O L 3500 5300 50 
F10 "Tally2" O L 3500 5400 50 
F11 "Tally3" O L 3500 5500 50 
F12 "Tally4" O L 3500 5600 50 
F13 "Tally5" O L 3500 5700 50 
F14 "Tally6" O L 3500 5800 50 
F15 "Tally7" O L 3500 5900 50 
F16 "Tally8" O L 3500 6000 50 
$EndSheet
$Comp
L SamacSys_Parts:MDS20A-12 PS1
U 1 1 615FE3D0
P 5200 2050
F 0 "PS1" H 5800 2315 50  0000 C CNN
F 1 "MDS20A-12" H 5800 2224 50  0000 C CNN
F 2 "SamacSysFoot:MDS20A12" H 6250 2150 50  0001 L CNN
F 3 "https://www.meanwell-web.com/content/files/pdfs/productPdfs/MW/MDS20/MDS20-spec.pdf" H 6250 2050 50  0001 L CNN
F 4 "Isolated DC/DC Converters 9-18Vin 12V 1670mA 20W 2x1 Med Iso Reg" H 6250 1950 50  0001 L CNN "Description"
F 5 "12.5" H 6250 1850 50  0001 L CNN "Height"
F 6 "709-MDS20A-12" H 6250 1750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/MEAN-WELL/MDS20A-12?qs=OlC7AqGiEDmFDSoHFgUaHQ%3D%3D" H 6250 1650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Mean Well" H 6250 1550 50  0001 L CNN "Manufacturer_Name"
F 9 "MDS20A-12" H 6250 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    5200 2050
	1    0    0    -1  
$EndComp
Text GLabel 5300 1400 0    50   Input ~ 0
GNDIC
Text GLabel 5300 1600 0    50   Output ~ 0
5VIC
Wire Wire Line
	4650 1000 4650 1300
Connection ~ 4650 1300
Wire Wire Line
	4650 1300 5300 1300
Wire Wire Line
	4900 1000 4900 1200
Connection ~ 4900 1200
Wire Wire Line
	4900 1200 5300 1200
$Comp
L SamacSys_Parts:SPUN02M-05 PS2
U 1 1 6151C101
P 5300 1200
F 0 "PS2" H 6128 1046 50  0000 L CNN
F 1 "SPUN02M-05" H 6128 955 50  0000 L CNN
F 2 "SamacSysFoot:SPUN02M05" H 6150 1300 50  0001 L CNN
F 3 "https://www.mouser.in/ProductDetail/MEAN-WELL/SPUN02M-05?qs=%2Fha2pyFaduhFR5v0S2C9UJVEeDmHrXWPRsDCcs3Nalzz4l63UULR%2Fw%3D%3D" H 6150 1200 50  0001 L CNN
F 4 "Isolated DC/DC Converters 12Vin 5Vout 0-400mA 2W SIP Unreg Iso" H 6150 1100 50  0001 L CNN "Description"
F 5 "10.45" H 6150 1000 50  0001 L CNN "Height"
F 6 "709-SPUN02M-05" H 6150 900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/MEAN-WELL/SPUN02M-05?qs=%252B6g0mu59x7JHfdd%252Bg28Myg%3D%3D" H 6150 800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Mean Well" H 6150 700 50  0001 L CNN "Manufacturer_Name"
F 9 "SPUN02M-05" H 6150 600 50  0001 L CNN "Manufacturer_Part_Number"
	1    5300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2050 4650 2050
Wire Wire Line
	4650 1300 4650 1650
Wire Wire Line
	4900 2150 5200 2150
Wire Wire Line
	4900 1200 4900 1550
Text GLabel 5050 5250 2    50   Input ~ 0
12V
Text GLabel 5050 6100 2    50   Input ~ 0
GND12V
Text GLabel 5050 5750 2    50   Input ~ 0
SPI0-CS1
Text GLabel 5050 5550 2    50   Input ~ 0
SPI0-SCK
Text GLabel 5050 5650 2    50   Input ~ 0
SPI0-MOSI
Text GLabel 3500 6150 0    50   Input ~ 0
GNDTally
Wire Wire Line
	1450 5000 1450 5600
Wire Wire Line
	1450 5600 3500 5600
Wire Wire Line
	1450 6200 1450 5700
Wire Wire Line
	1450 5700 3500 5700
Wire Wire Line
	1450 3900 1550 3900
Wire Wire Line
	1550 3900 1550 5500
Wire Wire Line
	1550 5500 3500 5500
Wire Wire Line
	1450 2800 1650 2800
Wire Wire Line
	1650 2800 1650 5400
Wire Wire Line
	1650 5400 3500 5400
Wire Wire Line
	1450 1750 1750 1750
Wire Wire Line
	1750 1750 1750 5300
Wire Wire Line
	1750 5300 3500 5300
Wire Wire Line
	1450 7250 1550 7250
Wire Wire Line
	1550 7250 1550 5800
Wire Wire Line
	1550 5800 3500 5800
Wire Wire Line
	1450 8400 1650 8400
Wire Wire Line
	1650 8400 1650 5900
Wire Wire Line
	1650 5900 3500 5900
Wire Wire Line
	1450 9450 1750 9450
Wire Wire Line
	1750 9450 1750 6000
Wire Wire Line
	1750 6000 3500 6000
Wire Wire Line
	5050 5850 7050 5850
Wire Wire Line
	7050 5850 7050 5550
Wire Wire Line
	7050 5550 7900 5550
Text GLabel 10100 5250 2    50   Input ~ 0
DISP-Res
Text GLabel 10100 5150 2    50   Input ~ 0
DISP-DC
Text GLabel 10700 6200 2    50   Output ~ 0
Eth_R-
Text GLabel 10700 6300 2    50   Output ~ 0
GNDEth
Text GLabel 10700 6400 2    50   Output ~ 0
Eth_T+
Text GLabel 10700 6500 2    50   Output ~ 0
Eth_T-
Text GLabel 10700 6600 2    50   Output ~ 0
Eth_R+
$Comp
L SamacSys_Parts:J1B1211CCD J13
U 1 1 6162890E
P 13050 7400
F 0 "J13" H 13500 7665 50  0000 C CNN
F 1 "J1B1211CCD" H 13500 7574 50  0000 C CNN
F 2 "SamacSysFoot:J1B1211CCD" H 13800 7500 50  0001 L CNN
F 3 "http://wizwiki.net/wiki/lib/exe/fetch.php?media=products:wiz550web:wiz550webds_kr:j1b1211ccd.pdf" H 13800 7400 50  0001 L CNN
F 4 "Modules Accessories RJ-45 w/ Transformer Connector /CETUS" H 13800 7300 50  0001 L CNN "Description"
F 5 "13.6" H 13800 7200 50  0001 L CNN "Height"
F 6 "950-J1B1211CCD" H 13800 7100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/WIZnet/J1B1211CCD?qs=6pHq9bjOlanFLUlTDcmBeQ%3D%3D" H 13800 7000 50  0001 L CNN "Mouser Price/Stock"
F 8 "WIZnet Inc" H 13800 6900 50  0001 L CNN "Manufacturer_Name"
F 9 "J1B1211CCD" H 13800 6800 50  0001 L CNN "Manufacturer_Part_Number"
	1    13050 7400
	1    0    0    -1  
$EndComp
Text GLabel 13050 7400 0    50   Input ~ 0
Eth_T+
Text GLabel 13050 7600 0    50   Input ~ 0
Eth_T-
Text GLabel 13050 7700 0    50   Input ~ 0
Eth_R+
Text GLabel 13050 7900 0    50   Input ~ 0
Eth_R-
Text GLabel 14400 7400 2    50   Input ~ 0
GNDEth
$Comp
L SamacSys_Parts:K104K15X7RF5TL2 C2
U 1 1 6162BABB
P 13200 8550
F 0 "C2" H 13450 8815 50  0000 C CNN
F 1 "100nF" H 13450 8724 50  0000 C CNN
F 2 "SamacSysFoot:MONO-KAP_SIZE-15-L-5_" H 13550 8600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/K104K15X7RF5TL2.pdf" H 13550 8500 50  0001 L CNN
F 4 "Capacitor;Ceramic;Cap 0.1 uF Vishay 100nF Multilayer Ceramic Capacitor (MLCC) 50 V dc +/-10% X7R dielectric K Radial max op. temp. +125C" H 13550 8400 50  0001 L CNN "Description"
F 5 "" H 13550 8300 50  0001 L CNN "Height"
F 6 "594-K104K15X7RF5TL2" H 13550 8200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-BC-Components/K104K15X7RF5TL2?qs=sYfpZ29HcUR83i3HiPAFlA%3D%3D" H 13550 8100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 13550 8000 50  0001 L CNN "Manufacturer_Name"
F 9 "K104K15X7RF5TL2" H 13550 7900 50  0001 L CNN "Manufacturer_Part_Number"
	1    13200 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 7500 12650 7500
Wire Wire Line
	12650 7500 12650 7800
Wire Wire Line
	12650 8550 13200 8550
Wire Wire Line
	13700 8550 14150 8550
Wire Wire Line
	14150 8550 14150 7400
Wire Wire Line
	14150 7400 13950 7400
Wire Wire Line
	14150 7400 14400 7400
Connection ~ 14150 7400
Wire Wire Line
	13050 7800 12650 7800
Connection ~ 12650 7800
Wire Wire Line
	12650 7800 12650 8550
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 61737C92
P 4250 1650
F 0 "J15" H 4168 1325 50  0000 C CNN
F 1 "PWR-In" H 4168 1416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4250 1650 50  0001 C CNN
F 3 "~" H 4250 1650 50  0001 C CNN
	1    4250 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 1550 4900 1550
Connection ~ 4900 1550
Wire Wire Line
	4900 1550 4900 2150
Wire Wire Line
	4450 1650 4650 1650
Connection ~ 4650 1650
Wire Wire Line
	4650 1650 4650 2050
$EndSCHEMATC
