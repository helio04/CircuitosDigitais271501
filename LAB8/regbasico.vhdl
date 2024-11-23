library ieee;
use ieee.std_logic_1164.all;

entity regbasico is
	port(cin: in std_logic_vector(3 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  cout: out std_logic_vector(3 downto 0));
end regbasico;

architecture logica of regbasico is
	component ffd
		port (ck, clr, set, d : in  std_logic;
								  q : out std_logic);
	end component;
begin 
	cclk1: ffd
		port map(clk, clear, '1', cin(0), cout(0));
	cclk2: ffd
		port map(clk, clear, '1', cin(1), cout(1));
	cclk3: ffd
		port map(clk, clear, '1', cin(2), cout(2));
	cclk4: ffd
		port map(clk, clear, '1', cin(3), cout(3));

end logica;