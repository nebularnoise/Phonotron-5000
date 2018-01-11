library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bpm_clock is
	port (
		fast_clk: in std_logic;
		fast_clk_frequency: in integer range 0 to 100000000;
		bpm: in integer range 0 to 200;
		bpm_clk_32: out std_logic
	);
end bpm_clock;

architecture arch of bpm_clock is

	signal counter: integer range 0 to 100000000 :=0 ;
	signal bpm_32_clock_frequency: integer range 1 to 100;
	signal frequencies_ratio: integer range 1 to 100000000;
	signal internal_bpm_clk_32: std_logic := '0' ;
begin
	bpm_clk_32 <= internal_bpm_clk_32;
	bpm_32_clock_frequency <= (2 * bpm / 15);
	
	frequencies_ratio <= fast_clk_frequency / (2*bpm_32_clock_frequency);

process(fast_clk)
begin
	if(fast_clk'event and fast_clk='1') then
		if (counter	< frequencies_ratio) then
			counter <= counter + 1;
		else
			counter <= 0;
			internal_bpm_clk_32 <= not internal_bpm_clk_32;
		end if;
	end if;
end process;


end arch;