library ieee;
use ieee.std_logic_1164.all;

entity selectorswitch is
    port (
        selecsw : in std_logic_vector(3 downto 0);
        lic3,lic4,lic5,lic6,lic7,lic8 : out std_logic_vector(7 downto 0));
end entity selectorswitch;
architecture Rtl of selectorswitch is
    signal  xx0, xx1, xx2, xx3, xx4, xx5, xx6, xx7, xx8, xx9, xx10, xx11, xx12, xx13, xx14, xx15 : std_logic_vector(7 downto 0);
	signal w,x,y,z, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15 : std_logic;

begin
    w <= selecsw(3);
    x <= selecsw(2);
    y <= selecsw(1);
    z <= selecsw(0);
x0 <= (not w) and (not x) and (not y) and (not z);
x1 <= (not w) and (not x) and (not y) and (z);
x2 <= (not w) and (not x) and (y) and (not z);
x3 <= (not w) and (not x) and (y) and (z);
x4 <= (not w) and (x) and (not y) and (not z);
x5 <= (not w) and (x) and (not y) and (z);
x6 <= (not w) and (x) and (y) and (not z);
x7 <= (not w) and (x) and (y) and (z);
x8 <= (w) and (not x) and (not y) and (not z);
x9 <= (w) and (not x) and (not y) and (z);
x10 <= (w) and (not x) and (y) and (not z);
x11 <= (w) and (not x) and (y) and (z);
x12 <= (w) and (x) and (not y) and (not z);
x13 <= (w) and (x) and (not y) and (z);
x14 <= (w) and (x) and (y) and (not z);
x15 <= (w) and (x) and (y) and (z);
xx0 <= x0 & x0 & x0 & x0 & x0 & x0 & x0 & x0;
xx1 <= x1 & x1 & x1 & x1 & x1 & x1 & x1 & x1;
xx2 <= x2 & x2 & x2 & x2 & x2 & x2 & x2 & x2;
xx3 <= x3 & x3 & x3 & x3 & x3 & x3 & x3 & x3;
xx4 <= x4 & x4 & x4 & x4 & x4 & x4 & x4 & x4;
xx5 <= x5 & x5 & x5 & x5 & x5 & x5 & x5 & x5;
xx6 <= x6 & x6 & x6 & x6 & x6 & x6 & x6 & x6;
xx7 <= x7 & x7 & x7 & x7 & x7 & x7 & x7 & x7;
xx8 <= x8 & x8 & x8 & x8 & x8 & x8 & x8 & x8;
xx9 <= x9 & x9 & x9 & x9 & x9 & x9 & x9 & x9;
xx10 <= x10 & x10 & x10 & x10 & x10 & x10 & x10 & x10;
xx11 <= x11 & x11 & x11 & x11 & x11 & x11 & x11 & x11;
xx12 <= x12 & x12 & x12 & x12 & x12 & x12 & x12 & x12;
xx13 <= x13 & x13 & x13 & x13 & x13 & x13 & x13 & x13;
xx14 <= x14 & x14 & x14 & x14 & x14 & x14 & x14 & x14;
xx15 <= x15 & x15 & x15 & x15 & x15 & x15 & x15 & x15;


-- 0 <- (not w) and (not x) and (not y) and (not z)
-- 1 <- (not w) and (not x) and (not y) and (z)
-- 2 <- (not w) and (not x) and (y) and not (z)
-- 3 <- (not w) and (not x) and (y) and (z)
-- 4 <- (not w) and (x) and (not y) and (not z)
-- 5 <- (not w) and (x) and (not y) and (z)
-- 6 <- (not w) and (x) and (y) and (not z)
-- 7 <- (not w) and (x) and (y) and (z)
-- 8 <- (w) and (not x) and (not y) and (not z)
-- 9 <- (w) and (not x) and (not y) and (z)
-- 10 <- (w) and (not x) and (y) and (not z)
-- 11 <- (w) and (not x) and (y) and (z)
-- 12 <- (w) and (x) and (not y) and (not z)
-- 13 <= (w) and (x) and (not y) and (z)
-- 14 <- (w) and (x) and (y) and (not z)
-- 15 <- (w) and (x) and (y) and (z)
lic3 <= (("00111110") and xx0) or (("00000000") and xx1) or (("00100011") and xx2) or (("00100010") and xx3) or (("00001100") and xx4) or (("01110010") and xx5) or (("00011110") and xx6) or (("01000000") and xx7) or (("00110110") and xx8) or (("00110000") and xx9) or (("00000010") and xx10) or (("01111111") and xx11) or (("00001110") and xx12) or (("00001110") and xx13) or (("00001110") and xx14) or (("00000000") and xx15);
lic4 <= (("01000101") and xx0) or (("00100001") and xx1) or (("01000101") and xx2) or (("01001001") and xx3)
    or (("00010100") and xx4) or (("01010001") and xx5) or (("00101001") and xx6) or (("01000111") and xx7) 
    or (("01001001") and xx8) or (("01001001") and xx9) or (("00010101") and xx10) or (("00001001") and xx11)
    or (("00010001") and xx12) or (("00010001") and xx13) or (("00010101") and xx14) or (("00001000") and xx15);
lic5 <= (("01001001") and xx0) or (("01111111") and xx1) or (("01001001") and xx2) or (("01001001") and xx3)
    or (("00100100") and xx4) or (("01010001") and xx5) or (("01001001") and xx6) or (("01001000") and xx7) or (("01001001") and xx8) or (("01001001") and xx9) or (("00010101") and xx10) or (("00010001") and xx11)
    or (("00010001") and xx12) or (("00010001") and xx13) or (("00010101") and xx14) or (("00111111") and xx15);
lic6 <= (("01010001") and xx0)   or (("00000001") and xx1) or (("01001001") and xx2) or (("01001001") and xx3)
    or (("01111111") and xx4) or (("01010001") and xx5) or (("01001001") and xx6) or (("01010000") and xx7)
    or (("01001001") and xx8) or (("01001010") and xx9) or (("00001111") and xx10) or (("00010001") and xx11)
    or (("00010001") and xx12) or(("00001001") and xx13) or (("00010101") and xx14) or (("01001000") and xx15);
lic7 <= (("00111110") and xx0) or(("00000000") and xx1) or (("00110001") and xx2) or (("00110110") and xx3)
    or (("00000100") and xx4) or (("01001110") and xx5) or (("00000110") and xx6) or (("01100000") and xx7)
    or (("00110110") and xx8) or (("00111100") and xx9) or (("00000001") and xx10) or (("00001110") and xx11)
    or (("00000010") and xx12) or (("01111111") and xx13) or (("00001000") and xx14) or (("00100000") and xx15);
lic8 <= ("00000000");   
end architecture;