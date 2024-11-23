library ieee;
use ieee.std_logic_1164.all;

entity multiplicador is
	port(A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		M : out std_logic_vector(7 downto 0);
		cout : out std_logic);
end entity;

architecture melindre of multiplicador is
component somador is
	port(
		A_somador, B_somador: in std_logic_vector(7 downto 0);
		Cin_somador : in std_logic;
		S_somador : out std_logic_vector (7 downto 0);
		Cout_somador : out std_logic
	);
end component;

	signal pac0, pac1,pac2,pac3 : std_logic_vector(3 downto 0);
	signal dprc0, dprc1, dprc2, dprc3, somad1,somad2 : std_logic_vector(7 downto 0);
begin
	
	pac0 <= A AND (B(0) & B(0) & B(0) & B(0));
	pac1 <= A AND (B(1) &B(1) & B(1) & B(1));
	pac2 <= A AND (B(2) & B(2) & B(2) & B(2));
	pac3 <= A AND (B(3) & B(3) & B(3) & B(3));
	dprc0 <= "0000" & pac0;
	dprc1 <= "000" & pac1 & "0";
	dprc2 <= "00" & pac2 & "00";
	dprc3 <= "0" & pac3 & "000";
	soma1 : somador port map(dprc0,dprc1,'0', somad1, open);
	soma2 : somador port map(somad1, dprc2, '0', somad2, open);
	soma3 : somador port map(somad2, dprc3, '0', M, open);
end architecture;