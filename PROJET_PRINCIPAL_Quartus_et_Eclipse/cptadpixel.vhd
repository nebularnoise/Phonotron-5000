library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cptadpixel is
	port(horl: in std_logic;
		  adr_col: out std_logic_vector(9 downto 0);
		  adr_lig: out std_logic_vector(9 downto 0)
		  );
end cptadpixel;

architecture arch1 of cptadpixel is

begin

	process(horl)
	
	variable current_lig: integer range 0 to 1023:=0;
	variable current_col: integer range 0 to 1023:=0;
	
	begin
	
		if(horl' event and horl='1')then
			
			adr_col <= std_logic_vector(to_unsigned(current_col,10));
			adr_lig <= std_logic_vector(to_unsigned(current_lig,10));
			
			current_col := (current_col + 1) mod 797;
			
			if(current_col = 0) then
				current_lig := (current_lig +1) mod 525;
			end if;
			
		end if;
		
	end process;
	
end arch1;
