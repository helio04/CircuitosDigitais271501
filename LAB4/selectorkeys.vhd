library ieee;
use ieee.std_logic_1164.all;

entity selectorkey is
    port (
        seleckey : in std_logic_vector(2 downto 0);
        fc0,fc1,fc2,fc3,fc4,fc5,fc6,fc7 : in std_logic_vector(7 downto 0);
        outselector : out std_logic_vector(7 downto 0);
    );
end entity selectorkey;
architecture rtl of selectorkey is
    signal a,b,c,d <= std_logic;
    begin
        a <= seleckey(2)
        b <= seleckey(1)
        c <= seleckey(0)
-- 0 (not a) and (not b) and (not c)
-- 1 (not a) and (not b) and (c)
-- 2 (not a) and (b) and (not c)
-- 3 (not a) and (b) and (c)
-- 4 (a) and (not b) and (not c)
-- 5 (a) and (not b) and (c)
-- 6 (a) and (b) and (not c)
-- 7 (a) and (b) and (c)

    outselector <= (fc0 and ((not a) and (not b) and (not c))) or (fc1 and ((not a) and (not b) and (c))) or (fc2 and ((not a) and (b) and (not c))) or (fc3 and ((not a) and (b) and (c))) or (fc4 and ((a) and (not b) and (not c))) or (fc5 and ((a) and (not b) and (c))) or (fc6 and ((a) and (b) and (not c))) or (fc7 and ((a) and (b) and (c)))
end architecture;