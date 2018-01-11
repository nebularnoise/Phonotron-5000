# Copyright (C) 1991-2006 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details. 

# Quartus II: Generate Tcl File for Project
# File: DE2_NET.tcl
# Generated on: Wed Jun 20 11:47:14 2007

# Load Quartus II Tcl Project package
package require ::quartus::project

set make_assignments 1


# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone II"
	set_global_assignment -name DEVICE EP2C35F672C6
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED WITH WEAK PULL-UP"
	set_global_assignment -name RESERVE_ASDO_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_NO_OUTPUT_GND "AS INPUT TRI-STATED"
	set_location_assignment PIN_N25 -to SW[0]
	set_location_assignment PIN_N26 -to SW[1]
	set_location_assignment PIN_P25 -to SW[2]
	set_location_assignment PIN_AE14 -to SW[3]
	set_location_assignment PIN_AF14 -to SW[4]
	set_location_assignment PIN_AD13 -to SW[5]
	set_location_assignment PIN_AC13 -to SW[6]
	set_location_assignment PIN_C13 -to SW[7]
	set_location_assignment PIN_B13 -to SW[8]
	set_location_assignment PIN_A13 -to SW[9]
	set_location_assignment PIN_N1 -to SW[10]
	set_location_assignment PIN_P1 -to SW[11]
	set_location_assignment PIN_P2 -to SW[12]
	set_location_assignment PIN_T7 -to SW[13]
	set_location_assignment PIN_U3 -to SW[14]
	set_location_assignment PIN_U4 -to SW[15]
	set_location_assignment PIN_V1 -to SW[16]
	set_location_assignment PIN_V2 -to SW[17]
	set_location_assignment PIN_T6 -to DRAM_ADDR[0]
	set_location_assignment PIN_V4 -to DRAM_ADDR[1]
	set_location_assignment PIN_V3 -to DRAM_ADDR[2]
	set_location_assignment PIN_W2 -to DRAM_ADDR[3]
	set_location_assignment PIN_W1 -to DRAM_ADDR[4]
	set_location_assignment PIN_U6 -to DRAM_ADDR[5]
	set_location_assignment PIN_U7 -to DRAM_ADDR[6]
	set_location_assignment PIN_U5 -to DRAM_ADDR[7]
	set_location_assignment PIN_W4 -to DRAM_ADDR[8]
	set_location_assignment PIN_W3 -to DRAM_ADDR[9]
	set_location_assignment PIN_Y1 -to DRAM_ADDR[10]
	set_location_assignment PIN_V5 -to DRAM_ADDR[11]
	set_location_assignment PIN_AE2 -to DRAM_BA_0
	set_location_assignment PIN_AE3 -to DRAM_BA_1
	set_location_assignment PIN_AB3 -to DRAM_CAS_N
	set_location_assignment PIN_AA6 -to DRAM_CKE
	set_location_assignment PIN_AA7 -to DRAM_CLK
	set_location_assignment PIN_AC3 -to DRAM_CS_N
	set_location_assignment PIN_V6 -to DRAM_DQ[0]
	set_location_assignment PIN_AA2 -to DRAM_DQ[1]
	set_location_assignment PIN_AA1 -to DRAM_DQ[2]
	set_location_assignment PIN_Y3 -to DRAM_DQ[3]
	set_location_assignment PIN_Y4 -to DRAM_DQ[4]
	set_location_assignment PIN_R8 -to DRAM_DQ[5]
	set_location_assignment PIN_T8 -to DRAM_DQ[6]
	set_location_assignment PIN_V7 -to DRAM_DQ[7]
	set_location_assignment PIN_W6 -to DRAM_DQ[8]
	set_location_assignment PIN_AB2 -to DRAM_DQ[9]
	set_location_assignment PIN_AB1 -to DRAM_DQ[10]
	set_location_assignment PIN_AA4 -to DRAM_DQ[11]
	set_location_assignment PIN_AA3 -to DRAM_DQ[12]
	set_location_assignment PIN_AC2 -to DRAM_DQ[13]
	set_location_assignment PIN_AC1 -to DRAM_DQ[14]
	set_location_assignment PIN_AA5 -to DRAM_DQ[15]
	set_location_assignment PIN_AD2 -to DRAM_LDQM
	set_location_assignment PIN_Y5 -to DRAM_UDQM
	set_location_assignment PIN_AB4 -to DRAM_RAS_N
	set_location_assignment PIN_AD3 -to DRAM_WE_N
	set_location_assignment PIN_AC18 -to FL_ADDR[0]
	set_location_assignment PIN_AB18 -to FL_ADDR[1]
	set_location_assignment PIN_AE19 -to FL_ADDR[2]
	set_location_assignment PIN_AF19 -to FL_ADDR[3]
	set_location_assignment PIN_AE18 -to FL_ADDR[4]
	set_location_assignment PIN_AF18 -to FL_ADDR[5]
	set_location_assignment PIN_Y16 -to FL_ADDR[6]
	set_location_assignment PIN_AA16 -to FL_ADDR[7]
	set_location_assignment PIN_AD17 -to FL_ADDR[8]
	set_location_assignment PIN_AC17 -to FL_ADDR[9]
	set_location_assignment PIN_AE17 -to FL_ADDR[10]
	set_location_assignment PIN_AF17 -to FL_ADDR[11]
	set_location_assignment PIN_W16 -to FL_ADDR[12]
	set_location_assignment PIN_W15 -to FL_ADDR[13]
	set_location_assignment PIN_AC16 -to FL_ADDR[14]
	set_location_assignment PIN_AD16 -to FL_ADDR[15]
	set_location_assignment PIN_AE16 -to FL_ADDR[16]
	set_location_assignment PIN_AC15 -to FL_ADDR[17]
	set_location_assignment PIN_AB15 -to FL_ADDR[18]
	set_location_assignment PIN_AA15 -to FL_ADDR[19]
	set_location_assignment PIN_V17 -to FL_CE_N
	set_location_assignment PIN_W17 -to FL_OE_N
	set_location_assignment PIN_AD19 -to FL_DQ[0]
	set_location_assignment PIN_AC19 -to FL_DQ[1]
	set_location_assignment PIN_AF20 -to FL_DQ[2]
	set_location_assignment PIN_AE20 -to FL_DQ[3]
	set_location_assignment PIN_AB20 -to FL_DQ[4]
	set_location_assignment PIN_AC20 -to FL_DQ[5]
	set_location_assignment PIN_AF21 -to FL_DQ[6]
	set_location_assignment PIN_AE21 -to FL_DQ[7]
	set_location_assignment PIN_AA18 -to FL_RST_N
	set_location_assignment PIN_AA17 -to FL_WE_N
	set_location_assignment PIN_AF10 -to HEX0[0]
	set_location_assignment PIN_AB12 -to HEX0[1]
	set_location_assignment PIN_AC12 -to HEX0[2]
	set_location_assignment PIN_AD11 -to HEX0[3]
	set_location_assignment PIN_AE11 -to HEX0[4]
	set_location_assignment PIN_V14 -to HEX0[5]
	set_location_assignment PIN_V13 -to HEX0[6]
	set_location_assignment PIN_V20 -to HEX1[0]
	set_location_assignment PIN_V21 -to HEX1[1]
	set_location_assignment PIN_W21 -to HEX1[2]
	set_location_assignment PIN_Y22 -to HEX1[3]
	set_location_assignment PIN_AA24 -to HEX1[4]
	set_location_assignment PIN_AA23 -to HEX1[5]
	set_location_assignment PIN_AB24 -to HEX1[6]
	set_location_assignment PIN_AB23 -to HEX2[0]
	set_location_assignment PIN_V22 -to HEX2[1]
	set_location_assignment PIN_AC25 -to HEX2[2]
	set_location_assignment PIN_AC26 -to HEX2[3]
	set_location_assignment PIN_AB26 -to HEX2[4]
	set_location_assignment PIN_AB25 -to HEX2[5]
	set_location_assignment PIN_Y24 -to HEX2[6]
	set_location_assignment PIN_Y23 -to HEX3[0]
	set_location_assignment PIN_AA25 -to HEX3[1]
	set_location_assignment PIN_AA26 -to HEX3[2]
	set_location_assignment PIN_Y26 -to HEX3[3]
	set_location_assignment PIN_Y25 -to HEX3[4]
	set_location_assignment PIN_U22 -to HEX3[5]
	set_location_assignment PIN_W24 -to HEX3[6]
	set_location_assignment PIN_U9 -to HEX4[0]
	set_location_assignment PIN_U1 -to HEX4[1]
	set_location_assignment PIN_U2 -to HEX4[2]
	set_location_assignment PIN_T4 -to HEX4[3]
	set_location_assignment PIN_R7 -to HEX4[4]
	set_location_assignment PIN_R6 -to HEX4[5]
	set_location_assignment PIN_T3 -to HEX4[6]
	set_location_assignment PIN_T2 -to HEX5[0]
	set_location_assignment PIN_P6 -to HEX5[1]
	set_location_assignment PIN_P7 -to HEX5[2]
	set_location_assignment PIN_T9 -to HEX5[3]
	set_location_assignment PIN_R5 -to HEX5[4]
	set_location_assignment PIN_R4 -to HEX5[5]
	set_location_assignment PIN_R3 -to HEX5[6]
	set_location_assignment PIN_R2 -to HEX6[0]
	set_location_assignment PIN_P4 -to HEX6[1]
	set_location_assignment PIN_P3 -to HEX6[2]
	set_location_assignment PIN_M2 -to HEX6[3]
	set_location_assignment PIN_M3 -to HEX6[4]
	set_location_assignment PIN_M5 -to HEX6[5]
	set_location_assignment PIN_M4 -to HEX6[6]
	set_location_assignment PIN_L3 -to HEX7[0]
	set_location_assignment PIN_L2 -to HEX7[1]
	set_location_assignment PIN_L9 -to HEX7[2]
	set_location_assignment PIN_L6 -to HEX7[3]
	set_location_assignment PIN_L7 -to HEX7[4]
	set_location_assignment PIN_P9 -to HEX7[5]
	set_location_assignment PIN_N9 -to HEX7[6]
	set_location_assignment PIN_G26 -to KEY[0]
	set_location_assignment PIN_N23 -to KEY[1]
	set_location_assignment PIN_P23 -to KEY[2]
	set_location_assignment PIN_W26 -to KEY[3]
	set_location_assignment PIN_AE23 -to LEDR[0]
	set_location_assignment PIN_AF23 -to LEDR[1]
	set_location_assignment PIN_AB21 -to LEDR[2]
	set_location_assignment PIN_AC22 -to LEDR[3]
	set_location_assignment PIN_AD22 -to LEDR[4]
	set_location_assignment PIN_AD23 -to LEDR[5]
	set_location_assignment PIN_AD21 -to LEDR[6]
	set_location_assignment PIN_AC21 -to LEDR[7]
	set_location_assignment PIN_AA14 -to LEDR[8]
	set_location_assignment PIN_Y13 -to LEDR[9]
	set_location_assignment PIN_AA13 -to LEDR[10]
	set_location_assignment PIN_AC14 -to LEDR[11]
	set_location_assignment PIN_AD15 -to LEDR[12]
	set_location_assignment PIN_AE15 -to LEDR[13]
	set_location_assignment PIN_AF13 -to LEDR[14]
	set_location_assignment PIN_AE13 -to LEDR[15]
	set_location_assignment PIN_AE12 -to LEDR[16]
	set_location_assignment PIN_AD12 -to LEDR[17]
	set_location_assignment PIN_AE22 -to LEDG[0]
	set_location_assignment PIN_AF22 -to LEDG[1]
	set_location_assignment PIN_W19 -to LEDG[2]
	set_location_assignment PIN_V18 -to LEDG[3]
	set_location_assignment PIN_U18 -to LEDG[4]
	set_location_assignment PIN_U17 -to LEDG[5]
	set_location_assignment PIN_AA20 -to LEDG[6]
	set_location_assignment PIN_Y18 -to LEDG[7]
	set_location_assignment PIN_Y12 -to LEDG[8]
	set_location_assignment PIN_D13 -to CLOCK_27
	set_location_assignment PIN_N2 -to CLOCK_50
	set_location_assignment PIN_P26 -to EXT_CLOCK
	set_location_assignment PIN_D26 -to PS2_CLK
	set_location_assignment PIN_C24 -to PS2_DAT
	set_location_assignment PIN_C25 -to UART_RXD
	set_location_assignment PIN_B25 -to UART_TXD
	set_location_assignment PIN_K4 -to LCD_RW
	set_location_assignment PIN_K3 -to LCD_EN
	set_location_assignment PIN_K1 -to LCD_RS
	set_location_assignment PIN_J1 -to LCD_DATA[0]
	set_location_assignment PIN_J2 -to LCD_DATA[1]
	set_location_assignment PIN_H1 -to LCD_DATA[2]
	set_location_assignment PIN_H2 -to LCD_DATA[3]
	set_location_assignment PIN_J4 -to LCD_DATA[4]
	set_location_assignment PIN_J3 -to LCD_DATA[5]
	set_location_assignment PIN_H4 -to LCD_DATA[6]
	set_location_assignment PIN_H3 -to LCD_DATA[7]
	set_location_assignment PIN_L4 -to LCD_ON
	set_location_assignment PIN_K2 -to LCD_BLON
	set_location_assignment PIN_AE4 -to SRAM_ADDR[0]
	set_location_assignment PIN_AF4 -to SRAM_ADDR[1]
	set_location_assignment PIN_AC5 -to SRAM_ADDR[2]
	set_location_assignment PIN_AC6 -to SRAM_ADDR[3]
	set_location_assignment PIN_AD4 -to SRAM_ADDR[4]
	set_location_assignment PIN_AD5 -to SRAM_ADDR[5]
	set_location_assignment PIN_AE5 -to SRAM_ADDR[6]
	set_location_assignment PIN_AF5 -to SRAM_ADDR[7]
	set_location_assignment PIN_AD6 -to SRAM_ADDR[8]
	set_location_assignment PIN_AD7 -to SRAM_ADDR[9]
	set_location_assignment PIN_V10 -to SRAM_ADDR[10]
	set_location_assignment PIN_V9 -to SRAM_ADDR[11]
	set_location_assignment PIN_AC7 -to SRAM_ADDR[12]
	set_location_assignment PIN_W8 -to SRAM_ADDR[13]
	set_location_assignment PIN_W10 -to SRAM_ADDR[14]
	set_location_assignment PIN_Y10 -to SRAM_ADDR[15]
	set_location_assignment PIN_AB8 -to SRAM_ADDR[16]
	set_location_assignment PIN_AC8 -to SRAM_ADDR[17]
	set_location_assignment PIN_AD8 -to SRAM_DQ[0]
	set_location_assignment PIN_AE6 -to SRAM_DQ[1]
	set_location_assignment PIN_AF6 -to SRAM_DQ[2]
	set_location_assignment PIN_AA9 -to SRAM_DQ[3]
	set_location_assignment PIN_AA10 -to SRAM_DQ[4]
	set_location_assignment PIN_AB10 -to SRAM_DQ[5]
	set_location_assignment PIN_AA11 -to SRAM_DQ[6]
	set_location_assignment PIN_Y11 -to SRAM_DQ[7]
	set_location_assignment PIN_AE7 -to SRAM_DQ[8]
	set_location_assignment PIN_AF7 -to SRAM_DQ[9]
	set_location_assignment PIN_AE8 -to SRAM_DQ[10]
	set_location_assignment PIN_AF8 -to SRAM_DQ[11]
	set_location_assignment PIN_W11 -to SRAM_DQ[12]
	set_location_assignment PIN_W12 -to SRAM_DQ[13]
	set_location_assignment PIN_AC9 -to SRAM_DQ[14]
	set_location_assignment PIN_AC10 -to SRAM_DQ[15]
	set_location_assignment PIN_AE10 -to SRAM_WE_N
	set_location_assignment PIN_AD10 -to SRAM_OE_N
	set_location_assignment PIN_AF9 -to SRAM_UB_N
	set_location_assignment PIN_AE9 -to SRAM_LB_N
	set_location_assignment PIN_AC11 -to SRAM_CE_N
	set_location_assignment PIN_K7 -to OTG_ADDR[0]
	set_location_assignment PIN_F2 -to OTG_ADDR[1]
	set_location_assignment PIN_F1 -to OTG_CS_N
	set_location_assignment PIN_G2 -to OTG_RD_N
	set_location_assignment PIN_G1 -to OTG_WR_N
	set_location_assignment PIN_G5 -to OTG_RST_N
	set_location_assignment PIN_F4 -to OTG_DATA[0]
	set_location_assignment PIN_D2 -to OTG_DATA[1]
	set_location_assignment PIN_D1 -to OTG_DATA[2]
	set_location_assignment PIN_F7 -to OTG_DATA[3]
	set_location_assignment PIN_J5 -to OTG_DATA[4]
	set_location_assignment PIN_J8 -to OTG_DATA[5]
	set_location_assignment PIN_J7 -to OTG_DATA[6]
	set_location_assignment PIN_H6 -to OTG_DATA[7]
	set_location_assignment PIN_E2 -to OTG_DATA[8]
	set_location_assignment PIN_E1 -to OTG_DATA[9]
	set_location_assignment PIN_K6 -to OTG_DATA[10]
	set_location_assignment PIN_K5 -to OTG_DATA[11]
	set_location_assignment PIN_G4 -to OTG_DATA[12]
	set_location_assignment PIN_G3 -to OTG_DATA[13]
	set_location_assignment PIN_J6 -to OTG_DATA[14]
	set_location_assignment PIN_K8 -to OTG_DATA[15]
	set_location_assignment PIN_B3 -to OTG_INT0
	set_location_assignment PIN_C3 -to OTG_INT1
	set_location_assignment PIN_C2 -to OTG_DACK0_N
	set_location_assignment PIN_B2 -to OTG_DACK1_N
	set_location_assignment PIN_F6 -to OTG_DREQ0
	set_location_assignment PIN_E5 -to OTG_DREQ1
	set_location_assignment PIN_F3 -to OTG_FSPEED
	set_location_assignment PIN_G6 -to OTG_LSPEED
	set_location_assignment PIN_B14 -to TDI
	set_location_assignment PIN_A14 -to TCS
	set_location_assignment PIN_D14 -to TCK
	set_location_assignment PIN_F14 -to TDO
	set_location_assignment PIN_C4 -to TD_RESET
	set_location_assignment PIN_C8 -to VGA_R[0]
	set_location_assignment PIN_F10 -to VGA_R[1]
	set_location_assignment PIN_G10 -to VGA_R[2]
	set_location_assignment PIN_D9 -to VGA_R[3]
	set_location_assignment PIN_C9 -to VGA_R[4]
	set_location_assignment PIN_A8 -to VGA_R[5]
	set_location_assignment PIN_H11 -to VGA_R[6]
	set_location_assignment PIN_H12 -to VGA_R[7]
	set_location_assignment PIN_F11 -to VGA_R[8]
	set_location_assignment PIN_E10 -to VGA_R[9]
	set_location_assignment PIN_B9 -to VGA_G[0]
	set_location_assignment PIN_A9 -to VGA_G[1]
	set_location_assignment PIN_C10 -to VGA_G[2]
	set_location_assignment PIN_D10 -to VGA_G[3]
	set_location_assignment PIN_B10 -to VGA_G[4]
	set_location_assignment PIN_A10 -to VGA_G[5]
	set_location_assignment PIN_G11 -to VGA_G[6]
	set_location_assignment PIN_D11 -to VGA_G[7]
	set_location_assignment PIN_E12 -to VGA_G[8]
	set_location_assignment PIN_D12 -to VGA_G[9]
	set_location_assignment PIN_J13 -to VGA_B[0]
	set_location_assignment PIN_J14 -to VGA_B[1]
	set_location_assignment PIN_F12 -to VGA_B[2]
	set_location_assignment PIN_G12 -to VGA_B[3]
	set_location_assignment PIN_J10 -to VGA_B[4]
	set_location_assignment PIN_J11 -to VGA_B[5]
	set_location_assignment PIN_C11 -to VGA_B[6]
	set_location_assignment PIN_B11 -to VGA_B[7]
	set_location_assignment PIN_C12 -to VGA_B[8]
	set_location_assignment PIN_B12 -to VGA_B[9]
	set_location_assignment PIN_B8 -to VGA_CLK
	set_location_assignment PIN_D6 -to VGA_BLANK
	set_location_assignment PIN_A7 -to VGA_HS
	set_location_assignment PIN_D8 -to VGA_VS
	set_location_assignment PIN_B7 -to VGA_SYNC
	set_location_assignment PIN_A6 -to I2C_SCLK
	set_location_assignment PIN_B6 -to I2C_SDAT
	set_location_assignment PIN_J9 -to TD_DATA[0]
	set_location_assignment PIN_E8 -to TD_DATA[1]
	set_location_assignment PIN_H8 -to TD_DATA[2]
	set_location_assignment PIN_H10 -to TD_DATA[3]
	set_location_assignment PIN_G9 -to TD_DATA[4]
	set_location_assignment PIN_F9 -to TD_DATA[5]
	set_location_assignment PIN_D7 -to TD_DATA[6]
	set_location_assignment PIN_C7 -to TD_DATA[7]
	set_location_assignment PIN_D5 -to TD_HS
	set_location_assignment PIN_K9 -to TD_VS
	set_location_assignment PIN_C5 -to AUD_ADCLRCK
	set_location_assignment PIN_B5 -to AUD_ADCDAT
	set_location_assignment PIN_C6 -to AUD_DACLRCK
	set_location_assignment PIN_A4 -to AUD_DACDAT
	set_location_assignment PIN_A5 -to AUD_XCK
	set_location_assignment PIN_B4 -to AUD_BCLK
	set_location_assignment PIN_D17 -to ENET_DATA[0]
	set_location_assignment PIN_C17 -to ENET_DATA[1]
	set_location_assignment PIN_B18 -to ENET_DATA[2]
	set_location_assignment PIN_A18 -to ENET_DATA[3]
	set_location_assignment PIN_B17 -to ENET_DATA[4]
	set_location_assignment PIN_A17 -to ENET_DATA[5]
	set_location_assignment PIN_B16 -to ENET_DATA[6]
	set_location_assignment PIN_B15 -to ENET_DATA[7]
	set_location_assignment PIN_B20 -to ENET_DATA[8]
	set_location_assignment PIN_A20 -to ENET_DATA[9]
	set_location_assignment PIN_C19 -to ENET_DATA[10]
	set_location_assignment PIN_D19 -to ENET_DATA[11]
	set_location_assignment PIN_B19 -to ENET_DATA[12]
	set_location_assignment PIN_A19 -to ENET_DATA[13]
	set_location_assignment PIN_E18 -to ENET_DATA[14]
	set_location_assignment PIN_D18 -to ENET_DATA[15]
	set_location_assignment PIN_B24 -to ENET_CLK
	set_location_assignment PIN_A21 -to ENET_CMD
	set_location_assignment PIN_A23 -to ENET_CS_N
	set_location_assignment PIN_B21 -to ENET_INT
	set_location_assignment PIN_A22 -to ENET_RD_N
	set_location_assignment PIN_B22 -to ENET_WR_N
	set_location_assignment PIN_B23 -to ENET_RST_N
	set_location_assignment PIN_AE24 -to IRDA_TXD
	set_location_assignment PIN_AE25 -to IRDA_RXD
	set_location_assignment PIN_AD24 -to SD_DAT
	set_location_assignment PIN_AC23 -to SD_DAT3
	set_location_assignment PIN_Y21 -to SD_CMD
	set_location_assignment PIN_AD25 -to SD_CLK
	set_location_assignment PIN_Y15 -to FL_ADDR[20]
	set_location_assignment PIN_Y14 -to FL_ADDR[21]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[4]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[5]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[6]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_DATA[7]
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_HS
	set_instance_assignment -name IO_STANDARD LVTTL -to TD_VS
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_ADCLRCK
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_ADCDAT
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_DACLRCK
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_DACDAT
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_XCK
	set_instance_assignment -name IO_STANDARD LVTTL -to AUD_BCLK
	set_instance_assignment -name IO_STANDARD LVTTL -to ENET_DATA[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to SD_DAT3
	set_instance_assignment -name IO_STANDARD LVTTL -to FL_ADDR[20]
	set_instance_assignment -name IO_STANDARD LVTTL -to FL_ADDR[21]
	set_instance_assignment -name CLOCK_SETTINGS CLOCK_50 -to CLOCK_50
	set_instance_assignment -name CLOCK_SETTINGS CLOCK_27 -to CLOCK_27


	# Commit assignments
	export_assignments
}
