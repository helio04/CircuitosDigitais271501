library ieee;
use ieee.std_logic_1164.all;

entity registrador8bits is
	port(cin: in std_logic_vector(7 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  cout: out std_logic_vector(7 downto 0));
end registrador8bits;

architecture logica of registrador8bits is
	component ffd
		port (ck, clr, set, d : in  std_logic;
								  q : out std_logic);
	end component;
begin 
	clk1: ffd
		port map(clk, clear, '1', cin(0), cout(0));
	clk2: ffd
		port map(clk, clear, '1', cin(1), cout(1));
	clk3: ffd
		port map(clk, clear, '1', cin(2), cout(2));
	clk4: ffd
		port map(clk, clear, '1', cin(3), cout(3));
	clk5: ffd
		port map(clk, clear, '1', cin(4), cout(4));
	clk6: ffd
		port map(clk, clear, '1', cin(5), cout(5));
	clk7: ffd
		port map(clk, clear, '1', cin(6), cout(6));
	clk8: ffd
		port map(clk, clear, '1', cin(7), cout(7));
end logica;