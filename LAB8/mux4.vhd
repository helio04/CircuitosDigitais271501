library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
	port(a,b : in std_logic_vector(3 downto 0);
			s : in std_logic;
			mux4out : out std_logic_vector(3 downto 0));
end entity;

architecture polonia of mux4 is
signal aux : std_logic_vector(3 downto 0);
begin
aux <= s&s&s&s;
mux4out <=(a and not aux) or (b and aux);
end architecture;