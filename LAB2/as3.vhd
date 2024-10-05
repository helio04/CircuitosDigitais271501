library ieee;
use ieee.std_logic_1164.all;

entity as3 is
    port(a1 : in std_logic_vector(3 downto 0);
    s: out std_logic_vector(3 downto 0)
    );
end as3;
-- s0 =Ad+abD+BCd
-- s1 = CD+Ad+bC
-- s2 = AD+Bcd
-- s3 = A+BD+BC
-- a3 = A
-- a2 = B
-- a1 = C
-- a0 = D
architecture ckt of as3 is
    begin
--    with entr select
--    said <= "1000" when "0101",
--    "0110" when "1001",
--    "0111" when "1010",
--    "1000" when "1011",
--    "1001" when "1100",
--    entr when others;
	
		s(0) <= (a1(3) and not a1(0)) or ((not a1(3)) and (not(a1(2))) and a1(0)) or ((a1(2) and a1(1)) and not a1(0));
		s(1) <= (a1(1) and a1(0)) or (a1(3) and (not a1(0))) or ((not a1(2)) and a1(1));
		s(2) <= (a1(3) and a1(0)) or (a1(2) and (not a1(1)) and (not a1(0)));
		s(3) <= a1(3) or (a1(2) and a1(0)) or (a1(2) and a1(1));
		
    end architecture;