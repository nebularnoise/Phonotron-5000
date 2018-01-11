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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/24/2017 14:28:27"
                                                            
-- Vhdl Test Bench template for design  :  bpm_clock
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bpm_clock_vhd_tst IS
END bpm_clock_vhd_tst;
ARCHITECTURE bpm_clock_arch OF bpm_clock_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bpm : integer range 0 to 200 := 120;
SIGNAL bpm_clk_32 : STD_LOGIC := '0';
SIGNAL fast_clk : STD_LOGIC := '1';
SIGNAL fast_clk_frequency : integer range 0 to 100000000:= 50000000;
COMPONENT bpm_clock
	PORT (
		fast_clk: in std_logic;
		fast_clk_frequency: in integer range 0 to 100000000;
		bpm: in integer range 0 to 200;
		bpm_clk_32: out std_logic
	);
END COMPONENT;
BEGIN
	i1 : bpm_clock
	PORT MAP (
-- list connections between master ports and signals
	bpm => bpm,
	bpm_clk_32 => bpm_clk_32,
	fast_clk => fast_clk,
	fast_clk_frequency => fast_clk_frequency
	);
	
	fast_clk <= not(fast_clk) after 20 ns;	
	
	
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations 
                                     
BEGIN           
      
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END bpm_clock_arch;
