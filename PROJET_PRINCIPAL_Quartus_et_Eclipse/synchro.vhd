library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity synchro is
	port(horl: in std_logic;
		  adr_col: in std_logic_vector(9 downto 0);
		  adr_lig: in std_logic_vector(9 downto 0);
		  sync_H, sync_V: out std_logic;
		  video : out std_logic
		  );
end synchro;

architecture arch1 of synchro is

begin

	

	process(horl)
	
	begin
		
		if(horl' event and horl='1')then
			
			sync_H <= '1';
			sync_V <= '1';
			
			
			if((to_integer(unsigned(adr_col)) >= 655) and (to_integer(unsigned(adr_col)) < 655+95))then
				sync_H <= '0';
			end if;
			
			if((to_integer(unsigned(adr_lig)) >= 490) and (to_integer(unsigned(adr_lig)) <	492))then
				sync_V <= '0';
			end if;
			
			if(to_integer(unsigned(adr_col)) < 640)then
			
				if(to_integer(unsigned(adr_lig)) < 480)then
					video <= '1';
				else
					video <= '0';
				end if;
				
			else
				video <= '0';
			end if;
			
		end if;
		
	end process;
	
end arch1;
