library ieee;
use ieee.std_logic_1164.all;

entity lab10 is
   port (clockfpga, clear : in  std_logic;
         SACR,SVCR,PAMP, PVMP: out std_logic;
			sinais : in std_logic_vector(1 downto 0));
end lab10;


architecture liberdadefinalmente of lab10 is
component ck_div is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end component;
component marcapasso is 
	port(clear, clock, SAT,SVT : in std_logic;
	PAT,PVT : out std_logic);
end component;
component coracao is 
	port(clear, PAC, PVC, clock: in std_logic;
		  SAC, SVC, PAT, PVT, SAT, SVT: out std_logic;
		  sinal : in std_logic_vector(1 downto 0));
end component;
signal clocks100, BeatCAtoMP, beatCVtoMP, pulseMPAtoC,pulseMPVtoC : std_logic;
begin 
divclockbasico : ck_div port map (clockfpga, clocks100);
mp : marcapasso port map(clear, clocks100, BeatCAtoMP, beatCVtoMP, pulseMPAtoC,pulseMPVtoC);
cor : coracao port map(clear, pulseMPAtoC, pulseMPVtoC, clocks100, SACR, SVCR, PAMP, PVMP, beatCAtoMP, beatCVtoMP, sinais);
end architecture;