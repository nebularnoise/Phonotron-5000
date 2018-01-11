library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_8k is
	port(horl_100: in std_logic;
		  horl_8k: out std_logic
		  );
end clock_8k;

architecture arch1 of clock_8k is

begin

	process(horl_100)
	
	variable counter: integer range 0 to 1562499:=0;
	
	begin
	
		if(horl_100' event and horl_100='1')then
			
			counter := counter + 1;
			
			if(counter >= 1562499)then
				counter :=0;
				horl_8k <= '1';
			else
				horl_8k <= '0';
			end if;
			
		end if;
		
	end process;
	
end arch1;
