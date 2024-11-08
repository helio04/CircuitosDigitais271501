library ieee;
use ieee.std_logic_1164.all;

entity lab6 is
	port(sw : in std_logic_vector(3 downto 0);
			clear,clockfpga : in std_logic;
			ledr : out std_logic_vector(7 downto 0);
			ledg : out std_logic_vector(7 downto 0));
end entity;

architecture satanismo of lab6 is
component mux is
	port (entrada1, entrada2 : in std_logic_vector(7 downto 0);
			seletor : in std_logic;
			saidamux : out std_logic_vector(7 downto 0));
end component;
component deslocador is
	port(a : in std_logic_vector(7 downto 0);
			k : in std_logic; 
			s : out std_logic_vector(7 downto 0 ));
end component;
component registrador8bits is
	port(cin: in std_logic_vector(7 downto 0);
		  clk: in std_logic;
	     clear: in std_logic;
		  cout: out std_logic_vector(7 downto 0));
end component;
component divisorclock is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end component;

signal deslocarlateral, deslocarvertical, clock : std_logic;
signal pulsolateral, pulsovertical : std_logic;
signal entradaregistradorred, saidaregistradorred, saidamuxclearred, saidadeslocadorred : std_logic_vector(7 downto 0);
signal entradaregistradorgreen, saidaregistradorgreen, saidamuxcleargreen, saidadeslocadorgreen : std_logic_vector(7 downto 0);
begin
dvc : divisorclock port map(clockfpga,clock);
deslocarlateral <= (not sw(3)) and sw(0); --esquerda quando 0, direita quando 1;
deslocarvertical <= (not sw(1)) and sw(2); --cima quando 1, baixo quando 0;
pulsolateral <= sw(3) or sw(0); --mover lateralmente
pulsovertical <= sw(2) or sw(1); --mover vertical
muxclearred : mux port map("10000000", saidaregistradorred, clear, saidamuxclearred);
deslocadorred : deslocador port map(saidamuxclearred, deslocarlateral, saidadeslocadorred);
muxdred : mux port map(saidamuxclearred, saidadeslocadorred, pulsolateral, entradaregistradorred);
registradorred : registrador8bits port map(entradaregistradorred, clock, '1', saidaregistradorred);
ledr <= saidaregistradorred;
muxcleargreen : mux port map("10000000", saidaregistradorgreen, clear, saidamuxcleargreen);
deslocadorgreen : deslocador port map(saidamuxcleargreen, deslocarvertical, saidadeslocadorgreen);
muxdgreen : mux port map(saidamuxcleargreen, saidadeslocadorgreen, pulsovertical, entradaregistradorgreen);
registradorgreen : registrador8bits port map(entradaregistradorgreen, clock, '1', saidaregistradorgreen);
ledg <= saidaregistradorgreen;
end architecture;