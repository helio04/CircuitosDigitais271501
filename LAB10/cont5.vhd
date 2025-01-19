library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cont5 is
    Port (clkcont5 : in STD_LOGIC;
           resetcont5 : in STD_LOGIC;
           enablecont5 : in STD_LOGIC;
           timesup : out STD_LOGIC);
end cont5;

architecture lagrimas of cont5 is
    signal intcont : INTEGER := 0;
    constant max_intcont : INTEGER := 5; -- 20 segundos para um clock de 1 Hz
begin
    timesup <= '1' when intcont = max_intcont else '0';

    intcont <= 0 when resetcont5 = '1' else
             intcont + 1 when rising_edge(clkcont5) and enablecont5 = '1' and intcont < max_intcont else
             intcont;
end architecture;