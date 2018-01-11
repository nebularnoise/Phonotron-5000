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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Full Version"
-- CREATED		"Wed Nov 08 12:24:59 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY main IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		PS2_DAT :  IN  STD_LOGIC;
		PS2_CLK :  IN  STD_LOGIC;
		SRAM_DQ :  INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		VGA_CLK :  OUT  STD_LOGIC;
		VGA_HS :  OUT  STD_LOGIC;
		VGA_VS :  OUT  STD_LOGIC;
		SRAM_WE_N :  OUT  STD_LOGIC;
		SRAM_OE_N :  OUT  STD_LOGIC;
		SRAM_UB_N :  OUT  STD_LOGIC;
		SRAM_LB_N :  OUT  STD_LOGIC;
		SRAM_CE_N :  OUT  STD_LOGIC;
		LEDR :  OUT  STD_LOGIC_VECTOR(17 DOWNTO 0);
		SRAM_ADDR :  OUT  STD_LOGIC_VECTOR(17 DOWNTO 0);
		VGA_B :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		VGA_G :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		VGA_R :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END main;

ARCHITECTURE bdf_type OF main IS 

COMPONENT nios_ps2
	PORT(CLOCK_50 : IN STD_LOGIC;
		 CLOCK_100 : IN STD_LOGIC;
		 PS2_CLK : IN STD_LOGIC;
		 PS2_DAT : IN STD_LOGIC;
		 kick_irq : IN STD_LOGIC;
		 snare_irq : IN STD_LOGIC;
		 hh_irq : IN STD_LOGIC;
		 clap_irq : IN STD_LOGIC;
		 dac_irq : IN STD_LOGIC;
		 CLOCK_27 : IN STD_LOGIC;
		 I2C_SDAT : INOUT STD_LOGIC;
		 in_bus : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		 SRAM_DQ : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SRAM_WE_N : OUT STD_LOGIC;
		 SRAM_OE_N : OUT STD_LOGIC;
		 SRAM_UB_N : OUT STD_LOGIC;
		 SRAM_LB_N : OUT STD_LOGIC;
		 SRAM_CE_N : OUT STD_LOGIC;
		 wr_en : OUT STD_LOGIC;
		 AUD_BCLK : OUT STD_LOGIC;
		 AUD_DACDAT : OUT STD_LOGIC;
		 AUD_XCK : OUT STD_LOGIC;
		 AUD_DACLRCK : OUT STD_LOGIC;
		 I2C_SCLK : OUT STD_LOGIC;
		 audio_sos : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 color_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 led_r : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		 seq_clap : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 seq_hh : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 seq_kick : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 seq_snare : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SRAM_ADDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		 wr_address : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ctrl_mem
	PORT(wr_en : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 add_col : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 add_lig : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 wr_address : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		 color : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cptadpixel
	PORT(horl : IN STD_LOGIC;
		 adr_col : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 adr_lig : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rvb
	PORT(video : IN STD_LOGIC;
		 couleur : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 bleu : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 rouge : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 vert : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT synchro
	PORT(horl : IN STD_LOGIC;
		 adr_col : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 adr_lig : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 sync_H : OUT STD_LOGIC;
		 sync_V : OUT STD_LOGIC;
		 video : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pll_27
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pll_25
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pll_100
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Adr_col :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	Adr_lig :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	CLK_100 :  STD_LOGIC;
SIGNAL	CLK_27 :  STD_LOGIC;
SIGNAL	colour :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	colour_out :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	VGA_CLK_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	video :  STD_LOGIC;
SIGNAL	wr_address :  STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL	wr_en :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(19 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (Adr_lig(9 DOWNTO 0) & Adr_col(9 DOWNTO 0));


b2v_inst : nios_ps2
PORT MAP(CLOCK_50 => CLOCK_50,
		 CLOCK_100 => CLK_100,
		 PS2_CLK => PS2_CLK,
		 PS2_DAT => PS2_DAT,
		 CLOCK_27 => CLK_27,
		 in_bus => GDFX_TEMP_SIGNAL_0,
		 SRAM_DQ => SRAM_DQ,
		 SRAM_WE_N => SRAM_WE_N,
		 SRAM_OE_N => SRAM_OE_N,
		 SRAM_UB_N => SRAM_UB_N,
		 SRAM_LB_N => SRAM_LB_N,
		 SRAM_CE_N => SRAM_CE_N,
		 wr_en => wr_en,
		 color_out => colour_out,
		 led_r => LEDR,
		 SRAM_ADDR => SRAM_ADDR,
		 wr_address => wr_address);


b2v_inst1 : ctrl_mem
PORT MAP(wr_en => wr_en,
		 clock => CLK_100,
		 add_col => Adr_col,
		 add_lig => Adr_lig,
		 data => colour_out,
		 wr_address => wr_address,
		 color => colour);


b2v_inst2 : cptadpixel
PORT MAP(horl => VGA_CLK_ALTERA_SYNTHESIZED,
		 adr_col => Adr_col,
		 adr_lig => Adr_lig);


b2v_inst3 : rvb
PORT MAP(video => video,
		 couleur => colour,
		 bleu => VGA_B,
		 rouge => VGA_R,
		 vert => VGA_G);


b2v_inst4 : synchro
PORT MAP(horl => VGA_CLK_ALTERA_SYNTHESIZED,
		 adr_col => Adr_col,
		 adr_lig => Adr_lig,
		 sync_H => VGA_HS,
		 sync_V => VGA_VS,
		 video => video);


b2v_inst5 : pll_27
PORT MAP(inclk0 => CLOCK_50,
		 c0 => CLK_27);


b2v_inst7 : pll_25
PORT MAP(inclk0 => CLOCK_50,
		 c0 => VGA_CLK_ALTERA_SYNTHESIZED);


b2v_inst8 : pll_100
PORT MAP(inclk0 => CLOCK_50,
		 c0 => CLK_100);

VGA_CLK <= VGA_CLK_ALTERA_SYNTHESIZED;

END bdf_type;