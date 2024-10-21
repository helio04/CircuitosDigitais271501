library ieee;
use ieee.std_logic_1164.all;

entity selectorkey is
    port (
        seleckey : in std_logic_vector(2 downto 0);
        fc0,fc1,fc2,fc3,fc4,fc5,fc6,fc7 : in std_logic_vector(7 downto 0);
        outselector : out std_logic_vector(7 downto 0));
end entity selectorkey;
architecture rtl of selectorkey is
    signal a,b,c,d : std_logic;
	 signal zz0,zz1,zz2,zz3,zz4,zz5,zz6,zz7 : std_logic;
	 signal zzz0, zzz1, zzz2, zzz3, zzz4, zzz5, zzz6, zzz7 : std_logic_vector(7 downto 0);
    begin
        a <= seleckey(2);
        b <= seleckey(1);
        c <= seleckey(0);
zz0 <= (not a) and (not b) and (not c);
zzz0 <= zz0&zz0&zz0&zz0&zz0&zz0&zz0&zz0;
zz1 <= (not a) and (not b) and (c);
zz2 <= (not a) and (b) and (not c);
zz3 <= (not a) and (b) and (c);
zz4 <= (a) and (not b) and (not c);
zz5 <= (a) and (not b) and (c);
zz6 <= (a) and (b) and (not c);
zz7 <= (a) and (b) and (c);
zzz1 <= zz1&zz1&zz1&zz1&zz1&zz1&zz1&zz1;
zzz2 <= zz2&zz2&zz2&zz2&zz2&zz2&zz2&zz2;
zzz3 <= zz3&zz3&zz3&zz3&zz3&zz3&zz3&zz3;
zzz4 <= zz4&zz4&zz4&zz4&zz4&zz4&zz4&zz4;
zzz5 <= zz5&zz5&zz5&zz5&zz5&zz5&zz5&zz5;
zzz6 <= zz6&zz6&zz6&zz6&zz6&zz6&zz6&zz6;
zzz7 <= zz7&zz7&zz7&zz7&zz7&zz7&zz7&zz7;
-- 0 (not a) and (not b) and (not c)
-- 1 (not a) and (not b) and (c)
-- 2 (not a) and (b) and (not c)
-- 3 (not a) and (b) and (c)
-- 4 (a) and (not b) and (not c)
-- 5 (a) and (not b) and (c)
-- 6 (a) and (b) and (not c)
-- 7 (a) and (b) and (c)

  --  outselector <= (fc0 and ((not a) and (not b) and (not c))) or (fc1 and ((not a) and (not b) and (c))) or (fc2 and ((not a) and (b) and (not c))) or (fc3 and ((not a) and (b) and (c))) or (fc4 and ((a) and (not b) and (not c))) or (fc5 and ((a) and (not b) and (c))) or (fc6 and ((a) and (b) and (not c))) or (fc7 and ((a) and (b) and (c)));
outselector <= (fc0 and zzz0) or (fc1 and zzz1) or (fc2 and zzz2) or (fc3 and zzz3) or (fc4 and zzz4) or (fc5 and zzz5) or (fc6 and zzz6) or (fc7 and zzz7);
  end architecture;