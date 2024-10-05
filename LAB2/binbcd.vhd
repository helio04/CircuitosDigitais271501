library ieee;
use ieee.std_logic_1164.all;

entity binbcd is
    port(sw : in std_logic_vector(7 downto 0);
    bcd : out std_logic_vector(11 downto 0)
    );
end binbcd;

architecture ckt of binbcd is
component as3 is
        port(a1 : in std_logic_vector(3 downto 0);
        s: out std_logic_vector(3 downto 0)
        );
    end component;

signal entradaa1,entradaa2,entradaa3,entradaa4,entradaa5,entradaa6,entradaa7 : std_logic_vector(3 downto 0);
signal saidaa1,saidaa2,saidaa3,saidaa4,saidaa5,saidaa6,saidaa7 : std_logic_vector(3 downto 0);
begin
c1 : as3 port map(entradaa1, saidaa1);
c2 : as3 port map(entradaa2, saidaa2);
c3 : as3 port map(entradaa3, saidaa3);
c4 : as3 port map(entradaa4, saidaa4);
c5 : as3 port map(entradaa5, saidaa5);
c6 : as3 port map(entradaa6, saidaa6);
c7 : as3 port map(entradaa7, saidaa7);
entradaa1 <= '0' & sw(7 downto 5);
entradaa2 <= saidaa1(2 downto 0) & sw(4);
entradaa3 <= saidaa2(2 downto 0) & sw(3);
entradaa4 <= '0' & saidaa1(3) & saidaa2(3) & saidaa3(3);
entradaa5 <= saidaa3(2 downto 0) & sw(2);
entradaa6 <= saidaa4(2 downto 0) & saidaa5(3);
entradaa7 <= saidaa5(2 downto 0) & sw(1);
bcd <= "00" & saidaa4(3) & saidaa6(3 downto 0) & saidaa7(3 downto 0) & sw(0);
    end architecture;