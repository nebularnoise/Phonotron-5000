 library IEEE;
use IEEE.std_logic_1164.all;

entity rvb is
	port(video: in std_logic;
		  couleur: in std_logic_vector(1 downto 0);
		  rouge, vert, bleu: out std_logic_vector(9 downto 0)
		  );
end rvb;

architecture arch1 of rvb is

begin

	rouge <= couleur(1 downto 0) & "00000000";
	vert <= couleur(1 downto 0) & "00000000";
	bleu <= couleur (1 downto 0) & "00000000";
	
end arch1;
