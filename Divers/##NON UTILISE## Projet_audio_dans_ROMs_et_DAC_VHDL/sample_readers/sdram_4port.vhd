library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity sdram_4port is
	port (
		
		DAC_CLK: in std_logic;
		CLOCK_50: in std_logic;
	
		ADDRESS_0: in 	STD_LOGIC_VECTOR(21 downto 0);
		ADDRESS_1: in 	STD_LOGIC_VECTOR(21 downto 0);
		ADDRESS_2: in 	STD_LOGIC_VECTOR(21 downto 0);
		ADDRESS_3: in 	STD_LOGIC_VECTOR(21 downto 0);
		DATA_0:		out 	STD_LOGIC_VECTOR(23 downto 0);
		DATA_1:		out 	STD_LOGIC_VECTOR(23 downto 0);
		DATA_2:		out 	STD_LOGIC_VECTOR(23 downto 0);
		DATA_3:		out 	STD_LOGIC_VECTOR(23 downto 0);
		
		
		--SDRAM signals
		DRAM_ADDR: out std_LOGIC_VECTOR(11 downto 0) ;
		DRAM_BA_0,DRAM_BA_1,DRAM_CAS_N,DRAM_CKE,DRAM_CLK,DRAM_CS_N: out std_logic;
		DRAM_DQ: inout std_LOGIC_VECTOR(15 downto 0) ;
		DRAM_LDQM,DRAM_UDQM,DRAM_RAS_N,DRAM_WE_N: out std_logic
		
		
		
	);
	
	
	-- state definitions
	constant START_READ: 		std_logic_vector(1 downto 0) := "00";
	constant READ_SDRAM: 					std_logic_vector(1 downto 0) := "01";
	constant WAIT_READ_ACK:	std_logic_vector(1 downto 0) := "10";
	constant WRITE_SDRAM:	std_logic_vector(1 downto 0) := "11";
	
end sdram_4port;

architecture arch of sdram_4port is

	signal clk0: std_logic; -- 133.333 MHZ
	signal clk1: std_logic; -- 50 MHZ user side 
	signal clk2: std_logic; -- 133.333 MHZ -3ns
	
	
	-- SDRAM signals
	signal dram_bank_r: 	std_logic_vector(1 downto 0);
	signal dll_locked_r: 		std_logic;
	signal addr_i_r: 			std_logic_vector(21 downto 0);
	signal dat_i_r: 				std_logic_vector(31 downto 0);
	signal dat_o_r: 			std_logic_vector(31 downto 0);
	signal we_i_r, ack_o_r, stb_i_r, cyc_i_r, rst_i_r: std_logic;
	
	signal counter: integer range 0 to 3;
	signal state: std_logic_vector(1 downto 0) := WRITE_SDRAM;
	signal address_counter: integer range 0 to 10000 :=0;
	
	signal data_0_r: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal data_1_r: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal data_2_r: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal data_3_r: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');




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


begin

	pll_inst : pll 
	port map (
		areset =>	'0',
		inclk0 =>	CLOCK_50,
		c0 => 		clk0,
		c1 => 		clk1,
		c2 => 		clk2,
		locked => dll_locked_r
	);
	
	sdram_controller_inst : sdram_controller
	port map(
		clk_i => 				clk0,
		dram_clk_i => 		clk2,
		rst_i => 				rst_i_r,
		dll_locked => 		dll_locked_r,
		--all sdram signals
		dram_addr => 		DRAM_ADDR,
		dram_bank => 		dram_bank_r,
		dram_cas_n => 	DRAM_CAS_N,
		dram_cke => 		DRAM_CKE,
		dram_clk => 		DRAM_CLK,
		dram_cs_n => 		DRAM_CS_N,
		dram_dq => 			DRAM_DQ,
		dram_ldqm => 		DRAM_LDQM,
		dram_udqm => 	DRAM_UDQM,
		dram_ras_n => 	DRAM_RAS_N,
		dram_we_n => 		DRAM_WE_N,
		--/ wishbone bus
		addr_i => 			addr_i_r,
		dat_i => 				dat_i_r,
		dat_o => 				dat_o_r,
		we_i => 				we_i_r,
		ack_o => 				ack_o_r,
		stb_i => 				stb_i_r,
		cyc_i => 				cyc_i_r
     );
	 

	
	
	process(CLOCK_50)
	variable rand: real;
	variable seed1, seed2: positive;
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
		
			case state is
				
				when START_READ =>
					state 			<= READ_SDRAM;
					if (counter = 0) then
						addr_i_r <= ADDRESS_0;
					end if;
					if (counter = 1) then 
						addr_i_r <= ADDRESS_1;
					end if;
					if (counter = 2) then 
						addr_i_r <= ADDRESS_2;
					end if;
					if (counter = 3) then 
						addr_i_r <= ADDRESS_3;
					end if;

				when READ_SDRAM =>
					stb_i_r 		<= '1';
					cyc_i_r 		<= '1';
					we_i_r 		<= '0';
					state 		<= WAIT_READ_ACK;
					
				
				when WAIT_READ_ACK =>
					if (ack_o_r = '1') then
						state 		<= START_READ;
						stb_i_r 		<= '0';
						cyc_i_r 		<= '0';
						
						case counter is
							when 0 =>
								data_0_r <= dat_o_r(23 downto 0);
								
							when 1 =>
								data_1_r <= dat_o_r(23 downto 0);
								
							when 2 =>
								data_2_r <= dat_o_r(23 downto 0);
								
							when 3 =>
								data_3_r <= dat_o_r(23 downto 0);
						end case;
						
						counter <= (counter + 1) mod 4;
					end if;

				when WRITE_SDRAM => 
					
						addr_i_r 	<= std_LOGIC_VECTOR(to_unsigned(address_counter, addr_i_r'length));
						stb_i_r 	<= '1';
						cyc_i_r 	<= '1';
						
						dat_i_r 	<= STD_LOGIC_VECTOR(to_unsigned(address_counter * 1000, 32));
						we_i_r 	<= '1';
						stb_i_r 	<= '1';
						cyc_i_r	<= '1';
						
						address_counter <= address_counter + 1;
						
						if(address_counter > 10000) then
							state <= "00";
						end if;
					
					
			end case;
			
		end if; -- if(clk...)
	end process;
	
	
	process(DAC_CLK)
	begin
		if(DAC_CLK'event and DAC_CLK='1') then
			DATA_0 <= data_0_r;
			DATA_1 <= data_1_r;
			DATA_2 <= data_2_r;
			DATA_3 <= data_3_r;
		end if;
	end process;



end arch;