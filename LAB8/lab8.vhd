library ieee;
use ieee.std_logic_1164.all;

entity lab8 is
	port(entradamy, entradamc : in std_logic_vector(3 downto 0);
		selC : in std_logic_vector(1 downto 0);
		actC, actY, actOut, clr_r, clockfpga : in std_logic;
		hex0,hex1,hex2,hex3 : out std_logic_vector(6 downto 0));
end entity;

architecture milagre of lab8 is
component regRC is
	port(entraday, entradac : in std_logic_vector(3 downto 0);
		id_c,clr_r,id_r,clock : in std_logic;
		saiday : out std_logic_vector(3 downto 0);
		saidarc : out std_logic_vector(7 downto 0));
end component;
component somador is
	port(
		A_somador, B_somador: in std_logic_vector(7 downto 0);
		Cin_somador : in std_logic;
		S_somador : out std_logic_vector (7 downto 0);
		Cout_somador : out std_logic
	);
end component;
component reg10bom is
	port(cin: in std_logic_vector(9 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  update : in std_logic;
		  cout: out std_logic_vector(9 downto 0));
end component;
component segm is
	port(bdec : in std_logic_vector(3 downto 0);
	segmentos : out std_logic_vector(6 downto 0));
end component;
component divisorclock is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end component;
component BINBCD_10bits is
	port(
		SW: in std_logic_vector(9 downto 0);
		BCD: out std_logic_vector(11 downto 0)
	);
end component;
signal saidaRrc1, saidaRrc2, saidaRrc3, saidaSomador1, saidaSomador2 : std_logic_vector(7 downto 0);
signal saidaRY1, saidaRY2, saidaRY3 : std_logic_vector(3 downto 0);
signal clockm, ackregrc1, ackregrc2, ackregrc3, couts1, couts2 : std_logic;
signal entradaRSs, saidaRSs : std_logic_vector(9 downto 0);
signal saidabcdaux : std_logic_vector(11 downto 0);
signal saidabcd : std_logic_vector(15 downto 0);
begin
--clockdivi : divisorclock port map(clockfpga, clockm);
clockm <= clockfpga;
ackregrc1 <= (not selC(1)) and selC(0);
ackregrc2 <= selC(1)and (not selC(0));
ackregrc3 <= selC(1) and selC(0);
registrador1 : regrC port map(entradamy, entradamc, ackregrc1, clr_r, actY,clockm, saidaRY1, saidaRRC1);
registrador2 : regRC port map(saidaRY1, entradamc, ackregrc2, clr_r, actY, clockm, saidaRY2, saidaRrc2);
registrador3 : regRC port map(saidaRY2, entradamc, ackregrc3, clr_r, actY, clockm, open, saidaRrc3);
somad1 : somador port map(saidaRrc1, saidaRrc2,'0',saidaSomador1, couts1);
somad2 : somador port map(saidaSomador1, saidaRrc3, '0', saidaSomador2, couts2);
entradaRSs(9) <= couts1 and couts2;
entradaRSs(8) <= couts1 xor couts2;
entradaRSs(7 downto 0) <= saidaSomador2;
regsaida : reg10bom port map(entradarSs, clockm,'1', actout, saidaRSs);
binbcdc : binbcd_10bits port map(saidaRss, saidabcdaux);
saidabcd(15 downto 12) <= "00"&saidaRSs(9 downto 8);
saidabcd(11 downto 0) <= saidabcdaux;
hc0 : segm port map(saidabcd(15 downto 12), hex0);
hc1 : segm port map(saidabcd(11 downto 8), hex1);
hc2 : segm port map(saidabcd(7 downto 4), hex2);
hc3 : segm port map(saidabcd(3 downto 0), hex3);
end architecture;