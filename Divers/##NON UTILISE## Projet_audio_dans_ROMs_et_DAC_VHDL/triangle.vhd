library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity osc is
	port(
		sample: out std_logic_vector(23 downto 0);
		clk: in std_logic
	);
end osc;

architecture arch of osc is
	signal up: std_logic := '0';
	signal counter: std_logic_vector(23 downto 0) := (others=>'0');
begin

	sample <= counter;
	
	process(clk)
		variable temp: signed (23 downto 0) := (others => '0');
	begin
		if(clk'event and clk='1') then
			
			if(up ='1') then
				temp := (signed(counter) + 16);
				counter <= std_logic_vector(temp);
				if(counter = "111111111111111111111111") then
					up <= '0';
				end if;
			else
				temp := (signed(counter) + 16);
				counter <= std_logic_vector(temp);
				if(counter = "000000000000000000000000") then
					up <= '1';
				end if;
			end if;
			
		end if;
	end process;
	
end arch;