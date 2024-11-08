library ieee;
use ieee.std_logic_1164.all;

entity deslocador is
	port(a : in std_logic_vector(7 downto 0);
			k : in std_logic;
			s : out std_logic_vector(7 downto 0 ));
end entity;
architecture manicomio of deslocador is
begin
s(7) <= a(6) and k;
s(0) <= a(1) and (not k);
s(1) <= (a(0) and k) or (a(2) and not k);
s(2) <= (a(1) and k) or (a(3) and not k);
s(3) <= (a(2) and k) or (a(4) and not k);
s(4) <= (a(3) and k) or (a(5) and not k);
s(5) <= (a(4) and k) or (a(6) and not k);
s(6) <= (a(5) and k) or (a(7) and not k);
end architecture;