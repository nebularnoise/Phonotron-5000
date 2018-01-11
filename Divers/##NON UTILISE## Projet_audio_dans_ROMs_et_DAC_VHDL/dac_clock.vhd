library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dac_clock is
	port (
		fast_clk: in std_logic;
		fast_clk_frequency: in integer range 0 to 100000000;
		dac_frequency: in integer range 0 to 100000;
		dac_clk: out std_logic
	);
end dac_clock;

architecture arch of dac_clock is
	signal counter: integer range 0 to 100000000 :=0 ;
	signal frequencies_ratio: integer range 1 to 1000000;
	signal internal_dac_clk: std_logic := '0' ;
begin
	dac_clk <= internal_dac_clk;
	
	frequencies_ratio <= fast_clk_frequency / (2*dac_frequency);

process(fast_clk)
begin
	if(fast_clk'event and fast_clk='1') then
		if (counter	< frequencies_ratio) then
			counter <= counter + 1;
		else
			counter <= 0;
			internal_dac_clk <= not internal_dac_clk;
		end if;
	end if;
end process;
end arch;