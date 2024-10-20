library ieee;
use ieee.std_logic_1164.all;

entity decoderlinha is
    port (valor : in std_logic_vector(3 downto 0);
    keyd1 : in std_logic_vector(2 downto 0);
    saidadecoderlinha : out std_logic_vector(7 downto 0);
    );
end entity decoderlinha;

architecture Rtl of decoderlinha is
    component selectorkey is
        port (
            seleckey : in std_logic_vector(2 downto 0);
            fc0,fc1,fc2,fc3,fc4,fc5,fc6,fc7 : in std_logic_vector(7 downto 0);
            outselector : out std_logic_vector(7 downto 0);
        );
    end component selectorkey;
    component selectorswitch is
        port (
            selecsw : in std_logic_vector(3 downto 0);
            lic3,lic4,lic5,lic6,lic7,lic8 : out std_logic_vector(7 downto 0);
            
        );
    end component selectorswitch;
    signal ls3,ls4,ls5,ls6,ls7,ls8 : std_logic_vector(7 downto 0);
begin
    ssw1 : selectorswitch port map (valor, ls3,ls4,ls5,ls6,ls7,ls8);
    ssk1 : selectorkey  port map(keyd1,"00000000","00000000", ls3,ls4,ls5,ls6,ls7,ls8, saidadecoderlinha);
end architecture;