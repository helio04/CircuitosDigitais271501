library ieee;
use ieee.std_logic_1164.all;

entity conversorbinbcd is
port (swent : in std_logic_vector(7 downto 0);
        hex0,hex1,hex2 : out std_logic_vector(6 downto 0));

end conversorbinbcd;

architecture Rtl of conversorbinbcd is
    component segm is
        port(bdec : in std_logic_vector(3 downto 0);
        segmentos : out std_logic_vector(6 downto 0));
    end component;
    component binbcd is
        port(sw : in std_logic_vector(7 downto 0);
        bcd : out std_logic_vector(11 downto 0)
        );
    end component;
    signal sinalinterno : std_logic_vector(11 downto 0);
begin
    
    cvbcd : binbcd port map (swent(7 downto 0),sinalinterno);
    displayu : segm port map(bcd(3 downto 0), hex0);
    displayd : segm port map(bcd(7 downto 4), hex1);
    displayc : segm port map(bcd(11 downto 8), hex2);
    
    
end architecture;