library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cont25 is
    Port ( clkcont25 : in STD_LOGIC;
           resetcont25 : in STD_LOGIC;
           enablecont25 : in STD_LOGIC;
           timesup : out STD_LOGIC);
end cont25;

architecture violencia of cont25 is
    signal intcont : INTEGER := 0;
    constant max_intcont : INTEGER := 20; -- 20 segundos para um clock de 1 Hz
begin
    timesup <= '1' when intcont = max_intcont else '0';

    intcont <= 0 when resetcont25 = '1' else
             intcont + 1 when rising_edge(clkcont25) and enablecont25 = '1' and intcont < max_intcont else
             0 when rising_edge(clkcont25) and enablecont25 = '1' and intcont = max_intcont else
             intcont;
end architecture;