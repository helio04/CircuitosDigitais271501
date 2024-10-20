library ieee;
use ieee.std_logic_1164.all;

entity lab4 is
    port (
    sw : in std_logic_vector(3 downto 0);    
    key : in std_logic_vector(2 downto 0);
    ledg : out std_logic_vector(7 downto 0);
    ledr : out std_logic_vector(7 downto 0);

    );
end entity lab4;
architecture Rtl of lab4 is
    component decoderkey is
        port(keydd : in std_logic_vector(2 downto 0);
    saidadecoderkey : out std_logic_vector(7 downto 0));
    end component;
    component decoderlinha is
        port (valor : in std_logic_vector(3 downto 0);
        keydl : in std_logic_vector(2 downto 0);
        saidadecoderlinha : out std_logic_vector(7 downto 0);
    );
    end component;
begin
    decoderkeyledg : decoderkey port map (key, ledg);
    decoderswledr : decoderlinha port map(sw, key, ledr);
end architecture;