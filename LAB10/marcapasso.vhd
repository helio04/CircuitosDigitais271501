library ieee;
use ieee.std_logic_1164.all;

entity marcapasso is 
	port(clear, clock, SAT,SVT : in std_logic;
	PAT,PVT : out std_logic);
end entity;

architecture infarto of marcapasso is
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
signal clockemmillis, actContVentr, estadoPulsoAtrio, estadoPulsoVentr : std_logic;
begin
millisegundos : divclockmillis port map(clock, clockemmillis);
delayPulsoVentr: cont5 port map(clockemmillis, clear, '1', actContVentr);
beatPulsoAtrio: cont25 port map(clockemmillis, clear, '1', estadoPulsoAtrio);
beatPulsoVentr : cont25 port map(clockemmillis, clear, actContVentr, estadoPulsoVentr);
PAT <= estadoPulsoAtrio and not SAT;
PVT <= estadoPulsoVentr and not SVT;
end architecture;