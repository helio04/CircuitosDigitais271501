library ieee;
use ieee.std_logic_1164.all;

entity decoderkey is
    port(keydd : in std_logic_vector(2 downto 0);
    saidadecoderkey : out std_logic_vector(7 downto 0));
end entity;

architecture Rtl of decoderkey is
    signal a,b,c,d : in std_logic;
begin
    a <= keydd(2);
    b <= keydd(1);
    c <= keydd(0);
    saidadecoderkey(7) <= (not a) and (not b) and (not c);
    saidadecoderkey(6) <= (not a) and (not b) and (c);
    saidadecoderkey(5) <= (not a) and (b) and (not c);
    saidadecoderkey(4) <= (not a) and (b) and (c);
    saidadecoderkey(3) <= (a) and (not b) and (not c);
    saidadecoderkey(2) <= (a) and (not b) and (c);
    saidadecoderkey(1) <= (a) and (b) and (not c);
    saidadecoderkey(0) <= (a) and (b) and (c);
end architecture;