library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity sdram_rw_vhd is
	port (
			clk_i,rst_i: in std_logic;
			addr_i: out std_logic_vector(21 downto 0);
			
			dat_i: out std_logic_vector(31 downto 0);
			dat_o: in std_logic_vector(31 downto 0);
			
			we_i: out std_logic;
			
			ack_o: in std_logic;
			stb_i,cyc_i: out std_logic;
			
			green_led, red_led: out std_logic
		);

		----------------------------------------------------
		--state definitions
		----------------------------------------------------
		constant START_WRITE_ST: 		std_logic_vector(3 downto 0) := "0000";
		constant WRITE_ST: 					std_logic_vector(3 downto 0) := "0001";
		constant WAIT_WRITE_ACK_ST:	std_logic_vector(3 downto 0) := "0010";
		constant READ_ST:						std_logic_vector(3 downto 0) := "0011";
		constant WAIT_READ_ACK_ST:		std_logic_vector(3 downto 0) := "0100";
		constant WRITE_WAIT_ST:			std_logic_vector(3 downto 0) := "0101";
        constant START_READ_ST:			std_logic_vector(3 downto 0) := "0110";
        constant READ_WAIT_ST:				std_logic_vector(3 downto 0) := "0111";
        constant DONE_ST:						std_logic_vector(3 downto 0) := "1000";
		
		----------------------------------------------------
		-- misc
		----------------------------------------------------
		constant MAX_RW: 					std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(200000, 24)); 	-- 200000 is the full 8 Mbytes of memory
		constant R_TO_W_WAIT_TIME: std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(12500000, 24));
		constant INITIAL_MEM_VALUE: 	std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(12345678, 32));
		
		
end sdram_rw_vhd;

architecture arch of sdram_rw_vhd is

	signal addr_i_r: 	std_logic_vector(21 downto 0) := (others => '0');
	signal dat_i_r: 		std_logic_vector(31 downto 0);
	signal we_i_r, stb_i_r, cyc_i_r: std_logic := '0';
	

	signal rw_cntr, cntr: 	std_logic_vector(23 downto 0) := (others => '0');  
	signal number: 		std_logic_vector(31 downto 0);
	signal mem_value: 	std_logic_vector(31 downto 0) := INITIAL_MEM_VALUE;
	signal state: 			std_logic_vector(3 downto 0) := START_WRITE_ST;   

	signal red_led_r, green_led_r: std_logic := '0';



	
begin

	dat_i 		<= dat_i_r;
	addr_i 		<= addr_i_r;
	we_i 		<= we_i_r;
	stb_i 		<= stb_i_r;
	cyc_i 		<= cyc_i_r;
	red_led 	<= red_led_r;
	green_led 	<= green_led_r;
	
	
	process(clk_i)
	begin
		if(clk_i'event and clk_i='1') then
			if (rst_i = '1') then
				state <= START_WRITE_ST;
				red_led_r <= '1';
			else
				
				case state is
					--
					when START_WRITE_ST =>
						state 			<= WRITE_ST;
						addr_i_r 		<= (others=>'0');
						rw_cntr 		<= (others=>'0');
						mem_value 	<= INITIAL_MEM_VALUE;
						
					when WRITE_ST =>
						stb_i_r 	<= '1';
						cyc_i_r 	<= '1';
						dat_i_r 	<= mem_value;
						we_i_r 	<= '1';
						state 	<= WAIT_WRITE_ACK_ST;
					
					when WAIT_WRITE_ACK_ST =>
						if (ack_o = '1') then
							state 	<= WRITE_WAIT_ST;
							stb_i_r 	<= '1';
							cyc_i_r	<= '1';
						end if;
						
						
					when WRITE_WAIT_ST =>					
						mem_value <= mem_value + 1;
						if (rw_cntr < MAX_RW - 1) then
							addr_i_r 	<= addr_i_r + 2;
							rw_cntr 	<= rw_cntr + 1;
							state 		<= WRITE_ST;
						else
							state 		<= START_READ_ST;
						end if;

					when START_READ_ST =>
						if (cntr = '0') then -- wait for R_TO_W_WAIT_TIME
							state 			<= READ_ST;
							addr_i_r 		<= (others=>'0');
							rw_cntr 		<= (others=>'0');
							mem_value 	<= INITIAL_MEM_VALUE;
						else
							state <= START_READ_ST;
						end if;
						
        
					when READ_ST =>
						stb_i_r 		<= '1';
						cyc_i_r 		<= '1';
						we_i_r 		<= '0';
						state 		<= WAIT_READ_ACK_ST;
						
					
					when WAIT_READ_ACK_ST =>
						if (ack_o = '1') then
							state 		<= READ_WAIT_ST;
							number 	<= dat_o;
							stb_i_r 		<= '0';
							cyc_i_r 		<= '0';
						end if;
						
					

					when READ_WAIT_ST =>
						if (rw_cntr < MAX_RW - 1) then
							if (mem_value /= number) then
								red_led_r <= '1';
							end if;
							mem_value 	<= mem_value + '1';
							rw_cntr 		<= rw_cntr + 1;
							state 			<= READ_ST;
							-- increment address:
							addr_i_r 		<= addr_i_r + 2;
						else -- if (rw_cntr < MAX_RW - 1)
							--state <= START_WRITE_ST;
							state <= DONE_ST;
						end if;

					when DONE_ST =>
						state <= DONE_ST;
						if (red_led_r = '0') then
						  green_led_r <= '1';
						end if;
	
	
				end case;
			
			
			end if; -- if (rst_i) ... else
			
		end if; -- if(clk...)
	end process;

	
	process(clk_i)
	begin
		if(clk_i'event and clk_i='1') then
			if (rst_i) then
				cntr <= (others => '0');
			elsif (state = WRITE_WAIT_ST) then
				cntr <= R_TO_W_WAIT_TIME;
			else
				cntr <= cntr - 1;
			end if;
		end if;
	end process;
end arch;
