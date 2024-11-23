library ieee;
use ieee.std_logic_1164.all;

entity reg10bom is
	port(cin: in std_logic_vector(9 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  update : in std_logic;
		  cout: out std_logic_vector(9 downto 0));
end entity;

architecture solenidade of reg10bom is
component registrador10bits is
	port(cin: in std_logic_vector(9 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  cout: out std_logic_vector(9 downto 0));
end component;
signal selector,entradareg10,saidareg10 : std_logic_vector(9 downto 0);
begin
selector <= update&update&update&update&update&update&update&update&update&update;
entradareg10 <=(saidareg10 and (not selector)) or (cin and selector);
reg10maligno : registrador10bits port map(entradareg10, clk, clear, saidareg10);
cout <= saidareg10;
end architecture;