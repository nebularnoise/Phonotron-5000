library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity sdram_main is
	port (
		CLOCK_50: in std_logic;
		SW: in std_logic_vector(17 downto 0);
		LEDG: out  std_LOGIC_VECTOR(1 downto 0);
		LEDR: out std_logic;
		--SDRAM signals
		DRAM_ADDR: out std_LOGIC_VECTOR(11 downto 0) ;
		DRAM_BA_0,DRAM_BA_1,DRAM_CAS_N,DRAM_CKE,DRAM_CLK,DRAM_CS_N: out std_logic;
		DRAM_DQ: inout std_LOGIC_VECTOR(15 downto 0) ;
		DRAM_LDQM,DRAM_UDQM,DRAM_RAS_N,DRAM_WE_N: out std_logic

	);
end sdram_main;



architecture arch of sdram_main is
	signal clk0: std_logic; -- 133.333 MHZ
	signal clk1: std_logic; -- 50 MHZ user side 
	signal clk2: std_logic; -- 133.333 MHZ -3ns
	signal dram_bank: std_logic_vector(1 downto 0);
	signal dll_locked: std_logic;

	signal addr_i: std_logic_vector(21 downto 0);
	signal dat_i: std_logic_vector(31 downto 0);
	signal dat_o: std_logic_vector(31 downto 0);

	signal we_i,ack_o,stb_i,cyc_i,rst_i: std_logic;

	--reg [31:0]  counter;
	
	
	---ADDED FOR VHDL SUPPORT
	signal red_led, green_led: std_logic;
	---
	
	
	component pll
		PORT
		(
			inclk0, areset	: IN STD_LOGIC;
			c0, c1, c2, locked	: OUT STD_LOGIC
		);
	END component;
	
	component sdram_controller
		PORT
		(
			clk_i,dram_clk_i,rst_i,dll_locked: in std_logic;
			
			--all ddr signals
			dram_addr: out std_logic_vector(11 downto 0);
			dram_bank: out std_logic_vector(1 downto 0);
			dram_cas_n,dram_cke,dram_clk,dram_cs_n: out std_logic;
			dram_dq: inout std_logic_vector(15 downto 0);
			dram_ldqm,dram_udqm,dram_ras_n,dram_we_n: out std_logic;
			
			-- wishbone bus
			addr_i: in std_logic_vector(21 downto 0);
			dat_i: in std_logic_vector(31 downto 0);
			dat_o: out std_logic_vector(31 downto 0);
			
			we_i: in std_logic;
			ack_o: out std_logic;
			stb_i,cyc_i: in std_logic
		);
	END component;
	
	component sdram_rw
		PORT
		(
			clk_i,rst_i: in std_logic;
			addr_i: out std_logic_vector(21 downto 0);
			
			dat_i: out std_logic_vector(31 downto 0);
			dat_o: in std_logic_vector(31 downto 0);
			
			we_i: out std_logic;
			
			ack_o: in std_logic;
			stb_i,cyc_i: out std_logic;
			
			green_led, red_led: out std_logic
		);
	END component;
	
	
	
	
begin

	---ADDED FOR VHDL SUPPORT
	LEDR <= red_led;
	LEDG(1) <= green_led;
	---


	LEDG(0) <= dll_locked;
	DRAM_BA_1 <= dram_bank(1);
	DRAM_BA_0 <= dram_bank(0);
	
	rst_i <= '0';
	
	
	pll_inst : pll 
	port map (
		areset =>SW(0),
		inclk0 =>CLOCK_50,
		c0 => clk0,
		c1 => clk1,
		c2 => clk2,
		locked => dll_locked
	);
	
	sdram_controller_inst : sdram_controller
	port map(
		clk_i => clk0,
		dram_clk_i => clk2,
		rst_i => rst_i,
		dll_locked => dll_locked,
		--all sdram signals
		dram_addr => DRAM_ADDR,
		dram_bank => dram_bank,
		dram_cas_n => DRAM_CAS_N,
		dram_cke => DRAM_CKE,
		dram_clk => DRAM_CLK,
		dram_cs_n => DRAM_CS_N,
		dram_dq => DRAM_DQ,
		dram_ldqm => DRAM_LDQM,
		dram_udqm => DRAM_UDQM,
		dram_ras_n => DRAM_RAS_N,
		dram_we_n => DRAM_WE_N,
		--/ wishbone bus
		addr_i => addr_i,
		dat_i => dat_i,
		dat_o => dat_o,
		we_i => we_i,
		ack_o => ack_o,
		stb_i => stb_i,
		cyc_i => cyc_i
     );



  rw_inst: sdram_rw
    port map(
     clk_i => clk1,
     rst_i => rst_i,
     addr_i => addr_i,
     dat_i => dat_i,
     dat_o => dat_o,
     we_i => we_i,
     ack_o => ack_o,
     stb_i => stb_i,
     cyc_i => cyc_i,
     red_led => red_led,
     green_led => green_led
     );

end arch;