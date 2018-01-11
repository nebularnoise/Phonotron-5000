library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;


entity sample_reader_hh is
	port (
		dac_clk, play, shut_up: in std_logic;
		
		is_playing : out STD_LOGIC;
		sample: out std_LOGIC_VECTOR(23 downto 0)
		
	);
end sample_reader_hh;





architecture arch of sample_reader_hh is
	signal sample_size:   integer := 3953; --constant
	signal current_sample_address 	: STD_LOGIC_VECTOR(11 downto 0) := (others=> '0');
	signal data							: std_LOGIC_VECTOR(23 downto 0) := (others=> '0');
	signal internal_is_playing		: STD_LOGIC := '0';

	component hh
		PORT
		(
			address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
		);
	END component;

begin
	hh1 : hh
	port map (
		address => current_sample_address,
		clock => dac_clk,
		q => data
	);

	is_playing <= internal_is_playing;
	sample 	<= data when internal_is_playing = '1' else 
					(others=>'0'); 
					
					
					
process(dac_clk, play, shut_up)
	variable temp: unsigned (11 downto 0) := (others => '0');
begin
	if(dac_clk'event and dac_clk='1' and internal_is_playing='1') then
			temp := (unsigned(current_sample_address) + 1);
			current_sample_address <= std_logic_vector(temp);	
	end if;
	if(play='1') then
		internal_is_playing <= '1';
	end if;
	if (shut_up='1' or (to_integer(unsigned(current_sample_address)) > sample_size)) then
		current_sample_address <= (others=> '0');
		internal_is_playing <= '0';
	end if;
	
	
end process;

end arch;