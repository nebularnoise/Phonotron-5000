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
-- CREATED		"Wed Oct 25 16:41:12 2017"

LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


LIBRARY work;

ENTITY ctrl_mem IS 
	PORT
	(
		wr_en :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		add_col :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		add_lig :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		data :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		wr_address :  IN  STD_LOGIC_VECTOR(16 DOWNTO 0);
		color :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END ctrl_mem;

ARCHITECTURE bdf_type OF ctrl_mem IS 

	signal rd_address : std_logic_vector(16 downto 0);
	signal clor_tmp : std_logic_vector(1 downto 0);
	
COMPONENT double_ram
	PORT(wren : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 rdaddress : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;



BEGIN 


	process(clock)

	variable col_cor : std_logic_vector(9 downto 0);
	variable lig_cor : std_logic_vector(9 downto 0);

	
	begin

		col_cor :=add_col;
		lig_cor :=add_lig;

		rd_address(8 downto 0) <= col_cor(9 downto 1);
		rd_address(16 downto 9)  <= lig_cor(8 downto 1);
		
--		if(to_integer(unsigned(col_cor(9 downto 1))) = 128 and to_integer(unsigned(lig_cor(8 downto 1))) = 128)then
--			color <= (OTHERs => '1');	
--		else
--			color <= clor_tmp;
--		end if;

	end process;
	
b2v_inst12 : double_ram
PORT MAP(wren => wr_en,
		 clock => clock,
		 data => data,
		 rdaddress => rd_address,
		 wraddress => wr_address,
		 q => color);


END bdf_type;