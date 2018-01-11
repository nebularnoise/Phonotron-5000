
library ieee;
use ieee.std_logic_1164.all;

entity SRAM_DE2 is
port(
	clk : in std_logic;
	reset_n : in std_logic;
	avs_s0_readdata : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	avs_s0_writedata  : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	avs_s0_address : IN STD_LOGIC_VECTOR (17 DOWNTO 0);
	avs_s0_write : in std_logic;
	avs_s0_read : in std_logic;
--	avs_s0_outputenable : in std_logic;
--	avs_s0_chipselect  : in std_logic;
	avs_s0_byteenable  : in std_logic_vector(1 downto 0);
	
	coe_SRAM_ADDR : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
	coe_SRAM_DQ :INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	coe_SRAM_WE_N : OUT STD_LOGIC;
	coe_SRAM_OE_N : OUT STD_LOGIC;
	coe_SRAM_UB_N : OUT STD_LOGIC;
	coe_SRAM_LB_N : OUT STD_LOGIC;
	coe_SRAM_CE_N : OUT STD_LOGIC

	);
end entity;


architecture A of SRAM_DE2 is
begin

coe_SRAM_DQ <= avs_s0_writedata when avs_s0_write = '1' else (others => 'Z');
avs_s0_readdata <= coe_SRAM_DQ;
coe_SRAM_ADDR <= avs_s0_address;
coe_SRAM_WE_N	<=	not avs_s0_write;
--coe_SRAM_OE_N	<=	not avs_s0_outputenable;
coe_SRAM_OE_N	<=	not avs_s0_read;
--coe_SRAM_CE_N	<=	not avs_s0_chipselect;
coe_SRAM_CE_N	<=	not (avs_s0_read or avs_s0_write);
coe_SRAM_UB_N	<=	not avs_s0_byteenable(1);
coe_SRAM_LB_N	<=	not avs_s0_byteenable(0);
end A;