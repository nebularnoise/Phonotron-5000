library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity mixer_2 is
	port (
		sample1, sample2:	in STD_LOGIC_VECTOR(23 downto 0);
		mix: out STD_LOGIC_VECTOR(23 downto 0)
	);
end mixer_2;

architecture arch of mixer_2 is
begin
	mix <= std_logic_vector((signed(sample1) + signed(sample2))/2);
end arch;