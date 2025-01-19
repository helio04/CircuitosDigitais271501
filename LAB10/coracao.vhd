library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity coracao is 
	port(clear, PAC, PVC, clock: in std_logic;
		  SAC, SVC, PAT, PVT, SAT, SVT: out std_logic;
		  sinal : in std_logic_vector(1 downto 0));
end entity;

architecture estresse of coracao is
component cont5 is
    Port (clkcont5 : in STD_LOGIC;
           resetcont5 : in STD_LOGIC;
           enablecont5 : in STD_LOGIC;
           timesup : out STD_LOGIC);
end component;
component divclockmillis is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end component;
component cont25 is
    Port ( clkcont25 : in STD_LOGIC;
           resetcont25 : in STD_LOGIC;
           enablecont25 : in STD_LOGIC;
           timesup : out STD_LOGIC);
end component;
signal clockemmillis, EstadoAtrioCor,EstadoVentrCor, actContVentr : std_logic;
begin
millisegundos : divclockmillis port map(clock, clockemmillis);
delayventr : cont5 port map (clockemmillis, clear, '1', actContVentr);
beatAtrio : cont25 port map (clockemmillis, clear, '1', estadoAtrioCor);
beatVentr : cont25 port map (clockemmillis, clear, actContVentr, estadoVentrCor);
SAC <= estadoAtrioCor and sinal(0);
SAT <= estadoAtrioCor and sinal(0);
SVC <= estadoVentrCor and sinal(1);
SVT <= estadoVentrCor and sinal(1);
PAT <= PAC;
PVT <= PVC;

end architecture;