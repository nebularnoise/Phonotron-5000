-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "11/07/2017 18:37:22"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main_small IS
    PORT (
	AUD_XCK : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	AUD_BCLK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	I2C_SDAT : OUT std_logic;
	I2C_SCLK : OUT std_logic
	);
END main_small;

-- Design Ports Information
-- I2C_SDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_XCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SCLK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main_small IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL \inst6|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|internal_bpm_clk_32~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|pulse_48KHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst6|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a66\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a65\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a63\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a62\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a61\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a59\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a58\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a56\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a55\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a54\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a52\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a70\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|Add0~24_combout\ : std_logic;
SIGNAL \inst9|Add0~26_combout\ : std_logic;
SIGNAL \inst9|Add0~32_combout\ : std_logic;
SIGNAL \inst9|Add0~34_combout\ : std_logic;
SIGNAL \inst9|Add0~36_combout\ : std_logic;
SIGNAL \inst9|Add0~38_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \inst9|Add0~44_combout\ : std_logic;
SIGNAL \inst7|LRDATA[29]~32_combout\ : std_logic;
SIGNAL \inst7|LRDATA[12]~46_combout\ : std_logic;
SIGNAL \inst7|LRDATA[15]~52_combout\ : std_logic;
SIGNAL \inst7|clk_count[3]~12_combout\ : std_logic;
SIGNAL \inst2|counter[0]~28\ : std_logic;
SIGNAL \inst2|counter[0]~27_combout\ : std_logic;
SIGNAL \inst2|counter[1]~30\ : std_logic;
SIGNAL \inst2|counter[1]~29_combout\ : std_logic;
SIGNAL \inst2|counter[2]~32\ : std_logic;
SIGNAL \inst2|counter[2]~31_combout\ : std_logic;
SIGNAL \inst2|counter[3]~34\ : std_logic;
SIGNAL \inst2|counter[3]~33_combout\ : std_logic;
SIGNAL \inst2|counter[4]~36\ : std_logic;
SIGNAL \inst2|counter[4]~35_combout\ : std_logic;
SIGNAL \inst2|counter[5]~38\ : std_logic;
SIGNAL \inst2|counter[5]~37_combout\ : std_logic;
SIGNAL \inst2|counter[6]~40\ : std_logic;
SIGNAL \inst2|counter[6]~39_combout\ : std_logic;
SIGNAL \inst2|counter[7]~42\ : std_logic;
SIGNAL \inst2|counter[7]~41_combout\ : std_logic;
SIGNAL \inst2|counter[8]~44\ : std_logic;
SIGNAL \inst2|counter[8]~43_combout\ : std_logic;
SIGNAL \inst2|counter[9]~46\ : std_logic;
SIGNAL \inst2|counter[9]~45_combout\ : std_logic;
SIGNAL \inst2|counter[10]~48\ : std_logic;
SIGNAL \inst2|counter[10]~47_combout\ : std_logic;
SIGNAL \inst2|counter[11]~50\ : std_logic;
SIGNAL \inst2|counter[11]~49_combout\ : std_logic;
SIGNAL \inst2|counter[12]~52\ : std_logic;
SIGNAL \inst2|counter[12]~51_combout\ : std_logic;
SIGNAL \inst2|counter[13]~54\ : std_logic;
SIGNAL \inst2|counter[13]~53_combout\ : std_logic;
SIGNAL \inst2|counter[14]~56\ : std_logic;
SIGNAL \inst2|counter[14]~55_combout\ : std_logic;
SIGNAL \inst2|counter[15]~58\ : std_logic;
SIGNAL \inst2|counter[15]~57_combout\ : std_logic;
SIGNAL \inst2|counter[16]~60\ : std_logic;
SIGNAL \inst2|counter[16]~59_combout\ : std_logic;
SIGNAL \inst2|counter[17]~62\ : std_logic;
SIGNAL \inst2|counter[17]~61_combout\ : std_logic;
SIGNAL \inst2|counter[18]~64\ : std_logic;
SIGNAL \inst2|counter[18]~63_combout\ : std_logic;
SIGNAL \inst2|counter[19]~66\ : std_logic;
SIGNAL \inst2|counter[19]~65_combout\ : std_logic;
SIGNAL \inst2|counter[20]~68\ : std_logic;
SIGNAL \inst2|counter[20]~67_combout\ : std_logic;
SIGNAL \inst2|counter[21]~70\ : std_logic;
SIGNAL \inst2|counter[21]~69_combout\ : std_logic;
SIGNAL \inst2|counter[22]~72\ : std_logic;
SIGNAL \inst2|counter[22]~71_combout\ : std_logic;
SIGNAL \inst2|counter[23]~74\ : std_logic;
SIGNAL \inst2|counter[23]~73_combout\ : std_logic;
SIGNAL \inst2|counter[24]~76\ : std_logic;
SIGNAL \inst2|counter[24]~75_combout\ : std_logic;
SIGNAL \inst2|counter[25]~78\ : std_logic;
SIGNAL \inst2|counter[25]~77_combout\ : std_logic;
SIGNAL \inst2|counter[26]~79_combout\ : std_logic;
SIGNAL \inst7|Mux0~7_combout\ : std_logic;
SIGNAL \inst11|sample[20]~0_combout\ : std_logic;
SIGNAL \inst|sample[20]~0_combout\ : std_logic;
SIGNAL \inst11|sample[19]~1_combout\ : std_logic;
SIGNAL \inst|sample[18]~4_combout\ : std_logic;
SIGNAL \inst|sample[18]~5_combout\ : std_logic;
SIGNAL \inst11|sample[17]~3_combout\ : std_logic;
SIGNAL \inst11|sample[16]~4_combout\ : std_logic;
SIGNAL \inst|sample[15]~10_combout\ : std_logic;
SIGNAL \inst|sample[15]~11_combout\ : std_logic;
SIGNAL \inst|sample[14]~12_combout\ : std_logic;
SIGNAL \inst|sample[14]~13_combout\ : std_logic;
SIGNAL \inst|sample[13]~14_combout\ : std_logic;
SIGNAL \inst|sample[13]~15_combout\ : std_logic;
SIGNAL \inst|sample[12]~16_combout\ : std_logic;
SIGNAL \inst|sample[12]~17_combout\ : std_logic;
SIGNAL \inst11|sample[11]~9_combout\ : std_logic;
SIGNAL \inst|sample[10]~20_combout\ : std_logic;
SIGNAL \inst|sample[10]~21_combout\ : std_logic;
SIGNAL \inst11|sample[9]~11_combout\ : std_logic;
SIGNAL \inst|sample[9]~22_combout\ : std_logic;
SIGNAL \inst|sample[8]~24_combout\ : std_logic;
SIGNAL \inst|sample[8]~25_combout\ : std_logic;
SIGNAL \inst11|sample[7]~13_combout\ : std_logic;
SIGNAL \inst|sample[6]~28_combout\ : std_logic;
SIGNAL \inst|sample[6]~29_combout\ : std_logic;
SIGNAL \inst11|sample[5]~15_combout\ : std_logic;
SIGNAL \inst|sample[4]~32_combout\ : std_logic;
SIGNAL \inst|sample[4]~33_combout\ : std_logic;
SIGNAL \inst11|sample[3]~17_combout\ : std_logic;
SIGNAL \inst11|sample[2]~18_combout\ : std_logic;
SIGNAL \inst11|sample[1]~19_combout\ : std_logic;
SIGNAL \inst|sample[0]~40_combout\ : std_logic;
SIGNAL \inst|sample[0]~41_combout\ : std_logic;
SIGNAL \inst|sample[22]~44_combout\ : std_logic;
SIGNAL \inst|sample[22]~45_combout\ : std_logic;
SIGNAL \inst11|sample[21]~23_combout\ : std_logic;
SIGNAL \inst|sample[21]~46_combout\ : std_logic;
SIGNAL \inst7|state.sw2b1~regout\ : std_logic;
SIGNAL \inst7|Selector9~0_combout\ : std_logic;
SIGNAL \inst7|Mux16~0_combout\ : std_logic;
SIGNAL \inst7|Mux16~1_combout\ : std_logic;
SIGNAL \inst7|Mux16~2_combout\ : std_logic;
SIGNAL \inst7|Mux16~3_combout\ : std_logic;
SIGNAL \inst7|Selector9~1_combout\ : std_logic;
SIGNAL \inst7|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~1_combout\ : std_logic;
SIGNAL \inst7|state.sack23~regout\ : std_logic;
SIGNAL \inst7|WideOr3~3_combout\ : std_logic;
SIGNAL \inst7|Selector13~0_combout\ : std_logic;
SIGNAL \inst7|Selector14~0_combout\ : std_logic;
SIGNAL \inst7|Selector14~1_combout\ : std_logic;
SIGNAL \inst7|Selector14~2_combout\ : std_logic;
SIGNAL \inst7|Selector14~3_combout\ : std_logic;
SIGNAL \inst7|Selector14~4_combout\ : std_logic;
SIGNAL \inst7|Selector14~5_combout\ : std_logic;
SIGNAL \inst7|Selector14~6_combout\ : std_logic;
SIGNAL \inst7|Selector30~0_combout\ : std_logic;
SIGNAL \inst7|Selector30~1_combout\ : std_logic;
SIGNAL \inst7|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|word_count~0_combout\ : std_logic;
SIGNAL \inst7|Mux13~0_combout\ : std_logic;
SIGNAL \inst7|word_count~1_combout\ : std_logic;
SIGNAL \inst7|Mux9~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|word_count~2_combout\ : std_logic;
SIGNAL \inst7|Selector15~0_combout\ : std_logic;
SIGNAL \inst7|SCI_WORD1[4]~1_combout\ : std_logic;
SIGNAL \inst7|SCI_WORD1[1]~2_combout\ : std_logic;
SIGNAL \inst7|Selector18~0_combout\ : std_logic;
SIGNAL \inst7|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|internal_bpm_clk_32~regout\ : std_logic;
SIGNAL \inst7|Add2~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|LessThan0~8_combout\ : std_logic;
SIGNAL \inst2|internal_bpm_clk_32~0_combout\ : std_logic;
SIGNAL \inst7|Selector34~0_combout\ : std_logic;
SIGNAL \inst7|Selector4~2_combout\ : std_logic;
SIGNAL \inst7|WideOr3~4_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|internal_bpm_clk_32~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \inst6|altpll_component|_clk0\ : std_logic;
SIGNAL \inst6|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|clk_count[0]~6_combout\ : std_logic;
SIGNAL \SW[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|clk_count[1]~9\ : std_logic;
SIGNAL \inst7|clk_count[2]~10_combout\ : std_logic;
SIGNAL \inst7|Selector10~0_combout\ : std_logic;
SIGNAL \inst7|state.sw_init0~regout\ : std_logic;
SIGNAL \inst7|Selector14~8_combout\ : std_logic;
SIGNAL \inst7|clk_count[2]~11\ : std_logic;
SIGNAL \inst7|clk_count[3]~13\ : std_logic;
SIGNAL \inst7|clk_count[4]~14_combout\ : std_logic;
SIGNAL \inst7|Equal5~1_combout\ : std_logic;
SIGNAL \inst7|Selector13~1_combout\ : std_logic;
SIGNAL \inst7|state.s1~regout\ : std_logic;
SIGNAL \inst7|clk_count[4]~15\ : std_logic;
SIGNAL \inst7|clk_count[5]~19_combout\ : std_logic;
SIGNAL \inst7|Selector14~7_combout\ : std_logic;
SIGNAL \inst7|clk_count[4]~16_combout\ : std_logic;
SIGNAL \inst7|Equal8~0_combout\ : std_logic;
SIGNAL \inst7|Selector31~0_combout\ : std_logic;
SIGNAL \inst7|state.sw2b2~regout\ : std_logic;
SIGNAL \inst7|Selector28~0_combout\ : std_logic;
SIGNAL \inst7|state.sw1b2~regout\ : std_logic;
SIGNAL \inst7|WideOr4~2_combout\ : std_logic;
SIGNAL \inst7|clk_count[4]~17_combout\ : std_logic;
SIGNAL \inst7|clk_count[4]~18_combout\ : std_logic;
SIGNAL \inst7|clk_count[0]~7\ : std_logic;
SIGNAL \inst7|clk_count[1]~8_combout\ : std_logic;
SIGNAL \inst7|Equal5~0_combout\ : std_logic;
SIGNAL \inst7|Equal7~0_combout\ : std_logic;
SIGNAL \inst7|Selector32~0_combout\ : std_logic;
SIGNAL \inst7|state.sw2b3~regout\ : std_logic;
SIGNAL \inst7|Selector24~0_combout\ : std_logic;
SIGNAL \inst7|state.sack31~regout\ : std_logic;
SIGNAL \inst7|state.sack32~feeder_combout\ : std_logic;
SIGNAL \inst7|state.sack32~regout\ : std_logic;
SIGNAL \inst7|Selector26~0_combout\ : std_logic;
SIGNAL \inst7|state.sack33~regout\ : std_logic;
SIGNAL \inst7|Selector33~0_combout\ : std_logic;
SIGNAL \inst7|state.send~regout\ : std_logic;
SIGNAL \inst7|Selector34~1_combout\ : std_logic;
SIGNAL \inst7|SCI_READY~regout\ : std_logic;
SIGNAL \inst7|Selector6~3_combout\ : std_logic;
SIGNAL \inst7|Selector6~4_combout\ : std_logic;
SIGNAL \inst7|state2.sw_ready~regout\ : std_logic;
SIGNAL \inst7|word_count~3_combout\ : std_logic;
SIGNAL \inst7|Selector3~0_combout\ : std_logic;
SIGNAL \inst7|Selector7~0_combout\ : std_logic;
SIGNAL \inst7|state2.sw_write~regout\ : std_logic;
SIGNAL \inst7|Selector4~3_combout\ : std_logic;
SIGNAL \inst7|state2.sw_init0~regout\ : std_logic;
SIGNAL \inst7|Selector5~0_combout\ : std_logic;
SIGNAL \inst7|Selector5~1_combout\ : std_logic;
SIGNAL \inst7|state2.sw_init1~regout\ : std_logic;
SIGNAL \inst7|Selector2~0_combout\ : std_logic;
SIGNAL \inst7|Selector1~0_combout\ : std_logic;
SIGNAL \inst7|Selector0~0_combout\ : std_logic;
SIGNAL \inst7|Selector0~1_combout\ : std_logic;
SIGNAL \inst7|SCI_WORD1[4]~3_combout\ : std_logic;
SIGNAL \inst7|SCI_WRITE~regout\ : std_logic;
SIGNAL \inst7|Selector11~0_combout\ : std_logic;
SIGNAL \inst7|Selector11~1_combout\ : std_logic;
SIGNAL \inst7|state.sw_init1~regout\ : std_logic;
SIGNAL \inst7|Selector12~0_combout\ : std_logic;
SIGNAL \inst7|Selector12~1_combout\ : std_logic;
SIGNAL \inst7|state.s0~regout\ : std_logic;
SIGNAL \inst7|WideOr4~4_combout\ : std_logic;
SIGNAL \inst7|state.s2~0_combout\ : std_logic;
SIGNAL \inst7|state.s2~regout\ : std_logic;
SIGNAL \inst7|Selector42~0_combout\ : std_logic;
SIGNAL \inst7|Selector29~0_combout\ : std_logic;
SIGNAL \inst7|state.sw1b3~regout\ : std_logic;
SIGNAL \inst7|WideOr5~0_combout\ : std_logic;
SIGNAL \inst7|bit_count[2]~0_combout\ : std_logic;
SIGNAL \inst7|Selector2~1_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|SCI_WORD1[4]~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~2_combout\ : std_logic;
SIGNAL \inst7|Selector43~0_combout\ : std_logic;
SIGNAL \inst7|Selector41~0_combout\ : std_logic;
SIGNAL \inst7|Equal9~0_combout\ : std_logic;
SIGNAL \inst7|Selector17~0_combout\ : std_logic;
SIGNAL \inst7|state.sab3~regout\ : std_logic;
SIGNAL \inst7|Selector18~1_combout\ : std_logic;
SIGNAL \inst7|state.sack11~regout\ : std_logic;
SIGNAL \inst7|state.sack12~feeder_combout\ : std_logic;
SIGNAL \inst7|state.sack12~regout\ : std_logic;
SIGNAL \inst7|Selector20~0_combout\ : std_logic;
SIGNAL \inst7|state.sack13~regout\ : std_logic;
SIGNAL \inst7|Selector27~0_combout\ : std_logic;
SIGNAL \inst7|Selector27~1_combout\ : std_logic;
SIGNAL \inst7|state.sw1b1~regout\ : std_logic;
SIGNAL \inst7|Selector9~3_combout\ : std_logic;
SIGNAL \inst7|Selector9~4_combout\ : std_logic;
SIGNAL \inst7|Mux14~0_combout\ : std_logic;
SIGNAL \inst7|Selector16~0_combout\ : std_logic;
SIGNAL \inst7|state.sab2~regout\ : std_logic;
SIGNAL \inst7|Selector15~1_combout\ : std_logic;
SIGNAL \inst7|state.sab1~regout\ : std_logic;
SIGNAL \inst7|Selector9~2_combout\ : std_logic;
SIGNAL \inst7|Selector9~5_combout\ : std_logic;
SIGNAL \inst7|I2C_SDAT~reg0_regout\ : std_logic;
SIGNAL \inst7|Selector21~0_combout\ : std_logic;
SIGNAL \inst7|state.sack21~regout\ : std_logic;
SIGNAL \inst7|WideOr3~2_combout\ : std_logic;
SIGNAL \inst7|state.sack22~regout\ : std_logic;
SIGNAL \inst7|WideOr4~1_combout\ : std_logic;
SIGNAL \inst7|WideOr3~combout\ : std_logic;
SIGNAL \inst7|I2C_SDAT~en_regout\ : std_logic;
SIGNAL \inst7|Mcount~0_combout\ : std_logic;
SIGNAL \inst7|Mcount~regout\ : std_logic;
SIGNAL \inst7|AUD_MCLK~0_combout\ : std_logic;
SIGNAL \inst7|AUD_MCLK~regout\ : std_logic;
SIGNAL \inst7|Bcount~1_combout\ : std_logic;
SIGNAL \inst7|Bcount[2]~2_combout\ : std_logic;
SIGNAL \inst7|Bcount~0_combout\ : std_logic;
SIGNAL \inst7|AUD_BCLK~0_combout\ : std_logic;
SIGNAL \inst7|AUD_BCLK~regout\ : std_logic;
SIGNAL \inst15|inst1|counter[0]~6_combout\ : std_logic;
SIGNAL \inst15|inst1|counter[1]~2_combout\ : std_logic;
SIGNAL \inst15|inst1|counter[1]~3\ : std_logic;
SIGNAL \inst15|inst1|counter[2]~4_combout\ : std_logic;
SIGNAL \inst15|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|inst1|play~regout\ : std_logic;
SIGNAL \inst|current_sample_address[1]~13_combout\ : std_logic;
SIGNAL \inst|current_sample_address[1]~14\ : std_logic;
SIGNAL \inst|current_sample_address[2]~16\ : std_logic;
SIGNAL \inst|current_sample_address[3]~17_combout\ : std_logic;
SIGNAL \inst|current_sample_address[3]~18\ : std_logic;
SIGNAL \inst|current_sample_address[4]~20\ : std_logic;
SIGNAL \inst|current_sample_address[5]~22\ : std_logic;
SIGNAL \inst|current_sample_address[6]~23_combout\ : std_logic;
SIGNAL \inst|current_sample_address[6]~24\ : std_logic;
SIGNAL \inst|current_sample_address[7]~26\ : std_logic;
SIGNAL \inst|current_sample_address[8]~27_combout\ : std_logic;
SIGNAL \inst|current_sample_address[8]~28\ : std_logic;
SIGNAL \inst|current_sample_address[9]~30\ : std_logic;
SIGNAL \inst|current_sample_address[10]~31_combout\ : std_logic;
SIGNAL \inst|current_sample_address[10]~32\ : std_logic;
SIGNAL \inst|current_sample_address[11]~34\ : std_logic;
SIGNAL \inst|current_sample_address[12]~35_combout\ : std_logic;
SIGNAL \inst|current_sample_address[11]~33_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|current_sample_address[7]~25_combout\ : std_logic;
SIGNAL \inst|current_sample_address[4]~19_combout\ : std_logic;
SIGNAL \inst|current_sample_address[5]~21_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|current_sample_address[0]~39_combout\ : std_logic;
SIGNAL \inst|current_sample_address[2]~15_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|internal_is_playing~combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|AUD_DACLRCK~0_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|BBcount~2_combout\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|BBcount~0_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst7|Equal3~0_combout\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|BBcount~1_combout\ : std_logic;
SIGNAL \inst7|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|pulse_48KHz~regout\ : std_logic;
SIGNAL \inst7|pulse_48KHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|current_sample_address[12]~36\ : std_logic;
SIGNAL \inst|current_sample_address[13]~37_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a53\ : std_logic;
SIGNAL \inst|current_sample_address[9]~29_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \inst|sample[5]~30_combout\ : std_logic;
SIGNAL \inst|sample[5]~31_combout\ : std_logic;
SIGNAL \inst15|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|inst2|play~regout\ : std_logic;
SIGNAL \inst11|current_sample_address[0]~33_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[1]~12\ : std_logic;
SIGNAL \inst11|current_sample_address[2]~13_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[2]~14\ : std_logic;
SIGNAL \inst11|current_sample_address[3]~15_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[3]~16\ : std_logic;
SIGNAL \inst11|current_sample_address[4]~17_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[4]~18\ : std_logic;
SIGNAL \inst11|current_sample_address[5]~19_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[5]~20\ : std_logic;
SIGNAL \inst11|current_sample_address[6]~21_combout\ : std_logic;
SIGNAL \inst11|LessThan0~2_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[6]~22\ : std_logic;
SIGNAL \inst11|current_sample_address[7]~24\ : std_logic;
SIGNAL \inst11|current_sample_address[8]~26\ : std_logic;
SIGNAL \inst11|current_sample_address[9]~28\ : std_logic;
SIGNAL \inst11|current_sample_address[10]~29_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[10]~30\ : std_logic;
SIGNAL \inst11|current_sample_address[11]~31_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[8]~25_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan0~3_combout\ : std_logic;
SIGNAL \inst11|internal_is_playing~combout\ : std_logic;
SIGNAL \inst11|current_sample_address[1]~11_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[7]~23_combout\ : std_logic;
SIGNAL \inst11|current_sample_address[9]~27_combout\ : std_logic;
SIGNAL \inst11|sample[4]~16_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \inst|sample[3]~34_combout\ : std_logic;
SIGNAL \inst|sample[3]~35_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a50\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \inst|sample[2]~36_combout\ : std_logic;
SIGNAL \inst|sample[2]~37_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a49\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \inst|sample[1]~38_combout\ : std_logic;
SIGNAL \inst|sample[1]~39_combout\ : std_logic;
SIGNAL \inst11|sample[0]~20_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \inst|sample[23]~42_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a71\ : std_logic;
SIGNAL \inst|sample[23]~43_combout\ : std_logic;
SIGNAL \inst11|sample[23]~21_combout\ : std_logic;
SIGNAL \inst11|sample[22]~22_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a69\ : std_logic;
SIGNAL \inst|sample[21]~47_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a68\ : std_logic;
SIGNAL \inst|sample[20]~1_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a67\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \inst|sample[19]~2_combout\ : std_logic;
SIGNAL \inst|sample[19]~3_combout\ : std_logic;
SIGNAL \inst11|sample[18]~2_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \inst|sample[17]~6_combout\ : std_logic;
SIGNAL \inst|sample[17]~7_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a64\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \inst|sample[16]~8_combout\ : std_logic;
SIGNAL \inst|sample[16]~9_combout\ : std_logic;
SIGNAL \inst11|sample[15]~5_combout\ : std_logic;
SIGNAL \inst11|sample[14]~6_combout\ : std_logic;
SIGNAL \inst11|sample[13]~7_combout\ : std_logic;
SIGNAL \inst11|sample[12]~8_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \inst|sample[11]~18_combout\ : std_logic;
SIGNAL \inst|sample[11]~19_combout\ : std_logic;
SIGNAL \inst11|sample[10]~10_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a57\ : std_logic;
SIGNAL \inst|sample[9]~23_combout\ : std_logic;
SIGNAL \inst11|sample[8]~12_combout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \inst|kick1|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \inst|sample[7]~26_combout\ : std_logic;
SIGNAL \inst|sample[7]~27_combout\ : std_logic;
SIGNAL \inst11|sample[6]~14_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~19\ : std_logic;
SIGNAL \inst9|Add0~21\ : std_logic;
SIGNAL \inst9|Add0~23\ : std_logic;
SIGNAL \inst9|Add0~25\ : std_logic;
SIGNAL \inst9|Add0~27\ : std_logic;
SIGNAL \inst9|Add0~29\ : std_logic;
SIGNAL \inst9|Add0~31\ : std_logic;
SIGNAL \inst9|Add0~33\ : std_logic;
SIGNAL \inst9|Add0~35\ : std_logic;
SIGNAL \inst9|Add0~37\ : std_logic;
SIGNAL \inst9|Add0~39\ : std_logic;
SIGNAL \inst9|Add0~41\ : std_logic;
SIGNAL \inst9|Add0~43\ : std_logic;
SIGNAL \inst9|Add0~45\ : std_logic;
SIGNAL \inst9|Add0~46_combout\ : std_logic;
SIGNAL \inst7|LRDATA[26]~25_cout\ : std_logic;
SIGNAL \inst7|LRDATA[26]~27\ : std_logic;
SIGNAL \inst7|LRDATA[27]~29\ : std_logic;
SIGNAL \inst7|LRDATA[28]~31\ : std_logic;
SIGNAL \inst7|LRDATA[29]~33\ : std_logic;
SIGNAL \inst7|LRDATA[30]~35\ : std_logic;
SIGNAL \inst7|LRDATA[31]~36_combout\ : std_logic;
SIGNAL \inst7|LRDATA[25]~66_combout\ : std_logic;
SIGNAL \inst7|Mux0~8_combout\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst7|LRDATA[31]~37\ : std_logic;
SIGNAL \inst7|LRDATA[32]~39\ : std_logic;
SIGNAL \inst7|LRDATA[33]~41\ : std_logic;
SIGNAL \inst7|LRDATA[10]~43\ : std_logic;
SIGNAL \inst7|LRDATA[11]~45\ : std_logic;
SIGNAL \inst7|LRDATA[12]~47\ : std_logic;
SIGNAL \inst7|LRDATA[13]~49\ : std_logic;
SIGNAL \inst7|LRDATA[14]~50_combout\ : std_logic;
SIGNAL \inst7|Mux0~4_combout\ : std_logic;
SIGNAL \inst9|Add0~42_combout\ : std_logic;
SIGNAL \inst9|Add0~40_combout\ : std_logic;
SIGNAL \inst9|Add0~30_combout\ : std_logic;
SIGNAL \inst9|Add0~28_combout\ : std_logic;
SIGNAL \inst7|LRDATA[14]~51\ : std_logic;
SIGNAL \inst7|LRDATA[15]~53\ : std_logic;
SIGNAL \inst7|LRDATA[16]~55\ : std_logic;
SIGNAL \inst7|LRDATA[17]~57\ : std_logic;
SIGNAL \inst7|LRDATA[18]~59\ : std_logic;
SIGNAL \inst7|LRDATA[19]~61\ : std_logic;
SIGNAL \inst7|LRDATA[20]~63\ : std_logic;
SIGNAL \inst7|LRDATA[21]~65\ : std_logic;
SIGNAL \inst7|LRDATA[22]~67_combout\ : std_logic;
SIGNAL \inst7|Mux0~5_combout\ : std_logic;
SIGNAL \inst7|LRDATA[22]~68\ : std_logic;
SIGNAL \inst7|LRDATA[23]~69_combout\ : std_logic;
SIGNAL \inst7|LRDATA[30]~34_combout\ : std_logic;
SIGNAL \inst7|Mux0~19_combout\ : std_logic;
SIGNAL \inst7|Mux0~20_combout\ : std_logic;
SIGNAL \inst7|LRDATA[26]~26_combout\ : std_logic;
SIGNAL \inst7|LRDATA[19]~60_combout\ : std_logic;
SIGNAL \inst7|Mux0~10_combout\ : std_logic;
SIGNAL \inst7|LRDATA[11]~44_combout\ : std_logic;
SIGNAL \inst7|LRDATA[10]~42_combout\ : std_logic;
SIGNAL \inst7|LRDATA[27]~28_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|LRDATA[18]~58_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst7|Mux0~11_combout\ : std_logic;
SIGNAL \inst7|LRDATA[32]~38_combout\ : std_logic;
SIGNAL \inst7|LRDATA[16]~54_combout\ : std_logic;
SIGNAL \inst7|Add1~9\ : std_logic;
SIGNAL \inst7|Add1~10_combout\ : std_logic;
SIGNAL \inst7|Mux0~14_combout\ : std_logic;
SIGNAL \inst7|LRDATA[23]~70\ : std_logic;
SIGNAL \inst7|LRDATA[24]~71_combout\ : std_logic;
SIGNAL \inst7|Mux0~13_combout\ : std_logic;
SIGNAL \inst7|Mux0~15_combout\ : std_logic;
SIGNAL \inst7|LRDATA[17]~56_combout\ : std_logic;
SIGNAL \inst7|LRDATA[24]~72\ : std_logic;
SIGNAL \inst7|LRDATA[25]~73_combout\ : std_logic;
SIGNAL \inst7|Mux0~16_combout\ : std_logic;
SIGNAL \inst7|LRDATA[33]~40_combout\ : std_logic;
SIGNAL \inst7|Mux0~12_combout\ : std_logic;
SIGNAL \inst7|Mux0~17_combout\ : std_logic;
SIGNAL \inst7|Mux0~18_combout\ : std_logic;
SIGNAL \inst7|LRDATA[21]~64_combout\ : std_logic;
SIGNAL \inst7|LRDATA[28]~30_combout\ : std_logic;
SIGNAL \inst7|Mux0~6_combout\ : std_logic;
SIGNAL \inst7|LRDATA[20]~62_combout\ : std_logic;
SIGNAL \inst7|LRDATA[13]~48_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|Mux0~9_combout\ : std_logic;
SIGNAL \inst7|Mux0~21_combout\ : std_logic;
SIGNAL \inst7|AUD_DACDAT~regout\ : std_logic;
SIGNAL \inst7|Equal4~1_combout\ : std_logic;
SIGNAL \inst7|AUD_DACLRCK~regout\ : std_logic;
SIGNAL \inst7|WideOr4~0_combout\ : std_logic;
SIGNAL \inst7|WideOr4~3_combout\ : std_logic;
SIGNAL \inst7|I2C_SCLK~regout\ : std_logic;
SIGNAL \inst7|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clk_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|SCI_WORD2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|SCI_WORD1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|LRDATA\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \inst7|Bcount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|BBcount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|current_sample_address\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|inst1|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst11|current_sample_address\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst11|hh1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

AUD_XCK <= ww_AUD_XCK;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
AUD_BCLK <= ww_AUD_BCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_DACLRCK <= ww_AUD_DACLRCK;
I2C_SDAT <= ww_I2C_SDAT;
I2C_SCLK <= ww_I2C_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\inst6|altpll_component|_clk0\ <= \inst6|altpll_component|pll_CLK_bus\(0);
\inst6|altpll_component|pll~CLK1\ <= \inst6|altpll_component|pll_CLK_bus\(1);
\inst6|altpll_component|pll~CLK2\ <= \inst6|altpll_component|pll_CLK_bus\(2);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(20) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(19) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(18) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(17) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(16) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(15) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(14) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(13) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(12) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\inst|current_sample_address\(8) & \inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & 
\inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & \inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a61\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(1);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a62\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(2);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a63\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(3);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a64\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(4);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a65\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(5);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a66\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(6);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a67\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(7);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a68\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(8);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(11) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(10) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(9) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(8) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(7) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(6) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(5) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(4) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(3) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\inst|current_sample_address\(8) & \inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & 
\inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & \inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a52\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(1);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a53\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(2);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a54\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(3);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a55\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(4);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a56\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(5);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a57\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(6);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a58\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(7);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a59\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(8);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(2) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(1) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(0) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\inst|current_sample_address\(8) & \inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & 
\inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & \inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a49\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(1);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a50\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(2);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a69\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(3);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a70\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(4);
\inst|kick1|altsyncram_component|auto_generated|ram_block1a71\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(5);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(23) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(22) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(10) & \inst11|current_sample_address\(9) & \inst11|current_sample_address\(8) & 
\inst11|current_sample_address\(7) & \inst11|current_sample_address\(6) & \inst11|current_sample_address\(5) & \inst11|current_sample_address\(4) & \inst11|current_sample_address\(3) & \inst11|current_sample_address\(2) & 
\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0));

\inst11|hh1|altsyncram_component|auto_generated|q_a\(21) <= \inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\inst|current_sample_address\(11) & \inst|current_sample_address\(10) & \inst|current_sample_address\(9) & \inst|current_sample_address\(8) & 
\inst|current_sample_address\(7) & \inst|current_sample_address\(6) & \inst|current_sample_address\(5) & \inst|current_sample_address\(4) & \inst|current_sample_address\(3) & \inst|current_sample_address\(2) & 
\inst|current_sample_address\(1) & \inst|current_sample_address\(0));

\inst|kick1|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\inst6|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|altpll_component|_clk0\);

\inst2|internal_bpm_clk_32~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|internal_bpm_clk_32~regout\);

\inst7|pulse_48KHz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst7|pulse_48KHz~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\SW[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(0));
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);

-- Location: LCFF_X35_Y21_N17
\inst7|LRDATA[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[29]~32_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(29));

-- Location: LCFF_X35_Y21_N31
\inst7|LRDATA[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[12]~46_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(12));

-- Location: LCFF_X35_Y20_N5
\inst7|LRDATA[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[15]~52_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(15));

-- Location: M4K_X26_Y33
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000080012082092092410080012490400012000410082092000490010080000010000000480002010092482080492012000492412002092402482412412400082492400082010490412010080000092010490000080490090012010402490090402490402002012080012080080410490410092002082092412092012410400412082482480480092410002010082000012092000010002480482000482490480090092482090090482092080090092082410492080080090492480402092012090002482490092412412412492492090010490490002480482012402482402410482480492000090402012092080010",
	mem_init0 => X"48049208241208001001000248009000001001201248049049241009040040240240000048200008209248001201240240049009040041041001249208200048009208248201200040000200249240209240249008000241240249049001000008000009241008001041041240249001201041200208049201049209000201209009201009040249001008241240209009009008240048249008248049048249008208048201000009001248248000201049041248000249009201001209008040008240241241201001241040000049208041001200249041241249009248041041209008008248049240241009009041241209041248240048200001000240",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y12
\inst|kick1|altsyncram_component|auto_generated|ram_block1a44\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000009249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249000000000000000000000000000000000000000000000249249249249249249249249249249249000000000000000000000000000001249249249249249249249249249240000000000000000000000000000000249249249249249249249249249249249249000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000000000000000000000000000000000000009249249",
	mem_init0 => X"24924924924924924924924924000000000000000000000000000124924924924924924924924920000000000000000000000000924924924924924924924924800000000000000000000000000124924924924924924924924924924920000000000000000000000000000000000000000000000004924924924924924924924924924924924924924800000000000000000000000000000000000000000924924924924924924924924000000000000000000024924924924924924900000000000000000024924924924924924800000000000000000024924924924924924924900000000000000000000000004924924924924924924924924924924800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y17
\inst|kick1|altsyncram_component|auto_generated|ram_block1a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092492492492492492492492492492400000000000000000000002492492492492492492480000000000000000012492492492492492400000000000000002492492492492492400000000000000012492492492492492400000000000000000492492492492492492400000000000000000000002492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492480000000000000000000492492492492492000000000000012492492492490000000",
	mem_init0 => X"00000249249249249200000000000049249249249240000000000000249249249249249200000000000000000009249249249249249249249249240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049249249249249249249249249248000000000000000000049249249249249248000000000000049249249249000000000249249200000009249249000000000249249249249200000000000000000000000000000000000009249249249240000000009249249200000009249248000001249249000000249249000000049249240000000000000001249200009248000009249249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y30
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000002082490090090400490000402092410400410010492000410412082490000000490000410410402090402012000492402090080492410400402080092490400092410410012482000410082492090000080410090400092492482000482412082482402082080492482490412402082090002482492402490012012000080412082412092090410482082410092400490402482480482490010012400080412400402000090002010092002012400490480482402412400492410092482480480090410090482092090412482490002482080080490010490480010410012400490480480400490412092010",
	mem_init0 => X"49209201049208240009248209201249008248048241209049001048209041248000249201008048248249201200208248241240248249008200041008040048248208209201041009249048048200248008009001040048008040201241008008201248240048001248049240009048209241049201200248241248200209209201009248049241008048209049009241241209241248000240209249208248241040201248008240040240209041249209249249041209000008208249041008249001008201048209249200040241208041041001049241200000040248200009049241200048040000000008200000200249001000209249248248000048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y23
\inst|kick1|altsyncram_component|auto_generated|ram_block1a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"92492492492492492492480000000000000000000000000000000000000000000000000000000000000000000000000000492492492492492492492400000000000000002492492492492400000000000092492492490000000000092492492480000000012492492480000000012492492400000000492492490000000012492492400000002492492480000000092492492400000000492492492000000000492492492400000000002492492492490000000000000012492492492492492492492492492492492492492492492492492492492492492000000000000012492492492000000000492492490000000492492400000012492490000002492490",
	mem_init0 => X"00000249249000000049249200000049249200000009249248000000249249240000000049249249200000000009249249249240000000000000009249249249249249249249249000000000000000000000000000000000000000000249249249249249249249249200000000000000009249249249248000000000049249249200000000049249248000000049249200000049249000009249000249200049240001249000009249000000249249200000000000249249249249240000000000009249248000009249200009249000049200009240001248001248000249000249000249000049200009249000249249248001201240048009240009249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y20
\inst|kick1|altsyncram_component|auto_generated|ram_block1a42\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"49249249240000000000000000000001249249249249249249249249249249249249249249249249249249249249249249240000000000000000000249249249249248000000000009249249249000000000249249249000000001249249200000000249249240000001249249200000001249249200000009249249000000009249249000000009249249200000000249249248000000001249249248000000000249249249240000000000009249249249249000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000049249249249240000000000049249249240000000",
	mem_init0 => X"00924924924000000024924924000000024924920000000924924800000024924900000024924920000004924920000004924924000000924924000000124924800000024924900000000924924800000004924924800000004924924920000000004924924924800000000000124924924924924920000000000000000000000000000000000000000124924924924924800000000004924924900000000924924800000124924800000924920000124924000024924000004924800024924000024924000024924000024924000124924000024924000024924800000924920000024924900000024924900000004924924000000024924924800000000124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y22
\inst|kick1|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"92492492000000000000012492492492492492492000000000000000000000000000000000000012492492492492492492000000000000492492492400000000092492490000000492492400000092492400000492490000012492400000492480000492480000492480000492480002492400012492000092490000492480002492400012490000092480000492400002492400012492000012492000012492000002492400000492490000002492490000000492492480000000002492492492492492492492492492492492492492492492000000000492492480000012492400000492480000492400002490000492400092480012480002490002490002",
	mem_init0 => X"49000249000249000049200049200049200049240009240001249000249200009249000049248000049248000009249200000009249248000000009249249249000000000000000249249249249249249249249249249249249249249000000000000000249249249200000000249249240000001249248000009249200001249200001249200009248000249200049200049200049001240049009001201200240248049001240049000249000249200001249249000000000000009249249000009248001248009240049009200240048049009009201201201201200240240240240240240048049009200249000001248048208041208040240240249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y26
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000082490410490002480012090412082012080092412090000002092000002490480490012400412490002492000480090092082410412492490092010412000490002490000492082492080090000002490492092002080492000480080082412482010492082492402082412080480090002400402002010410400002000492080402080482482090412410402492002480412492410092412012002482000410080012082080480002400012000482412010492002400012482012012010090482092402400490010090410010010010092400482012400012090092482492482080092012010400002010000012",
	mem_init0 => X"48008000009000049008001240208048000000000209040248241049001249249049201201201249200041209249209041208209041049001000009240248000041201009240001049240208009249008240209048040000008208209049200000008240209201009209001001201240240201041240008041000049241241040208009008201001241048209208001209249009249008001241048040009048201249201008208048249249049008049209249040048241000208001201208048240001201240201249200009201208201041040240009049008008241208048209240201048209241208048241048040001001040049249000200041008008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y16
\inst|kick1|altsyncram_component|auto_generated|ram_block1a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"92400000492492000000012492492400000000000492492492492492492492492492492492492480000000000092492492000000492492000002492400002492400012490000492000092400092400092400092000490002480012400492002480092002480092002480092002480490012400480092002400490012002480490012402480090012400480092002400490012402480092002480092002480092000490012400092000490002490002490002492000092480000492490000000492492492492492492492492492492490000000492490000492400012480012480092400490012400490092002402480490090092012012012402402402402402",
	mem_init0 => X"40240240240240248048048048048048048049009009009201200240248049009200240049001240049001248009240049240009240001249000009249200000249249200000000249249249249249240000000009249249249249249000000001249249000001249200001249000049240009248001248009240049200248009200248009200240048009001201201201201201209008040209041008208209041008201008241201009009009009200248001249000000000000009249000248009001201201209008040209040208041048208209041041041041048208208208208208208041040209048249000248048009200240240201041041009248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y32
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000002090480090412082402482400080010092412492410010492080092080092410490000010490092002410412410400492002492090492490010010000400410490090082080402080490002482012492492080082402482490092410082000090480012490090490090000480002010080092400012412410480082002410092080080010490080002480490012410010482410410492092080410010490010002410010492082000002002000092092402090010402492402492492490012402490482002400092010412490092000410010000002090080090482480002002082400490002082092010000012",
	mem_init0 => X"48249001048241208209040241008041040248240208041241040248000000248008049040008048049240041001249009040008200208009000048200048009041208200008248040240249009009040000001248009249041040241248009041249001201248008049201201049208208041209049041200009049001048209240040041008249008000241048248241200200200249201201009001208241241049040241208040208200248200241001241248008240240241240248201009049248049200008000000040009240048008009201040048048248241048240249049000208208048209048201008248240040000009201048208000049009",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y10
\inst|kick1|altsyncram_component|auto_generated|ram_block1a39\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"48009001240049200248001248001248000249200000249249000000000009249249249200000000001249248000049240009240009200249001200248048009009001201201009009008048240201008048201008040209048201048201040209040208041008209041208201040208241040208041048209041008201040208041008201048209040209040209040201048241008040201008040201009048240201201009009008048048009009009001200240049001200249001248001248000249240000049249248000000000000000000249249240000049240001248001248009200248009001200240240240040240240240201209008040201008",
	mem_init0 => X"04020104824100820104820904120820104100820824104104820820820904104104104104820820820820820820820820824104104104104104104100820820820820104104100820824104100820904120820104820904020104824120804024120900804804824024024004804800920124004920004924000024924924924924924920000124900124804900120120120120900804820100820104020820904104104104104020820804104820904020904020904824100804024120904824020100904824020100804020120904820100824120804120824104820804104120820820820820820820820820104104820804100824100824120904824120",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y14
\inst|kick1|altsyncram_component|auto_generated|ram_block1a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"10090090480480490090012002480092002490000492400000092492492492492492400000492480002480012400480092012012012012012090080402010082410082010412082080410410410410410410412082080410402080410082410082412090482412090480402012090090480482402412012012010090090090090090480480480480402402402012012090090480402012090482412090482410082410082010412082080410410410410410082080412080402012090092012002490002492492492492492000092002400480482402010482090410410410410482090402010080480480480092002480012480000492490000000092492492",
	mem_init0 => X"49249249249249200000000000000009249248000049248001240009200240048048048048240201048241040208208241008208208041008241209048040240240240048009200249000249200000009249249240000001249000049001240048049009008048240201008241008201041041208208208041041008209040201008040241201201240248009248000000000009200240209041008049001201201040208241048048009249249200241208208201009200000049009048208241201200000000049009040208208209048240240248009240001249240000000249249000249009008208201201041009200009048001240241049241048248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y23
\inst|kick1|altsyncram_component|auto_generated|ram_block1a38\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"08241008040201209008048048048048049001200249000249000049249240000000000049249240001248001240048009009009009048240201048201041208208241041041208208201040208040209040241209008048040240240240248048048009001200248009001240048009200248009001240048009201240248009009201240240248048048048048048040240201209008040201008041208041208241041208208209041041008208208241040209040201048240241201201201200248009200049200001249249249249249249000049240049201240248048048048241209048241048209041041041201041041041208201048201008040",
	mem_init0 => X"20120900904804900900920124024800924004920004924000924900000124924800000000924924924924000000000000004924924924924000000004924924000000924900004920004920004900124024800900900120100900904824020104820104020820904104104120820804120804020120120124004900004924924924900004900120020120104820104104104104820904024120124024800124800000000000000124900024800920120124124120120904804020104824120804120804120804120904020100824120900804804024024024004800920024800024920000000000000000024924000924004900920120120120904804120904",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y21
\inst|kick1|altsyncram_component|auto_generated|ram_block1a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"12082080410410402082010402010080482402400480092000092492000000002492400092000480490080482412080412082082082082082410482010090480480480092002480002492480000000002492490000490002480090092012012012090480402010082410082410482080410402082090410410412082082082082080410410410410482082082410410082080410082410082412090482402012012012012400490012490000000490000000490002402402010082010402082010090090002492492492400490090482090410402080402402480002492492000090012012090402082082080412090480480480092002490002492400000012",
	mem_init0 => X"49249249249249200000000009249240001248009200248048040241209040208208208209041209008049001240000049200000249009201209008241048208208209041208040240240240049000009249249240000248009001209008041208201041048208041209048048049009240000249249249000009200248048040201008201041041008241209201248000001240201041201249201040241041040248000049008208240249248048201009249009040200040048208240000048208201249248040208048049249001209041041048240240248009240001249000049009009041048000041248001208049249208248008209001009201248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y11
\inst|kick1|altsyncram_component|auto_generated|ram_block1a37\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"48048040201008241048208208208208201048201009049009009200049240000000000049240009201201201008041008208208208241208040240240049000249200000000249240009201240241201201048241048208201041041041048208208041008201048241008241208040209048241008041208041208041008241040208241041048208208208208208241041008201040201008040240240240248049000249200001249249200000049200248048048040241208201041041041048201008048040049001248000000000001249001200240201208041008208208209040201008048009001249000000240000001249001240240240201008",
	mem_init0 => X"04100820804104820820804100824120900804804804800900920024800124800124900000924920000000924924000000004924924800000924900004924000924000900024004804804804804020100824100820820104120820824120804024024024800924800000000024900024024020100820820804120900920000924100024804824104824104024024004924924900920120104020824104804804800124924924000124024024100804104120100104100824100804024120100900900900900900904804804020120904820104100820820820904100804024120024804920000000000124900124024024120904120820820824100824020120",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y9
\inst|kick1|altsyncram_component|auto_generated|ram_block1a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"02480002492492480012400480402010402082090410080490092000492492490012400402012082010402080402402002490000000000092012402412080410410412080402012002480012492492490002490012010090482410402082082082410082410090480400400480092002480012400012492400002492492480000002492492480000092490000492400492002400480490480402412090410082082082080412090480490012492002492400482402082082412012400012480080410410090092492490090482080402480000012402010410080490000000490082410410080480092492402402412082082080412090090090012400092480",
	mem_init0 => X"00000049249249200000049240001240248048040201008208241040201201248000000248009048209048201009000049200009009040208201048048009240009248009009008208208209040248009249249240009008041048201040240240009249240009001008041041040209009000249249249001241201048208241008048009249249201201048041201249248241009249041000209048201249201048000048201248041049241040009040240208001209209041248040248041249208249241048000208200000241048049249009041241048240240248049009209041041201241000000001008249008001208048009240208200049048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y20
\inst|kick1|altsyncram_component|auto_generated|ram_block1a60\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005580000B1000016C00002EC00006000000C50000194000034000006A80000DA00001BE000039000007480000EF00001E800003E400007F0000103000021000004340000890000118000023A0000484000093800012C000026200004D800009D8000140000028A00005280000A7800015400002B200005780000B1800016800002DA00005C40000BB800017B000030000006140000C5000018F000032800006600000CE80001A2000034E000",
	mem_init0 => X"06B00000D800001B5000037400006F80000E180001C8000039800007440000EA80001DA00003BE000078C0000F400001EC00003E200007D40000FD00001FE0000006000001C00000580000100000028000006000000E8000021000004A00000A40000170000032000006C00000E800001F8000043000008E000012C000027800005300000AE000016C00002F800006300000CE00001AC000037800007300000EE00001E800003F0000082000010C000022400004680000910000128000026000004E000009F0000144000029800005480000AD000016000002D000005B80000BB000017C000030400006200000C80000196000033800006880000D400001AE00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 9,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y10
\inst|kick1|altsyncram_component|auto_generated|ram_block1a36\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"41041008241201201240049249249000009008008041001241040201201240009249200049009008041041040201001200049241200048240241041040209049009200000000248008008041008209049040241201240049240000000000009248000200048009008049048048248241201009049048240240240240240048049001200049000009249001201249249200049201240248241209008208208208241048240240048001249249200049201209048208208241048248009200000009241240209041009040201001200000000048009008209041008240240049240049248048040209041208241240248000240000248009048241041041009040",
	mem_init0 => X"24004920024924000004900120120104820104104104100820904824120120120124024800924804924000920000924800004920000124000920024804900900900900824020804104104104100804120920120024924000024924004024020104104100804004800124920024024020820804020000000024024100020124000824824104020124004920104104120024900020904104024800004800820920804800100800920100820820120900124900920924804904804824104820804104104104104104900820824100824120920920004920000124800920104820104824104804924800924800904824104104824120024920000920020120804104",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y6
\inst|kick1|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"82012002492492480080402082410090012492480092090482080400492002490080402410082490092480090080082482402400000092412080410482402492092490090082410482412012490080090090090482490412080490012492492492012002012080410490090412080402012012092012400092002492000012480002492000012480092002480490080480402080410400410482090480492000092490002402010082010480492002490090412080492480482082400012412090012480410402492402082400002410480492412082400000402090092480482012000000482080400400082482090000012002402410410410082402400480",
	mem_init0 => X"00249200009249200049200040048241008208201009049249200048041041201249249008041009001240240208240049200041041201249240241041008009240008040001048000000008048241009000000240241048240009240248208209009249240041049040240000048048208240200000009008040209009249200201041009000009208208009001041000048049208001200249008208008249041008249040008001049200001200008241008248001001208248241041041000248008009009008240249009248200008209248208049049209041041008201041241200001048049200201008240000241009041009001200208201200048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y26
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000082082092490482482412400092400490082082402410492010490010412092010482080000410000412092012490002080492400090402492080002080400492482092090400000402082492402400480412012010492012012400492090402080412080480010492082482490002482012080080480412010012482492002400082090480002080002082090002010412080482490092480002000000490402482482082010092492490002082490492490000490010482490090400482082412082492002092492400000012412412400010092412000410492490400010490402400400000492000402410402",
	mem_init0 => X"40248209201248209001040000240040200048001248009208249249009248008000200241008008009200201249209000000201041249048248009009240249201249008009201248001041048208248041048201200041240008208001049241040001200249040241040200209049001001240201041201201041009240001048209200049200200200240209000200201201040208200041040001241201008249009201248000240001041200041001008208001049240200240040201249040248241008249209200000249241009048248000001200200040209241001009241240209041248049049009201200040009008201000209040249248241",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y24
\inst|kick1|altsyncram_component|auto_generated|ram_block1a34\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"49208241008248248040000240048241201001209049209048201200048041040040049041249201049000240048049241209008040001249201041041041201241200201048209209000248200001241240248240001008240040241041208209008249009200201248241240200201048248040240248240208008001040008240241008240240000248048001240240008200240009009201240000200240201241208041009049001249208208208200009049248000041209049049041040240249001240049208200200249009041240249040201008000200208040000000049249201041249008248200201048241041241248041049041200240248",
	mem_init0 => X"24900904120124124920920020004820820820924000920000024120124104900904120904824004100900804124904100804104124020904924820900104824900000820000804800920804004020824024824120804004024124800920904104800000124820820804000820824820004824020820004004800004120804820820024024100104000904124920000800020804820800004000000920800820800820824120920120924100124000924800920820004824920800124120900100000800920004120920920820904120904804800804120024824120920000924000120124800124120000920104904924124124000804924100900800024124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y7
\inst|kick1|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00492482080412482480400402002000010092002002482400092080080490412412010082012080090480412402000402002080492412480482492412092080402092000080410010092010002412490400010092082010482482010480492092482010000480402080480480400402492000490090492090410490412410412082410402000412082400412400012490482490402482490000412080002082410482080080492000082080412002480000482410002000410410000092490000090000092010082082090000400090410000012080410000410000002400000082482010012082400092482090400012480492092082490090400410002000",
	mem_init0 => X"01049208040208201208208240248248001000241240241200209248249001049000249248200000001241209200008049208209009041040000008000209209241048041040049040000000049209200208240000249040249009240008240009248208041208008048249241200008240248248249040048208049009248001208049249208249201209249048000041009209249248009249248001208041048048000008041049201209000240209008200241041249209041049201008048209001048200201000000201000049209201040240209040048209200049009200200040001008040200209241240201049200001208200208000241249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y29
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000010412000412490000402090412410480092012082482002480000492082480080092400092010012482412092002482012080490010000002402080010480080480080000482492012480012402010410080402400480412090492490400400410010410400492080092090412082012080092482480410002090482480490002400412080092002090412092492410090412400410490092080410002002092402082482080482402000492412480080400402090402492092080092010480490482080480402012080402002090482402082412092482410400410012402402002412492410000092000410482",
	mem_init0 => X"08241000049009009208249200208000248009008240249048049001249000000200241249000208240208000008201209049000209049248008041201240241000008241200040049040240008208200248000200201049240000049000201049048208241249008009209009040240008201041209200049208209249009208209009241200040049001001241200200041001041001001008240048001009201201241249209049000208041041240040000241241201009001249041049008209001201240009240208200008249208040201049000209040209200241049049249001009208200241009201208209049041200001008049048248249241",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y23
\inst|kick1|altsyncram_component|auto_generated|ram_block1a33\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"09241041048249049248201008209249208209248048241041200009009009201248241240249041009200008001000240240208001041201048049241208240009009009248001008009040249049241000201001248241048049249209008201209241041240041248009008200041241049240248248209049208248041048041001001249008041249009248249040208040008209201208008000041048008241240249001241048248200000240248009248000208008209049248041249048000040249208000200201040000248248009001001241201000200041209200208240248201049041001200000040208248048201200241249249208048",
	mem_init0 => X"24804800024024000000900000120924900104800824000900800900104824124920820000920100100124020920824824900024900124104020800000024924024920924000000824000900120004904920124100124820124900800804000020824104000020820100824120900120004004000100024920020124100820104820020020900800104924000004100904804800920124924020000120024800024000020024804004100020124824820100920924020824004000804924904004000904920024024100024804120000904800900124804800000924100904900000824924020124824904024904000824100800020104924920800024820124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y5
\inst|kick1|altsyncram_component|auto_generated|ram_block1a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"10400090492092492492012402090010402412092402010410482480400490400482482002080400482092090012090482082010092010400092490000400490490092480492002492482010412012410400480092080412012402080012012002412490012482010080482412010402410010410490082012402000480000012002000402410400080412002490400002400012410082080092482082490482402000002090482092480480000082482082092082010412080090010410090092082410000412012410412480002000092000010012090082082410480402402082490400402002482010012080000400480402410002480480012002082400",
	mem_init0 => X"48041248000001048000000048048001241049040009248001048009049009240049201008201200241248041049240008009249001200001001049208000208049008241041241249009240208241041001009209048249209008248008241240249009009201208049241049009040248040208048201048248001240240201240048208241201041009201001041209009041240049008009209248000208000240201041209040208000249048209209241040248249241001009249241048009040040001209008000201248240001049041209240049241240248008001000248241048040009200248049240208049008200248000049201208209008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y19
\inst|kick1|altsyncram_component|auto_generated|ram_block1a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"40049041040008200208000240009208041009241208008040248009000241048209040041248200248001041008241248048241040001249249008209001248241201008209200209001201208249048201249241240249201249200008209041209200040249248040009000248248048000048249008209248248000048249041248049249048209208248201040209209201009009048209000048241201000240041208009001000049008201049009041040008200040249001209248209248249249008040001201209208049000241240248008249049000248200200249040241209240208241041201241201240049049249001240049241208040",
	mem_init0 => X"24104920004920800104100904924824124924820924824904124824004824000904004120020804104920924120924124120904120024000024824124024900904800124004100100124920920100024104920904024100804004020104804824824904020920900000800900100000924904900900920900100124004024924924100824924124924104824820024004120000024120024824004020924000124924124120824120100020020124800804920100124800900024900124820020120800124000024820000020100804900924124900924804100104900804804100804120904124820104900820800120004024120000004904820104020820",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y18
\inst|kick1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"02010482082490490082412412090010410400082082492012080012080400410092082402492082090000090012480400400490080012002002410490000412080090010492480490090000000402402480002010090400492412492410402082402092412480400482090000000482080090090400092092082002000400010490012080090082402400480492410002012082002402410492402482482410480482480482480090092412080010492092002002090002090400480010092410482090090492400492092410000000090410000000480010012490480090010092082092490000482082400412010490482092000400080080482080482492",
	mem_init0 => X"49241248001049209001048240208241041000009208248041000249009049201049241009000248041040000048009248001248008008200241000240008049041249201041041000041248049000208201009001248048209040049000208200040048200249049240208201048249241200008000200200008240041208201208048240241200000201208009008008241001209249241240209049008009048200201248048201241000009041241208048240248048041000001241209240241200208248240041208201240001209209249041201248048000201248009208008000208240000049049249040000000001241248008000049209008000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y29
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000080412080400412412002010082412082010080090482480092010492480400480490090490410012000012492000410002012010410480492092090090010000400000410482480412090012480080482082490082492490000480012012082000410090082000482080490402082402410010492082000000092400082012482000000002412082402492010090400402082092082010092490482482090400080010400412082092412410000480492080092400492490490400092492482400080092492090410012090000002002082002012490402012400082490012010090482002490400090002090012",
	mem_init0 => X"48001001248201048248240009041241009209241209208209009009041040000040240249048009040040009240040200248209208240000040201200209008048240049040041209009001248049249240040249009200200249009000209009049000209009201209000200049009208200048041040040208000249008040249040240241200001200040009000041049209008241200208240249201241248008040249009200200208249001040041208000049049209240249049200208001201049000240001201040048241249040249041048240200209249209000000200041049009240008041041000248209249001040009248000248208201",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y18
\inst|kick1|altsyncram_component|auto_generated|ram_block1a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"09049000040201200041249209041000008201249001209000209009209241008009249040208048001048248249049208248248200201040048200001200240240000001241248000000001200049009201201001201001208201248249048200240240201008048248200040008040249000048200248009048241200201040049008049200009008200208248000208000200248201048240209248040200208209200040241000000240000008201000209040000241001209008000240001240200000200240009000008241009248209208240000041249249000249041001201200040000200000201049209208049248209048048200009049008200",
	mem_init0 => X"04820120900904924920000924020904824924920100804120920900920004924804924000920920800000100904900820000820120020120004900800120000020004824824024924900824100004124904000924104824904804920800004020904120104824104020004800124100824804100804900020904124924800804920820800000820120804124900900020124004100024820000000820124104020900120924000004800800904804100820800120100800820120024124900004820024820804024024100024020004920804100100004820000100104004900804024020924924920924820120804820804104120800024800920904024924",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y18
\inst|kick1|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"10092010082492400412482090412482402402400090080480400002492082012080010480402412092000092490092010080492010492480090490400092000010400082010400492002400090492002010490400080482080010402082010090012402090400412000010082012082480482012082410410000410000010080400090000492482412402080492492012012012002402082082082412412480082480492080410010082480492012482412080410080090410090010402090000090402000480090000090002482490082490082010410492492410402490010490000010400002012482012490492082002492412092090082012080010492",
	mem_init0 => X"49040200001008000000008240001041200041001208001201009209049209200248008249049000240001241041000048048248001240209048048001200201208209048240248248248201208200001209048240049240000201201001001041208200249048009008040001201249000041048249208041041249000249241048001201201249009200201200240249248048241040049249200001001248208040241008048000041248201200008241248208208041008200241248208208040009240208240200008240249248241209009008049049208000248209008000001209248241008001208208200201040200000009209008209200209048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y27
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000090492092082412482482092482002410492482412002400010480002012012092080012482482090002400480490410010410082400002082410402012400080000002400400012080480092090090090400402012092490490092490482012010012482412482012410410402412480092002490482410000082090010490480012492400080010082010400482092410412490012490080092412012410082000002010080410090412080010000490010412490480000492410490492400410402010002012482090090002082400092410010012090092480492402412412002400480092080090092082",
	mem_init0 => X"40008048249008001200008040209249000249248048041240040208040001208048001040048048001209241241209200209049000248000009041041041001040201201041009041200249209248240000008209209241241009248209208241008240241249208049001040001208240201048049001009041000048001248201208249048200049209000049240249041209041000200201209200248048200201008009040041249048209241208048241049041008248201009208248000000041201201248240209200008248048248241040240049201201200001249249048201200209200201248209048201249209240209240208208000240241",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y24
\inst|kick1|altsyncram_component|auto_generated|ram_block1a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"40241208249040200041249248249040008001009241040248200000000241201249200048048048041041248201248040208048000249241200008209041041041241040249000241201009248249041001248049008248201009008001241048201249240048200048241009049208201008049040208209009248208009248041249048040008240248248240241241200201209209200008200040208249040049249009200209009041241209249008001241249201041048208008248241048240208000040008249040001241209249201049008001001049008009009208208000041000000201049041209201241241249248240209041040208048",
	mem_init0 => X"00100100820100820000804100824120900900124824000904920904120124100020000904920004820924904000800120120100000900024820824104924104120024000024104804824804924024120924000024904024924900804904904004020920904900800120004904000000000824804120900800004924900120924124900824820820100924104900104000020800124120920124100000024804124920000024800900904124100100924904104820924020920904800804804000124100804804024120820000820020100100924904004000020004904804924124824824104120104904020804024820900120104100904904004900004800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y17
\inst|kick1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"02012480092402490012492410412000012002402492410482492412010002410482080480002482410012082480090000092490092080082092082010402080402092002080492490492080400002010490400090410082002080082082410010402490080492490000402482090002490482012092082010400412480090002002002002490080480480410492482002092400090490402412482482012010402492402090090002010402482412492000082490010402092402490002002400090482002490082490412002400092490480490082010002402400490400402410080490092492402410010480412002410490082080010400012000012402",
	mem_init0 => X"40201009001000048208001001241249009200009249240240249240048009009040209201009040040049241000200241001040040241249049041049048248240008001048000000240209241208008209049009009049048249040248201001240200201209209248248049001248048240240040241009209008009048040000241200241200008009000001008200000208040001208201200049209008049240048048009041008040040001241200040001248048040209049240009249040009209200009248200041241200048208008248041049049209049009000041049248040049040240041240200008000249209209248201049248209240",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y27
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000082482012492412080480400490090410082012002402482480400092000090000000412492092012010412410002080092010400082080402410092012402012080402400482010400000482090412010082490090400000490480400010090002002400490412002402090080480482410002400402490002480412080010482402082092400090000402080480092482012480402410082002410482492480080490092492010490010480012002410410080010492082412412092082402012090010400000000012480000080080482012090002012082482480092400412092410000012400092010092002",
	mem_init0 => X"41248240048240248001201248208048201049001009001248201248048001248241001000208001249000209049049040040000201008249208049201241200249049248209040209048240040209049000048009200248208040049240208248248000040048208040201248048008201240201209040249209248241200248040049048240200049009208001000049009249240200249241000200200009241001041040049009240040001049040049040041049000001040208049008008240241200249201041000201208048001040240048248200041241248240041241201200001000201200041041009248049249000200000248241248208208",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y21
\inst|kick1|altsyncram_component|auto_generated|ram_block1a51\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C1000006F0000094000002000001D000011000002E8000004C00005780000D0000034200006D40000CF000002A0000052000014400004F80000AE00001BA00005400000EC800003A0000002000078C00003F0000081000007800002DC00008080000A4000017E000033400005200000B6000015A000032C00001B8000012000006C000067C00000300001F50000354000064800007B80000F4000007600007280000E38000109000015E000",
	mem_init0 => X"00880000BD80000DF000005C00006B800007E0000049000031A00001CC0000CC800011E00000840000544000024000018100001EC00005F40000080000126000006E00005AC0000FE00000A700003A600007F400001080000FB00002E000007540000460000137000037800007EC0000150000099000018E000034C00007C80000C60000226000055000008580001750000204000014800004F800004B0000082000071000007700000D9000001600005AC000053800001E00003CC00002BC000005800011F00003FC00004BC0000E900000F1000038800002B00000D48000010000022200006440000BC000000D000025400006380000CF80001D900003F600",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 9,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y28
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000010080410000082090412412400402410492402082012012480012080490492080492492082082482000410000080400080490412012402090082082090000492000480402410480490490082490002000482490490492402410012402402012400002410402412482412000492482090480080082412402000010492012000082010402410012480080410490410482010482480410482080410080082482410010400000000012082400000480090082002090082400000410402090412010092402490400082012412400092490012412400002002492490490010492082410090402482092412092002002",
	mem_init0 => X"48241201000201240040009049200208249040008041048040241200240048008048049001041208249201200048008248240200009040241240009041041200240001248008209009208241240040248001001200209249001040201240240209040201249008249040240008041241241040041200040048241009048001201001249240001248209040001040241048201200048040041240009208201240208249048201040000008209041008200209009008201041201200208209241000049201208008008248041049240000041008009009249049049209041049009248209008201041008049209001209000041041248040048048201001241248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y26
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000010010000082092480090490482080080090010010090412012010410410492010092480490080000010480010482402002010480000090402480490402480400410010000090410480480090400092010000090090080080090412080490002482480410482490492002090090400482412092000010480482400492480090012002400412090012402000402412402412000410412002082010000402412410492412080492490012000000402092002412082012482492010400010002490092412082002412402090092410090490080400012092490080480410080482012482412482492402492492402012",
	mem_init0 => X"48041208209208241040241249209248041008009048241249040008001240000008200200048009041049248041041248209241040009240208248208249248241049200209049200209049049248048041241249040041240049209209048001049001200240248248201041249001040241009209009008200248249201008009201008009000209200000241240241200049001000249240209009248201008249240001000208249240049209040000200249200200048001049201001049200249209049008241201040209200000201200200249040201241209240009040248249048000000249208209008009000209009040249241240009200240",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y13
\inst|kick1|altsyncram_component|auto_generated|ram_block1a48\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400020000000000001800030001C00030001800000000800010000400",
	mem_init0 => X"070000800060001000060000400040000C00060000000040001400020000000060000800060001000020001C000200008000700008000100008000300000000600010000200018000100000000100018000300010000100014000000014000700008000200018000000010000700010000100008000300018000300004000300038000F0003C000800020000B00020000A00028000D00030000F00038000B00024000800020000A00030000C00028000A00028000A00028000C00038000B00030000800038000900038000E0003800090003C000F00030000800028000E00030000E00028000A00020000800028000E00028000C00028000800030000A0003C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 6,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 6,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y14
\inst|kick1|altsyncram_component|auto_generated|ram_block1a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"08041000000009200000000000001208201208200201040001200041008000049040041001001001000001000000240009048208200000040200000040200009040040240000009001208040040241040001000001201041201040009001200201048000248200009008000201041009241209000201000009041240200249001248041200000209000208240000049008040000041001000000000000001208001201200001240201000208001209208209200200208201200000041208000200001009040000001001208008208200001200000209000001000008200041200041000200241000241248008248041000209040008209040200008000000200",
	mem_init0 => X"04104020800804804000100800104820104124800004904804800100120124900024924124800004924000900904104104000904904920104100000100800100000020920900900104100120100000000000120000900800100004004900100004120104024920120120020020000020020004800904024820100024920920900004004020000000824904900100820800804020100800920100120100124800000800000800024100100004104000904000120000800820800820800820924020004904000804004004904900800824020104804104904800100904024800000100000000004800020004120804000904100800820000120924020820020004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y4
\inst|kick1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"82082010002090000482010012480402090400480480080002490400412400490080012000490090002080080082000080400482010402000412400410000402090010400400000092402410012000490080000092000000092000000000402080010080092010012480002400000412002000090002000010012010090400092480400090480012002010010082010400482082000410000002000090000482000010012410010002080012010090492080402080000000002002000482400010490410402000092402000002492000000400012090082010000000410490090010080402080000090400410082080000082000000402002000400400000082",
	mem_init0 => X"01000248000200049201000008000209249001000240201048241200240008040040208000001241248240249008000009000249048000248041048041000000000008041048008041008208048201041201001000041209200008208000008001000240049001201201208000200200208200248208000000241001201009001008048040008001001041000040048048041200240048000048000208041041000001241040000200041001200201000200008000041041209040040001040208049001200208040000000000209000000000200048009248209040249241240000040201001200048041208048248041208000000040041040048241249000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y21_N8
\inst9|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = (\inst|sample[0]~41_combout\ & (\inst11|sample[0]~20_combout\ $ (VCC))) # (!\inst|sample[0]~41_combout\ & (\inst11|sample[0]~20_combout\ & VCC))
-- \inst9|Add0~1\ = CARRY((\inst|sample[0]~41_combout\ & \inst11|sample[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[0]~41_combout\,
	datab => \inst11|sample[0]~20_combout\,
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

-- Location: LCCOMB_X34_Y21_N10
\inst9|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst11|sample[1]~19_combout\ & ((\inst|sample[1]~39_combout\ & (\inst9|Add0~1\ & VCC)) # (!\inst|sample[1]~39_combout\ & (!\inst9|Add0~1\)))) # (!\inst11|sample[1]~19_combout\ & ((\inst|sample[1]~39_combout\ & (!\inst9|Add0~1\)) 
-- # (!\inst|sample[1]~39_combout\ & ((\inst9|Add0~1\) # (GND)))))
-- \inst9|Add0~3\ = CARRY((\inst11|sample[1]~19_combout\ & (!\inst|sample[1]~39_combout\ & !\inst9|Add0~1\)) # (!\inst11|sample[1]~19_combout\ & ((!\inst9|Add0~1\) # (!\inst|sample[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[1]~19_combout\,
	datab => \inst|sample[1]~39_combout\,
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCCOMB_X34_Y21_N12
\inst9|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = ((\inst11|sample[2]~18_combout\ $ (\inst|sample[2]~37_combout\ $ (!\inst9|Add0~3\)))) # (GND)
-- \inst9|Add0~5\ = CARRY((\inst11|sample[2]~18_combout\ & ((\inst|sample[2]~37_combout\) # (!\inst9|Add0~3\))) # (!\inst11|sample[2]~18_combout\ & (\inst|sample[2]~37_combout\ & !\inst9|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[2]~18_combout\,
	datab => \inst|sample[2]~37_combout\,
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X34_Y21_N14
\inst9|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst11|sample[3]~17_combout\ & ((\inst|sample[3]~35_combout\ & (\inst9|Add0~5\ & VCC)) # (!\inst|sample[3]~35_combout\ & (!\inst9|Add0~5\)))) # (!\inst11|sample[3]~17_combout\ & ((\inst|sample[3]~35_combout\ & (!\inst9|Add0~5\)) 
-- # (!\inst|sample[3]~35_combout\ & ((\inst9|Add0~5\) # (GND)))))
-- \inst9|Add0~7\ = CARRY((\inst11|sample[3]~17_combout\ & (!\inst|sample[3]~35_combout\ & !\inst9|Add0~5\)) # (!\inst11|sample[3]~17_combout\ & ((!\inst9|Add0~5\) # (!\inst|sample[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[3]~17_combout\,
	datab => \inst|sample[3]~35_combout\,
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X34_Y21_N20
\inst9|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = ((\inst|sample[6]~29_combout\ $ (\inst11|sample[6]~14_combout\ $ (!\inst9|Add0~11\)))) # (GND)
-- \inst9|Add0~13\ = CARRY((\inst|sample[6]~29_combout\ & ((\inst11|sample[6]~14_combout\) # (!\inst9|Add0~11\))) # (!\inst|sample[6]~29_combout\ & (\inst11|sample[6]~14_combout\ & !\inst9|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[6]~29_combout\,
	datab => \inst11|sample[6]~14_combout\,
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X34_Y21_N30
\inst9|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = (\inst11|sample[11]~9_combout\ & ((\inst|sample[11]~19_combout\ & (\inst9|Add0~21\ & VCC)) # (!\inst|sample[11]~19_combout\ & (!\inst9|Add0~21\)))) # (!\inst11|sample[11]~9_combout\ & ((\inst|sample[11]~19_combout\ & 
-- (!\inst9|Add0~21\)) # (!\inst|sample[11]~19_combout\ & ((\inst9|Add0~21\) # (GND)))))
-- \inst9|Add0~23\ = CARRY((\inst11|sample[11]~9_combout\ & (!\inst|sample[11]~19_combout\ & !\inst9|Add0~21\)) # (!\inst11|sample[11]~9_combout\ & ((!\inst9|Add0~21\) # (!\inst|sample[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[11]~9_combout\,
	datab => \inst|sample[11]~19_combout\,
	datad => VCC,
	cin => \inst9|Add0~21\,
	combout => \inst9|Add0~22_combout\,
	cout => \inst9|Add0~23\);

-- Location: LCCOMB_X34_Y20_N0
\inst9|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~24_combout\ = ((\inst|sample[12]~17_combout\ $ (\inst11|sample[12]~8_combout\ $ (!\inst9|Add0~23\)))) # (GND)
-- \inst9|Add0~25\ = CARRY((\inst|sample[12]~17_combout\ & ((\inst11|sample[12]~8_combout\) # (!\inst9|Add0~23\))) # (!\inst|sample[12]~17_combout\ & (\inst11|sample[12]~8_combout\ & !\inst9|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[12]~17_combout\,
	datab => \inst11|sample[12]~8_combout\,
	datad => VCC,
	cin => \inst9|Add0~23\,
	combout => \inst9|Add0~24_combout\,
	cout => \inst9|Add0~25\);

-- Location: LCCOMB_X34_Y20_N2
\inst9|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~26_combout\ = (\inst|sample[13]~15_combout\ & ((\inst11|sample[13]~7_combout\ & (\inst9|Add0~25\ & VCC)) # (!\inst11|sample[13]~7_combout\ & (!\inst9|Add0~25\)))) # (!\inst|sample[13]~15_combout\ & ((\inst11|sample[13]~7_combout\ & 
-- (!\inst9|Add0~25\)) # (!\inst11|sample[13]~7_combout\ & ((\inst9|Add0~25\) # (GND)))))
-- \inst9|Add0~27\ = CARRY((\inst|sample[13]~15_combout\ & (!\inst11|sample[13]~7_combout\ & !\inst9|Add0~25\)) # (!\inst|sample[13]~15_combout\ & ((!\inst9|Add0~25\) # (!\inst11|sample[13]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[13]~15_combout\,
	datab => \inst11|sample[13]~7_combout\,
	datad => VCC,
	cin => \inst9|Add0~25\,
	combout => \inst9|Add0~26_combout\,
	cout => \inst9|Add0~27\);

-- Location: LCCOMB_X34_Y20_N8
\inst9|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~32_combout\ = ((\inst11|sample[16]~4_combout\ $ (\inst|sample[16]~9_combout\ $ (!\inst9|Add0~31\)))) # (GND)
-- \inst9|Add0~33\ = CARRY((\inst11|sample[16]~4_combout\ & ((\inst|sample[16]~9_combout\) # (!\inst9|Add0~31\))) # (!\inst11|sample[16]~4_combout\ & (\inst|sample[16]~9_combout\ & !\inst9|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[16]~4_combout\,
	datab => \inst|sample[16]~9_combout\,
	datad => VCC,
	cin => \inst9|Add0~31\,
	combout => \inst9|Add0~32_combout\,
	cout => \inst9|Add0~33\);

-- Location: LCCOMB_X34_Y20_N10
\inst9|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~34_combout\ = (\inst11|sample[17]~3_combout\ & ((\inst|sample[17]~7_combout\ & (\inst9|Add0~33\ & VCC)) # (!\inst|sample[17]~7_combout\ & (!\inst9|Add0~33\)))) # (!\inst11|sample[17]~3_combout\ & ((\inst|sample[17]~7_combout\ & 
-- (!\inst9|Add0~33\)) # (!\inst|sample[17]~7_combout\ & ((\inst9|Add0~33\) # (GND)))))
-- \inst9|Add0~35\ = CARRY((\inst11|sample[17]~3_combout\ & (!\inst|sample[17]~7_combout\ & !\inst9|Add0~33\)) # (!\inst11|sample[17]~3_combout\ & ((!\inst9|Add0~33\) # (!\inst|sample[17]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[17]~3_combout\,
	datab => \inst|sample[17]~7_combout\,
	datad => VCC,
	cin => \inst9|Add0~33\,
	combout => \inst9|Add0~34_combout\,
	cout => \inst9|Add0~35\);

-- Location: LCCOMB_X34_Y20_N12
\inst9|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~36_combout\ = ((\inst|sample[18]~5_combout\ $ (\inst11|sample[18]~2_combout\ $ (!\inst9|Add0~35\)))) # (GND)
-- \inst9|Add0~37\ = CARRY((\inst|sample[18]~5_combout\ & ((\inst11|sample[18]~2_combout\) # (!\inst9|Add0~35\))) # (!\inst|sample[18]~5_combout\ & (\inst11|sample[18]~2_combout\ & !\inst9|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[18]~5_combout\,
	datab => \inst11|sample[18]~2_combout\,
	datad => VCC,
	cin => \inst9|Add0~35\,
	combout => \inst9|Add0~36_combout\,
	cout => \inst9|Add0~37\);

-- Location: LCCOMB_X34_Y20_N14
\inst9|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~38_combout\ = (\inst11|sample[19]~1_combout\ & ((\inst|sample[19]~3_combout\ & (\inst9|Add0~37\ & VCC)) # (!\inst|sample[19]~3_combout\ & (!\inst9|Add0~37\)))) # (!\inst11|sample[19]~1_combout\ & ((\inst|sample[19]~3_combout\ & 
-- (!\inst9|Add0~37\)) # (!\inst|sample[19]~3_combout\ & ((\inst9|Add0~37\) # (GND)))))
-- \inst9|Add0~39\ = CARRY((\inst11|sample[19]~1_combout\ & (!\inst|sample[19]~3_combout\ & !\inst9|Add0~37\)) # (!\inst11|sample[19]~1_combout\ & ((!\inst9|Add0~37\) # (!\inst|sample[19]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[19]~1_combout\,
	datab => \inst|sample[19]~3_combout\,
	datad => VCC,
	cin => \inst9|Add0~37\,
	combout => \inst9|Add0~38_combout\,
	cout => \inst9|Add0~39\);

-- Location: M4K_X26_Y8
\inst|kick1|altsyncram_component|auto_generated|ram_block1a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"92492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000049249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y16
\inst|kick1|altsyncram_component|auto_generated|ram_block1a46\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249",
	mem_init0 => X"24924924924924924924924924924924924924924924924924924924924924924924924924924920000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924000000000000000000000000000000000000000000000000000000000000000000000000000000024924924924924924924924924924924924924924924924924924924924924924924924924924924920000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y11
\inst|kick1|altsyncram_component|auto_generated|ram_block1a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000092492492492492492492492492492492492492492492492492492492492492492492492492492400000000000000000000000000000000000000000000000000000000000000000092492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492480000000000000000000",
	mem_init0 => X"00000000000000000000000000000049249249249249249249249249249249249249249249249249249249249240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249000000000000000000000000000000249249249249249249249249249249249249249249249249249249249249249249249249249249240000000000000000000000000001249249249249249249249249200000000000000000000000000049249249249249249249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y31
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000002402490410092400480012490012490400400480090090000490002410490000000480480010082010000492012000492402480092402492090482490402492400092002400012012002400092012490000080490090012012402490412402490002480090492012002412492010082482480080002012480010000000000480080002402482082010400082482000482000490002480482080400010480002080010402410000092092090000012492012002412080002490492000090000412002490080080400080490400090080012092402480480010080000482080002492402480010082492410410090",
	mem_init0 => X"41240000040201049009248241240249049000209241240201048240040248008040208200209000241009200041208001200048048200208208000000001208009241049040001240248241241009048041008041200200201041001001009041248048048049249009209248008041000201040240001049200049208040008009241249048240041201001240248048209001008009040009249240248249201048248048249240248241000040001001000049240249041240048248208209000248248248240248240240008201240208208200208249200048041241208049241000200040240000040209209240001208209040240241040041040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y20
\inst|kick1|altsyncram_component|auto_generated|ram_block1a45\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"49249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000924924924924924924924924924924924924924924924924924920000000000000000000000000000000000000000000000000124924924924924924924924924924924924924924924924924924924920000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000924924924924924924924924924924924924924924900000000000000000000000000000000000024924924924924924924924924924924924900000000000000000000000000000000000000000000004924924924924924924924924924924924",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y12
\inst|kick1|altsyncram_component|auto_generated|ram_block1a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"92492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492400000000000000000000000000000000000000000012492492492492492492492492492492492400000000000000000000000000000000092492492492492492492492492492492400000000000000000000000000000000000092492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492492000000000000000000000000000012492492492492492492",
	mem_init0 => X"49249000000000000000000000000049249249249249249249249249000000000000000000000000000000000009249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000000000000000000000001249249249249249249249249000000000000000049249249249249000000000000000000000049249249249249249249249249249249249240000000000000000000009249249249249240000000000001249249249249000000000000049249249249249249249249249200000001249249249249248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N20
\inst9|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~44_combout\ = ((\inst|sample[22]~45_combout\ $ (\inst11|sample[22]~22_combout\ $ (!\inst9|Add0~43\)))) # (GND)
-- \inst9|Add0~45\ = CARRY((\inst|sample[22]~45_combout\ & ((\inst11|sample[22]~22_combout\) # (!\inst9|Add0~43\))) # (!\inst|sample[22]~45_combout\ & (\inst11|sample[22]~22_combout\ & !\inst9|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[22]~45_combout\,
	datab => \inst11|sample[22]~22_combout\,
	datad => VCC,
	cin => \inst9|Add0~43\,
	combout => \inst9|Add0~44_combout\,
	cout => \inst9|Add0~45\);

-- Location: LCCOMB_X35_Y21_N16
\inst7|LRDATA[29]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[29]~32_combout\ = (\inst9|Add0~8_combout\ & (\inst7|LRDATA[28]~31\ $ (GND))) # (!\inst9|Add0~8_combout\ & (!\inst7|LRDATA[28]~31\ & VCC))
-- \inst7|LRDATA[29]~33\ = CARRY((\inst9|Add0~8_combout\ & !\inst7|LRDATA[28]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~8_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[28]~31\,
	combout => \inst7|LRDATA[29]~32_combout\,
	cout => \inst7|LRDATA[29]~33\);

-- Location: LCCOMB_X35_Y21_N30
\inst7|LRDATA[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[12]~46_combout\ = (\inst9|Add0~22_combout\ & (!\inst7|LRDATA[11]~45\)) # (!\inst9|Add0~22_combout\ & ((\inst7|LRDATA[11]~45\) # (GND)))
-- \inst7|LRDATA[12]~47\ = CARRY((!\inst7|LRDATA[11]~45\) # (!\inst9|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~22_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[11]~45\,
	combout => \inst7|LRDATA[12]~46_combout\,
	cout => \inst7|LRDATA[12]~47\);

-- Location: LCCOMB_X35_Y20_N4
\inst7|LRDATA[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[15]~52_combout\ = (\inst9|Add0~28_combout\ & (\inst7|LRDATA[14]~51\ $ (GND))) # (!\inst9|Add0~28_combout\ & (!\inst7|LRDATA[14]~51\ & VCC))
-- \inst7|LRDATA[15]~53\ = CARRY((\inst9|Add0~28_combout\ & !\inst7|LRDATA[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~28_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[14]~51\,
	combout => \inst7|LRDATA[15]~52_combout\,
	cout => \inst7|LRDATA[15]~53\);

-- Location: LCFF_X57_Y35_N25
\inst7|SCI_WORD2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|word_count~1_combout\,
	sclr => \inst7|word_count\(1),
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(3));

-- Location: LCFF_X56_Y35_N9
\inst7|SCI_WORD2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|word_count~2_combout\,
	sclr => \inst7|word_count\(1),
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(5));

-- Location: LCFF_X58_Y34_N7
\inst7|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[3]~12_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(3));

-- Location: LCCOMB_X58_Y34_N6
\inst7|clk_count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[3]~12_combout\ = (\inst7|clk_count\(3) & (!\inst7|clk_count[2]~11\)) # (!\inst7|clk_count\(3) & ((\inst7|clk_count[2]~11\) # (GND)))
-- \inst7|clk_count[3]~13\ = CARRY((!\inst7|clk_count[2]~11\) # (!\inst7|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(3),
	datad => VCC,
	cin => \inst7|clk_count[2]~11\,
	combout => \inst7|clk_count[3]~12_combout\,
	cout => \inst7|clk_count[3]~13\);

-- Location: LCFF_X30_Y33_N17
\inst2|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[21]~69_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(21));

-- Location: LCFF_X30_Y33_N19
\inst2|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[22]~71_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(22));

-- Location: LCFF_X30_Y33_N21
\inst2|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[23]~73_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(23));

-- Location: LCFF_X30_Y33_N23
\inst2|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[24]~75_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(24));

-- Location: LCFF_X30_Y33_N25
\inst2|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[25]~77_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(25));

-- Location: LCFF_X30_Y33_N27
\inst2|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[26]~79_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(26));

-- Location: LCFF_X30_Y33_N9
\inst2|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[17]~61_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(17));

-- Location: LCFF_X30_Y33_N11
\inst2|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[18]~63_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(18));

-- Location: LCFF_X30_Y33_N7
\inst2|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[16]~59_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(16));

-- Location: LCFF_X30_Y33_N5
\inst2|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[15]~57_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(15));

-- Location: LCFF_X30_Y34_N21
\inst2|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[7]~41_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(7));

-- Location: LCFF_X30_Y34_N23
\inst2|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[8]~43_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(8));

-- Location: LCFF_X30_Y34_N25
\inst2|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[9]~45_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(9));

-- Location: LCFF_X30_Y34_N27
\inst2|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[10]~47_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(10));

-- Location: LCFF_X30_Y34_N11
\inst2|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[2]~31_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(2));

-- Location: LCFF_X30_Y34_N13
\inst2|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[3]~33_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(3));

-- Location: LCFF_X30_Y34_N15
\inst2|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[4]~35_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(4));

-- Location: LCFF_X30_Y34_N17
\inst2|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[5]~37_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(5));

-- Location: LCFF_X30_Y34_N19
\inst2|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[6]~39_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(6));

-- Location: LCFF_X30_Y34_N29
\inst2|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[11]~49_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(11));

-- Location: LCFF_X30_Y34_N31
\inst2|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[12]~51_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(12));

-- Location: LCFF_X30_Y33_N1
\inst2|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[13]~53_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(13));

-- Location: LCFF_X30_Y33_N3
\inst2|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[14]~55_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(14));

-- Location: LCFF_X30_Y33_N13
\inst2|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[19]~65_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(19));

-- Location: LCFF_X30_Y33_N15
\inst2|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[20]~67_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(20));

-- Location: LCFF_X30_Y34_N9
\inst2|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[1]~29_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(1));

-- Location: LCFF_X30_Y34_N7
\inst2|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|counter[0]~27_combout\,
	sclr => \inst2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|counter\(0));

-- Location: LCCOMB_X30_Y34_N6
\inst2|counter[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[0]~27_combout\ = \inst2|counter\(0) $ (VCC)
-- \inst2|counter[0]~28\ = CARRY(\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|counter[0]~27_combout\,
	cout => \inst2|counter[0]~28\);

-- Location: LCCOMB_X30_Y34_N8
\inst2|counter[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[1]~29_combout\ = (\inst2|counter\(1) & (!\inst2|counter[0]~28\)) # (!\inst2|counter\(1) & ((\inst2|counter[0]~28\) # (GND)))
-- \inst2|counter[1]~30\ = CARRY((!\inst2|counter[0]~28\) # (!\inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|counter[0]~28\,
	combout => \inst2|counter[1]~29_combout\,
	cout => \inst2|counter[1]~30\);

-- Location: LCCOMB_X30_Y34_N10
\inst2|counter[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[2]~31_combout\ = (\inst2|counter\(2) & (\inst2|counter[1]~30\ $ (GND))) # (!\inst2|counter\(2) & (!\inst2|counter[1]~30\ & VCC))
-- \inst2|counter[2]~32\ = CARRY((\inst2|counter\(2) & !\inst2|counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|counter[1]~30\,
	combout => \inst2|counter[2]~31_combout\,
	cout => \inst2|counter[2]~32\);

-- Location: LCCOMB_X30_Y34_N12
\inst2|counter[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[3]~33_combout\ = (\inst2|counter\(3) & (!\inst2|counter[2]~32\)) # (!\inst2|counter\(3) & ((\inst2|counter[2]~32\) # (GND)))
-- \inst2|counter[3]~34\ = CARRY((!\inst2|counter[2]~32\) # (!\inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|counter[2]~32\,
	combout => \inst2|counter[3]~33_combout\,
	cout => \inst2|counter[3]~34\);

-- Location: LCCOMB_X30_Y34_N14
\inst2|counter[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[4]~35_combout\ = (\inst2|counter\(4) & (\inst2|counter[3]~34\ $ (GND))) # (!\inst2|counter\(4) & (!\inst2|counter[3]~34\ & VCC))
-- \inst2|counter[4]~36\ = CARRY((\inst2|counter\(4) & !\inst2|counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(4),
	datad => VCC,
	cin => \inst2|counter[3]~34\,
	combout => \inst2|counter[4]~35_combout\,
	cout => \inst2|counter[4]~36\);

-- Location: LCCOMB_X30_Y34_N16
\inst2|counter[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[5]~37_combout\ = (\inst2|counter\(5) & (!\inst2|counter[4]~36\)) # (!\inst2|counter\(5) & ((\inst2|counter[4]~36\) # (GND)))
-- \inst2|counter[5]~38\ = CARRY((!\inst2|counter[4]~36\) # (!\inst2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datad => VCC,
	cin => \inst2|counter[4]~36\,
	combout => \inst2|counter[5]~37_combout\,
	cout => \inst2|counter[5]~38\);

-- Location: LCCOMB_X30_Y34_N18
\inst2|counter[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[6]~39_combout\ = (\inst2|counter\(6) & (\inst2|counter[5]~38\ $ (GND))) # (!\inst2|counter\(6) & (!\inst2|counter[5]~38\ & VCC))
-- \inst2|counter[6]~40\ = CARRY((\inst2|counter\(6) & !\inst2|counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(6),
	datad => VCC,
	cin => \inst2|counter[5]~38\,
	combout => \inst2|counter[6]~39_combout\,
	cout => \inst2|counter[6]~40\);

-- Location: LCCOMB_X30_Y34_N20
\inst2|counter[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[7]~41_combout\ = (\inst2|counter\(7) & (!\inst2|counter[6]~40\)) # (!\inst2|counter\(7) & ((\inst2|counter[6]~40\) # (GND)))
-- \inst2|counter[7]~42\ = CARRY((!\inst2|counter[6]~40\) # (!\inst2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(7),
	datad => VCC,
	cin => \inst2|counter[6]~40\,
	combout => \inst2|counter[7]~41_combout\,
	cout => \inst2|counter[7]~42\);

-- Location: LCCOMB_X30_Y34_N22
\inst2|counter[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[8]~43_combout\ = (\inst2|counter\(8) & (\inst2|counter[7]~42\ $ (GND))) # (!\inst2|counter\(8) & (!\inst2|counter[7]~42\ & VCC))
-- \inst2|counter[8]~44\ = CARRY((\inst2|counter\(8) & !\inst2|counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(8),
	datad => VCC,
	cin => \inst2|counter[7]~42\,
	combout => \inst2|counter[8]~43_combout\,
	cout => \inst2|counter[8]~44\);

-- Location: LCCOMB_X30_Y34_N24
\inst2|counter[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[9]~45_combout\ = (\inst2|counter\(9) & (!\inst2|counter[8]~44\)) # (!\inst2|counter\(9) & ((\inst2|counter[8]~44\) # (GND)))
-- \inst2|counter[9]~46\ = CARRY((!\inst2|counter[8]~44\) # (!\inst2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datad => VCC,
	cin => \inst2|counter[8]~44\,
	combout => \inst2|counter[9]~45_combout\,
	cout => \inst2|counter[9]~46\);

-- Location: LCCOMB_X30_Y34_N26
\inst2|counter[10]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[10]~47_combout\ = (\inst2|counter\(10) & (\inst2|counter[9]~46\ $ (GND))) # (!\inst2|counter\(10) & (!\inst2|counter[9]~46\ & VCC))
-- \inst2|counter[10]~48\ = CARRY((\inst2|counter\(10) & !\inst2|counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(10),
	datad => VCC,
	cin => \inst2|counter[9]~46\,
	combout => \inst2|counter[10]~47_combout\,
	cout => \inst2|counter[10]~48\);

-- Location: LCCOMB_X30_Y34_N28
\inst2|counter[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[11]~49_combout\ = (\inst2|counter\(11) & (!\inst2|counter[10]~48\)) # (!\inst2|counter\(11) & ((\inst2|counter[10]~48\) # (GND)))
-- \inst2|counter[11]~50\ = CARRY((!\inst2|counter[10]~48\) # (!\inst2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(11),
	datad => VCC,
	cin => \inst2|counter[10]~48\,
	combout => \inst2|counter[11]~49_combout\,
	cout => \inst2|counter[11]~50\);

-- Location: LCCOMB_X30_Y34_N30
\inst2|counter[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[12]~51_combout\ = (\inst2|counter\(12) & (\inst2|counter[11]~50\ $ (GND))) # (!\inst2|counter\(12) & (!\inst2|counter[11]~50\ & VCC))
-- \inst2|counter[12]~52\ = CARRY((\inst2|counter\(12) & !\inst2|counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(12),
	datad => VCC,
	cin => \inst2|counter[11]~50\,
	combout => \inst2|counter[12]~51_combout\,
	cout => \inst2|counter[12]~52\);

-- Location: LCCOMB_X30_Y33_N0
\inst2|counter[13]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[13]~53_combout\ = (\inst2|counter\(13) & (!\inst2|counter[12]~52\)) # (!\inst2|counter\(13) & ((\inst2|counter[12]~52\) # (GND)))
-- \inst2|counter[13]~54\ = CARRY((!\inst2|counter[12]~52\) # (!\inst2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(13),
	datad => VCC,
	cin => \inst2|counter[12]~52\,
	combout => \inst2|counter[13]~53_combout\,
	cout => \inst2|counter[13]~54\);

-- Location: LCCOMB_X30_Y33_N2
\inst2|counter[14]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[14]~55_combout\ = (\inst2|counter\(14) & (\inst2|counter[13]~54\ $ (GND))) # (!\inst2|counter\(14) & (!\inst2|counter[13]~54\ & VCC))
-- \inst2|counter[14]~56\ = CARRY((\inst2|counter\(14) & !\inst2|counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(14),
	datad => VCC,
	cin => \inst2|counter[13]~54\,
	combout => \inst2|counter[14]~55_combout\,
	cout => \inst2|counter[14]~56\);

-- Location: LCCOMB_X30_Y33_N4
\inst2|counter[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[15]~57_combout\ = (\inst2|counter\(15) & (!\inst2|counter[14]~56\)) # (!\inst2|counter\(15) & ((\inst2|counter[14]~56\) # (GND)))
-- \inst2|counter[15]~58\ = CARRY((!\inst2|counter[14]~56\) # (!\inst2|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(15),
	datad => VCC,
	cin => \inst2|counter[14]~56\,
	combout => \inst2|counter[15]~57_combout\,
	cout => \inst2|counter[15]~58\);

-- Location: LCCOMB_X30_Y33_N6
\inst2|counter[16]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[16]~59_combout\ = (\inst2|counter\(16) & (\inst2|counter[15]~58\ $ (GND))) # (!\inst2|counter\(16) & (!\inst2|counter[15]~58\ & VCC))
-- \inst2|counter[16]~60\ = CARRY((\inst2|counter\(16) & !\inst2|counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(16),
	datad => VCC,
	cin => \inst2|counter[15]~58\,
	combout => \inst2|counter[16]~59_combout\,
	cout => \inst2|counter[16]~60\);

-- Location: LCCOMB_X30_Y33_N8
\inst2|counter[17]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[17]~61_combout\ = (\inst2|counter\(17) & (!\inst2|counter[16]~60\)) # (!\inst2|counter\(17) & ((\inst2|counter[16]~60\) # (GND)))
-- \inst2|counter[17]~62\ = CARRY((!\inst2|counter[16]~60\) # (!\inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(17),
	datad => VCC,
	cin => \inst2|counter[16]~60\,
	combout => \inst2|counter[17]~61_combout\,
	cout => \inst2|counter[17]~62\);

-- Location: LCCOMB_X30_Y33_N10
\inst2|counter[18]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[18]~63_combout\ = (\inst2|counter\(18) & (\inst2|counter[17]~62\ $ (GND))) # (!\inst2|counter\(18) & (!\inst2|counter[17]~62\ & VCC))
-- \inst2|counter[18]~64\ = CARRY((\inst2|counter\(18) & !\inst2|counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datad => VCC,
	cin => \inst2|counter[17]~62\,
	combout => \inst2|counter[18]~63_combout\,
	cout => \inst2|counter[18]~64\);

-- Location: LCCOMB_X30_Y33_N12
\inst2|counter[19]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[19]~65_combout\ = (\inst2|counter\(19) & (!\inst2|counter[18]~64\)) # (!\inst2|counter\(19) & ((\inst2|counter[18]~64\) # (GND)))
-- \inst2|counter[19]~66\ = CARRY((!\inst2|counter[18]~64\) # (!\inst2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(19),
	datad => VCC,
	cin => \inst2|counter[18]~64\,
	combout => \inst2|counter[19]~65_combout\,
	cout => \inst2|counter[19]~66\);

-- Location: LCCOMB_X30_Y33_N14
\inst2|counter[20]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[20]~67_combout\ = (\inst2|counter\(20) & (\inst2|counter[19]~66\ $ (GND))) # (!\inst2|counter\(20) & (!\inst2|counter[19]~66\ & VCC))
-- \inst2|counter[20]~68\ = CARRY((\inst2|counter\(20) & !\inst2|counter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(20),
	datad => VCC,
	cin => \inst2|counter[19]~66\,
	combout => \inst2|counter[20]~67_combout\,
	cout => \inst2|counter[20]~68\);

-- Location: LCCOMB_X30_Y33_N16
\inst2|counter[21]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[21]~69_combout\ = (\inst2|counter\(21) & (!\inst2|counter[20]~68\)) # (!\inst2|counter\(21) & ((\inst2|counter[20]~68\) # (GND)))
-- \inst2|counter[21]~70\ = CARRY((!\inst2|counter[20]~68\) # (!\inst2|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(21),
	datad => VCC,
	cin => \inst2|counter[20]~68\,
	combout => \inst2|counter[21]~69_combout\,
	cout => \inst2|counter[21]~70\);

-- Location: LCCOMB_X30_Y33_N18
\inst2|counter[22]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~71_combout\ = (\inst2|counter\(22) & (\inst2|counter[21]~70\ $ (GND))) # (!\inst2|counter\(22) & (!\inst2|counter[21]~70\ & VCC))
-- \inst2|counter[22]~72\ = CARRY((\inst2|counter\(22) & !\inst2|counter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(22),
	datad => VCC,
	cin => \inst2|counter[21]~70\,
	combout => \inst2|counter[22]~71_combout\,
	cout => \inst2|counter[22]~72\);

-- Location: LCCOMB_X30_Y33_N20
\inst2|counter[23]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[23]~73_combout\ = (\inst2|counter\(23) & (!\inst2|counter[22]~72\)) # (!\inst2|counter\(23) & ((\inst2|counter[22]~72\) # (GND)))
-- \inst2|counter[23]~74\ = CARRY((!\inst2|counter[22]~72\) # (!\inst2|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(23),
	datad => VCC,
	cin => \inst2|counter[22]~72\,
	combout => \inst2|counter[23]~73_combout\,
	cout => \inst2|counter[23]~74\);

-- Location: LCCOMB_X30_Y33_N22
\inst2|counter[24]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[24]~75_combout\ = (\inst2|counter\(24) & (\inst2|counter[23]~74\ $ (GND))) # (!\inst2|counter\(24) & (!\inst2|counter[23]~74\ & VCC))
-- \inst2|counter[24]~76\ = CARRY((\inst2|counter\(24) & !\inst2|counter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(24),
	datad => VCC,
	cin => \inst2|counter[23]~74\,
	combout => \inst2|counter[24]~75_combout\,
	cout => \inst2|counter[24]~76\);

-- Location: LCCOMB_X30_Y33_N24
\inst2|counter[25]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[25]~77_combout\ = (\inst2|counter\(25) & (!\inst2|counter[24]~76\)) # (!\inst2|counter\(25) & ((\inst2|counter[24]~76\) # (GND)))
-- \inst2|counter[25]~78\ = CARRY((!\inst2|counter[24]~76\) # (!\inst2|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(25),
	datad => VCC,
	cin => \inst2|counter[24]~76\,
	combout => \inst2|counter[25]~77_combout\,
	cout => \inst2|counter[25]~78\);

-- Location: LCCOMB_X30_Y33_N26
\inst2|counter[26]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|counter[26]~79_combout\ = \inst2|counter[25]~78\ $ (!\inst2|counter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|counter\(26),
	cin => \inst2|counter[25]~78\,
	combout => \inst2|counter[26]~79_combout\);

-- Location: LCCOMB_X35_Y23_N10
\inst7|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~7_combout\ = (\inst7|BBcount\(0) & (\inst7|BBcount\(4) $ (((!\inst7|BBcount\(5) & !\inst7|BBcount\(3)))))) # (!\inst7|BBcount\(0) & (\inst7|BBcount\(5) $ (((!\inst7|BBcount\(4) & \inst7|BBcount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(5),
	datab => \inst7|BBcount\(0),
	datac => \inst7|BBcount\(4),
	datad => \inst7|BBcount\(3),
	combout => \inst7|Mux0~7_combout\);

-- Location: LCCOMB_X33_Y21_N8
\inst11|sample[20]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[20]~0_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(20),
	combout => \inst11|sample[20]~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\inst|sample[20]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[20]~0_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a44~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a20~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	combout => \inst|sample[20]~0_combout\);

-- Location: LCCOMB_X33_Y21_N26
\inst11|sample[19]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[19]~1_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(19),
	combout => \inst11|sample[19]~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst|sample[18]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[18]~4_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a42~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a18~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	combout => \inst|sample[18]~4_combout\);

-- Location: LCCOMB_X30_Y20_N18
\inst|sample[18]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[18]~5_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[18]~4_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & \inst|kick1|altsyncram_component|auto_generated|ram_block1a66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|sample[18]~4_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a66\,
	combout => \inst|sample[18]~5_combout\);

-- Location: LCCOMB_X33_Y21_N14
\inst11|sample[17]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[17]~3_combout\ = (\inst11|hh1|altsyncram_component|auto_generated|q_a\(17) & \inst11|internal_is_playing~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(17),
	datad => \inst11|internal_is_playing~combout\,
	combout => \inst11|sample[17]~3_combout\);

-- Location: LCCOMB_X33_Y21_N16
\inst11|sample[16]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[16]~4_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(16),
	combout => \inst11|sample[16]~4_combout\);

-- Location: LCCOMB_X28_Y18_N22
\inst|sample[15]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[15]~10_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a39~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a15~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \inst|sample[15]~10_combout\);

-- Location: LCCOMB_X28_Y18_N24
\inst|sample[15]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[15]~11_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a63\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[15]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a63\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|sample[15]~10_combout\,
	combout => \inst|sample[15]~11_combout\);

-- Location: LCCOMB_X30_Y21_N0
\inst|sample[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[14]~12_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a38~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a14~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	combout => \inst|sample[14]~12_combout\);

-- Location: LCCOMB_X30_Y21_N26
\inst|sample[14]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[14]~13_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a62\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[14]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a62\,
	datad => \inst|sample[14]~12_combout\,
	combout => \inst|sample[14]~13_combout\);

-- Location: LCCOMB_X33_Y17_N8
\inst|sample[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[13]~14_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a37~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a13~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	combout => \inst|sample[13]~14_combout\);

-- Location: LCCOMB_X34_Y20_N24
\inst|sample[13]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[13]~15_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a61\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[13]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a61\,
	datad => \inst|sample[13]~14_combout\,
	combout => \inst|sample[13]~15_combout\);

-- Location: LCCOMB_X34_Y20_N26
\inst|sample[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[12]~16_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a36~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a12~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	combout => \inst|sample[12]~16_combout\);

-- Location: LCCOMB_X34_Y20_N28
\inst|sample[12]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[12]~17_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a60~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[12]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datad => \inst|sample[12]~16_combout\,
	combout => \inst|sample[12]~17_combout\);

-- Location: LCCOMB_X33_Y21_N2
\inst11|sample[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[11]~9_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst11|sample[11]~9_combout\);

-- Location: LCCOMB_X30_Y21_N8
\inst|sample[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[10]~20_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a34~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \inst|sample[10]~20_combout\);

-- Location: LCCOMB_X30_Y21_N18
\inst|sample[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[10]~21_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a58\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a58\,
	datac => \inst|sample[10]~20_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[10]~21_combout\);

-- Location: LCCOMB_X33_Y21_N30
\inst11|sample[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[9]~11_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst11|sample[9]~11_combout\);

-- Location: LCCOMB_X30_Y21_N12
\inst|sample[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[9]~22_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a33~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a9~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \inst|sample[9]~22_combout\);

-- Location: LCCOMB_X30_Y21_N24
\inst|sample[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[8]~24_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a32~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \inst|sample[8]~24_combout\);

-- Location: LCCOMB_X30_Y21_N10
\inst|sample[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[8]~25_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a56\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[8]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a56\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|sample[8]~24_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[8]~25_combout\);

-- Location: LCCOMB_X33_Y21_N10
\inst11|sample[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[7]~13_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst11|sample[7]~13_combout\);

-- Location: LCCOMB_X30_Y21_N16
\inst|sample[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[6]~28_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a30~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \inst|sample[6]~28_combout\);

-- Location: LCCOMB_X30_Y21_N2
\inst|sample[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[6]~29_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a54\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[6]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a54\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|sample[6]~28_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[6]~29_combout\);

-- Location: LCCOMB_X34_Y24_N10
\inst11|sample[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[5]~15_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst11|sample[5]~15_combout\);

-- Location: LCCOMB_X30_Y21_N28
\inst|sample[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[4]~32_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \inst|sample[4]~32_combout\);

-- Location: LCCOMB_X30_Y21_N22
\inst|sample[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[4]~33_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a52\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[4]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a52\,
	datad => \inst|sample[4]~32_combout\,
	combout => \inst|sample[4]~33_combout\);

-- Location: LCCOMB_X34_Y24_N22
\inst11|sample[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[3]~17_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst11|sample[3]~17_combout\);

-- Location: LCCOMB_X34_Y24_N16
\inst11|sample[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[2]~18_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst11|sample[2]~18_combout\);

-- Location: LCCOMB_X34_Y24_N26
\inst11|sample[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[1]~19_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst11|sample[1]~19_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst|sample[0]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[0]~40_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a24~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \inst|sample[0]~40_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst|sample[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[0]~41_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a48~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[0]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|sample[0]~40_combout\,
	combout => \inst|sample[0]~41_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst|sample[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[22]~44_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\inst|kick1|altsyncram_component|auto_generated|ram_block1a46~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \inst|sample[22]~44_combout\);

-- Location: LCCOMB_X30_Y20_N26
\inst|sample[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[22]~45_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[22]~44_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & \inst|kick1|altsyncram_component|auto_generated|ram_block1a70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|sample[22]~44_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a70\,
	combout => \inst|sample[22]~45_combout\);

-- Location: LCCOMB_X34_Y24_N8
\inst11|sample[21]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[21]~23_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(21),
	combout => \inst11|sample[21]~23_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst|sample[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[21]~46_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a45~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a21~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	combout => \inst|sample[21]~46_combout\);

-- Location: LCFF_X57_Y34_N9
\inst7|state.sw2b1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector30~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw2b1~regout\);

-- Location: LCCOMB_X57_Y34_N28
\inst7|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~0_combout\ = (\inst7|state.sw2b1~regout\) # ((\inst7|state.sw2b2~regout\) # (\inst7|state.sw2b3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.sw2b1~regout\,
	datac => \inst7|state.sw2b2~regout\,
	datad => \inst7|state.sw2b3~regout\,
	combout => \inst7|Selector9~0_combout\);

-- Location: LCFF_X57_Y35_N3
\inst7|SCI_WORD2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux12~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(1));

-- Location: LCFF_X57_Y35_N13
\inst7|SCI_WORD2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|word_count~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(2));

-- Location: LCFF_X57_Y35_N7
\inst7|SCI_WORD2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux13~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(0));

-- Location: LCCOMB_X57_Y35_N8
\inst7|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux16~0_combout\ = (\inst7|bit_count\(1) & (\inst7|SCI_WORD2\(0) & (\inst7|bit_count\(0)))) # (!\inst7|bit_count\(1) & (((\inst7|SCI_WORD2\(2)) # (!\inst7|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|SCI_WORD2\(0),
	datab => \inst7|bit_count\(1),
	datac => \inst7|bit_count\(0),
	datad => \inst7|SCI_WORD2\(2),
	combout => \inst7|Mux16~0_combout\);

-- Location: LCCOMB_X57_Y35_N18
\inst7|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux16~1_combout\ = (\inst7|bit_count\(0) & (\inst7|Mux16~0_combout\)) # (!\inst7|bit_count\(0) & ((\inst7|Mux16~0_combout\ & (\inst7|SCI_WORD2\(3))) # (!\inst7|Mux16~0_combout\ & ((\inst7|SCI_WORD2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datab => \inst7|Mux16~0_combout\,
	datac => \inst7|SCI_WORD2\(3),
	datad => \inst7|SCI_WORD2\(1),
	combout => \inst7|Mux16~1_combout\);

-- Location: LCFF_X56_Y35_N29
\inst7|SCI_WORD2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux9~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD2\(4));

-- Location: LCFF_X56_Y35_N15
\inst7|SCI_WORD1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux5~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD1\(0));

-- Location: LCCOMB_X56_Y35_N0
\inst7|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux16~2_combout\ = (\inst7|bit_count\(0) & (\inst7|bit_count\(1) & ((\inst7|SCI_WORD2\(4))))) # (!\inst7|bit_count\(0) & (!\inst7|bit_count\(1) & (\inst7|SCI_WORD1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datab => \inst7|bit_count\(1),
	datac => \inst7|SCI_WORD1\(0),
	datad => \inst7|SCI_WORD2\(4),
	combout => \inst7|Mux16~2_combout\);

-- Location: LCCOMB_X56_Y35_N18
\inst7|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux16~3_combout\ = (\inst7|Mux16~2_combout\) # ((\inst7|SCI_WORD2\(5) & (\inst7|bit_count\(0) $ (\inst7|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datab => \inst7|bit_count\(1),
	datac => \inst7|SCI_WORD2\(5),
	datad => \inst7|Mux16~2_combout\,
	combout => \inst7|Mux16~3_combout\);

-- Location: LCCOMB_X56_Y35_N12
\inst7|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~1_combout\ = (\inst7|Selector9~0_combout\ & ((\inst7|bit_count\(2) & ((\inst7|Mux16~1_combout\))) # (!\inst7|bit_count\(2) & (\inst7|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector9~0_combout\,
	datab => \inst7|Mux16~3_combout\,
	datac => \inst7|bit_count\(2),
	datad => \inst7|Mux16~1_combout\,
	combout => \inst7|Selector9~1_combout\);

-- Location: LCFF_X56_Y35_N23
\inst7|SCI_WORD1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|SCI_WORD1[4]~1_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD1\(4));

-- Location: LCCOMB_X56_Y35_N16
\inst7|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~0_combout\ = (\inst7|bit_count\(0) & (\inst7|bit_count\(1) & (!\inst7|bit_count\(2) & \inst7|SCI_WORD1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datab => \inst7|bit_count\(1),
	datac => \inst7|bit_count\(2),
	datad => \inst7|SCI_WORD1\(4),
	combout => \inst7|Mux15~0_combout\);

-- Location: LCFF_X56_Y35_N5
\inst7|SCI_WORD1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|SCI_WORD1[1]~2_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD1\(1));

-- Location: LCCOMB_X56_Y35_N6
\inst7|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~1_combout\ = (\inst7|bit_count\(0) & (\inst7|SCI_WORD1\(0) & ((\inst7|bit_count\(1))))) # (!\inst7|bit_count\(0) & (((\inst7|SCI_WORD1\(1)) # (!\inst7|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datab => \inst7|SCI_WORD1\(0),
	datac => \inst7|SCI_WORD1\(1),
	datad => \inst7|bit_count\(1),
	combout => \inst7|Mux15~1_combout\);

-- Location: LCFF_X56_Y34_N11
\inst7|state.sack23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector23~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack23~regout\);

-- Location: LCCOMB_X56_Y34_N2
\inst7|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr3~3_combout\ = (!\inst7|state.sack23~regout\ & (!\inst7|state.sack33~regout\ & !\inst7|state.sack13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sack23~regout\,
	datab => \inst7|state.sack33~regout\,
	datac => \inst7|state.sack13~regout\,
	combout => \inst7|WideOr3~3_combout\);

-- Location: LCCOMB_X58_Y34_N16
\inst7|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector13~0_combout\ = (\inst7|state.s1~regout\ & (((\inst7|clk_count\(4)) # (!\inst7|Equal5~0_combout\)) # (!\inst7|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	datad => \inst7|state.s1~regout\,
	combout => \inst7|Selector13~0_combout\);

-- Location: LCCOMB_X58_Y34_N12
\inst7|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~0_combout\ = (\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & (\inst7|clk_count\(4) & !\inst7|WideOr4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	datad => \inst7|WideOr4~2_combout\,
	combout => \inst7|Selector14~0_combout\);

-- Location: LCCOMB_X57_Y34_N26
\inst7|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~1_combout\ = (\inst7|state.sw1b1~regout\) # ((\inst7|state.sw2b1~regout\) # ((\inst7|state.send~regout\) # (\inst7|state.sab1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw1b1~regout\,
	datab => \inst7|state.sw2b1~regout\,
	datac => \inst7|state.send~regout\,
	datad => \inst7|state.sab1~regout\,
	combout => \inst7|Selector14~1_combout\);

-- Location: LCCOMB_X56_Y34_N16
\inst7|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~2_combout\ = (\inst7|Selector14~1_combout\) # (((\inst7|state.sack11~regout\) # (!\inst7|WideOr4~1_combout\)) # (!\inst7|WideOr3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector14~1_combout\,
	datab => \inst7|WideOr3~2_combout\,
	datac => \inst7|WideOr4~1_combout\,
	datad => \inst7|state.sack11~regout\,
	combout => \inst7|Selector14~2_combout\);

-- Location: LCCOMB_X55_Y34_N4
\inst7|Selector14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~3_combout\ = ((\inst7|state.s0~regout\) # (!\inst7|WideOr5~0_combout\)) # (!\inst7|WideOr3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|WideOr3~3_combout\,
	datac => \inst7|WideOr5~0_combout\,
	datad => \inst7|state.s0~regout\,
	combout => \inst7|Selector14~3_combout\);

-- Location: LCCOMB_X56_Y34_N28
\inst7|Selector14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~4_combout\ = (\inst7|Equal7~0_combout\ & ((\inst7|Selector14~2_combout\) # ((\inst7|Equal5~1_combout\ & \inst7|Selector14~3_combout\)))) # (!\inst7|Equal7~0_combout\ & (((\inst7|Equal5~1_combout\ & \inst7|Selector14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal7~0_combout\,
	datab => \inst7|Selector14~2_combout\,
	datac => \inst7|Equal5~1_combout\,
	datad => \inst7|Selector14~3_combout\,
	combout => \inst7|Selector14~4_combout\);

-- Location: LCCOMB_X59_Y34_N14
\inst7|Selector14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~5_combout\ = (!\inst7|state.s1~regout\ & ((\inst7|Selector14~0_combout\) # (\inst7|Selector14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector14~0_combout\,
	datab => \inst7|Selector14~4_combout\,
	datad => \inst7|state.s1~regout\,
	combout => \inst7|Selector14~5_combout\);

-- Location: LCCOMB_X59_Y34_N16
\inst7|Selector14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~6_combout\ = (\inst7|state.sw_init1~regout\ & (((\inst7|state.sw_init0~regout\ & !\inst7|SCI_WRITE~regout\)))) # (!\inst7|state.sw_init1~regout\ & ((\inst7|state.sw_init0~regout\ & (!\inst7|Selector14~5_combout\)) # 
-- (!\inst7|state.sw_init0~regout\ & ((\inst7|SCI_WRITE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw_init1~regout\,
	datab => \inst7|Selector14~5_combout\,
	datac => \inst7|state.sw_init0~regout\,
	datad => \inst7|SCI_WRITE~regout\,
	combout => \inst7|Selector14~6_combout\);

-- Location: LCCOMB_X56_Y34_N14
\inst7|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~0_combout\ = (\inst7|Equal5~1_combout\ & ((\inst7|state.sack23~regout\) # ((!\inst7|Equal9~0_combout\ & \inst7|state.sw2b3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sack23~regout\,
	datab => \inst7|Equal9~0_combout\,
	datac => \inst7|Equal5~1_combout\,
	datad => \inst7|state.sw2b3~regout\,
	combout => \inst7|Selector30~0_combout\);

-- Location: LCCOMB_X57_Y34_N8
\inst7|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~1_combout\ = (\inst7|Selector30~0_combout\) # ((\inst7|state.sw2b1~regout\ & !\inst7|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector30~0_combout\,
	datac => \inst7|state.sw2b1~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector30~1_combout\);

-- Location: LCCOMB_X57_Y35_N2
\inst7|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux12~0_combout\ = (\inst7|word_count\(1) & (!\inst7|word_count\(2))) # (!\inst7|word_count\(1) & ((\inst7|word_count\(2)) # (\inst7|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|word_count\(1),
	datac => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y35_N12
\inst7|word_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|word_count~0_combout\ = (!\inst7|word_count\(2) & \inst7|word_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|word_count~0_combout\);

-- Location: LCCOMB_X57_Y35_N6
\inst7|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux13~0_combout\ = (\inst7|word_count\(2)) # ((!\inst7|word_count\(1) & \inst7|word_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|word_count\(1),
	datac => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y35_N24
\inst7|word_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|word_count~1_combout\ = (\inst7|word_count\(2) & \inst7|word_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|word_count~1_combout\);

-- Location: LCCOMB_X56_Y35_N28
\inst7|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux9~0_combout\ = (!\inst7|word_count\(2) & ((\inst7|word_count\(1)) # (\inst7|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datab => \inst7|word_count\(1),
	datad => \inst7|word_count\(0),
	combout => \inst7|Mux9~0_combout\);

-- Location: LCCOMB_X56_Y35_N14
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (!\inst7|word_count\(2) & (!\inst7|word_count\(1) & \inst7|word_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datab => \inst7|word_count\(1),
	datad => \inst7|word_count\(0),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y35_N8
\inst7|word_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|word_count~2_combout\ = (\inst7|word_count\(2) & !\inst7|word_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|word_count~2_combout\);

-- Location: LCCOMB_X57_Y34_N6
\inst7|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector15~0_combout\ = (\inst7|Equal5~1_combout\ & ((\inst7|state.s2~regout\) # ((\inst7|state.sab3~regout\ & !\inst7|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab3~regout\,
	datab => \inst7|Equal5~1_combout\,
	datac => \inst7|Equal9~0_combout\,
	datad => \inst7|state.s2~regout\,
	combout => \inst7|Selector15~0_combout\);

-- Location: LCCOMB_X56_Y35_N22
\inst7|SCI_WORD1[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|SCI_WORD1[4]~1_combout\ = (\inst7|word_count\(2) & (\inst7|word_count\(1))) # (!\inst7|word_count\(2) & (!\inst7|word_count\(1) & !\inst7|word_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datab => \inst7|word_count\(1),
	datad => \inst7|word_count\(0),
	combout => \inst7|SCI_WORD1[4]~1_combout\);

-- Location: LCCOMB_X56_Y35_N4
\inst7|SCI_WORD1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|SCI_WORD1[1]~2_combout\ = \inst7|word_count\(0) $ (((!\inst7|word_count\(2) & !\inst7|word_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datab => \inst7|word_count\(1),
	datad => \inst7|word_count\(0),
	combout => \inst7|SCI_WORD1[1]~2_combout\);

-- Location: LCCOMB_X58_Y34_N22
\inst7|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector18~0_combout\ = (!\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & (!\inst7|clk_count\(4) & \inst7|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	datad => \inst7|Equal9~0_combout\,
	combout => \inst7|Selector18~0_combout\);

-- Location: LCCOMB_X56_Y34_N10
\inst7|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector23~0_combout\ = (\inst7|Equal5~1_combout\ & (\inst7|state.sack22~regout\ & ((\inst7|Equal7~0_combout\)))) # (!\inst7|Equal5~1_combout\ & ((\inst7|state.sack23~regout\) # ((\inst7|state.sack22~regout\ & \inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~1_combout\,
	datab => \inst7|state.sack22~regout\,
	datac => \inst7|state.sack23~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector23~0_combout\);

-- Location: LCFF_X31_Y33_N17
\inst2|internal_bpm_clk_32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst2|internal_bpm_clk_32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|internal_bpm_clk_32~regout\);

-- Location: LCCOMB_X57_Y35_N0
\inst7|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~0_combout\ = \inst7|word_count\(2) $ (((\inst7|word_count\(1) & \inst7|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|word_count\(1),
	datac => \inst7|word_count\(2),
	datad => \inst7|word_count\(0),
	combout => \inst7|Add2~0_combout\);

-- Location: LCCOMB_X30_Y33_N28
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (!\inst2|counter\(23) & (!\inst2|counter\(22) & (!\inst2|counter\(21) & !\inst2|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(23),
	datab => \inst2|counter\(22),
	datac => \inst2|counter\(21),
	datad => \inst2|counter\(24),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y33_N30
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (!\inst2|counter\(26) & (!\inst2|counter\(25) & \inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(26),
	datac => \inst2|counter\(25),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y34_N0
\inst2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|counter\(9) & (!\inst2|counter\(10) & (!\inst2|counter\(7) & !\inst2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datab => \inst2|counter\(10),
	datac => \inst2|counter\(7),
	datad => \inst2|counter\(8),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y34_N2
\inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (((!\inst2|counter\(2)) # (!\inst2|counter\(5))) # (!\inst2|counter\(4))) # (!\inst2|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(3),
	datab => \inst2|counter\(4),
	datac => \inst2|counter\(5),
	datad => \inst2|counter\(2),
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y34_N4
\inst2|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (!\inst2|counter\(11) & (\inst2|LessThan0~2_combout\ & ((\inst2|LessThan0~3_combout\) # (!\inst2|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datab => \inst2|counter\(11),
	datac => \inst2|LessThan0~3_combout\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y33_N18
\inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|counter\(13) & (\inst2|counter\(12) & \inst2|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(13),
	datac => \inst2|counter\(12),
	datad => \inst2|counter\(14),
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y33_N10
\inst2|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|counter\(15)) # ((!\inst2|LessThan0~4_combout\ & \inst2|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~4_combout\,
	datac => \inst2|counter\(15),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y33_N6
\inst2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (((!\inst2|counter\(16) & !\inst2|LessThan0~6_combout\)) # (!\inst2|counter\(18))) # (!\inst2|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(17),
	datab => \inst2|counter\(18),
	datac => \inst2|counter\(16),
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y33_N0
\inst2|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~8_combout\ = ((\inst2|counter\(20) & ((\inst2|counter\(19)) # (!\inst2|LessThan0~7_combout\)))) # (!\inst2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(19),
	datab => \inst2|counter\(20),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y33_N16
\inst2|internal_bpm_clk_32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|internal_bpm_clk_32~0_combout\ = \inst2|internal_bpm_clk_32~regout\ $ (\inst2|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|internal_bpm_clk_32~regout\,
	datad => \inst2|LessThan0~8_combout\,
	combout => \inst2|internal_bpm_clk_32~0_combout\);

-- Location: LCCOMB_X59_Y34_N22
\inst7|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector34~0_combout\ = (\inst7|state.sw_init1~regout\ & (\inst7|SCI_WRITE~regout\ & ((\inst7|Equal5~1_combout\) # (!\inst7|state.s2~regout\)))) # (!\inst7|state.sw_init1~regout\ & (((\inst7|Equal5~1_combout\ & \inst7|state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw_init1~regout\,
	datab => \inst7|SCI_WRITE~regout\,
	datac => \inst7|Equal5~1_combout\,
	datad => \inst7|state.s2~regout\,
	combout => \inst7|Selector34~0_combout\);

-- Location: LCCOMB_X58_Y35_N20
\inst7|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~2_combout\ = (\SW~combout\(1) & ((\inst7|state2.sw_init1~regout\) # ((!\inst7|SCI_READY~regout\ & \inst7|state2.sw_ready~regout\)))) # (!\SW~combout\(1) & (((!\inst7|state2.sw_ready~regout\) # (!\inst7|SCI_READY~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_init1~regout\,
	datab => \inst7|SCI_READY~regout\,
	datac => \SW~combout\(1),
	datad => \inst7|state2.sw_ready~regout\,
	combout => \inst7|Selector4~2_combout\);

-- Location: LCCOMB_X56_Y34_N4
\inst7|WideOr3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr3~4_combout\ = (!\inst7|state.sack31~regout\ & (\inst7|WideOr4~1_combout\ & (!\inst7|state.sack21~regout\ & !\inst7|state.sack11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sack31~regout\,
	datab => \inst7|WideOr4~1_combout\,
	datac => \inst7|state.sack21~regout\,
	datad => \inst7|state.sack11~regout\,
	combout => \inst7|WideOr3~4_combout\);

-- Location: LCCOMB_X35_Y21_N2
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst7|BBcount\(0) & ((\inst7|LRDATA\(29)) # ((\inst7|Mux0~8_combout\)))) # (!\inst7|BBcount\(0) & (((\inst7|LRDATA\(12) & !\inst7|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LRDATA\(29),
	datab => \inst7|LRDATA\(12),
	datac => \inst7|BBcount\(0),
	datad => \inst7|Mux0~8_combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: CLKCTRL_G8
\inst2|internal_bpm_clk_32~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|internal_bpm_clk_32~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|internal_bpm_clk_32~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PLL_1
\inst6|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 13,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 12,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 1.000000",
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \inst6|altpll_component|pll_INCLK_bus\,
	clk => \inst6|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\inst6|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y34_N0
\inst7|clk_count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[0]~6_combout\ = \inst7|clk_count\(0) $ (VCC)
-- \inst7|clk_count[0]~7\ = CARRY(\inst7|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_count\(0),
	datad => VCC,
	combout => \inst7|clk_count[0]~6_combout\,
	cout => \inst7|clk_count[0]~7\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: CLKCTRL_G6
\SW[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[0]~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y34_N2
\inst7|clk_count[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[1]~8_combout\ = (\inst7|clk_count\(1) & (!\inst7|clk_count[0]~7\)) # (!\inst7|clk_count\(1) & ((\inst7|clk_count[0]~7\) # (GND)))
-- \inst7|clk_count[1]~9\ = CARRY((!\inst7|clk_count[0]~7\) # (!\inst7|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_count\(1),
	datad => VCC,
	cin => \inst7|clk_count[0]~7\,
	combout => \inst7|clk_count[1]~8_combout\,
	cout => \inst7|clk_count[1]~9\);

-- Location: LCCOMB_X58_Y34_N4
\inst7|clk_count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[2]~10_combout\ = (\inst7|clk_count\(2) & (\inst7|clk_count[1]~9\ $ (GND))) # (!\inst7|clk_count\(2) & (!\inst7|clk_count[1]~9\ & VCC))
-- \inst7|clk_count[2]~11\ = CARRY((\inst7|clk_count\(2) & !\inst7|clk_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_count\(2),
	datad => VCC,
	cin => \inst7|clk_count[1]~9\,
	combout => \inst7|clk_count[2]~10_combout\,
	cout => \inst7|clk_count[2]~11\);

-- Location: LCCOMB_X59_Y34_N20
\inst7|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector10~0_combout\ = (\inst7|Equal7~0_combout\ & (!\inst7|state.send~regout\ & ((\inst7|state.sw_init0~regout\) # (!\inst7|SCI_WRITE~regout\)))) # (!\inst7|Equal7~0_combout\ & (((\inst7|state.sw_init0~regout\) # (!\inst7|SCI_WRITE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal7~0_combout\,
	datab => \inst7|state.send~regout\,
	datac => \inst7|state.sw_init0~regout\,
	datad => \inst7|SCI_WRITE~regout\,
	combout => \inst7|Selector10~0_combout\);

-- Location: LCFF_X59_Y34_N21
\inst7|state.sw_init0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector10~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw_init0~regout\);

-- Location: LCCOMB_X59_Y34_N4
\inst7|Selector14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~8_combout\ = (!\inst7|state.sw_init1~regout\ & \inst7|state.sw_init0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw_init1~regout\,
	datac => \inst7|state.sw_init0~regout\,
	combout => \inst7|Selector14~8_combout\);

-- Location: LCFF_X58_Y34_N5
\inst7|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[2]~10_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(2));

-- Location: LCCOMB_X58_Y34_N8
\inst7|clk_count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[4]~14_combout\ = (\inst7|clk_count\(4) & (\inst7|clk_count[3]~13\ $ (GND))) # (!\inst7|clk_count\(4) & (!\inst7|clk_count[3]~13\ & VCC))
-- \inst7|clk_count[4]~15\ = CARRY((\inst7|clk_count\(4) & !\inst7|clk_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_count\(4),
	datad => VCC,
	cin => \inst7|clk_count[3]~13\,
	combout => \inst7|clk_count[4]~14_combout\,
	cout => \inst7|clk_count[4]~15\);

-- Location: LCFF_X58_Y34_N9
\inst7|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[4]~14_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(4));

-- Location: LCCOMB_X58_Y34_N18
\inst7|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~1_combout\ = (!\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & !\inst7|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	combout => \inst7|Equal5~1_combout\);

-- Location: LCCOMB_X58_Y34_N28
\inst7|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector13~1_combout\ = (\inst7|Selector13~0_combout\) # ((\inst7|Equal5~1_combout\ & \inst7|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector13~0_combout\,
	datab => \inst7|Equal5~1_combout\,
	datac => \inst7|state.s0~regout\,
	combout => \inst7|Selector13~1_combout\);

-- Location: LCFF_X58_Y34_N29
\inst7|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector13~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.s1~regout\);

-- Location: LCCOMB_X58_Y34_N10
\inst7|clk_count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[5]~19_combout\ = \inst7|clk_count[4]~15\ $ (\inst7|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|clk_count\(5),
	cin => \inst7|clk_count[4]~15\,
	combout => \inst7|clk_count[5]~19_combout\);

-- Location: LCFF_X58_Y34_N11
\inst7|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[5]~19_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(5));

-- Location: LCCOMB_X59_Y34_N26
\inst7|Selector14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~7_combout\ = (\inst7|Equal5~0_combout\ & (\inst7|state.s1~regout\ & (\inst7|clk_count\(5) & !\inst7|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~0_combout\,
	datab => \inst7|state.s1~regout\,
	datac => \inst7|clk_count\(5),
	datad => \inst7|clk_count\(4),
	combout => \inst7|Selector14~7_combout\);

-- Location: LCCOMB_X59_Y34_N30
\inst7|clk_count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[4]~16_combout\ = (!\inst7|WideOr3~4_combout\ & ((\inst7|Selector14~7_combout\) # ((!\inst7|state.s1~regout\ & \inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|WideOr3~4_combout\,
	datab => \inst7|state.s1~regout\,
	datac => \inst7|Equal7~0_combout\,
	datad => \inst7|Selector14~7_combout\,
	combout => \inst7|clk_count[4]~16_combout\);

-- Location: LCCOMB_X58_Y34_N24
\inst7|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal8~0_combout\ = (\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & \inst7|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	combout => \inst7|Equal8~0_combout\);

-- Location: LCCOMB_X57_Y34_N20
\inst7|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector31~0_combout\ = (\inst7|state.sw2b1~regout\ & ((\inst7|Equal7~0_combout\) # ((!\inst7|Equal8~0_combout\ & \inst7|state.sw2b2~regout\)))) # (!\inst7|state.sw2b1~regout\ & (!\inst7|Equal8~0_combout\ & (\inst7|state.sw2b2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw2b1~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sw2b2~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector31~0_combout\);

-- Location: LCFF_X57_Y34_N21
\inst7|state.sw2b2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector31~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw2b2~regout\);

-- Location: LCCOMB_X57_Y34_N10
\inst7|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector28~0_combout\ = (\inst7|state.sw1b1~regout\ & ((\inst7|Equal7~0_combout\) # ((!\inst7|Equal8~0_combout\ & \inst7|state.sw1b2~regout\)))) # (!\inst7|state.sw1b1~regout\ & (!\inst7|Equal8~0_combout\ & (\inst7|state.sw1b2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw1b1~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sw1b2~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector28~0_combout\);

-- Location: LCFF_X57_Y34_N11
\inst7|state.sw1b2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector28~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw1b2~regout\);

-- Location: LCCOMB_X57_Y34_N22
\inst7|WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~2_combout\ = (!\inst7|state.sab2~regout\ & (!\inst7|state.sw2b2~regout\ & !\inst7|state.sw1b2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab2~regout\,
	datac => \inst7|state.sw2b2~regout\,
	datad => \inst7|state.sw1b2~regout\,
	combout => \inst7|WideOr4~2_combout\);

-- Location: LCCOMB_X59_Y34_N24
\inst7|clk_count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[4]~17_combout\ = (!\inst7|WideOr4~2_combout\ & ((\inst7|Selector14~7_combout\) # ((\inst7|Equal8~0_combout\ & !\inst7|state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal8~0_combout\,
	datab => \inst7|state.s1~regout\,
	datac => \inst7|WideOr4~2_combout\,
	datad => \inst7|Selector14~7_combout\,
	combout => \inst7|clk_count[4]~17_combout\);

-- Location: LCCOMB_X59_Y34_N18
\inst7|clk_count[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_count[4]~18_combout\ = (\inst7|clk_count[4]~16_combout\) # ((\inst7|clk_count[4]~17_combout\) # ((\inst7|state.s1~regout\ & \inst7|Selector14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.s1~regout\,
	datab => \inst7|clk_count[4]~16_combout\,
	datac => \inst7|clk_count[4]~17_combout\,
	datad => \inst7|Selector14~7_combout\,
	combout => \inst7|clk_count[4]~18_combout\);

-- Location: LCFF_X58_Y34_N1
\inst7|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[0]~6_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(0));

-- Location: LCFF_X58_Y34_N3
\inst7|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|clk_count[1]~8_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sclr => \inst7|clk_count[4]~18_combout\,
	ena => \inst7|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_count\(1));

-- Location: LCCOMB_X58_Y34_N14
\inst7|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~0_combout\ = (\inst7|clk_count\(3) & (\inst7|clk_count\(1) & (\inst7|clk_count\(2) & \inst7|clk_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(3),
	datab => \inst7|clk_count\(1),
	datac => \inst7|clk_count\(2),
	datad => \inst7|clk_count\(0),
	combout => \inst7|Equal5~0_combout\);

-- Location: LCCOMB_X58_Y34_N30
\inst7|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal7~0_combout\ = (!\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & \inst7|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	combout => \inst7|Equal7~0_combout\);

-- Location: LCCOMB_X57_Y34_N18
\inst7|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector32~0_combout\ = (\inst7|state.sw2b2~regout\ & ((\inst7|Equal8~0_combout\) # ((\inst7|state.sw2b3~regout\ & !\inst7|Equal5~1_combout\)))) # (!\inst7|state.sw2b2~regout\ & (((\inst7|state.sw2b3~regout\ & !\inst7|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw2b2~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sw2b3~regout\,
	datad => \inst7|Equal5~1_combout\,
	combout => \inst7|Selector32~0_combout\);

-- Location: LCFF_X57_Y34_N19
\inst7|state.sw2b3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector32~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw2b3~regout\);

-- Location: LCCOMB_X56_Y34_N6
\inst7|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector24~0_combout\ = (\inst7|Selector18~0_combout\ & ((\inst7|state.sw2b3~regout\) # ((\inst7|state.sack31~regout\ & !\inst7|Equal7~0_combout\)))) # (!\inst7|Selector18~0_combout\ & (((\inst7|state.sack31~regout\ & !\inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector18~0_combout\,
	datab => \inst7|state.sw2b3~regout\,
	datac => \inst7|state.sack31~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector24~0_combout\);

-- Location: LCFF_X56_Y34_N7
\inst7|state.sack31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector24~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack31~regout\);

-- Location: LCCOMB_X56_Y34_N12
\inst7|state.sack32~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.sack32~feeder_combout\ = \inst7|state.sack31~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.sack31~regout\,
	combout => \inst7|state.sack32~feeder_combout\);

-- Location: LCFF_X56_Y34_N13
\inst7|state.sack32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|state.sack32~feeder_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack32~regout\);

-- Location: LCCOMB_X56_Y34_N22
\inst7|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector26~0_combout\ = (\inst7|Equal5~1_combout\ & (\inst7|Equal7~0_combout\ & ((\inst7|state.sack32~regout\)))) # (!\inst7|Equal5~1_combout\ & ((\inst7|state.sack33~regout\) # ((\inst7|Equal7~0_combout\ & \inst7|state.sack32~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~1_combout\,
	datab => \inst7|Equal7~0_combout\,
	datac => \inst7|state.sack33~regout\,
	datad => \inst7|state.sack32~regout\,
	combout => \inst7|Selector26~0_combout\);

-- Location: LCFF_X56_Y34_N23
\inst7|state.sack33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector26~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack33~regout\);

-- Location: LCCOMB_X56_Y34_N0
\inst7|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector33~0_combout\ = (\inst7|Equal5~1_combout\ & ((\inst7|state.sack33~regout\) # ((\inst7|state.send~regout\ & !\inst7|Equal7~0_combout\)))) # (!\inst7|Equal5~1_combout\ & (((\inst7|state.send~regout\ & !\inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~1_combout\,
	datab => \inst7|state.sack33~regout\,
	datac => \inst7|state.send~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector33~0_combout\);

-- Location: LCFF_X56_Y34_N1
\inst7|state.send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector33~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.send~regout\);

-- Location: LCCOMB_X58_Y35_N26
\inst7|Selector34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector34~1_combout\ = (\inst7|state.send~regout\ & (((\inst7|SCI_READY~regout\ & !\inst7|Equal7~0_combout\)))) # (!\inst7|state.send~regout\ & ((\inst7|Selector34~0_combout\) # ((\inst7|SCI_READY~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector34~0_combout\,
	datab => \inst7|state.send~regout\,
	datac => \inst7|SCI_READY~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector34~1_combout\);

-- Location: LCFF_X58_Y35_N27
\inst7|SCI_READY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector34~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_READY~regout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X58_Y35_N2
\inst7|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~3_combout\ = (\inst7|state2.sw_init1~regout\ & ((\SW~combout\(1)) # ((\inst7|SCI_READY~regout\ & \inst7|state2.sw_ready~regout\)))) # (!\inst7|state2.sw_init1~regout\ & (\inst7|SCI_READY~regout\ & ((\inst7|state2.sw_ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_init1~regout\,
	datab => \inst7|SCI_READY~regout\,
	datac => \SW~combout\(1),
	datad => \inst7|state2.sw_ready~regout\,
	combout => \inst7|Selector6~3_combout\);

-- Location: LCCOMB_X58_Y35_N28
\inst7|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~4_combout\ = (\inst7|state2.sw_write~regout\ & ((!\inst7|word_count\(3)))) # (!\inst7|state2.sw_write~regout\ & (\inst7|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|Selector6~3_combout\,
	datad => \inst7|word_count\(3),
	combout => \inst7|Selector6~4_combout\);

-- Location: LCFF_X58_Y35_N29
\inst7|state2.sw_ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector6~4_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state2.sw_ready~regout\);

-- Location: LCCOMB_X58_Y35_N22
\inst7|word_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|word_count~3_combout\ = (\inst7|state2.sw_init1~regout\) # (\inst7|state2.sw_ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_init1~regout\,
	datad => \inst7|state2.sw_ready~regout\,
	combout => \inst7|word_count~3_combout\);

-- Location: LCCOMB_X58_Y35_N18
\inst7|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~0_combout\ = (\inst7|word_count\(0) & ((\inst7|word_count~3_combout\) # ((\inst7|state2.sw_write~regout\ & \inst7|word_count\(3))))) # (!\inst7|word_count\(0) & (\inst7|state2.sw_write~regout\ & (!\inst7|word_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|word_count\(3),
	datac => \inst7|word_count\(0),
	datad => \inst7|word_count~3_combout\,
	combout => \inst7|Selector3~0_combout\);

-- Location: LCFF_X58_Y35_N19
\inst7|word_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector3~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|word_count\(0));

-- Location: LCCOMB_X58_Y35_N12
\inst7|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector7~0_combout\ = (!\inst7|SCI_READY~regout\ & (!\inst7|state2.sw_write~regout\ & \inst7|state2.sw_ready~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|SCI_READY~regout\,
	datac => \inst7|state2.sw_write~regout\,
	datad => \inst7|state2.sw_ready~regout\,
	combout => \inst7|Selector7~0_combout\);

-- Location: LCFF_X58_Y35_N13
\inst7|state2.sw_write\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector7~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state2.sw_write~regout\);

-- Location: LCCOMB_X58_Y35_N6
\inst7|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~3_combout\ = (\inst7|state2.sw_write~regout\ & (((!\inst7|word_count\(3))))) # (!\inst7|state2.sw_write~regout\ & ((\inst7|Selector4~2_combout\) # ((\inst7|state2.sw_init0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector4~2_combout\,
	datab => \inst7|word_count\(3),
	datac => \inst7|state2.sw_init0~regout\,
	datad => \inst7|state2.sw_write~regout\,
	combout => \inst7|Selector4~3_combout\);

-- Location: LCFF_X58_Y35_N7
\inst7|state2.sw_init0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector4~3_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state2.sw_init0~regout\);

-- Location: LCCOMB_X58_Y35_N0
\inst7|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~0_combout\ = (\inst7|state2.sw_init1~regout\ & ((\inst7|SCI_READY~regout\) # ((!\inst7|state2.sw_ready~regout\)))) # (!\inst7|state2.sw_init1~regout\ & (!\inst7|state2.sw_init0~regout\ & ((\inst7|SCI_READY~regout\) # 
-- (!\inst7|state2.sw_ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_init1~regout\,
	datab => \inst7|SCI_READY~regout\,
	datac => \inst7|state2.sw_init0~regout\,
	datad => \inst7|state2.sw_ready~regout\,
	combout => \inst7|Selector5~0_combout\);

-- Location: LCCOMB_X58_Y35_N10
\inst7|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~1_combout\ = (!\inst7|state2.sw_write~regout\ & (\inst7|Selector5~0_combout\ & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|Selector5~0_combout\,
	datac => \SW~combout\(1),
	combout => \inst7|Selector5~1_combout\);

-- Location: LCFF_X58_Y35_N11
\inst7|state2.sw_init1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector5~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state2.sw_init1~regout\);

-- Location: LCCOMB_X58_Y35_N8
\inst7|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector2~0_combout\ = (\inst7|state2.sw_ready~regout\) # ((\inst7|state2.sw_init1~regout\) # ((\inst7|state2.sw_write~regout\ & \inst7|word_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|state2.sw_ready~regout\,
	datac => \inst7|state2.sw_init1~regout\,
	datad => \inst7|word_count\(3),
	combout => \inst7|Selector2~0_combout\);

-- Location: LCCOMB_X57_Y35_N4
\inst7|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~0_combout\ = (\inst7|Add2~0_combout\ & ((\inst7|SCI_WORD1[4]~3_combout\) # ((\inst7|Selector2~0_combout\ & \inst7|word_count\(2))))) # (!\inst7|Add2~0_combout\ & (\inst7|Selector2~0_combout\ & (\inst7|word_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~0_combout\,
	datab => \inst7|Selector2~0_combout\,
	datac => \inst7|word_count\(2),
	datad => \inst7|SCI_WORD1[4]~3_combout\,
	combout => \inst7|Selector1~0_combout\);

-- Location: LCFF_X57_Y35_N5
\inst7|word_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector1~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|word_count\(2));

-- Location: LCCOMB_X58_Y35_N4
\inst7|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~0_combout\ = (\inst7|word_count\(1) & (\inst7|word_count\(0) & (\inst7|word_count\(2) & \inst7|state2.sw_write~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(1),
	datab => \inst7|word_count\(0),
	datac => \inst7|word_count\(2),
	datad => \inst7|state2.sw_write~regout\,
	combout => \inst7|Selector0~0_combout\);

-- Location: LCCOMB_X58_Y35_N30
\inst7|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~1_combout\ = (\inst7|Selector0~0_combout\) # ((\inst7|word_count\(3) & ((\inst7|state2.sw_write~regout\) # (\inst7|word_count~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|Selector0~0_combout\,
	datac => \inst7|word_count\(3),
	datad => \inst7|word_count~3_combout\,
	combout => \inst7|Selector0~1_combout\);

-- Location: LCFF_X58_Y35_N31
\inst7|word_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector0~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|word_count\(3));

-- Location: LCCOMB_X58_Y35_N24
\inst7|SCI_WORD1[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|SCI_WORD1[4]~3_combout\ = (!\inst7|word_count\(3) & \inst7|state2.sw_write~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|word_count\(3),
	datad => \inst7|state2.sw_write~regout\,
	combout => \inst7|SCI_WORD1[4]~3_combout\);

-- Location: LCFF_X58_Y35_N25
\inst7|SCI_WRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|SCI_WORD1[4]~3_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WRITE~regout\);

-- Location: LCCOMB_X59_Y34_N12
\inst7|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector11~0_combout\ = (!\inst7|SCI_WRITE~regout\ & !\inst7|state.sw_init0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|SCI_WRITE~regout\,
	datac => \inst7|state.sw_init0~regout\,
	combout => \inst7|Selector11~0_combout\);

-- Location: LCCOMB_X59_Y34_N10
\inst7|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector11~1_combout\ = (!\inst7|Selector14~7_combout\ & ((\inst7|Selector14~6_combout\ & (\inst7|state.sw_init1~regout\)) # (!\inst7|Selector14~6_combout\ & ((\inst7|Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector14~6_combout\,
	datab => \inst7|Selector14~7_combout\,
	datac => \inst7|state.sw_init1~regout\,
	datad => \inst7|Selector11~0_combout\,
	combout => \inst7|Selector11~1_combout\);

-- Location: LCFF_X59_Y34_N11
\inst7|state.sw_init1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector11~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw_init1~regout\);

-- Location: LCCOMB_X59_Y34_N2
\inst7|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector12~0_combout\ = (\inst7|SCI_WRITE~regout\ & \inst7|state.sw_init1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|SCI_WRITE~regout\,
	datad => \inst7|state.sw_init1~regout\,
	combout => \inst7|Selector12~0_combout\);

-- Location: LCCOMB_X59_Y34_N8
\inst7|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector12~1_combout\ = (!\inst7|Selector14~7_combout\ & ((\inst7|Selector14~6_combout\ & ((\inst7|state.s0~regout\))) # (!\inst7|Selector14~6_combout\ & (\inst7|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector14~6_combout\,
	datab => \inst7|Selector12~0_combout\,
	datac => \inst7|state.s0~regout\,
	datad => \inst7|Selector14~7_combout\,
	combout => \inst7|Selector12~1_combout\);

-- Location: LCFF_X59_Y34_N9
\inst7|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector12~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.s0~regout\);

-- Location: LCCOMB_X59_Y34_N0
\inst7|WideOr4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~4_combout\ = (!\inst7|state.sw_init1~regout\ & (!\inst7|state.s0~regout\ & \inst7|state.sw_init0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw_init1~regout\,
	datab => \inst7|state.s0~regout\,
	datac => \inst7|state.sw_init0~regout\,
	combout => \inst7|WideOr4~4_combout\);

-- Location: LCCOMB_X59_Y34_N28
\inst7|state.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.s2~0_combout\ = (\inst7|Selector14~7_combout\) # ((\inst7|Selector14~6_combout\ & \inst7|state.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector14~6_combout\,
	datac => \inst7|state.s2~regout\,
	datad => \inst7|Selector14~7_combout\,
	combout => \inst7|state.s2~0_combout\);

-- Location: LCFF_X59_Y34_N29
\inst7|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|state.s2~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.s2~regout\);

-- Location: LCCOMB_X55_Y34_N6
\inst7|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector42~0_combout\ = (!\inst7|state.s2~regout\ & (\inst7|bit_count\(0) $ (\inst7|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(0),
	datac => \inst7|bit_count\(1),
	datad => \inst7|state.s2~regout\,
	combout => \inst7|Selector42~0_combout\);

-- Location: LCCOMB_X57_Y34_N14
\inst7|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector29~0_combout\ = (\inst7|state.sw1b2~regout\ & ((\inst7|Equal8~0_combout\) # ((\inst7|state.sw1b3~regout\ & !\inst7|Equal5~1_combout\)))) # (!\inst7|state.sw1b2~regout\ & (((\inst7|state.sw1b3~regout\ & !\inst7|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw1b2~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sw1b3~regout\,
	datad => \inst7|Equal5~1_combout\,
	combout => \inst7|Selector29~0_combout\);

-- Location: LCFF_X57_Y34_N15
\inst7|state.sw1b3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector29~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw1b3~regout\);

-- Location: LCCOMB_X57_Y34_N4
\inst7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr5~0_combout\ = (!\inst7|state.sab3~regout\ & (!\inst7|state.sw2b3~regout\ & (!\inst7|state.sw1b3~regout\ & !\inst7|state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab3~regout\,
	datab => \inst7|state.sw2b3~regout\,
	datac => \inst7|state.sw1b3~regout\,
	datad => \inst7|state.s2~regout\,
	combout => \inst7|WideOr5~0_combout\);

-- Location: LCCOMB_X58_Y34_N26
\inst7|bit_count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|bit_count[2]~0_combout\ = (!\inst7|clk_count\(5) & (\inst7|Equal5~0_combout\ & (!\inst7|clk_count\(4) & !\inst7|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_count\(5),
	datab => \inst7|Equal5~0_combout\,
	datac => \inst7|clk_count\(4),
	datad => \inst7|WideOr5~0_combout\,
	combout => \inst7|bit_count[2]~0_combout\);

-- Location: LCFF_X55_Y34_N7
\inst7|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector42~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|bit_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bit_count\(1));

-- Location: LCCOMB_X57_Y35_N30
\inst7|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector2~1_combout\ = (\inst7|word_count\(1) & ((\inst7|Selector2~0_combout\) # ((\inst7|SCI_WORD1[4]~3_combout\ & !\inst7|word_count\(0))))) # (!\inst7|word_count\(1) & (\inst7|SCI_WORD1[4]~3_combout\ & ((\inst7|word_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|SCI_WORD1[4]~3_combout\,
	datab => \inst7|Selector2~0_combout\,
	datac => \inst7|word_count\(1),
	datad => \inst7|word_count\(0),
	combout => \inst7|Selector2~1_combout\);

-- Location: LCFF_X57_Y35_N31
\inst7|word_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector2~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|word_count\(1));

-- Location: LCCOMB_X56_Y35_N24
\inst7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = \inst7|word_count\(2) $ (\inst7|word_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datad => \inst7|word_count\(1),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y35_N16
\inst7|SCI_WORD1[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|SCI_WORD1[4]~0_combout\ = (\inst7|state2.sw_write~regout\ & (!\inst7|word_count\(3) & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state2.sw_write~regout\,
	datab => \inst7|word_count\(3),
	datad => \SW~combout\(0),
	combout => \inst7|SCI_WORD1[4]~0_combout\);

-- Location: LCFF_X56_Y35_N25
\inst7|SCI_WORD1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux2~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD1\(3));

-- Location: LCCOMB_X56_Y35_N10
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst7|word_count\(2) & !\inst7|word_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|word_count\(2),
	datad => \inst7|word_count\(1),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCFF_X56_Y35_N11
\inst7|SCI_WORD1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux3~0_combout\,
	ena => \inst7|SCI_WORD1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|SCI_WORD1\(2));

-- Location: LCCOMB_X56_Y35_N2
\inst7|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~2_combout\ = (\inst7|Mux15~1_combout\ & ((\inst7|bit_count\(1)) # ((\inst7|SCI_WORD1\(3))))) # (!\inst7|Mux15~1_combout\ & (!\inst7|bit_count\(1) & ((\inst7|SCI_WORD1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux15~1_combout\,
	datab => \inst7|bit_count\(1),
	datac => \inst7|SCI_WORD1\(3),
	datad => \inst7|SCI_WORD1\(2),
	combout => \inst7|Mux15~2_combout\);

-- Location: LCCOMB_X55_Y34_N12
\inst7|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector43~0_combout\ = (!\inst7|bit_count\(0) & !\inst7|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|bit_count\(0),
	datad => \inst7|state.s2~regout\,
	combout => \inst7|Selector43~0_combout\);

-- Location: LCFF_X55_Y34_N13
\inst7|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector43~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|bit_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bit_count\(0));

-- Location: LCCOMB_X55_Y34_N0
\inst7|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector41~0_combout\ = (!\inst7|state.s2~regout\ & (\inst7|bit_count\(2) $ (((\inst7|bit_count\(1) & \inst7|bit_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(1),
	datab => \inst7|state.s2~regout\,
	datac => \inst7|bit_count\(2),
	datad => \inst7|bit_count\(0),
	combout => \inst7|Selector41~0_combout\);

-- Location: LCFF_X55_Y34_N1
\inst7|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector41~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|bit_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bit_count\(2));

-- Location: LCCOMB_X55_Y34_N22
\inst7|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal9~0_combout\ = (\inst7|bit_count\(1) & (\inst7|bit_count\(2) & \inst7|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(1),
	datab => \inst7|bit_count\(2),
	datad => \inst7|bit_count\(0),
	combout => \inst7|Equal9~0_combout\);

-- Location: LCCOMB_X57_Y34_N24
\inst7|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector17~0_combout\ = (\inst7|state.sab2~regout\ & ((\inst7|Equal8~0_combout\) # ((\inst7|state.sab3~regout\ & !\inst7|Equal5~1_combout\)))) # (!\inst7|state.sab2~regout\ & (((\inst7|state.sab3~regout\ & !\inst7|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab2~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sab3~regout\,
	datad => \inst7|Equal5~1_combout\,
	combout => \inst7|Selector17~0_combout\);

-- Location: LCFF_X57_Y34_N25
\inst7|state.sab3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector17~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sab3~regout\);

-- Location: LCCOMB_X56_Y34_N30
\inst7|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector18~1_combout\ = (\inst7|Selector18~0_combout\ & ((\inst7|state.sab3~regout\) # ((\inst7|state.sack11~regout\ & !\inst7|Equal7~0_combout\)))) # (!\inst7|Selector18~0_combout\ & (((\inst7|state.sack11~regout\ & !\inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector18~0_combout\,
	datab => \inst7|state.sab3~regout\,
	datac => \inst7|state.sack11~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector18~1_combout\);

-- Location: LCFF_X56_Y34_N31
\inst7|state.sack11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector18~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack11~regout\);

-- Location: LCCOMB_X56_Y34_N26
\inst7|state.sack12~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.sack12~feeder_combout\ = \inst7|state.sack11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.sack11~regout\,
	combout => \inst7|state.sack12~feeder_combout\);

-- Location: LCFF_X56_Y34_N27
\inst7|state.sack12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|state.sack12~feeder_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack12~regout\);

-- Location: LCCOMB_X56_Y34_N20
\inst7|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector20~0_combout\ = (\inst7|Equal5~1_combout\ & (\inst7|state.sack12~regout\ & ((\inst7|Equal7~0_combout\)))) # (!\inst7|Equal5~1_combout\ & ((\inst7|state.sack13~regout\) # ((\inst7|state.sack12~regout\ & \inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~1_combout\,
	datab => \inst7|state.sack12~regout\,
	datac => \inst7|state.sack13~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector20~0_combout\);

-- Location: LCFF_X56_Y34_N21
\inst7|state.sack13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector20~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack13~regout\);

-- Location: LCCOMB_X58_Y34_N20
\inst7|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector27~0_combout\ = (\inst7|state.sack13~regout\) # ((!\inst7|Equal9~0_combout\ & \inst7|state.sw1b3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal9~0_combout\,
	datac => \inst7|state.sack13~regout\,
	datad => \inst7|state.sw1b3~regout\,
	combout => \inst7|Selector27~0_combout\);

-- Location: LCCOMB_X57_Y34_N12
\inst7|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector27~1_combout\ = (\inst7|Equal5~1_combout\ & ((\inst7|Selector27~0_combout\) # ((!\inst7|Equal7~0_combout\ & \inst7|state.sw1b1~regout\)))) # (!\inst7|Equal5~1_combout\ & (!\inst7|Equal7~0_combout\ & (\inst7|state.sw1b1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~1_combout\,
	datab => \inst7|Equal7~0_combout\,
	datac => \inst7|state.sw1b1~regout\,
	datad => \inst7|Selector27~0_combout\,
	combout => \inst7|Selector27~1_combout\);

-- Location: LCFF_X57_Y34_N13
\inst7|state.sw1b1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector27~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sw1b1~regout\);

-- Location: LCCOMB_X57_Y34_N0
\inst7|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~3_combout\ = (\inst7|state.sw1b2~regout\) # ((\inst7|state.sw1b3~regout\) # (\inst7|state.sw1b1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw1b2~regout\,
	datac => \inst7|state.sw1b3~regout\,
	datad => \inst7|state.sw1b1~regout\,
	combout => \inst7|Selector9~3_combout\);

-- Location: LCCOMB_X56_Y35_N20
\inst7|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~4_combout\ = (\inst7|Selector9~3_combout\ & ((\inst7|Mux15~0_combout\) # ((\inst7|Mux15~2_combout\ & \inst7|bit_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux15~0_combout\,
	datab => \inst7|Mux15~2_combout\,
	datac => \inst7|bit_count\(2),
	datad => \inst7|Selector9~3_combout\,
	combout => \inst7|Selector9~4_combout\);

-- Location: LCCOMB_X55_Y34_N18
\inst7|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux14~0_combout\ = (\inst7|bit_count\(1) & (!\inst7|bit_count\(2))) # (!\inst7|bit_count\(1) & (\inst7|bit_count\(2) & \inst7|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bit_count\(1),
	datab => \inst7|bit_count\(2),
	datad => \inst7|bit_count\(0),
	combout => \inst7|Mux14~0_combout\);

-- Location: LCCOMB_X57_Y34_N16
\inst7|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector16~0_combout\ = (\inst7|state.sab1~regout\ & ((\inst7|Equal7~0_combout\) # ((!\inst7|Equal8~0_combout\ & \inst7|state.sab2~regout\)))) # (!\inst7|state.sab1~regout\ & (!\inst7|Equal8~0_combout\ & (\inst7|state.sab2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab1~regout\,
	datab => \inst7|Equal8~0_combout\,
	datac => \inst7|state.sab2~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector16~0_combout\);

-- Location: LCFF_X57_Y34_N17
\inst7|state.sab2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector16~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sab2~regout\);

-- Location: LCCOMB_X57_Y34_N30
\inst7|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector15~1_combout\ = (\inst7|Selector15~0_combout\) # ((\inst7|state.sab1~regout\ & !\inst7|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector15~0_combout\,
	datac => \inst7|state.sab1~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector15~1_combout\);

-- Location: LCFF_X57_Y34_N31
\inst7|state.sab1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector15~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sab1~regout\);

-- Location: LCCOMB_X57_Y34_N2
\inst7|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~2_combout\ = (\inst7|Mux14~0_combout\ & ((\inst7|state.sab3~regout\) # ((\inst7|state.sab2~regout\) # (\inst7|state.sab1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sab3~regout\,
	datab => \inst7|Mux14~0_combout\,
	datac => \inst7|state.sab2~regout\,
	datad => \inst7|state.sab1~regout\,
	combout => \inst7|Selector9~2_combout\);

-- Location: LCCOMB_X56_Y35_N26
\inst7|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~5_combout\ = (\inst7|Selector9~1_combout\) # (((\inst7|Selector9~4_combout\) # (\inst7|Selector9~2_combout\)) # (!\inst7|WideOr4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector9~1_combout\,
	datab => \inst7|WideOr4~4_combout\,
	datac => \inst7|Selector9~4_combout\,
	datad => \inst7|Selector9~2_combout\,
	combout => \inst7|Selector9~5_combout\);

-- Location: LCFF_X56_Y35_N27
\inst7|I2C_SDAT~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector9~5_combout\,
	ena => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|I2C_SDAT~reg0_regout\);

-- Location: LCCOMB_X56_Y34_N8
\inst7|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector21~0_combout\ = (\inst7|Selector18~0_combout\ & ((\inst7|state.sw1b3~regout\) # ((\inst7|state.sack21~regout\ & !\inst7|Equal7~0_combout\)))) # (!\inst7|Selector18~0_combout\ & (((\inst7|state.sack21~regout\ & !\inst7|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector18~0_combout\,
	datab => \inst7|state.sw1b3~regout\,
	datac => \inst7|state.sack21~regout\,
	datad => \inst7|Equal7~0_combout\,
	combout => \inst7|Selector21~0_combout\);

-- Location: LCFF_X56_Y34_N9
\inst7|state.sack21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Selector21~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack21~regout\);

-- Location: LCCOMB_X56_Y34_N18
\inst7|WideOr3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr3~2_combout\ = (!\inst7|state.sack31~regout\ & !\inst7|state.sack21~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sack31~regout\,
	datac => \inst7|state.sack21~regout\,
	combout => \inst7|WideOr3~2_combout\);

-- Location: LCFF_X56_Y34_N25
\inst7|state.sack22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst7|state.sack21~regout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst7|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.sack22~regout\);

-- Location: LCCOMB_X56_Y34_N24
\inst7|WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~1_combout\ = (!\inst7|state.sack32~regout\ & (!\inst7|state.sack22~regout\ & !\inst7|state.sack12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sack32~regout\,
	datac => \inst7|state.sack22~regout\,
	datad => \inst7|state.sack12~regout\,
	combout => \inst7|WideOr4~1_combout\);

-- Location: LCCOMB_X55_Y34_N26
\inst7|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr3~combout\ = (\inst7|WideOr3~3_combout\ & (\inst7|WideOr3~2_combout\ & (\inst7|WideOr4~1_combout\ & !\inst7|state.sack11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|WideOr3~3_combout\,
	datab => \inst7|WideOr3~2_combout\,
	datac => \inst7|WideOr4~1_combout\,
	datad => \inst7|state.sack11~regout\,
	combout => \inst7|WideOr3~combout\);

-- Location: LCFF_X55_Y34_N27
\inst7|I2C_SDAT~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|WideOr3~combout\,
	ena => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|I2C_SDAT~en_regout\);

-- Location: LCCOMB_X3_Y35_N12
\inst7|Mcount~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mcount~0_combout\ = !\inst7|Mcount~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mcount~regout\,
	combout => \inst7|Mcount~0_combout\);

-- Location: LCFF_X3_Y35_N13
\inst7|Mcount\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mcount~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Mcount~regout\);

-- Location: LCCOMB_X3_Y35_N0
\inst7|AUD_MCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|AUD_MCLK~0_combout\ = !\inst7|Mcount~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Mcount~regout\,
	combout => \inst7|AUD_MCLK~0_combout\);

-- Location: LCFF_X3_Y35_N1
\inst7|AUD_MCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|AUD_MCLK~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|AUD_MCLK~regout\);

-- Location: LCCOMB_X3_Y35_N24
\inst7|Bcount~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Bcount~1_combout\ = (!\inst7|Bcount\(0) & ((\inst7|Bcount\(1)) # (!\inst7|Bcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Bcount\(1),
	datac => \inst7|Bcount\(0),
	datad => \inst7|Bcount\(2),
	combout => \inst7|Bcount~1_combout\);

-- Location: LCFF_X3_Y35_N25
\inst7|Bcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Bcount~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|Mcount~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Bcount\(0));

-- Location: LCCOMB_X3_Y35_N2
\inst7|Bcount[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Bcount[2]~2_combout\ = \inst7|Bcount\(2) $ (((!\inst7|Bcount\(1) & (!\inst7|Bcount\(0) & \inst7|Mcount~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Bcount\(1),
	datab => \inst7|Bcount\(0),
	datac => \inst7|Bcount\(2),
	datad => \inst7|Mcount~regout\,
	combout => \inst7|Bcount[2]~2_combout\);

-- Location: LCFF_X3_Y35_N3
\inst7|Bcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Bcount[2]~2_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Bcount\(2));

-- Location: LCCOMB_X3_Y35_N6
\inst7|Bcount~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Bcount~0_combout\ = (\inst7|Bcount\(0) & (\inst7|Bcount\(1))) # (!\inst7|Bcount\(0) & (!\inst7|Bcount\(1) & !\inst7|Bcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Bcount\(0),
	datac => \inst7|Bcount\(1),
	datad => \inst7|Bcount\(2),
	combout => \inst7|Bcount~0_combout\);

-- Location: LCFF_X3_Y35_N7
\inst7|Bcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Bcount~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|Mcount~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Bcount\(1));

-- Location: LCCOMB_X3_Y35_N10
\inst7|AUD_BCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|AUD_BCLK~0_combout\ = (\inst7|Bcount\(0) & ((\inst7|AUD_BCLK~regout\) # ((\inst7|Bcount\(2) & \inst7|Bcount\(1))))) # (!\inst7|Bcount\(0) & (\inst7|AUD_BCLK~regout\ & ((\inst7|Bcount\(1)) # (!\inst7|Bcount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Bcount\(0),
	datab => \inst7|Bcount\(2),
	datac => \inst7|AUD_BCLK~regout\,
	datad => \inst7|Bcount\(1),
	combout => \inst7|AUD_BCLK~0_combout\);

-- Location: LCFF_X3_Y35_N11
\inst7|AUD_BCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|AUD_BCLK~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|Mcount~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|AUD_BCLK~regout\);

-- Location: LCCOMB_X29_Y18_N16
\inst15|inst1|counter[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst1|counter[0]~6_combout\ = !\inst15|inst1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst1|counter\(0),
	combout => \inst15|inst1|counter[0]~6_combout\);

-- Location: LCFF_X29_Y18_N17
\inst15|inst1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|internal_bpm_clk_32~clkctrl_outclk\,
	datain => \inst15|inst1|counter[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1|counter\(0));

-- Location: LCCOMB_X29_Y18_N0
\inst15|inst1|counter[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst1|counter[1]~2_combout\ = (\inst15|inst1|counter\(0) & (\inst15|inst1|counter\(1) $ (VCC))) # (!\inst15|inst1|counter\(0) & (\inst15|inst1|counter\(1) & VCC))
-- \inst15|inst1|counter[1]~3\ = CARRY((\inst15|inst1|counter\(0) & \inst15|inst1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1|counter\(0),
	datab => \inst15|inst1|counter\(1),
	datad => VCC,
	combout => \inst15|inst1|counter[1]~2_combout\,
	cout => \inst15|inst1|counter[1]~3\);

-- Location: LCFF_X29_Y18_N1
\inst15|inst1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|internal_bpm_clk_32~clkctrl_outclk\,
	datain => \inst15|inst1|counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1|counter\(1));

-- Location: LCCOMB_X29_Y18_N2
\inst15|inst1|counter[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst1|counter[2]~4_combout\ = \inst15|inst1|counter[1]~3\ $ (\inst15|inst1|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst15|inst1|counter\(2),
	cin => \inst15|inst1|counter[1]~3\,
	combout => \inst15|inst1|counter[2]~4_combout\);

-- Location: LCFF_X29_Y18_N3
\inst15|inst1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|internal_bpm_clk_32~clkctrl_outclk\,
	datain => \inst15|inst1|counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1|counter\(2));

-- Location: LCCOMB_X29_Y18_N30
\inst15|inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst1|Mux0~0_combout\ = (\inst15|inst1|counter\(0) & (\inst15|inst1|counter\(1) & \inst15|inst1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst1|counter\(0),
	datac => \inst15|inst1|counter\(1),
	datad => \inst15|inst1|counter\(2),
	combout => \inst15|inst1|Mux0~0_combout\);

-- Location: LCFF_X29_Y18_N31
\inst15|inst1|play\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|internal_bpm_clk_32~clkctrl_outclk\,
	datain => \inst15|inst1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1|play~regout\);

-- Location: LCCOMB_X27_Y18_N4
\inst|current_sample_address[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[1]~13_combout\ = (\inst|current_sample_address\(0) & (\inst|current_sample_address\(1) $ (VCC))) # (!\inst|current_sample_address\(0) & (\inst|current_sample_address\(1) & VCC))
-- \inst|current_sample_address[1]~14\ = CARRY((\inst|current_sample_address\(0) & \inst|current_sample_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(0),
	datab => \inst|current_sample_address\(1),
	datad => VCC,
	combout => \inst|current_sample_address[1]~13_combout\,
	cout => \inst|current_sample_address[1]~14\);

-- Location: LCFF_X27_Y18_N5
\inst|current_sample_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[1]~13_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(1));

-- Location: LCCOMB_X27_Y18_N6
\inst|current_sample_address[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[2]~15_combout\ = (\inst|current_sample_address\(2) & (!\inst|current_sample_address[1]~14\)) # (!\inst|current_sample_address\(2) & ((\inst|current_sample_address[1]~14\) # (GND)))
-- \inst|current_sample_address[2]~16\ = CARRY((!\inst|current_sample_address[1]~14\) # (!\inst|current_sample_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(2),
	datad => VCC,
	cin => \inst|current_sample_address[1]~14\,
	combout => \inst|current_sample_address[2]~15_combout\,
	cout => \inst|current_sample_address[2]~16\);

-- Location: LCCOMB_X27_Y18_N8
\inst|current_sample_address[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[3]~17_combout\ = (\inst|current_sample_address\(3) & (\inst|current_sample_address[2]~16\ $ (GND))) # (!\inst|current_sample_address\(3) & (!\inst|current_sample_address[2]~16\ & VCC))
-- \inst|current_sample_address[3]~18\ = CARRY((\inst|current_sample_address\(3) & !\inst|current_sample_address[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(3),
	datad => VCC,
	cin => \inst|current_sample_address[2]~16\,
	combout => \inst|current_sample_address[3]~17_combout\,
	cout => \inst|current_sample_address[3]~18\);

-- Location: LCFF_X27_Y18_N9
\inst|current_sample_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[3]~17_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(3));

-- Location: LCCOMB_X27_Y18_N10
\inst|current_sample_address[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[4]~19_combout\ = (\inst|current_sample_address\(4) & (!\inst|current_sample_address[3]~18\)) # (!\inst|current_sample_address\(4) & ((\inst|current_sample_address[3]~18\) # (GND)))
-- \inst|current_sample_address[4]~20\ = CARRY((!\inst|current_sample_address[3]~18\) # (!\inst|current_sample_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(4),
	datad => VCC,
	cin => \inst|current_sample_address[3]~18\,
	combout => \inst|current_sample_address[4]~19_combout\,
	cout => \inst|current_sample_address[4]~20\);

-- Location: LCCOMB_X27_Y18_N12
\inst|current_sample_address[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[5]~21_combout\ = (\inst|current_sample_address\(5) & (\inst|current_sample_address[4]~20\ $ (GND))) # (!\inst|current_sample_address\(5) & (!\inst|current_sample_address[4]~20\ & VCC))
-- \inst|current_sample_address[5]~22\ = CARRY((\inst|current_sample_address\(5) & !\inst|current_sample_address[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(5),
	datad => VCC,
	cin => \inst|current_sample_address[4]~20\,
	combout => \inst|current_sample_address[5]~21_combout\,
	cout => \inst|current_sample_address[5]~22\);

-- Location: LCCOMB_X27_Y18_N14
\inst|current_sample_address[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[6]~23_combout\ = (\inst|current_sample_address\(6) & (!\inst|current_sample_address[5]~22\)) # (!\inst|current_sample_address\(6) & ((\inst|current_sample_address[5]~22\) # (GND)))
-- \inst|current_sample_address[6]~24\ = CARRY((!\inst|current_sample_address[5]~22\) # (!\inst|current_sample_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(6),
	datad => VCC,
	cin => \inst|current_sample_address[5]~22\,
	combout => \inst|current_sample_address[6]~23_combout\,
	cout => \inst|current_sample_address[6]~24\);

-- Location: LCFF_X27_Y18_N15
\inst|current_sample_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[6]~23_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(6));

-- Location: LCCOMB_X27_Y18_N16
\inst|current_sample_address[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[7]~25_combout\ = (\inst|current_sample_address\(7) & (\inst|current_sample_address[6]~24\ $ (GND))) # (!\inst|current_sample_address\(7) & (!\inst|current_sample_address[6]~24\ & VCC))
-- \inst|current_sample_address[7]~26\ = CARRY((\inst|current_sample_address\(7) & !\inst|current_sample_address[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(7),
	datad => VCC,
	cin => \inst|current_sample_address[6]~24\,
	combout => \inst|current_sample_address[7]~25_combout\,
	cout => \inst|current_sample_address[7]~26\);

-- Location: LCCOMB_X27_Y18_N18
\inst|current_sample_address[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[8]~27_combout\ = (\inst|current_sample_address\(8) & (!\inst|current_sample_address[7]~26\)) # (!\inst|current_sample_address\(8) & ((\inst|current_sample_address[7]~26\) # (GND)))
-- \inst|current_sample_address[8]~28\ = CARRY((!\inst|current_sample_address[7]~26\) # (!\inst|current_sample_address\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(8),
	datad => VCC,
	cin => \inst|current_sample_address[7]~26\,
	combout => \inst|current_sample_address[8]~27_combout\,
	cout => \inst|current_sample_address[8]~28\);

-- Location: LCFF_X27_Y18_N19
\inst|current_sample_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[8]~27_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(8));

-- Location: LCCOMB_X27_Y18_N20
\inst|current_sample_address[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[9]~29_combout\ = (\inst|current_sample_address\(9) & (\inst|current_sample_address[8]~28\ $ (GND))) # (!\inst|current_sample_address\(9) & (!\inst|current_sample_address[8]~28\ & VCC))
-- \inst|current_sample_address[9]~30\ = CARRY((\inst|current_sample_address\(9) & !\inst|current_sample_address[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(9),
	datad => VCC,
	cin => \inst|current_sample_address[8]~28\,
	combout => \inst|current_sample_address[9]~29_combout\,
	cout => \inst|current_sample_address[9]~30\);

-- Location: LCCOMB_X27_Y18_N22
\inst|current_sample_address[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[10]~31_combout\ = (\inst|current_sample_address\(10) & (!\inst|current_sample_address[9]~30\)) # (!\inst|current_sample_address\(10) & ((\inst|current_sample_address[9]~30\) # (GND)))
-- \inst|current_sample_address[10]~32\ = CARRY((!\inst|current_sample_address[9]~30\) # (!\inst|current_sample_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(10),
	datad => VCC,
	cin => \inst|current_sample_address[9]~30\,
	combout => \inst|current_sample_address[10]~31_combout\,
	cout => \inst|current_sample_address[10]~32\);

-- Location: LCFF_X27_Y18_N23
\inst|current_sample_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[10]~31_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(10));

-- Location: LCCOMB_X27_Y18_N24
\inst|current_sample_address[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[11]~33_combout\ = (\inst|current_sample_address\(11) & (\inst|current_sample_address[10]~32\ $ (GND))) # (!\inst|current_sample_address\(11) & (!\inst|current_sample_address[10]~32\ & VCC))
-- \inst|current_sample_address[11]~34\ = CARRY((\inst|current_sample_address\(11) & !\inst|current_sample_address[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(11),
	datad => VCC,
	cin => \inst|current_sample_address[10]~32\,
	combout => \inst|current_sample_address[11]~33_combout\,
	cout => \inst|current_sample_address[11]~34\);

-- Location: LCCOMB_X27_Y18_N26
\inst|current_sample_address[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[12]~35_combout\ = (\inst|current_sample_address\(12) & (!\inst|current_sample_address[11]~34\)) # (!\inst|current_sample_address\(12) & ((\inst|current_sample_address[11]~34\) # (GND)))
-- \inst|current_sample_address[12]~36\ = CARRY((!\inst|current_sample_address[11]~34\) # (!\inst|current_sample_address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(12),
	datad => VCC,
	cin => \inst|current_sample_address[11]~34\,
	combout => \inst|current_sample_address[12]~35_combout\,
	cout => \inst|current_sample_address[12]~36\);

-- Location: LCFF_X27_Y18_N27
\inst|current_sample_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[12]~35_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(12));

-- Location: LCFF_X27_Y18_N25
\inst|current_sample_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[11]~33_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(11));

-- Location: LCCOMB_X28_Y18_N8
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|current_sample_address\(9)) # ((\inst|current_sample_address\(10)) # ((\inst|current_sample_address\(12)) # (\inst|current_sample_address\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(9),
	datab => \inst|current_sample_address\(10),
	datac => \inst|current_sample_address\(12),
	datad => \inst|current_sample_address\(11),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCFF_X27_Y18_N17
\inst|current_sample_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[7]~25_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(7));

-- Location: LCFF_X27_Y18_N11
\inst|current_sample_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[4]~19_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(4));

-- Location: LCFF_X27_Y18_N13
\inst|current_sample_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[5]~21_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(5));

-- Location: LCCOMB_X28_Y18_N14
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|current_sample_address\(6) & (\inst|current_sample_address\(4) & \inst|current_sample_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(6),
	datac => \inst|current_sample_address\(4),
	datad => \inst|current_sample_address\(5),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst|current_sample_address[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[0]~39_combout\ = \inst|current_sample_address\(0) $ (\inst|internal_is_playing~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|current_sample_address\(0),
	datad => \inst|internal_is_playing~combout\,
	combout => \inst|current_sample_address[0]~39_combout\);

-- Location: LCFF_X28_Y18_N13
\inst|current_sample_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[0]~39_combout\,
	aclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(0));

-- Location: LCFF_X27_Y18_N7
\inst|current_sample_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[2]~15_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(2));

-- Location: LCCOMB_X28_Y18_N2
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|current_sample_address\(3) & (\inst|current_sample_address\(2) & ((\inst|current_sample_address\(0)) # (\inst|current_sample_address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(3),
	datab => \inst|current_sample_address\(0),
	datac => \inst|current_sample_address\(1),
	datad => \inst|current_sample_address\(2),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|current_sample_address\(8) & ((\inst|current_sample_address\(7)) # ((\inst|LessThan0~1_combout\ & \inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(8),
	datab => \inst|current_sample_address\(7),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|current_sample_address\(13) & ((\inst|LessThan0~3_combout\) # (\inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_sample_address\(13),
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst|internal_is_playing\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|internal_is_playing~combout\ = (!\inst|LessThan0~4_combout\ & ((\inst15|inst1|play~regout\) # (\inst|internal_is_playing~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst1|play~regout\,
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|internal_is_playing~combout\,
	combout => \inst|internal_is_playing~combout\);

-- Location: LCCOMB_X34_Y23_N2
\inst7|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|BBcount\(0) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|BBcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(0),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X3_Y35_N20
\inst7|AUD_DACLRCK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|AUD_DACLRCK~0_combout\ = (!\inst7|Bcount\(1) & (\inst7|Bcount\(2) & (!\inst7|Bcount\(0) & \inst7|Mcount~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Bcount\(1),
	datab => \inst7|Bcount\(2),
	datac => \inst7|Bcount\(0),
	datad => \inst7|Mcount~regout\,
	combout => \inst7|AUD_DACLRCK~0_combout\);

-- Location: LCFF_X34_Y23_N3
\inst7|BBcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Add1~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(0));

-- Location: LCCOMB_X34_Y23_N4
\inst7|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|BBcount\(1) & (\inst7|Add1~1\ & VCC)) # (!\inst7|BBcount\(1) & (!\inst7|Add1~1\))
-- \inst7|Add1~3\ = CARRY((!\inst7|BBcount\(1) & !\inst7|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(1),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X34_Y23_N26
\inst7|BBcount~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|BBcount~2_combout\ = (\inst7|Add1~2_combout\ & !\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~2_combout\,
	datad => \inst7|Equal3~0_combout\,
	combout => \inst7|BBcount~2_combout\);

-- Location: LCFF_X34_Y23_N27
\inst7|BBcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|BBcount~2_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(1));

-- Location: LCCOMB_X34_Y23_N6
\inst7|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|BBcount\(2) & ((GND) # (!\inst7|Add1~3\))) # (!\inst7|BBcount\(2) & (\inst7|Add1~3\ $ (GND)))
-- \inst7|Add1~5\ = CARRY((\inst7|BBcount\(2)) # (!\inst7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(2),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X34_Y23_N8
\inst7|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|BBcount\(3) & (\inst7|Add1~5\ & VCC)) # (!\inst7|BBcount\(3) & (!\inst7|Add1~5\))
-- \inst7|Add1~7\ = CARRY((!\inst7|BBcount\(3) & !\inst7|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(3),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X34_Y23_N14
\inst7|BBcount~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|BBcount~0_combout\ = (\inst7|Add1~6_combout\ & !\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~6_combout\,
	datad => \inst7|Equal3~0_combout\,
	combout => \inst7|BBcount~0_combout\);

-- Location: LCFF_X34_Y23_N15
\inst7|BBcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|BBcount~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(3));

-- Location: LCCOMB_X34_Y23_N10
\inst7|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = (\inst7|BBcount\(4) & ((GND) # (!\inst7|Add1~7\))) # (!\inst7|BBcount\(4) & (\inst7|Add1~7\ $ (GND)))
-- \inst7|Add1~9\ = CARRY((\inst7|BBcount\(4)) # (!\inst7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(4),
	datad => VCC,
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\,
	cout => \inst7|Add1~9\);

-- Location: LCFF_X34_Y23_N11
\inst7|BBcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Add1~8_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(4));

-- Location: LCCOMB_X34_Y23_N28
\inst7|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal3~0_combout\ = (!\inst7|BBcount\(5) & (!\inst7|BBcount\(0) & (\inst7|Equal4~0_combout\ & !\inst7|BBcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(5),
	datab => \inst7|BBcount\(0),
	datac => \inst7|Equal4~0_combout\,
	datad => \inst7|BBcount\(4),
	combout => \inst7|Equal3~0_combout\);

-- Location: LCCOMB_X34_Y23_N30
\inst7|BBcount~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|BBcount~1_combout\ = (!\inst7|Equal3~0_combout\ & \inst7|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal3~0_combout\,
	datad => \inst7|Add1~4_combout\,
	combout => \inst7|BBcount~1_combout\);

-- Location: LCFF_X34_Y23_N31
\inst7|BBcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|BBcount~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(2));

-- Location: LCCOMB_X34_Y23_N16
\inst7|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal4~0_combout\ = (!\inst7|BBcount\(2) & (!\inst7|BBcount\(3) & !\inst7|BBcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(2),
	datac => \inst7|BBcount\(3),
	datad => \inst7|BBcount\(1),
	combout => \inst7|Equal4~0_combout\);

-- Location: LCCOMB_X34_Y23_N0
\inst7|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal2~0_combout\ = (!\inst7|BBcount\(5) & (\inst7|BBcount\(0) & (\inst7|Equal4~0_combout\ & !\inst7|BBcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(5),
	datab => \inst7|BBcount\(0),
	datac => \inst7|Equal4~0_combout\,
	datad => \inst7|BBcount\(4),
	combout => \inst7|Equal2~0_combout\);

-- Location: LCFF_X34_Y23_N1
\inst7|pulse_48KHz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Equal2~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pulse_48KHz~regout\);

-- Location: CLKCTRL_G11
\inst7|pulse_48KHz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|pulse_48KHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|pulse_48KHz~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y18_N28
\inst|current_sample_address[13]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|current_sample_address[13]~37_combout\ = \inst|current_sample_address[12]~36\ $ (!\inst|current_sample_address\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|current_sample_address\(13),
	cin => \inst|current_sample_address[12]~36\,
	combout => \inst|current_sample_address[13]~37_combout\);

-- Location: LCFF_X27_Y18_N29
\inst|current_sample_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[13]~37_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(13));

-- Location: LCCOMB_X27_Y18_N30
\inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\(2) = (!\inst|current_sample_address\(12) & \inst|current_sample_address\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(12),
	datad => \inst|current_sample_address\(13),
	combout => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode321w\(2));

-- Location: LCCOMB_X27_Y18_N2
\inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2) = (!\inst|current_sample_address\(13) & !\inst|current_sample_address\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(13),
	datad => \inst|current_sample_address\(12),
	combout => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2));

-- Location: LCFF_X27_Y18_N21
\inst|current_sample_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst|current_sample_address[9]~29_combout\,
	aclr => \inst|LessThan0~4_combout\,
	ena => \inst|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|current_sample_address\(9));

-- Location: M4K_X26_Y12
\inst|kick1|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"10002002090082090080092092412480000480400400480490402012092400082002412012092012410002012012080400412492082402012082400090092080492002010010082492410092400080412490410490010410092082480090492492490480002012402482490480092410490080082090482492002090010400410482412482012080092490080400402080080092080012002080482400010412480080010400412412012012412092000002012490090402092002010400092492492090012000410402410400000482480000002012480082082080082402090492012012480000082410092480002010480482082082400492490090480090",
	mem_init0 => X"08249000009240041201208209008048209000249241208249209009200040200009001048200241240000201049241248001240049009249000000008201208201040200200000200041009008041040201241208249248048249248009041001041208200249201249241208240040240240248200201208240048201048201000048041241040208001248001040040209249200049000040048049008248240248201008200009208040209249241008249009249201041049000208040001001048049241041200008208008040208009208240201009040208041248240249201200001208200240241008208249200208000240040240240200209240",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y18_N0
\inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2) = (\inst|current_sample_address\(12) & !\inst|current_sample_address\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_sample_address\(12),
	datad => \inst|current_sample_address\(13),
	combout => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2));

-- Location: M4K_X13_Y15
\inst|kick1|altsyncram_component|auto_generated|ram_block1a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"01049208248001248049240009008200249008000000001040240040248209201049040041240008001249200240049008209200209048000049249208048240001000049241000001048209201009209248040041209208208048240041041009000241009200249040048048041249041049249000041048040049040009049200008001000000248241040209241200208241249041200201208048001000008209008040248000008041041001001000001240009240000040041000001001240001009049248040249008009201240008009048209200201208248001241249009208008249200048201241001048009009200240048201041001208200",
	mem_init0 => X"04904020920124020824920800020020124100820920100800900820924020020904100800900024800120104900904020004004120124000100820024124820800800000004920020924100900024900100024804004100124100120824924920804804800000824004000000004024004804024124904120020924104904100824924800104024120824004804000020004024004004904900100924000804824904904804924124900120120804104804824104924004104024904124904100024100104120920024104820904924020004100924020124104004120904120924024100124904020000924900904824120920924100104904104124900020",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y18_N30
\inst|sample[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[5]~30_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a29~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	combout => \inst|sample[5]~30_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst|sample[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[5]~31_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a53\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[5]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a53\,
	datad => \inst|sample[5]~30_combout\,
	combout => \inst|sample[5]~31_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst15|inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst2|Mux0~0_combout\ = (\inst15|inst1|counter\(0) & (\inst15|inst1|counter\(1) & !\inst15|inst1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst1|counter\(0),
	datac => \inst15|inst1|counter\(1),
	datad => \inst15|inst1|counter\(2),
	combout => \inst15|inst2|Mux0~0_combout\);

-- Location: LCFF_X29_Y18_N13
\inst15|inst2|play\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|internal_bpm_clk_32~clkctrl_outclk\,
	datain => \inst15|inst2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst2|play~regout\);

-- Location: LCCOMB_X25_Y29_N22
\inst11|current_sample_address[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[0]~33_combout\ = \inst11|internal_is_playing~combout\ $ (\inst11|current_sample_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|internal_is_playing~combout\,
	datac => \inst11|current_sample_address\(0),
	combout => \inst11|current_sample_address[0]~33_combout\);

-- Location: LCFF_X25_Y29_N23
\inst11|current_sample_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[0]~33_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(0));

-- Location: LCCOMB_X25_Y29_N0
\inst11|current_sample_address[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[1]~11_combout\ = (\inst11|current_sample_address\(1) & (\inst11|current_sample_address\(0) $ (VCC))) # (!\inst11|current_sample_address\(1) & (\inst11|current_sample_address\(0) & VCC))
-- \inst11|current_sample_address[1]~12\ = CARRY((\inst11|current_sample_address\(1) & \inst11|current_sample_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(1),
	datab => \inst11|current_sample_address\(0),
	datad => VCC,
	combout => \inst11|current_sample_address[1]~11_combout\,
	cout => \inst11|current_sample_address[1]~12\);

-- Location: LCCOMB_X25_Y29_N2
\inst11|current_sample_address[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[2]~13_combout\ = (\inst11|current_sample_address\(2) & (!\inst11|current_sample_address[1]~12\)) # (!\inst11|current_sample_address\(2) & ((\inst11|current_sample_address[1]~12\) # (GND)))
-- \inst11|current_sample_address[2]~14\ = CARRY((!\inst11|current_sample_address[1]~12\) # (!\inst11|current_sample_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|current_sample_address\(2),
	datad => VCC,
	cin => \inst11|current_sample_address[1]~12\,
	combout => \inst11|current_sample_address[2]~13_combout\,
	cout => \inst11|current_sample_address[2]~14\);

-- Location: LCFF_X25_Y29_N3
\inst11|current_sample_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[2]~13_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(2));

-- Location: LCCOMB_X25_Y29_N4
\inst11|current_sample_address[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[3]~15_combout\ = (\inst11|current_sample_address\(3) & (\inst11|current_sample_address[2]~14\ $ (GND))) # (!\inst11|current_sample_address\(3) & (!\inst11|current_sample_address[2]~14\ & VCC))
-- \inst11|current_sample_address[3]~16\ = CARRY((\inst11|current_sample_address\(3) & !\inst11|current_sample_address[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|current_sample_address\(3),
	datad => VCC,
	cin => \inst11|current_sample_address[2]~14\,
	combout => \inst11|current_sample_address[3]~15_combout\,
	cout => \inst11|current_sample_address[3]~16\);

-- Location: LCFF_X25_Y29_N5
\inst11|current_sample_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[3]~15_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(3));

-- Location: LCCOMB_X25_Y29_N6
\inst11|current_sample_address[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[4]~17_combout\ = (\inst11|current_sample_address\(4) & (!\inst11|current_sample_address[3]~16\)) # (!\inst11|current_sample_address\(4) & ((\inst11|current_sample_address[3]~16\) # (GND)))
-- \inst11|current_sample_address[4]~18\ = CARRY((!\inst11|current_sample_address[3]~16\) # (!\inst11|current_sample_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|current_sample_address\(4),
	datad => VCC,
	cin => \inst11|current_sample_address[3]~16\,
	combout => \inst11|current_sample_address[4]~17_combout\,
	cout => \inst11|current_sample_address[4]~18\);

-- Location: LCFF_X25_Y29_N7
\inst11|current_sample_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[4]~17_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(4));

-- Location: LCCOMB_X25_Y29_N8
\inst11|current_sample_address[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[5]~19_combout\ = (\inst11|current_sample_address\(5) & (\inst11|current_sample_address[4]~18\ $ (GND))) # (!\inst11|current_sample_address\(5) & (!\inst11|current_sample_address[4]~18\ & VCC))
-- \inst11|current_sample_address[5]~20\ = CARRY((\inst11|current_sample_address\(5) & !\inst11|current_sample_address[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(5),
	datad => VCC,
	cin => \inst11|current_sample_address[4]~18\,
	combout => \inst11|current_sample_address[5]~19_combout\,
	cout => \inst11|current_sample_address[5]~20\);

-- Location: LCFF_X25_Y29_N9
\inst11|current_sample_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[5]~19_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(5));

-- Location: LCCOMB_X25_Y29_N10
\inst11|current_sample_address[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[6]~21_combout\ = (\inst11|current_sample_address\(6) & (!\inst11|current_sample_address[5]~20\)) # (!\inst11|current_sample_address\(6) & ((\inst11|current_sample_address[5]~20\) # (GND)))
-- \inst11|current_sample_address[6]~22\ = CARRY((!\inst11|current_sample_address[5]~20\) # (!\inst11|current_sample_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|current_sample_address\(6),
	datad => VCC,
	cin => \inst11|current_sample_address[5]~20\,
	combout => \inst11|current_sample_address[6]~21_combout\,
	cout => \inst11|current_sample_address[6]~22\);

-- Location: LCFF_X25_Y29_N11
\inst11|current_sample_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[6]~21_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(6));

-- Location: LCCOMB_X25_Y29_N26
\inst11|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~2_combout\ = (\inst11|current_sample_address\(5) & \inst11|current_sample_address\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|current_sample_address\(5),
	datad => \inst11|current_sample_address\(6),
	combout => \inst11|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y29_N24
\inst11|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (\inst11|current_sample_address\(4) & ((\inst11|current_sample_address\(1)) # ((\inst11|current_sample_address\(2)) # (\inst11|current_sample_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(1),
	datab => \inst11|current_sample_address\(2),
	datac => \inst11|current_sample_address\(3),
	datad => \inst11|current_sample_address\(4),
	combout => \inst11|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y29_N12
\inst11|current_sample_address[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[7]~23_combout\ = (\inst11|current_sample_address\(7) & (\inst11|current_sample_address[6]~22\ $ (GND))) # (!\inst11|current_sample_address\(7) & (!\inst11|current_sample_address[6]~22\ & VCC))
-- \inst11|current_sample_address[7]~24\ = CARRY((\inst11|current_sample_address\(7) & !\inst11|current_sample_address[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(7),
	datad => VCC,
	cin => \inst11|current_sample_address[6]~22\,
	combout => \inst11|current_sample_address[7]~23_combout\,
	cout => \inst11|current_sample_address[7]~24\);

-- Location: LCCOMB_X25_Y29_N14
\inst11|current_sample_address[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[8]~25_combout\ = (\inst11|current_sample_address\(8) & (!\inst11|current_sample_address[7]~24\)) # (!\inst11|current_sample_address\(8) & ((\inst11|current_sample_address[7]~24\) # (GND)))
-- \inst11|current_sample_address[8]~26\ = CARRY((!\inst11|current_sample_address[7]~24\) # (!\inst11|current_sample_address\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(8),
	datad => VCC,
	cin => \inst11|current_sample_address[7]~24\,
	combout => \inst11|current_sample_address[8]~25_combout\,
	cout => \inst11|current_sample_address[8]~26\);

-- Location: LCCOMB_X25_Y29_N16
\inst11|current_sample_address[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[9]~27_combout\ = (\inst11|current_sample_address\(9) & (\inst11|current_sample_address[8]~26\ $ (GND))) # (!\inst11|current_sample_address\(9) & (!\inst11|current_sample_address[8]~26\ & VCC))
-- \inst11|current_sample_address[9]~28\ = CARRY((\inst11|current_sample_address\(9) & !\inst11|current_sample_address[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(9),
	datad => VCC,
	cin => \inst11|current_sample_address[8]~26\,
	combout => \inst11|current_sample_address[9]~27_combout\,
	cout => \inst11|current_sample_address[9]~28\);

-- Location: LCCOMB_X25_Y29_N18
\inst11|current_sample_address[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[10]~29_combout\ = (\inst11|current_sample_address\(10) & (!\inst11|current_sample_address[9]~28\)) # (!\inst11|current_sample_address\(10) & ((\inst11|current_sample_address[9]~28\) # (GND)))
-- \inst11|current_sample_address[10]~30\ = CARRY((!\inst11|current_sample_address[9]~28\) # (!\inst11|current_sample_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(10),
	datad => VCC,
	cin => \inst11|current_sample_address[9]~28\,
	combout => \inst11|current_sample_address[10]~29_combout\,
	cout => \inst11|current_sample_address[10]~30\);

-- Location: LCFF_X25_Y29_N19
\inst11|current_sample_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[10]~29_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(10));

-- Location: LCCOMB_X25_Y29_N20
\inst11|current_sample_address[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|current_sample_address[11]~31_combout\ = \inst11|current_sample_address[10]~30\ $ (!\inst11|current_sample_address\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|current_sample_address\(11),
	cin => \inst11|current_sample_address[10]~30\,
	combout => \inst11|current_sample_address[11]~31_combout\);

-- Location: LCFF_X25_Y29_N21
\inst11|current_sample_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[11]~31_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(11));

-- Location: LCFF_X25_Y29_N15
\inst11|current_sample_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[8]~25_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(8));

-- Location: LCCOMB_X25_Y29_N30
\inst11|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (\inst11|current_sample_address\(9) & (\inst11|current_sample_address\(10) & (\inst11|current_sample_address\(11) & \inst11|current_sample_address\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(9),
	datab => \inst11|current_sample_address\(10),
	datac => \inst11|current_sample_address\(11),
	datad => \inst11|current_sample_address\(8),
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y29_N28
\inst11|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~3_combout\ = (\inst11|LessThan0~0_combout\ & ((\inst11|current_sample_address\(7)) # ((\inst11|LessThan0~2_combout\ & \inst11|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_sample_address\(7),
	datab => \inst11|LessThan0~2_combout\,
	datac => \inst11|LessThan0~1_combout\,
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y21_N6
\inst11|internal_is_playing\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|internal_is_playing~combout\ = (!\inst11|LessThan0~3_combout\ & ((\inst15|inst2|play~regout\) # (\inst11|internal_is_playing~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst2|play~regout\,
	datac => \inst11|LessThan0~3_combout\,
	datad => \inst11|internal_is_playing~combout\,
	combout => \inst11|internal_is_playing~combout\);

-- Location: LCFF_X25_Y29_N1
\inst11|current_sample_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[1]~11_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(1));

-- Location: LCFF_X25_Y29_N13
\inst11|current_sample_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[7]~23_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(7));

-- Location: LCFF_X25_Y29_N17
\inst11|current_sample_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	datain => \inst11|current_sample_address[9]~27_combout\,
	aclr => \inst11|LessThan0~3_combout\,
	ena => \inst11|internal_is_playing~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|current_sample_address\(9));

-- Location: M4K_X26_Y28
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000092400410480090000010492080092012090092402080410082482092080412082080402412402410492402000080492492410402490000400400090010412000482400010080082092092412090410000090092000080010480410090400090492412090410492002012402480082002092492090412012012480000480002410090482490010092412092412490402080002492410490400412002092002010080480490410400412012482490482400080092410412492490000480090410082410002012082400010002080490012080410482010000082010402400080000092402012492082010402482412",
	mem_init0 => X"40209049040208048201000241001008008049200048008008040208040248201208001000200248001001009048248209249200201209208041201248200249249208241208249040040241048041048209208248200008041241240249200008248248009041240209249000009249248200001000241241241049209040000208248241001041049240249240249048249009001201249249008201000241048208000008000201001001240241209000208040208241248248041041209000041041248241248040041049240048241041208001041200240249000248009241041049201209209040049041209049040201241208048000249009201200",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y24_N12
\inst11|sample[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[4]~16_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst11|sample[4]~16_combout\);

-- Location: LCFF_X28_Y18_N5
\inst|kick1|altsyncram_component|auto_generated|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	sdata => \inst|current_sample_address\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|kick1|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCFF_X28_Y18_N21
\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	sdata => \inst|kick1|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCFF_X28_Y18_N1
\inst|kick1|altsyncram_component|auto_generated|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	sdata => \inst|current_sample_address\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|kick1|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCFF_X28_Y18_N17
\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pulse_48KHz~clkctrl_outclk\,
	sdata => \inst|kick1|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: M4K_X13_Y10
\inst|kick1|altsyncram_component|auto_generated|ram_block1a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"09001249249248201009240001040008000209009048009040208049041241049008209008201209248209241208240209040008009009009049040009240000248041040201048008248009200041208041208249241049248201040040249241201049049209201040008048040241049200000009009209241241001049249249249048041009248248049201009200248040040200048041009200009249208009009001248000009208040000009240201200040209048248048041249001240200008049240008001049208209000048240201249201040049208248049001249208240040040008040009208248009249041201240009248009040041",
	mem_init0 => X"20824900104100100820924800024104920820920120020024920824924000004004900000924820820820004924904800900100900800924100804004104104104920024900904100124924000124104000020920904800820804024020120820820800924020024924924104120120000020900824120820924100804000000804900800024824804020900004004900104100104904024024104804820124924800120904020804000904920820804820124024120100120820804000804824000124004104824124904904004004004124920020800924824024900000820004924120020820100124124000920820020820900020924004020904020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y13
\inst|kick1|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"82402400002082400410490010012410410010010082092480400412412412480490092480412490080482490092412410490412482092092402480012402090492082480410480490410010002010480482480482002000480080080012002400492410012012400480480482400412010482010000400490000000012010402000012492010412490412492490492402480012490010080482412400002090410082012412012400412090000010480480000000082412482482082000092490002412410480492000002480012482002000412000492410080480082412010410412082412402000000002002092480010410090412012092480402490012",
	mem_init0 => X"40201241240208240041208008040001040209000200200208200009008201208001048249001001009208200041248201049240041248209200201041248248041208240208208241201041209048009049001049040001240049040248040248000201200241240041249208209001009040008208041248001208001240048040249049209240249000009240009009049041041248248249049240049200200240009001001041041008209249048048041040208248041048009049008248249209209241008200008201201000201209201041049008248048041048241040001008208200209200209041249240248048041008008241208048209048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y17_N18
\inst|sample[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[3]~34_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a27~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	combout => \inst|sample[3]~34_combout\);

-- Location: LCCOMB_X34_Y21_N0
\inst|sample[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[3]~35_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a51~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[3]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datad => \inst|sample[3]~34_combout\,
	combout => \inst|sample[3]~35_combout\);

-- Location: M4K_X13_Y16
\inst|kick1|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"82010480012412000012012400010082400400002400092090402082002010400000012082410480012492412082492402010490012490010090092090480010492090080490010402402092492012482002010412410400090402080480092412480000080480012492092400400000082002092480090490402492400002492400082080082090080080490402000492090412002490412012000082492092082412492000482480002000092082492492480090492082000080412092482412490080492402400090400002092400090080090090412092410010092080080010012402010482490402010000012410012002002490402412480080010010",
	mem_init0 => X"41009209049001048209009008201209201048048040049248041008008049000200208041000040240249249248000040200040008241240041040048208200040040208009240000009048209241048048001240000001041209201000249249208209201040248048008208009201241000049240201209008008008048000041048009248249048009040241008049248008208208008041248249041001241200000048241041049040200248200201209249009209041048240000049009208201209049201001200209008049041201249200049000201041248248248248200001001040049241041209208208200201048241009208240200208048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y22
\inst|kick1|altsyncram_component|auto_generated|ram_block1a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"48241240200209000041000041241200201208249241200001041201008249049248041040200240009041248200200201000201240209009040248208048008049008000048009041208049249201001208040241041200001248008208241209001041009240009040041040048208001208041240201009009200241200208248249241049248001209040208000000240200049008249200240009240209241000209001001209040208209000041040241209041009001241201041208001041000209000009248049241041049049001000209240041001001209049208040241208248041249009241209248208009209248048200008041209008208",
	mem_init0 => X"04004920100804904020000900120100804000800924020824000104924004824924904100904020900920824804900120800124004124920900924824804924804820004904804000820120824020900120900104900900824804824004124820900020120120820104120000100920800020004900104824924924020020820920020824824120004020020924824824820124904124800004820804104820800004904920904004804020120824004904820124924004904000804920100104104000924800100820124104920920104120904120800124920004024824804004024920804124024904004904920104004900920124020004004800904100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y21_N2
\inst|sample[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[2]~36_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a26~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	combout => \inst|sample[2]~36_combout\);

-- Location: LCCOMB_X34_Y21_N4
\inst|sample[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[2]~37_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a50\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[2]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a50\,
	datad => \inst|sample[2]~36_combout\,
	combout => \inst|sample[2]~37_combout\);

-- Location: M4K_X52_Y17
\inst|kick1|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"82000012412092490412000000410400002082082492482490090480482092492010480080082410480492000490080012092410092082092492490080010480090080492012012002482012400480410402482002400410402410402002410012480092012400090412090482002080410412492490490480090000492400012412400010000082410400482012000082080410010010092012410480002410012012480482402000092480080002092082402090412082402090000012490480490482002410090090492480002480082012400402490080082400412080012090000482480090492402410080492010482492092090490012012412012400",
	mem_init0 => X"41040248040008049000249008009249200209041001249209209001009240200048241001241000209001008249208240009200049009000008201009200240040000201000041240049209200248241048200049009040041208008208208241241001048048001209240001008001048000041040240049048201208201041240208241048049240041048048041009001040000200241201241241048209241248240041048041200201040241249040248008248201241041001001240001001201041000241240008209240241048241200240040009001200249248048240000200249240000248200208009201201240249200001240040041041041",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y11
\inst|kick1|altsyncram_component|auto_generated|ram_block1a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"40009208208208209001240240008049040240001200200241248240200209208240248201001048001000040241241048249240248241208048000240040048241048048248049041201009009008248048048240008009000048008041041201040200208209208008040008209040000041200240000208248049041200208040049040200001049041048209008209241000001048000000041200249249040008240000241008208008001249001049048049201201200240248041248201248200208040208008000000240249049240209009200049241249241000040200208041008209049200040209241209041248209208201049249049208249",
	mem_init0 => X"20100024100824100120820020820004004004104000104124800924120120824800924924924920124124820124820900124924104900824900000124124120004120120900900920024900920924920900124124020004104900820104020904900924124000100004824120100904904124124120820120124024124924920024920104000004820000824820000020820820100004924104920120920920820900904920124800820820120124020024004904024920000824000900020104104120100900104904100820820804800924924124104100924104904000904100900804900000924004020904124804900824924900124004900020820824",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y18_N10
\inst|sample[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[1]~38_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a25~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	combout => \inst|sample[1]~38_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst|sample[1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[1]~39_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a49\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[1]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a49\,
	datad => \inst|sample[1]~38_combout\,
	combout => \inst|sample[1]~39_combout\);

-- Location: M4K_X26_Y34
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000082090482080002412402010000402002410012010480400090090400400002090012010482000000082080092092482410012480492490002402002410082412492080482400090400010402090012012400082080490492012010490000012092400400010482090400412482400082402410002080482490090480400000492080080480090410000080490410082010490082482092402400402480412492090480012402010092090080090400080010492480010400402400410490000492480492400000492080080402082400490480090402012080080012400400000492090000010410002400000400",
	mem_init0 => X"00208041240000208208008209201048201040000008000200040008001208240008040000009040001008200001041040240001200208200001200048200240040001008001248201009000041209000048041201041040001200048049209200048208001000241248000040001248240041200000000008208008201000040009009208000040209008048248049009001200000041008201208000200009001001209040001001200000248048041209200208001000241008049000041041008040001200001241000040200200001040041001000208048000000201000249248200040041200049041009000208001200209248208000041000041000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N28
\inst11|sample[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[0]~20_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst11|sample[0]~20_combout\);

-- Location: LCCOMB_X34_Y21_N16
\inst9|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = ((\inst|sample[4]~33_combout\ $ (\inst11|sample[4]~16_combout\ $ (!\inst9|Add0~7\)))) # (GND)
-- \inst9|Add0~9\ = CARRY((\inst|sample[4]~33_combout\ & ((\inst11|sample[4]~16_combout\) # (!\inst9|Add0~7\))) # (!\inst|sample[4]~33_combout\ & (\inst11|sample[4]~16_combout\ & !\inst9|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[4]~33_combout\,
	datab => \inst11|sample[4]~16_combout\,
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X34_Y21_N18
\inst9|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst11|sample[5]~15_combout\ & ((\inst|sample[5]~31_combout\ & (\inst9|Add0~9\ & VCC)) # (!\inst|sample[5]~31_combout\ & (!\inst9|Add0~9\)))) # (!\inst11|sample[5]~15_combout\ & ((\inst|sample[5]~31_combout\ & 
-- (!\inst9|Add0~9\)) # (!\inst|sample[5]~31_combout\ & ((\inst9|Add0~9\) # (GND)))))
-- \inst9|Add0~11\ = CARRY((\inst11|sample[5]~15_combout\ & (!\inst|sample[5]~31_combout\ & !\inst9|Add0~9\)) # (!\inst11|sample[5]~15_combout\ & ((!\inst9|Add0~9\) # (!\inst|sample[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[5]~15_combout\,
	datab => \inst|sample[5]~31_combout\,
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: M4K_X26_Y15
\inst|kick1|altsyncram_component|auto_generated|ram_block1a47\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249249",
	mem_init0 => X"24924924924924924924924924924924924924924924924924924924924924924924924924924920000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924924",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N4
\inst|sample[23]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[23]~42_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a47~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a23~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	combout => \inst|sample[23]~42_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst|sample[23]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[23]~43_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[23]~42_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & \inst|kick1|altsyncram_component|auto_generated|ram_block1a71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \inst|sample[23]~42_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a71\,
	combout => \inst|sample[23]~43_combout\);

-- Location: M4K_X52_Y28
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000002402480490092400480012490012012400400480090090000490002400490000000480480010092012000492012000492402480092402492012402490002492400092000490012012002400092012490000080490090012012402490012402490002480090092012002402480490002482480080092012480012400012002480092002402482480012400082480090092000490002480482002400490480002480012402400480092090092000090092012002402480012400492000090090012002490090012400090092400090090000490002480480012400480480090002492402400490002492400490090",
	mem_init0 => X"09201200049200049009009201248009000048009240248001240009200240248040049200009200249009201201248001201248009201200200009200200248009248009240001240240248049009009241200049240001240040049001009001200049000048001249001200249001200049000248049009001249200240008049001249001240009200001240248048009000248009240009248049248249201248009248049000248049000240049001240048048009001201248009209200000249201240240249200240009201248000249200249001201248009201200049240048008009240000049009201240001209201240249240000240048048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y24_N20
\inst11|sample[23]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[23]~21_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(23),
	combout => \inst11|sample[23]~21_combout\);

-- Location: M4K_X13_Y31
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000002402480490092400480012490012012400400480090090000490002400490000000480480010092012000492012000492402480092402492012402490002492400092000490012012002400092012490000080490090012012402490012402490002480090092012002402080490002482480080092012480012400012082480092002402482480012400082480090092000490002480482002010490480002480012402400480092090482000090082012002402480010400492000090090012002490090412400090082400090090000410002480480012410480480090002492402410490002492400490092",
	mem_init0 => X"08201200049200049009009201248200000048009240208001240008208240248041041200048200249009201209048001201248209201200200008248208248009248209240001240241208049009009241200049241001040040049001009001200041000048001249040008241240201240009209241200041249200240008041001249001040208200001240248048009000209209240009248049248249201248009248041000209001000201049001240048000200001201248009209200000249201040240249208240009201248000249248241001201248208201200049240048008209240000049048241240001209201240249240008009008048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y24_N30
\inst11|sample[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[22]~22_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|internal_is_playing~combout\,
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(22),
	combout => \inst11|sample[22]~22_combout\);

-- Location: LCCOMB_X30_Y20_N14
\inst|sample[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[21]~47_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[21]~46_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & \inst|kick1|altsyncram_component|auto_generated|ram_block1a69\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[21]~46_combout\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a69\,
	combout => \inst|sample[21]~47_combout\);

-- Location: LCCOMB_X30_Y20_N10
\inst|sample[20]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[20]~1_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[20]~0_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & \inst|kick1|altsyncram_component|auto_generated|ram_block1a68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[20]~0_combout\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a68\,
	combout => \inst|sample[20]~1_combout\);

-- Location: M4K_X52_Y15
\inst|kick1|altsyncram_component|auto_generated|ram_block1a43\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"49249249240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000249249249249249249249249240000000000000000000249249249249249248000000000000000249249249249248000000000000001249249249249240000000000000009249249249249240000000000000000249249249249249248000000000000000000249249249249249249249240000000000000000000000000000001249249249249249249249249249249249249249249249249249249249249249249249249249248000000000000000000000000000009249249249249249249240000000",
	mem_init0 => X"00000000000924924924924924000000000000004924924924924800000000000024924924924920000000000004924924924924000000000000924924924924800000000000024924924924924800000000000000124924924924924920000000000000000000124924924924924924924924924920000000000000000000000000000000000000000124924924924924924924924920000000000000000924924924924800000000000924924924800000000024924924920000000024924924900000000024924924900000000124924924900000000024924924924000000000024924924924900000000000004924924924924900000000000000000124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N28
\inst|sample[19]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[19]~2_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a43~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	combout => \inst|sample[19]~2_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst|sample[19]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[19]~3_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[19]~2_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a67\ & \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|internal_is_playing~combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a67\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|sample[19]~2_combout\,
	combout => \inst|sample[19]~3_combout\);

-- Location: M4K_X52_Y29
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000080402092480402412002490092080080490080000480480400080090010002492000092482402012490010002402480412482092010092082012092400082082090412082412482412482492090482010000092000492012402080010002002482402490082002410490490482480082092082482402000002000482490482090092080092082410002002082082092000480010002000090090410092482010080410400002092092400082012000490092490480482082012002002080010090480000400092080010412400490412480012482492010090012000402410010090492400480410000092410480",
	mem_init0 => X"49009041208041248009240049240200040248040008209248048000241048009040008208008240049208201241208041248240008049008200008241009001000240000208040201208209001008001241241048000000040049248249000041009048240249208009208249049008249240001009208008208040001000048241000040001009001209001009048240041001209008008201048201048200208248208008001208040249049241209200241001001248048208248000200049240249041240248001048248209049040008040208241041001200240009040048241240240009040049049001209000240248209209008041001009041249",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N20
\inst11|sample[18]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[18]~2_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(18),
	combout => \inst11|sample[18]~2_combout\);

-- Location: M4K_X52_Y22
\inst|kick1|altsyncram_component|auto_generated|ram_block1a41\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"01249249240000000001249249249248000000000000000000249249249249249249249249249249248000000000000000009249249249000000000249249240000001249248000009249200000249240000249240000249200001249000049240000249200009240001249000049240001249000049200009248000249200009248000249200009249000049240000249200001249200001249200001249200000249248000009249200000009249240000000249249248000000001249249249249000000000000000000000000000000000000000000000000000009249249249248000000001249249200000009249240000009249200000249240000249",
	mem_init0 => X"24000024924000124900004924000124900024920000924000124800124900024900024900004920004920004920004920000924000924000924000924800124800124900024900004924000924800024920004924800024920000124920000924920000124924800000924924800000004924924920000000000000000000000000000000000000000124924924800000124924000004924800024920000924000124800124800124000920004900124800920024800920004900120024800920024800920024800920024800900124000920024800920024900124000920004900024900024900024900024900004920000924800024924000124920000124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N12
\inst|sample[17]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[17]~6_combout\ = (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a41~portadataout\))) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a17~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	combout => \inst|sample[17]~6_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst|sample[17]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[17]~7_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|sample[17]~6_combout\) # ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a65\ & \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a65\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \inst|sample[17]~6_combout\,
	combout => \inst|sample[17]~7_combout\);

-- Location: M4K_X26_Y19
\inst|kick1|altsyncram_component|auto_generated|ram_block1a40\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"48000249240000049248000001249248000000049249249249000000000000000000000000000000001249249249200000009249240000249248000249200009240001248001240009240049000248009200248009200240049001200248049009200240048009009201240248049009001200240048049009201240248049009201240248049009200240049009200248049001240049001240049001240049000248001240009240049200009240009248000249200001249000001249248000000249249249200000000000000000000000000000000009249249240000001249248000049248000249200009240009240009240009200049001240049001",
	mem_init0 => X"24004900124024804900120024004804900900120124024024804804804900900900900900120120120120120120120120124024024024024024024024804804804804900900900120124024024804900920120024804900920024800920124000920024800124800924000924800124920000924920000000924924924924924924924924924800000124920000124800124800924004900124024804900900920120120120120100900904804024120100804824120904804020104824120904824120804020100804020100824120900804020100904824020120900904804824024024024024024024024024804804900920124024800900124004900124",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y19
\inst|kick1|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"80092400492000492400012490000092490000000492492492400000000000000000092492492480000012492400012492000492000492000490012400490012402480490092012012402402402402402402402012010090080482402012090480402010080402010082412090482010082412080402090402090482010482010482410082410082412080412090402010482410080402010080402010080402012090480402402012010090090090090090012012400480092000490000492000002492492492492492492492400002492000490002480490092012012012012090080482412090402090402082410402082090410410412082082082082082",
	mem_init0 => X"08208208208208241041041041041041041040208208209041048208241048209040209040201008040201201009009048009009009201240248009200049000249000049240000249249000000000009249249240000000000249249000009248000249001248009200248009001200240240048048048240240201201008040201008040209040208041048208208208208208241048241201240049248001248049009048040209041041041041209048048049000049249200009200240201008241041041008201008048048049001240009248000009249249240000000000000249249000248048040249009048208208040208208040249248041248",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N0
\inst|sample[16]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[16]~8_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a40~portadataout\)) # (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \inst|sample[16]~8_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst|sample[16]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[16]~9_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a64\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[16]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a64\,
	datad => \inst|sample[16]~8_combout\,
	combout => \inst|sample[16]~9_combout\);

-- Location: M4K_X26_Y25
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000090090012402400482010490092012402090092480012402410002492012490012480092400412400492000480090090480010482412002400092412402010000092002092400482010082482092080412002010010400400482400412400400400012002410482080410090080490012412010410090492010002490400482490092010410402400092080002010482412000010000090092492402090400090490080480402080492012402490000000000092012480000082492400082412092010490000010402090012400000400090480492490402412492080402010080490012400400400092480410080",
	mem_init0 => X"49040209208241248240000241041241048209201049041200200208040049200240041041000041049240208041049201000049241201049249009000241201200209000001048240249000008041200249008201000008049040208008240201008200040248040249040248041200041200048048000209201209201040208048048241209249001201200049040049209008240201041240049208048209040008000041248240248208248040241049208049000001001208201009201200200249009009249241200048001041041000241049041208000008249241048008048008001241241001248001009241241000049209248208249001200249",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N18
\inst11|sample[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[15]~5_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst11|sample[15]~5_combout\);

-- Location: M4K_X13_Y33
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000080000492012492402082412080410490090402402012002412090092010402090012492400092080480400492092482082410492012082082400482492482082400082002412400482410000090490012000090402092080492410492410480400012402400482402082490412492092000482410482482080412490010492090090402492412412412092092490400490002480002480092410000402000090410080490480402400400080490410010490012092402490482010000410400010010412402012090002012482012492480482092012012400490080412482492400480410482480090402092012",
	mem_init0 => X"40001000248000000200000248008200241049241200001000200209208209041009000041241049208049048241240041008241241248208209008041201000001048009008201241041048000241209048201201208041240001001009241240008001241208241209001009241241041040001200201001249040208048040049240009000201208248209240009200200241201249001001008200248241249008241000241208200208240209001240008048200048249041000208000009208200041201200009040201249241008248041040008008241201008248240049209009041048201249249009049001008048009249209209009208248008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N12
\inst11|sample[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[14]~6_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst11|sample[14]~6_combout\);

-- Location: M4K_X52_Y25
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000012010412000000492402400082410402092410080002090090012080012080090410480010402080000402082400490480412402490410000010082492490080492090480090012482490492410402012480402092082012492080402412012410490000080000000082010010092480092490012410012000000480490490482000402002410410000490402012010482092402482012082482010490010492010010002492492492012492010000400002402012412092480490002000000092092092090000012412012480012010090410482492012492012080010482402082082002082090400482012492",
	mem_init0 => X"09000049040248200249209200241000008208201200208008241249000248240248209001240001040201249209009040200009249248208000249241200041000041241208048040009008201008208249040240000241248009009008008008209241240041201041000201249008248001049248040240201248248041248209048040208049240201049208049241201248008209048240009048049049209209200041248000240208001000048248209009049208200008208200048000009008048208209201201249249001041008049000209248208048001048240048048049040009248208248049200040200249000008201209201201049000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N22
\inst11|sample[13]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[13]~7_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst11|sample[13]~7_combout\);

-- Location: M4K_X13_Y25
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000090480492482400010010000402000492080082090090410412410492482090090090490090000012410002002402400412480410010482080000490402400010412002082490490090412002492402402482492480080000002412492492090402492092012482410000080492402492002492400010492410090010010090002482492002482000000002092402412002412082090482080412400012080010090002480090400080092410002090082080480492412492410402092410410090492482482000012000412402480080092002080412012000000092492412082410002082010092090402090000",
	mem_init0 => X"48041000009041049000008008049041000249240040249241240240041049248008201001209248249000200048008201048248040008248241048201041209009249209048049249240049000048001049208240201248209200208201040201041009000040208048008248241249208001200001200049249041249201009048248001241049208200240001048040048241009001248048009249249049040240001208040248248000008048000208041001001208000201048000200241201240241001248008008001201208248049240040208241040208240008208208049008041200008009249209240009048200201201048040241240048241",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N0
\inst11|sample[12]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[12]~8_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst11|sample[12]~8_combout\);

-- Location: M4K_X13_Y24
\inst|kick1|altsyncram_component|auto_generated|ram_block1a35\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000048040209208241200009240248008209001009209049001008208240240000048048208209000249001209008209200008048040208200208001201009040200048000241001201001200001241001040208240201241209249248009041240048041008209040049041241209241208248041209208200209208001040201048040248009200248048000009209201208041048040241049249000009200040208208041201248001201201209241209200001200241241208049209240240041201000048048041241049240209208040049001249209208009048009200248208241201249001209008241200240009008041208049208049208009",
	mem_init0 => X"20804004824924000020104820820900900924000124920024804020904100104120824120900104820800904800920124004804800100820904024104820820820820120800100124924120004824020120820904924000020800904820824000124804824124804800004024820804920020100004920020820004124924000824120900120824004000004924820100024024804900100800004100124824020804824100904020000800820104804900920900104004104120024004900024924000004924120004920120020904800904004004924800804020800920924020004104900124004824100804920004020904824004924020120020024924",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y14
\inst|kick1|altsyncram_component|auto_generated|ram_block1a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"02410402400000080402012090002082012000480412412400010490400490090482412012002402092482410482000412080092000402402002492402082400400410410400492402010412002412410010412092080090010402412000000492080092082002000080480010090080410410080412090080482480480012012402480490012010090482010482090410080490092482492092010002092012400002402002412000090082092002002480002482000010402480402412010010480010492490490080480412002002082080090400402490080012410010400092012480400402012092092092010092480482482012492400480410412080",
	mem_init0 => X"09009201240049200201201201209040048249240209249249200200200249041200001040249208201241041249209049201240249041200241040001201009240240201040241200000240209200208240001041049241208009241049009248209241240240008008209248208209009208041000241040248008208001209009201208249040248049009008000200209040201009041201240201249048200209048241208249249009208041249049009000249000209248009209209249041041041200248008049200241209249240201248249049008049240040008000201048009248240241248240009208041201041048201241000041008208",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y21_N20
\inst|sample[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[11]~18_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a35~portadataout\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a11~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \inst|sample[11]~18_combout\);

-- Location: LCCOMB_X30_Y21_N6
\inst|sample[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[11]~19_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a59\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a59\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|sample[11]~18_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[11]~19_combout\);

-- Location: M4K_X52_Y27
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000412082002082002080012482010080482012412480080082010090492010492480092000482010002492090012492412480492490082400000490490412480010410402082092410080000410400410080002480402002400000002082492082012490402490490000410090492090090010092490412412412490412000410490412092012480480002412490002002082080092000492080080410090412082480402000002092492482002012490010000082480082400012012092082090002412082082090492082482092410090080092000080092480480080410010412480492092412492490492",
	mem_init0 => X"40040041249200041249249041200048001248048240041248001249201040041201040249048009048208008041248001048208048209209009240000241000041009000049240208208001200000208209009240249200001001040240008200208008240041209000249201201049041201241241249041009241000248248208001001049048209248008249048009000201001008040240000249209240208049208201240001000240201241248049208040240041040009241048208049248000049249009240209208009201000249049208200208248048208249040048208000040209241009208009209001209008048041208000209249248208",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N4
\inst11|sample[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[10]~10_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datac => \inst11|hh1|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst11|sample[10]~10_combout\);

-- Location: LCCOMB_X30_Y21_N14
\inst|sample[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[9]~23_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a57\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|sample[9]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[9]~22_combout\,
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a57\,
	datac => \inst|internal_is_playing~combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[9]~23_combout\);

-- Location: M4K_X13_Y32
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000002492400410490492090090090012012480002480082482092402412000092010490480092002010082402480002092412402080402492090082000480400482012482492080010400480080090002400492410082482012400090402402400002412400410000092410002092002480482412490000010490092402092400082410002080092002490482080492412092482490090082000402482412480482490080012400002490080480092090410090482400400082010010400000000012402090090490480002090002402402482090480412082482410482490080400490400012482402400010412402",
	mem_init0 => X"41040008240041048048001041001240241041048009040200001249241240209040240040249048048241001240001208009049009209001209248040248241208201008201241241041200048001240240001008000008040048041248041000000008200200001200048000001049248240009040009240240201241000048209201048208209201201049201009208209240200208201249248000048009200241249248008248048240001008249000240201209209041209049000200248049249000008048048008241049249200208041209049041201248208208009249001000240201049040208000208008048049040241248048040200008201",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y21_N24
\inst11|sample[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[8]~12_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst11|sample[8]~12_combout\);

-- Location: M4K_X13_Y21
\inst|kick1|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"90080412092082482480010400080012000400482482010490412010090002082000092400402402090000002480000410010400010492090410082012412012490490080490480002400090002492480012010082412402492090412490082482012000092412012492092480492082482090092002402080402492010092090082480090092410400482400482090090492010410092410410000010410410482012002000482412092400400080402010082410400000092090400012082480090092080012492012492012080090400492000480092402400080492082410000090002010482400412410492410000090092082002092412490400490400",
	mem_init0 => X"01008240249241001049240209241001240041200208040048000000248208249008048048041048048241008209008240009048240208001040048048041000209241201009008009000009048249000001248000241241208209241209041009201241249048241208201049240041049201200248209041240208041249248048241049040248041200001248041249241240208200041001241048208200240009201208041240240049001249249048041000241049049248041240009241201000009241209009001001008241248240000000248240000040000001040208041240208049241009009041249041040209048249008008209009000048",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode300w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y13
\inst|kick1|altsyncram_component|auto_generated|ram_block1a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"40001041208201008041248049241249040249048200008241049209041001200240000008000249049040001000208200209209241208048001040001208241048049241040008249200008209241008240248248049249040248009200201201240208249209249041248001248241041041049009248201000240049009000001248201208009249040008041000001049208241240049040048249209041008009009001241048000240009048009008040040241248240208201249008041009209009200208249040008001241048041241048241048040248240008208208041001009241200240201040209041209001008209009200241201048049",
	mem_init0 => X"04000824820824904120800024900800824004120804100904120920124800900120124820900004004020124900900800004924124920900800004904824924904920800824800800124024000000800004824024120120804100020004820024104124900824920920100904904904900104900924100820920924924824104920100804124820120804920900800124820900820004004904104904920804920024100120124800120124004900824100924124924024824924100820120800000904000100004024124920020004024900804920804004024124120120924824120824824124000920824100924820120100120004024804000020920004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/kick.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_kick:inst|kick:kick1|altsyncram:altsyncram_component|altsyncram_kh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8572,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	ena0 => \inst|kick1|altsyncram_component|auto_generated|deep_decode|w_anode313w\(2),
	portaaddr => \inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|kick1|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y21_N4
\inst|sample[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[7]~26_combout\ = (\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\inst|kick1|altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|kick1|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datac => \inst|kick1|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \inst|sample[7]~26_combout\);

-- Location: LCCOMB_X30_Y21_N30
\inst|sample[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sample[7]~27_combout\ = (\inst|internal_is_playing~combout\ & ((\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\inst|kick1|altsyncram_component|auto_generated|ram_block1a55\)) # 
-- (!\inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\inst|sample[7]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|kick1|altsyncram_component|auto_generated|ram_block1a55\,
	datab => \inst|internal_is_playing~combout\,
	datac => \inst|sample[7]~26_combout\,
	datad => \inst|kick1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \inst|sample[7]~27_combout\);

-- Location: M4K_X26_Y30
\inst11|hh1|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000080012092002010410080400492082010082480002410492412490412482080092090090482002082082092400092002482482092402482412480012090482482080410412090402002082480410400002080000080092010492410412402490010410090490480480490090000090482082002010010492482092410000012090012482080400012010092000402410080092000010482012012000080012482482012402410000412490480082012492090000412480410400480492480482090002400492490002400092482002402082402090482412412482480090492012012090012082400490492412092",
	mem_init0 => X"01200248008200049241209000040048240009040240000208209208049249049009201008201001001040040009200249240000201241200240208209249048001009008249201008248008200049200200048200049209009208000000241209249248201200249009248249241001001200040008008209009209208241040040001041001249049208049041200249040241001008009240040248248248008249241208000249208000040008209248248001041008048041200040001041001041200200049208201009201249008240049248041209040201200200200009241249041248000201200001201209249049040209001240008000049009",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../hex/hh.hex",
	init_file_layout => "port_a",
	logical_ram_name => "sample_reader_hh:inst11|hh:hh1|altsyncram:altsyncram_component|altsyncram_ua71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 3953,
	port_a_logical_ram_width => 24,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst7|pulse_48KHz~clkctrl_outclk\,
	portaaddr => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|hh1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y24_N24
\inst11|sample[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|sample[6]~14_combout\ = (\inst11|internal_is_playing~combout\ & \inst11|hh1|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|internal_is_playing~combout\,
	datad => \inst11|hh1|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst11|sample[6]~14_combout\);

-- Location: LCCOMB_X34_Y21_N22
\inst9|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst11|sample[7]~13_combout\ & ((\inst|sample[7]~27_combout\ & (\inst9|Add0~13\ & VCC)) # (!\inst|sample[7]~27_combout\ & (!\inst9|Add0~13\)))) # (!\inst11|sample[7]~13_combout\ & ((\inst|sample[7]~27_combout\ & 
-- (!\inst9|Add0~13\)) # (!\inst|sample[7]~27_combout\ & ((\inst9|Add0~13\) # (GND)))))
-- \inst9|Add0~15\ = CARRY((\inst11|sample[7]~13_combout\ & (!\inst|sample[7]~27_combout\ & !\inst9|Add0~13\)) # (!\inst11|sample[7]~13_combout\ & ((!\inst9|Add0~13\) # (!\inst|sample[7]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[7]~13_combout\,
	datab => \inst|sample[7]~27_combout\,
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X34_Y21_N24
\inst9|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = ((\inst|sample[8]~25_combout\ $ (\inst11|sample[8]~12_combout\ $ (!\inst9|Add0~15\)))) # (GND)
-- \inst9|Add0~17\ = CARRY((\inst|sample[8]~25_combout\ & ((\inst11|sample[8]~12_combout\) # (!\inst9|Add0~15\))) # (!\inst|sample[8]~25_combout\ & (\inst11|sample[8]~12_combout\ & !\inst9|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[8]~25_combout\,
	datab => \inst11|sample[8]~12_combout\,
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCCOMB_X34_Y21_N26
\inst9|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst11|sample[9]~11_combout\ & ((\inst|sample[9]~23_combout\ & (\inst9|Add0~17\ & VCC)) # (!\inst|sample[9]~23_combout\ & (!\inst9|Add0~17\)))) # (!\inst11|sample[9]~11_combout\ & ((\inst|sample[9]~23_combout\ & 
-- (!\inst9|Add0~17\)) # (!\inst|sample[9]~23_combout\ & ((\inst9|Add0~17\) # (GND)))))
-- \inst9|Add0~19\ = CARRY((\inst11|sample[9]~11_combout\ & (!\inst|sample[9]~23_combout\ & !\inst9|Add0~17\)) # (!\inst11|sample[9]~11_combout\ & ((!\inst9|Add0~17\) # (!\inst|sample[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[9]~11_combout\,
	datab => \inst|sample[9]~23_combout\,
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~18_combout\,
	cout => \inst9|Add0~19\);

-- Location: LCCOMB_X34_Y21_N28
\inst9|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = ((\inst|sample[10]~21_combout\ $ (\inst11|sample[10]~10_combout\ $ (!\inst9|Add0~19\)))) # (GND)
-- \inst9|Add0~21\ = CARRY((\inst|sample[10]~21_combout\ & ((\inst11|sample[10]~10_combout\) # (!\inst9|Add0~19\))) # (!\inst|sample[10]~21_combout\ & (\inst11|sample[10]~10_combout\ & !\inst9|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[10]~21_combout\,
	datab => \inst11|sample[10]~10_combout\,
	datad => VCC,
	cin => \inst9|Add0~19\,
	combout => \inst9|Add0~20_combout\,
	cout => \inst9|Add0~21\);

-- Location: LCCOMB_X34_Y20_N4
\inst9|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~28_combout\ = ((\inst|sample[14]~13_combout\ $ (\inst11|sample[14]~6_combout\ $ (!\inst9|Add0~27\)))) # (GND)
-- \inst9|Add0~29\ = CARRY((\inst|sample[14]~13_combout\ & ((\inst11|sample[14]~6_combout\) # (!\inst9|Add0~27\))) # (!\inst|sample[14]~13_combout\ & (\inst11|sample[14]~6_combout\ & !\inst9|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[14]~13_combout\,
	datab => \inst11|sample[14]~6_combout\,
	datad => VCC,
	cin => \inst9|Add0~27\,
	combout => \inst9|Add0~28_combout\,
	cout => \inst9|Add0~29\);

-- Location: LCCOMB_X34_Y20_N6
\inst9|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~30_combout\ = (\inst|sample[15]~11_combout\ & ((\inst11|sample[15]~5_combout\ & (\inst9|Add0~29\ & VCC)) # (!\inst11|sample[15]~5_combout\ & (!\inst9|Add0~29\)))) # (!\inst|sample[15]~11_combout\ & ((\inst11|sample[15]~5_combout\ & 
-- (!\inst9|Add0~29\)) # (!\inst11|sample[15]~5_combout\ & ((\inst9|Add0~29\) # (GND)))))
-- \inst9|Add0~31\ = CARRY((\inst|sample[15]~11_combout\ & (!\inst11|sample[15]~5_combout\ & !\inst9|Add0~29\)) # (!\inst|sample[15]~11_combout\ & ((!\inst9|Add0~29\) # (!\inst11|sample[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sample[15]~11_combout\,
	datab => \inst11|sample[15]~5_combout\,
	datad => VCC,
	cin => \inst9|Add0~29\,
	combout => \inst9|Add0~30_combout\,
	cout => \inst9|Add0~31\);

-- Location: LCCOMB_X34_Y20_N16
\inst9|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~40_combout\ = ((\inst11|sample[20]~0_combout\ $ (\inst|sample[20]~1_combout\ $ (!\inst9|Add0~39\)))) # (GND)
-- \inst9|Add0~41\ = CARRY((\inst11|sample[20]~0_combout\ & ((\inst|sample[20]~1_combout\) # (!\inst9|Add0~39\))) # (!\inst11|sample[20]~0_combout\ & (\inst|sample[20]~1_combout\ & !\inst9|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[20]~0_combout\,
	datab => \inst|sample[20]~1_combout\,
	datad => VCC,
	cin => \inst9|Add0~39\,
	combout => \inst9|Add0~40_combout\,
	cout => \inst9|Add0~41\);

-- Location: LCCOMB_X34_Y20_N18
\inst9|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~42_combout\ = (\inst11|sample[21]~23_combout\ & ((\inst|sample[21]~47_combout\ & (\inst9|Add0~41\ & VCC)) # (!\inst|sample[21]~47_combout\ & (!\inst9|Add0~41\)))) # (!\inst11|sample[21]~23_combout\ & ((\inst|sample[21]~47_combout\ & 
-- (!\inst9|Add0~41\)) # (!\inst|sample[21]~47_combout\ & ((\inst9|Add0~41\) # (GND)))))
-- \inst9|Add0~43\ = CARRY((\inst11|sample[21]~23_combout\ & (!\inst|sample[21]~47_combout\ & !\inst9|Add0~41\)) # (!\inst11|sample[21]~23_combout\ & ((!\inst9|Add0~41\) # (!\inst|sample[21]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|sample[21]~23_combout\,
	datab => \inst|sample[21]~47_combout\,
	datad => VCC,
	cin => \inst9|Add0~41\,
	combout => \inst9|Add0~42_combout\,
	cout => \inst9|Add0~43\);

-- Location: LCCOMB_X34_Y20_N22
\inst9|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~46_combout\ = \inst|sample[23]~43_combout\ $ (\inst9|Add0~45\ $ (\inst11|sample[23]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|sample[23]~43_combout\,
	datad => \inst11|sample[23]~21_combout\,
	cin => \inst9|Add0~45\,
	combout => \inst9|Add0~46_combout\);

-- Location: LCCOMB_X35_Y21_N8
\inst7|LRDATA[26]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[26]~25_cout\ = CARRY((\inst9|Add0~0_combout\ & \inst9|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst9|Add0~46_combout\,
	datad => VCC,
	cout => \inst7|LRDATA[26]~25_cout\);

-- Location: LCCOMB_X35_Y21_N10
\inst7|LRDATA[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[26]~26_combout\ = (\inst9|Add0~2_combout\ & (!\inst7|LRDATA[26]~25_cout\)) # (!\inst9|Add0~2_combout\ & ((\inst7|LRDATA[26]~25_cout\) # (GND)))
-- \inst7|LRDATA[26]~27\ = CARRY((!\inst7|LRDATA[26]~25_cout\) # (!\inst9|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~2_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[26]~25_cout\,
	combout => \inst7|LRDATA[26]~26_combout\,
	cout => \inst7|LRDATA[26]~27\);

-- Location: LCCOMB_X35_Y21_N12
\inst7|LRDATA[27]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[27]~28_combout\ = (\inst9|Add0~4_combout\ & (\inst7|LRDATA[26]~27\ $ (GND))) # (!\inst9|Add0~4_combout\ & (!\inst7|LRDATA[26]~27\ & VCC))
-- \inst7|LRDATA[27]~29\ = CARRY((\inst9|Add0~4_combout\ & !\inst7|LRDATA[26]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~4_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[26]~27\,
	combout => \inst7|LRDATA[27]~28_combout\,
	cout => \inst7|LRDATA[27]~29\);

-- Location: LCCOMB_X35_Y21_N14
\inst7|LRDATA[28]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[28]~30_combout\ = (\inst9|Add0~6_combout\ & (!\inst7|LRDATA[27]~29\)) # (!\inst9|Add0~6_combout\ & ((\inst7|LRDATA[27]~29\) # (GND)))
-- \inst7|LRDATA[28]~31\ = CARRY((!\inst7|LRDATA[27]~29\) # (!\inst9|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~6_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[27]~29\,
	combout => \inst7|LRDATA[28]~30_combout\,
	cout => \inst7|LRDATA[28]~31\);

-- Location: LCCOMB_X35_Y21_N18
\inst7|LRDATA[30]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[30]~34_combout\ = (\inst9|Add0~10_combout\ & (!\inst7|LRDATA[29]~33\)) # (!\inst9|Add0~10_combout\ & ((\inst7|LRDATA[29]~33\) # (GND)))
-- \inst7|LRDATA[30]~35\ = CARRY((!\inst7|LRDATA[29]~33\) # (!\inst9|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~10_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[29]~33\,
	combout => \inst7|LRDATA[30]~34_combout\,
	cout => \inst7|LRDATA[30]~35\);

-- Location: LCCOMB_X35_Y21_N20
\inst7|LRDATA[31]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[31]~36_combout\ = (\inst9|Add0~12_combout\ & (\inst7|LRDATA[30]~35\ $ (GND))) # (!\inst9|Add0~12_combout\ & (!\inst7|LRDATA[30]~35\ & VCC))
-- \inst7|LRDATA[31]~37\ = CARRY((\inst9|Add0~12_combout\ & !\inst7|LRDATA[30]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~12_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[30]~35\,
	combout => \inst7|LRDATA[31]~36_combout\,
	cout => \inst7|LRDATA[31]~37\);

-- Location: LCCOMB_X34_Y23_N24
\inst7|LRDATA[25]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[25]~66_combout\ = (\inst7|AUD_DACLRCK~0_combout\ & \inst7|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|AUD_DACLRCK~0_combout\,
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|LRDATA[25]~66_combout\);

-- Location: LCFF_X35_Y21_N21
\inst7|LRDATA[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[31]~36_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(31));

-- Location: LCCOMB_X35_Y23_N12
\inst7|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~8_combout\ = (\inst7|BBcount\(0) & (\inst7|BBcount\(5) $ (((!\inst7|BBcount\(4) & \inst7|BBcount\(3)))))) # (!\inst7|BBcount\(0) & ((\inst7|BBcount\(3) & (\inst7|BBcount\(5))) # (!\inst7|BBcount\(3) & ((\inst7|BBcount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(5),
	datab => \inst7|BBcount\(0),
	datac => \inst7|BBcount\(4),
	datad => \inst7|BBcount\(3),
	combout => \inst7|Mux0~8_combout\);

-- Location: LCCOMB_X35_Y21_N22
\inst7|LRDATA[32]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[32]~38_combout\ = (\inst9|Add0~14_combout\ & (!\inst7|LRDATA[31]~37\)) # (!\inst9|Add0~14_combout\ & ((\inst7|LRDATA[31]~37\) # (GND)))
-- \inst7|LRDATA[32]~39\ = CARRY((!\inst7|LRDATA[31]~37\) # (!\inst9|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~14_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[31]~37\,
	combout => \inst7|LRDATA[32]~38_combout\,
	cout => \inst7|LRDATA[32]~39\);

-- Location: LCCOMB_X35_Y21_N24
\inst7|LRDATA[33]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[33]~40_combout\ = (\inst9|Add0~16_combout\ & (\inst7|LRDATA[32]~39\ $ (GND))) # (!\inst9|Add0~16_combout\ & (!\inst7|LRDATA[32]~39\ & VCC))
-- \inst7|LRDATA[33]~41\ = CARRY((\inst9|Add0~16_combout\ & !\inst7|LRDATA[32]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~16_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[32]~39\,
	combout => \inst7|LRDATA[33]~40_combout\,
	cout => \inst7|LRDATA[33]~41\);

-- Location: LCCOMB_X35_Y21_N26
\inst7|LRDATA[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[10]~42_combout\ = (\inst9|Add0~18_combout\ & (!\inst7|LRDATA[33]~41\)) # (!\inst9|Add0~18_combout\ & ((\inst7|LRDATA[33]~41\) # (GND)))
-- \inst7|LRDATA[10]~43\ = CARRY((!\inst7|LRDATA[33]~41\) # (!\inst9|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~18_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[33]~41\,
	combout => \inst7|LRDATA[10]~42_combout\,
	cout => \inst7|LRDATA[10]~43\);

-- Location: LCCOMB_X35_Y21_N28
\inst7|LRDATA[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[11]~44_combout\ = (\inst9|Add0~20_combout\ & (\inst7|LRDATA[10]~43\ $ (GND))) # (!\inst9|Add0~20_combout\ & (!\inst7|LRDATA[10]~43\ & VCC))
-- \inst7|LRDATA[11]~45\ = CARRY((\inst9|Add0~20_combout\ & !\inst7|LRDATA[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~20_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[10]~43\,
	combout => \inst7|LRDATA[11]~44_combout\,
	cout => \inst7|LRDATA[11]~45\);

-- Location: LCCOMB_X35_Y20_N0
\inst7|LRDATA[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[13]~48_combout\ = (\inst9|Add0~24_combout\ & (\inst7|LRDATA[12]~47\ $ (GND))) # (!\inst9|Add0~24_combout\ & (!\inst7|LRDATA[12]~47\ & VCC))
-- \inst7|LRDATA[13]~49\ = CARRY((\inst9|Add0~24_combout\ & !\inst7|LRDATA[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~24_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[12]~47\,
	combout => \inst7|LRDATA[13]~48_combout\,
	cout => \inst7|LRDATA[13]~49\);

-- Location: LCCOMB_X35_Y20_N2
\inst7|LRDATA[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[14]~50_combout\ = (\inst9|Add0~26_combout\ & (!\inst7|LRDATA[13]~49\)) # (!\inst9|Add0~26_combout\ & ((\inst7|LRDATA[13]~49\) # (GND)))
-- \inst7|LRDATA[14]~51\ = CARRY((!\inst7|LRDATA[13]~49\) # (!\inst9|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~26_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[13]~49\,
	combout => \inst7|LRDATA[14]~50_combout\,
	cout => \inst7|LRDATA[14]~51\);

-- Location: LCFF_X35_Y20_N3
\inst7|LRDATA[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[14]~50_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(14));

-- Location: LCCOMB_X35_Y20_N28
\inst7|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~4_combout\ = (\inst7|BBcount\(0) & ((\inst7|LRDATA\(31)) # ((\inst7|Mux0~8_combout\)))) # (!\inst7|BBcount\(0) & (((!\inst7|Mux0~8_combout\ & \inst7|LRDATA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datab => \inst7|LRDATA\(31),
	datac => \inst7|Mux0~8_combout\,
	datad => \inst7|LRDATA\(14),
	combout => \inst7|Mux0~4_combout\);

-- Location: LCCOMB_X35_Y20_N6
\inst7|LRDATA[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[16]~54_combout\ = (\inst9|Add0~30_combout\ & (!\inst7|LRDATA[15]~53\)) # (!\inst9|Add0~30_combout\ & ((\inst7|LRDATA[15]~53\) # (GND)))
-- \inst7|LRDATA[16]~55\ = CARRY((!\inst7|LRDATA[15]~53\) # (!\inst9|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~30_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[15]~53\,
	combout => \inst7|LRDATA[16]~54_combout\,
	cout => \inst7|LRDATA[16]~55\);

-- Location: LCCOMB_X35_Y20_N8
\inst7|LRDATA[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[17]~56_combout\ = (\inst9|Add0~32_combout\ & (\inst7|LRDATA[16]~55\ $ (GND))) # (!\inst9|Add0~32_combout\ & (!\inst7|LRDATA[16]~55\ & VCC))
-- \inst7|LRDATA[17]~57\ = CARRY((\inst9|Add0~32_combout\ & !\inst7|LRDATA[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~32_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[16]~55\,
	combout => \inst7|LRDATA[17]~56_combout\,
	cout => \inst7|LRDATA[17]~57\);

-- Location: LCCOMB_X35_Y20_N10
\inst7|LRDATA[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[18]~58_combout\ = (\inst9|Add0~34_combout\ & (!\inst7|LRDATA[17]~57\)) # (!\inst9|Add0~34_combout\ & ((\inst7|LRDATA[17]~57\) # (GND)))
-- \inst7|LRDATA[18]~59\ = CARRY((!\inst7|LRDATA[17]~57\) # (!\inst9|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~34_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[17]~57\,
	combout => \inst7|LRDATA[18]~58_combout\,
	cout => \inst7|LRDATA[18]~59\);

-- Location: LCCOMB_X35_Y20_N12
\inst7|LRDATA[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[19]~60_combout\ = (\inst9|Add0~36_combout\ & (\inst7|LRDATA[18]~59\ $ (GND))) # (!\inst9|Add0~36_combout\ & (!\inst7|LRDATA[18]~59\ & VCC))
-- \inst7|LRDATA[19]~61\ = CARRY((\inst9|Add0~36_combout\ & !\inst7|LRDATA[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~36_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[18]~59\,
	combout => \inst7|LRDATA[19]~60_combout\,
	cout => \inst7|LRDATA[19]~61\);

-- Location: LCCOMB_X35_Y20_N14
\inst7|LRDATA[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[20]~62_combout\ = (\inst9|Add0~38_combout\ & (!\inst7|LRDATA[19]~61\)) # (!\inst9|Add0~38_combout\ & ((\inst7|LRDATA[19]~61\) # (GND)))
-- \inst7|LRDATA[20]~63\ = CARRY((!\inst7|LRDATA[19]~61\) # (!\inst9|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~38_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[19]~61\,
	combout => \inst7|LRDATA[20]~62_combout\,
	cout => \inst7|LRDATA[20]~63\);

-- Location: LCCOMB_X35_Y20_N16
\inst7|LRDATA[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[21]~64_combout\ = (\inst9|Add0~40_combout\ & (\inst7|LRDATA[20]~63\ $ (GND))) # (!\inst9|Add0~40_combout\ & (!\inst7|LRDATA[20]~63\ & VCC))
-- \inst7|LRDATA[21]~65\ = CARRY((\inst9|Add0~40_combout\ & !\inst7|LRDATA[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~40_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[20]~63\,
	combout => \inst7|LRDATA[21]~64_combout\,
	cout => \inst7|LRDATA[21]~65\);

-- Location: LCCOMB_X35_Y20_N18
\inst7|LRDATA[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[22]~67_combout\ = (\inst9|Add0~42_combout\ & (!\inst7|LRDATA[21]~65\)) # (!\inst9|Add0~42_combout\ & ((\inst7|LRDATA[21]~65\) # (GND)))
-- \inst7|LRDATA[22]~68\ = CARRY((!\inst7|LRDATA[21]~65\) # (!\inst9|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~42_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[21]~65\,
	combout => \inst7|LRDATA[22]~67_combout\,
	cout => \inst7|LRDATA[22]~68\);

-- Location: LCFF_X35_Y20_N19
\inst7|LRDATA[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[22]~67_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(22));

-- Location: LCCOMB_X35_Y20_N30
\inst7|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~5_combout\ = (\inst7|Mux0~4_combout\ & ((\inst7|LRDATA\(15)) # ((!\inst7|Mux0~8_combout\)))) # (!\inst7|Mux0~4_combout\ & (((\inst7|Mux0~8_combout\ & \inst7|LRDATA\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LRDATA\(15),
	datab => \inst7|Mux0~4_combout\,
	datac => \inst7|Mux0~8_combout\,
	datad => \inst7|LRDATA\(22),
	combout => \inst7|Mux0~5_combout\);

-- Location: LCCOMB_X35_Y20_N20
\inst7|LRDATA[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[23]~69_combout\ = (\inst9|Add0~44_combout\ & (\inst7|LRDATA[22]~68\ $ (GND))) # (!\inst9|Add0~44_combout\ & (!\inst7|LRDATA[22]~68\ & VCC))
-- \inst7|LRDATA[23]~70\ = CARRY((\inst9|Add0~44_combout\ & !\inst7|LRDATA[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~44_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[22]~68\,
	combout => \inst7|LRDATA[23]~69_combout\,
	cout => \inst7|LRDATA[23]~70\);

-- Location: LCFF_X35_Y20_N21
\inst7|LRDATA[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[23]~69_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(23));

-- Location: LCFF_X35_Y21_N19
\inst7|LRDATA[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[30]~34_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(30));

-- Location: LCCOMB_X35_Y21_N0
\inst7|Mux0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~19_combout\ = (\inst7|BBcount\(0) & (\inst7|LRDATA\(23))) # (!\inst7|BBcount\(0) & ((\inst7|LRDATA\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datac => \inst7|LRDATA\(23),
	datad => \inst7|LRDATA\(30),
	combout => \inst7|Mux0~19_combout\);

-- Location: LCCOMB_X35_Y23_N24
\inst7|Mux0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~20_combout\ = (\inst7|Mux0~7_combout\ & (\inst7|Mux0~5_combout\ & ((!\inst7|Mux0~8_combout\)))) # (!\inst7|Mux0~7_combout\ & ((\inst7|Mux0~8_combout\ & (\inst7|Mux0~5_combout\)) # (!\inst7|Mux0~8_combout\ & ((\inst7|Mux0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~7_combout\,
	datab => \inst7|Mux0~5_combout\,
	datac => \inst7|Mux0~19_combout\,
	datad => \inst7|Mux0~8_combout\,
	combout => \inst7|Mux0~20_combout\);

-- Location: LCFF_X35_Y21_N11
\inst7|LRDATA[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[26]~26_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(26));

-- Location: LCFF_X35_Y20_N13
\inst7|LRDATA[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[19]~60_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(19));

-- Location: LCCOMB_X35_Y23_N8
\inst7|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~10_combout\ = (\inst7|BBcount\(0) & ((\inst7|LRDATA\(19)))) # (!\inst7|BBcount\(0) & (\inst7|LRDATA\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|BBcount\(0),
	datac => \inst7|LRDATA\(26),
	datad => \inst7|LRDATA\(19),
	combout => \inst7|Mux0~10_combout\);

-- Location: LCFF_X35_Y21_N29
\inst7|LRDATA[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[11]~44_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(11));

-- Location: LCFF_X35_Y21_N27
\inst7|LRDATA[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[10]~42_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(10));

-- Location: LCFF_X35_Y21_N13
\inst7|LRDATA[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[27]~28_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(27));

-- Location: LCCOMB_X35_Y21_N4
\inst7|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst7|BBcount\(0) & (((\inst7|Mux0~8_combout\) # (\inst7|LRDATA\(27))))) # (!\inst7|BBcount\(0) & (\inst7|LRDATA\(10) & (!\inst7|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datab => \inst7|LRDATA\(10),
	datac => \inst7|Mux0~8_combout\,
	datad => \inst7|LRDATA\(27),
	combout => \inst7|Mux0~2_combout\);

-- Location: LCFF_X35_Y20_N11
\inst7|LRDATA[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[18]~58_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(18));

-- Location: LCCOMB_X35_Y21_N6
\inst7|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst7|Mux0~8_combout\ & ((\inst7|Mux0~2_combout\ & (\inst7|LRDATA\(11))) # (!\inst7|Mux0~2_combout\ & ((\inst7|LRDATA\(18)))))) # (!\inst7|Mux0~8_combout\ & (((\inst7|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~8_combout\,
	datab => \inst7|LRDATA\(11),
	datac => \inst7|Mux0~2_combout\,
	datad => \inst7|LRDATA\(18),
	combout => \inst7|Mux0~3_combout\);

-- Location: LCCOMB_X35_Y23_N26
\inst7|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~11_combout\ = (\inst7|Mux0~7_combout\ & (((\inst7|Mux0~3_combout\ & !\inst7|Mux0~8_combout\)))) # (!\inst7|Mux0~7_combout\ & ((\inst7|Mux0~8_combout\ & ((\inst7|Mux0~3_combout\))) # (!\inst7|Mux0~8_combout\ & (\inst7|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~7_combout\,
	datab => \inst7|Mux0~10_combout\,
	datac => \inst7|Mux0~3_combout\,
	datad => \inst7|Mux0~8_combout\,
	combout => \inst7|Mux0~11_combout\);

-- Location: LCFF_X35_Y21_N23
\inst7|LRDATA[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[32]~38_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(32));

-- Location: LCFF_X35_Y20_N7
\inst7|LRDATA[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[16]~54_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(16));

-- Location: LCCOMB_X34_Y23_N12
\inst7|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~10_combout\ = \inst7|Add1~9\ $ (!\inst7|BBcount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|BBcount\(5),
	cin => \inst7|Add1~9\,
	combout => \inst7|Add1~10_combout\);

-- Location: LCFF_X34_Y23_N13
\inst7|BBcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Add1~10_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|BBcount\(5));

-- Location: LCCOMB_X35_Y23_N16
\inst7|Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~14_combout\ = (\inst7|BBcount\(3) & ((\inst7|BBcount\(5) & ((\inst7|LRDATA\(16)))) # (!\inst7|BBcount\(5) & (\inst7|LRDATA\(32))))) # (!\inst7|BBcount\(3) & (\inst7|LRDATA\(32) & ((\inst7|BBcount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(3),
	datab => \inst7|LRDATA\(32),
	datac => \inst7|LRDATA\(16),
	datad => \inst7|BBcount\(5),
	combout => \inst7|Mux0~14_combout\);

-- Location: LCCOMB_X35_Y20_N22
\inst7|LRDATA[24]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[24]~71_combout\ = (\inst9|Add0~46_combout\ & (!\inst7|LRDATA[23]~70\)) # (!\inst9|Add0~46_combout\ & ((\inst7|LRDATA[23]~70\) # (GND)))
-- \inst7|LRDATA[24]~72\ = CARRY((!\inst7|LRDATA[23]~70\) # (!\inst9|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~46_combout\,
	datad => VCC,
	cin => \inst7|LRDATA[23]~70\,
	combout => \inst7|LRDATA[24]~71_combout\,
	cout => \inst7|LRDATA[24]~72\);

-- Location: LCFF_X35_Y20_N23
\inst7|LRDATA[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[24]~71_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(24));

-- Location: LCCOMB_X35_Y23_N6
\inst7|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~13_combout\ = (\inst7|BBcount\(3) & (\inst7|LRDATA\(24) & ((!\inst7|BBcount\(5))))) # (!\inst7|BBcount\(3) & ((\inst7|BBcount\(5) & (\inst7|LRDATA\(24))) # (!\inst7|BBcount\(5) & ((\inst7|LRDATA\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(3),
	datab => \inst7|LRDATA\(24),
	datac => \inst7|LRDATA\(16),
	datad => \inst7|BBcount\(5),
	combout => \inst7|Mux0~13_combout\);

-- Location: LCCOMB_X35_Y23_N2
\inst7|Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~15_combout\ = (\inst7|BBcount\(0) & (\inst7|BBcount\(4))) # (!\inst7|BBcount\(0) & ((\inst7|BBcount\(4) & ((\inst7|Mux0~13_combout\))) # (!\inst7|BBcount\(4) & (\inst7|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datab => \inst7|BBcount\(4),
	datac => \inst7|Mux0~14_combout\,
	datad => \inst7|Mux0~13_combout\,
	combout => \inst7|Mux0~15_combout\);

-- Location: LCFF_X35_Y20_N9
\inst7|LRDATA[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[17]~56_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(17));

-- Location: LCCOMB_X35_Y20_N24
\inst7|LRDATA[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LRDATA[25]~73_combout\ = \inst7|LRDATA[24]~72\ $ (!\inst9|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|Add0~46_combout\,
	cin => \inst7|LRDATA[24]~72\,
	combout => \inst7|LRDATA[25]~73_combout\);

-- Location: LCFF_X35_Y20_N25
\inst7|LRDATA[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[25]~73_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(25));

-- Location: LCCOMB_X35_Y23_N20
\inst7|Mux0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~16_combout\ = (\inst7|BBcount\(3) & (((\inst7|LRDATA\(25) & !\inst7|BBcount\(5))))) # (!\inst7|BBcount\(3) & ((\inst7|BBcount\(5) & ((\inst7|LRDATA\(25)))) # (!\inst7|BBcount\(5) & (\inst7|LRDATA\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(3),
	datab => \inst7|LRDATA\(17),
	datac => \inst7|LRDATA\(25),
	datad => \inst7|BBcount\(5),
	combout => \inst7|Mux0~16_combout\);

-- Location: LCFF_X35_Y21_N25
\inst7|LRDATA[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[33]~40_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(33));

-- Location: LCCOMB_X35_Y23_N28
\inst7|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~12_combout\ = (\inst7|BBcount\(3) & ((\inst7|BBcount\(5) & ((\inst7|LRDATA\(17)))) # (!\inst7|BBcount\(5) & (\inst7|LRDATA\(33))))) # (!\inst7|BBcount\(3) & (\inst7|LRDATA\(33) & ((\inst7|BBcount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(3),
	datab => \inst7|LRDATA\(33),
	datac => \inst7|LRDATA\(17),
	datad => \inst7|BBcount\(5),
	combout => \inst7|Mux0~12_combout\);

-- Location: LCCOMB_X35_Y23_N22
\inst7|Mux0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~17_combout\ = (\inst7|BBcount\(0) & ((\inst7|Mux0~15_combout\ & (\inst7|Mux0~16_combout\)) # (!\inst7|Mux0~15_combout\ & ((\inst7|Mux0~12_combout\))))) # (!\inst7|BBcount\(0) & (\inst7|Mux0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datab => \inst7|Mux0~15_combout\,
	datac => \inst7|Mux0~16_combout\,
	datad => \inst7|Mux0~12_combout\,
	combout => \inst7|Mux0~17_combout\);

-- Location: LCCOMB_X34_Y23_N18
\inst7|Mux0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~18_combout\ = (\inst7|BBcount\(2) & (\inst7|BBcount\(1))) # (!\inst7|BBcount\(2) & ((\inst7|BBcount\(1) & (\inst7|Mux0~11_combout\)) # (!\inst7|BBcount\(1) & ((\inst7|Mux0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(2),
	datab => \inst7|BBcount\(1),
	datac => \inst7|Mux0~11_combout\,
	datad => \inst7|Mux0~17_combout\,
	combout => \inst7|Mux0~18_combout\);

-- Location: LCFF_X35_Y20_N17
\inst7|LRDATA[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[21]~64_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(21));

-- Location: LCFF_X35_Y21_N15
\inst7|LRDATA[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[28]~30_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(28));

-- Location: LCCOMB_X35_Y23_N0
\inst7|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~6_combout\ = (\inst7|BBcount\(0) & (\inst7|LRDATA\(21))) # (!\inst7|BBcount\(0) & ((\inst7|LRDATA\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(0),
	datab => \inst7|LRDATA\(21),
	datad => \inst7|LRDATA\(28),
	combout => \inst7|Mux0~6_combout\);

-- Location: LCFF_X35_Y20_N15
\inst7|LRDATA[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[20]~62_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(20));

-- Location: LCFF_X35_Y20_N1
\inst7|LRDATA[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|LRDATA[13]~48_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|LRDATA[25]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LRDATA\(13));

-- Location: LCCOMB_X35_Y20_N26
\inst7|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst7|Mux0~0_combout\ & (((\inst7|LRDATA\(13)) # (!\inst7|Mux0~8_combout\)))) # (!\inst7|Mux0~0_combout\ & (\inst7|LRDATA\(20) & (\inst7|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~0_combout\,
	datab => \inst7|LRDATA\(20),
	datac => \inst7|Mux0~8_combout\,
	datad => \inst7|LRDATA\(13),
	combout => \inst7|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y23_N30
\inst7|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~9_combout\ = (\inst7|Mux0~7_combout\ & (((\inst7|Mux0~1_combout\ & !\inst7|Mux0~8_combout\)))) # (!\inst7|Mux0~7_combout\ & ((\inst7|Mux0~8_combout\ & ((\inst7|Mux0~1_combout\))) # (!\inst7|Mux0~8_combout\ & (\inst7|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~7_combout\,
	datab => \inst7|Mux0~6_combout\,
	datac => \inst7|Mux0~1_combout\,
	datad => \inst7|Mux0~8_combout\,
	combout => \inst7|Mux0~9_combout\);

-- Location: LCCOMB_X34_Y23_N22
\inst7|Mux0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~21_combout\ = (\inst7|BBcount\(2) & ((\inst7|Mux0~18_combout\ & (\inst7|Mux0~20_combout\)) # (!\inst7|Mux0~18_combout\ & ((\inst7|Mux0~9_combout\))))) # (!\inst7|BBcount\(2) & (((\inst7|Mux0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(2),
	datab => \inst7|Mux0~20_combout\,
	datac => \inst7|Mux0~18_combout\,
	datad => \inst7|Mux0~9_combout\,
	combout => \inst7|Mux0~21_combout\);

-- Location: LCFF_X34_Y23_N23
\inst7|AUD_DACDAT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Mux0~21_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|AUD_DACDAT~regout\);

-- Location: LCCOMB_X34_Y23_N20
\inst7|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal4~1_combout\ = (\inst7|BBcount\(5) & (\inst7|BBcount\(0) & (\inst7|Equal4~0_combout\ & \inst7|BBcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|BBcount\(5),
	datab => \inst7|BBcount\(0),
	datac => \inst7|Equal4~0_combout\,
	datad => \inst7|BBcount\(4),
	combout => \inst7|Equal4~1_combout\);

-- Location: LCFF_X34_Y23_N21
\inst7|AUD_DACLRCK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|Equal4~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst7|AUD_DACLRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|AUD_DACLRCK~regout\);

-- Location: LCCOMB_X59_Y34_N6
\inst7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~0_combout\ = ((\inst7|state.s1~regout\) # ((\inst7|state.s0~regout\) # (\inst7|state.sw_init1~regout\))) # (!\inst7|state.sw_init0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.sw_init0~regout\,
	datab => \inst7|state.s1~regout\,
	datac => \inst7|state.s0~regout\,
	datad => \inst7|state.sw_init1~regout\,
	combout => \inst7|WideOr4~0_combout\);

-- Location: LCCOMB_X55_Y34_N8
\inst7|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~3_combout\ = ((\inst7|state.send~regout\) # ((\inst7|WideOr4~0_combout\) # (!\inst7|WideOr4~1_combout\))) # (!\inst7|WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|WideOr4~2_combout\,
	datab => \inst7|state.send~regout\,
	datac => \inst7|WideOr4~1_combout\,
	datad => \inst7|WideOr4~0_combout\,
	combout => \inst7|WideOr4~3_combout\);

-- Location: LCFF_X55_Y34_N9
\inst7|I2C_SCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|WideOr4~3_combout\,
	ena => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|I2C_SCLK~regout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|I2C_SDAT~reg0_regout\,
	oe => \inst7|I2C_SDAT~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_I2C_SDAT);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_XCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|AUD_MCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_XCK);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|AUD_BCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_BCLK);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|AUD_DACDAT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|AUD_DACLRCK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACLRCK);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|I2C_SCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_I2C_SCLK);
END structure;


