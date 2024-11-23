library ieee;
use ieee.std_logic_1164.all;


entity regRC is
port(entraday, entradac : in std_logic_vector(3 downto 0);
		id_c,clr_r,id_r,clock  : in std_logic;
		saiday : out std_logic_vector(3 downto 0);
		saidarc : out std_logic_vector(7 downto 0));
end entity;

architecture lacraia of regRC is
component regbasico is
	port(cin: in std_logic_vector(3 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  cout: out std_logic_vector(3 downto 0));
end component;
component mux4 is
	port(a,b : in std_logic_vector(3 downto 0);
			s : in std_logic;
			mux4out : out std_logic_vector(3 downto 0));
end component;
component multiplicador is
	port(A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		M : out std_logic_vector(7 downto 0);
		cout : out std_logic);
end component;

signal saidaregy, entradaregy, saidaregc, entradaregc : std_logic_vector(3 downto 0);
begin
mux4y : mux4 port map(saidaregy, entraday, id_r, entradaregy);
mux4c : mux4 port map(saidaregc, entradac , id_c, entradaregc);
regY : regbasico port map(entradaregy,clock, clr_r,saidaregy);
regC : regbasico port map(entradaregc,clock, '1',saidaregc);
mult : multiplicador port map(saidaregy, saidaregc, saidarc, open);
saiday <= saidaregy;
end architecture;