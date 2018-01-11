library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity generic_sample_reader is
	port (
		dac_clk: in std_logic;
		play_kick, play_hh, play_clap: in std_logic;
		
		sample: out std_LOGIC_VECTOR(23 downto 0)
		
	);
end generic_sample_reader;





architecture arch of generic_sample_reader is
	signal kick_data, clap_data, hh_data : std_LOGIC_VECTOR(23 downto 0) := (others=> '0');

	
	signal kick_size:   integer := 7875; --constant
	signal clap_size:   integer := 7061;
	signal hh_size:   integer := 3631;
	
	
	
	signal kick_current_sample_address 	: STD_LOGIC_VECTOR(12 downto 0) := (others=> '0');
	signal clap_current_sample_address 	: STD_LOGIC_VECTOR(12 downto 0) := (others=> '0');
	signal hh_current_sample_address 	: STD_LOGIC_VECTOR(11 downto 0) := (others=> '0');
	
	
	
	signal data							: std_LOGIC_VECTOR(23 downto 0) := (others=> '0');
	signal kick_is_playing		: STD_LOGIC := '0';
	signal hh_is_playing		: STD_LOGIC := '0';
	signal clap_is_playing		: STD_LOGIC := '0';

	component kick
		PORT
		(
			address	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
		);
	END component;
		
	component clap
		PORT
		(
			address	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
		);
	END component;
	
	component hh
		PORT
		(
			address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
		);
	END component;
		

begin
	kick1 : kick 
	port map (
		address => kick_current_sample_address,
		clock => dac_clk,
		q => kick_data
	);
	clap1 : clap 
	port map (
		address => clap_current_sample_address,
		clock => dac_clk,
		q => clap_data
	);
	hh1 : hh 
	port map (
		address => hh_current_sample_address,
		clock => dac_clk,
		q => hh_data
	);


	sample <= std_logic_vector((signed(kick_data) + signed(hh_data) + signed(clap_data))/3);
					
process(dac_clk)
	variable temp: unsigned (12 downto 0) := (others => '0');
	variable temp_hh: unsigned (11 downto 0) := (others => '0');
begin
	if(dac_clk'event and dac_clk='1') then
			if(kick_is_playing='1') then
				temp := (unsigned(kick_current_sample_address) + 1);
				kick_current_sample_address <= std_logic_vector(temp);	
			end if;
			if(hh_is_playing='1') then
				temp_hh := (unsigned(hh_current_sample_address) + 1);
				hh_current_sample_address <= std_logic_vector(temp_hh);	
			end if;
			if(clap_is_playing='1') then
				temp := (unsigned(clap_current_sample_address) + 1);
				clap_current_sample_address <= std_logic_vector(temp);	
			end if;
	end if;
	---------------------
		
	if(play_kick='1') then
		kick_is_playing <= '1';
	end if;
		
	if(play_clap='1') then
		clap_is_playing <= '1';
	end if;
		
	if(play_hh='1') then
		hh_is_playing <= '1';
	end if;
		
	
	
	if (to_integer(unsigned(kick_current_sample_address)) > kick_size) then
		kick_current_sample_address <= (others=> '0');
		kick_is_playing <= '0';
	end if;
	if (to_integer(unsigned(hh_current_sample_address)) > hh_size) then
		hh_current_sample_address <= (others=> '0');
		hh_is_playing <= '0';
	end if;
	if (to_integer(unsigned(clap_current_sample_address)) > clap_size) then
		clap_current_sample_address <= (others=> '0');
		clap_is_playing <= '0';
	end if;
	
	
end process;

end arch;