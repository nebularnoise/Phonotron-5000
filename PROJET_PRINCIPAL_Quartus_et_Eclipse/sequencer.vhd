library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sequencer is
	port (
		sequence:	in STD_LOGIC_VECTOR(31 downto 0);
		bpm_clk: in std_logic;
		CLOCK_100: in std_logic;
		play: out std_logic
	);
end sequencer;

architecture arch of sequencer is
	signal counter: integer range 0 to 31 :=0 ;
	signal s1, s2, s3: std_logic;
	signal my_little_signal: std_logic := '0';
begin
process(bpm_clk)
	variable play_was_one: std_logic := '0';
begin
	if(bpm_clk'event and bpm_clk='1') then
		if(my_little_signal = '0') then
			if (sequence(counter)='1') then
			play <= '1';
			else
				play <= '0';
			end if;
			counter <= (counter + 1) mod 32;
			my_little_signal <= '1';
		else
			play <= '0';
			my_little_signal <= '0';
		end if;
	end if;
	
end process;
end arch;