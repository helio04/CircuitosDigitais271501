library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (entrada1, entrada2 : in std_logic_vector(7 downto 0);
			seletor : in std_logic;
			saidamux : out std_logic_vector(7 downto 0));
end entity;

architecture josias of mux is
	signal selecter : std_logic_vector(7 downto 0);
	begin
		selecter <= seletor&seletor&seletor&seletor&seletor&seletor&seletor&seletor;
		saidamux <= ((not selecter) and entrada1) or (selecter and entrada2);
end architecture;