-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/19/2025 20:09:18"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab10 IS
    PORT (
	clockfpga : IN std_logic;
	clear : IN std_logic;
	SACR : BUFFER std_logic;
	SVCR : BUFFER std_logic;
	PAMP : BUFFER std_logic;
	PVMP : BUFFER std_logic;
	sinais : IN std_logic_vector(1 DOWNTO 0)
	);
END lab10;

-- Design Ports Information
-- SACR	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SVCR	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PAMP	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PVMP	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinais[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinais[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockfpga	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clockfpga : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_SACR : std_logic;
SIGNAL ww_SVCR : std_logic;
SIGNAL ww_PAMP : std_logic;
SIGNAL ww_PVMP : std_logic;
SIGNAL ww_sinais : std_logic_vector(1 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockfpga~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cor|millisegundos|ax~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divclockbasico|ax~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mp|millisegundos|ax~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SACR~output_o\ : std_logic;
SIGNAL \SVCR~output_o\ : std_logic;
SIGNAL \PAMP~output_o\ : std_logic;
SIGNAL \PVMP~output_o\ : std_logic;
SIGNAL \clockfpga~input_o\ : std_logic;
SIGNAL \clockfpga~inputclkctrl_outclk\ : std_logic;
SIGNAL \divclockbasico|Add0~0_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~1_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~1\ : std_logic;
SIGNAL \divclockbasico|Add0~2_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~3\ : std_logic;
SIGNAL \divclockbasico|Add0~4_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~5\ : std_logic;
SIGNAL \divclockbasico|Add0~6_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~7\ : std_logic;
SIGNAL \divclockbasico|Add0~8_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~2_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~9\ : std_logic;
SIGNAL \divclockbasico|Add0~10_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~3_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~11\ : std_logic;
SIGNAL \divclockbasico|Add0~12_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~13\ : std_logic;
SIGNAL \divclockbasico|Add0~14_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~4_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~15\ : std_logic;
SIGNAL \divclockbasico|Add0~16_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~17\ : std_logic;
SIGNAL \divclockbasico|Add0~18_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~5_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~19\ : std_logic;
SIGNAL \divclockbasico|Add0~20_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~6_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~21\ : std_logic;
SIGNAL \divclockbasico|Add0~22_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~7_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~23\ : std_logic;
SIGNAL \divclockbasico|Add0~24_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~8_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~25\ : std_logic;
SIGNAL \divclockbasico|Add0~26_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~27\ : std_logic;
SIGNAL \divclockbasico|Add0~28_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~29\ : std_logic;
SIGNAL \divclockbasico|Add0~30_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~31\ : std_logic;
SIGNAL \divclockbasico|Add0~32_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~33\ : std_logic;
SIGNAL \divclockbasico|Add0~34_combout\ : std_logic;
SIGNAL \divclockbasico|Add0~35\ : std_logic;
SIGNAL \divclockbasico|Add0~36_combout\ : std_logic;
SIGNAL \divclockbasico|cnt~0_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~1_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~0_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~3_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~2_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~4_combout\ : std_logic;
SIGNAL \divclockbasico|Equal0~5_combout\ : std_logic;
SIGNAL \divclockbasico|ax~0_combout\ : std_logic;
SIGNAL \divclockbasico|ax~feeder_combout\ : std_logic;
SIGNAL \divclockbasico|ax~q\ : std_logic;
SIGNAL \divclockbasico|ax~clkctrl_outclk\ : std_logic;
SIGNAL \cor|millisegundos|ax~0_combout\ : std_logic;
SIGNAL \cor|millisegundos|ax~feeder_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~0_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~5_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~1\ : std_logic;
SIGNAL \cor|millisegundos|Add0~2_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~3\ : std_logic;
SIGNAL \cor|millisegundos|Add0~4_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~5\ : std_logic;
SIGNAL \cor|millisegundos|Add0~6_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~7\ : std_logic;
SIGNAL \cor|millisegundos|Add0~8_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~9\ : std_logic;
SIGNAL \cor|millisegundos|Add0~10_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~11\ : std_logic;
SIGNAL \cor|millisegundos|Add0~12_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~13\ : std_logic;
SIGNAL \cor|millisegundos|Add0~14_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~1_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~15\ : std_logic;
SIGNAL \cor|millisegundos|Add0~16_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~0_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~17\ : std_logic;
SIGNAL \cor|millisegundos|Add0~18_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~2_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~19\ : std_logic;
SIGNAL \cor|millisegundos|Add0~20_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~3_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~21\ : std_logic;
SIGNAL \cor|millisegundos|Add0~22_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~4_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~23\ : std_logic;
SIGNAL \cor|millisegundos|Add0~24_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~6_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~25\ : std_logic;
SIGNAL \cor|millisegundos|Add0~26_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~27\ : std_logic;
SIGNAL \cor|millisegundos|Add0~28_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~7_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~29\ : std_logic;
SIGNAL \cor|millisegundos|Add0~30_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~8_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~31\ : std_logic;
SIGNAL \cor|millisegundos|Add0~32_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~9_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~33\ : std_logic;
SIGNAL \cor|millisegundos|Add0~34_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~10_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~35\ : std_logic;
SIGNAL \cor|millisegundos|Add0~36_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~11_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~37\ : std_logic;
SIGNAL \cor|millisegundos|Add0~38_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~39\ : std_logic;
SIGNAL \cor|millisegundos|Add0~40_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~12_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~41\ : std_logic;
SIGNAL \cor|millisegundos|Add0~42_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~43\ : std_logic;
SIGNAL \cor|millisegundos|Add0~44_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~45\ : std_logic;
SIGNAL \cor|millisegundos|Add0~46_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~6_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~5_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~0_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~1_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~3_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~2_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~4_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~47\ : std_logic;
SIGNAL \cor|millisegundos|Add0~48_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~49\ : std_logic;
SIGNAL \cor|millisegundos|Add0~50_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~51\ : std_logic;
SIGNAL \cor|millisegundos|Add0~52_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~53\ : std_logic;
SIGNAL \cor|millisegundos|Add0~54_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~7_combout\ : std_logic;
SIGNAL \cor|millisegundos|Add0~55\ : std_logic;
SIGNAL \cor|millisegundos|Add0~56_combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt~13_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~8_combout\ : std_logic;
SIGNAL \cor|millisegundos|Equal0~9_combout\ : std_logic;
SIGNAL \cor|millisegundos|ax~q\ : std_logic;
SIGNAL \cor|millisegundos|ax~clkctrl_outclk\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~8\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~9_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~67_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[0]~0_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~10\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~11_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[4]~1_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~9_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~10_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~12\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~13_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[5]~27_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~14\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~15_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[6]~26_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~7_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~16\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~17_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[7]~25_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~18\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~19_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[8]~24_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~20\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~21_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[9]~23_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~22\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~23_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[10]~22_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~6_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~24\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~25_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[11]~21_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~26\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~27_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[12]~20_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~28\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~29_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[13]~19_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~30\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~31_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[14]~18_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~32\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~33_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[15]~17_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~34\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~35_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[16]~16_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~36\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~37_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[17]~15_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~38\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~39_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[18]~14_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~3_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~40\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~41_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[19]~13_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~42\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~43_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[20]~12_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~44\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~45_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[21]~11_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~46\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~47_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[22]~10_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~48\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~49_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[23]~9_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~50\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~51_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[24]~8_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~52\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~53_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[25]~7_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~54\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~55_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[26]~6_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~1_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~56\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~57_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[27]~5_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~58\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~59_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[28]~4_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~60\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~61_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[29]~3_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~62\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~63_combout\ : std_logic;
SIGNAL \cor|beatAtrio|intcont[30]~2_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~0_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~2_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~4_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~5_combout\ : std_logic;
SIGNAL \cor|beatAtrio|LessThan0~8_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~64\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~65_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~70_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~2_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~4_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~3\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~5_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~68_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~6\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~7_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Add0~69_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Equal0~0_combout\ : std_logic;
SIGNAL \cor|beatAtrio|Equal0~1_combout\ : std_logic;
SIGNAL \sinais[0]~input_o\ : std_logic;
SIGNAL \cor|SAC~combout\ : std_logic;
SIGNAL \sinais[1]~input_o\ : std_logic;
SIGNAL \cor|delayventr|intcont[30]~90\ : std_logic;
SIGNAL \cor|delayventr|intcont[31]~92_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[1]~31_combout\ : std_logic;
SIGNAL \cor|delayventr|LessThan0~0_combout\ : std_logic;
SIGNAL \cor|delayventr|LessThan0~1_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[0]~91_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[1]~32\ : std_logic;
SIGNAL \cor|delayventr|intcont[2]~33_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[2]~34\ : std_logic;
SIGNAL \cor|delayventr|intcont[3]~35_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[3]~36\ : std_logic;
SIGNAL \cor|delayventr|intcont[4]~37_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[4]~38\ : std_logic;
SIGNAL \cor|delayventr|intcont[5]~39_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[5]~40\ : std_logic;
SIGNAL \cor|delayventr|intcont[6]~41_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[6]~42\ : std_logic;
SIGNAL \cor|delayventr|intcont[7]~43_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[7]~44\ : std_logic;
SIGNAL \cor|delayventr|intcont[8]~45_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[8]~46\ : std_logic;
SIGNAL \cor|delayventr|intcont[9]~47_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[9]~48\ : std_logic;
SIGNAL \cor|delayventr|intcont[10]~49_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[10]~50\ : std_logic;
SIGNAL \cor|delayventr|intcont[11]~51_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[11]~52\ : std_logic;
SIGNAL \cor|delayventr|intcont[12]~53_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[12]~54\ : std_logic;
SIGNAL \cor|delayventr|intcont[13]~55_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[13]~56\ : std_logic;
SIGNAL \cor|delayventr|intcont[14]~57_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[14]~58\ : std_logic;
SIGNAL \cor|delayventr|intcont[15]~59_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[15]~60\ : std_logic;
SIGNAL \cor|delayventr|intcont[16]~61_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[16]~62\ : std_logic;
SIGNAL \cor|delayventr|intcont[17]~63_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[17]~64\ : std_logic;
SIGNAL \cor|delayventr|intcont[18]~65_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[18]~66\ : std_logic;
SIGNAL \cor|delayventr|intcont[19]~67_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[19]~68\ : std_logic;
SIGNAL \cor|delayventr|intcont[20]~69_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[20]~70\ : std_logic;
SIGNAL \cor|delayventr|intcont[21]~71_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[21]~72\ : std_logic;
SIGNAL \cor|delayventr|intcont[22]~73_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[22]~74\ : std_logic;
SIGNAL \cor|delayventr|intcont[23]~75_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[23]~76\ : std_logic;
SIGNAL \cor|delayventr|intcont[24]~77_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[24]~78\ : std_logic;
SIGNAL \cor|delayventr|intcont[25]~79_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[25]~80\ : std_logic;
SIGNAL \cor|delayventr|intcont[26]~81_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[26]~82\ : std_logic;
SIGNAL \cor|delayventr|intcont[27]~83_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[27]~84\ : std_logic;
SIGNAL \cor|delayventr|intcont[28]~85_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[28]~86\ : std_logic;
SIGNAL \cor|delayventr|intcont[29]~87_combout\ : std_logic;
SIGNAL \cor|delayventr|intcont[29]~88\ : std_logic;
SIGNAL \cor|delayventr|intcont[30]~89_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~7_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~5_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~6_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~0_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~1_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~2_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~3_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~4_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~8_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~9_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~3\ : std_logic;
SIGNAL \cor|beatVentr|Add0~4_combout\ : std_logic;
SIGNAL \cor|delayventr|Equal0~10_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[2]~35_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[31]~4_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~5\ : std_logic;
SIGNAL \cor|beatVentr|Add0~6_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[3]~34_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~7\ : std_logic;
SIGNAL \cor|beatVentr|Add0~8_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[4]~31_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~9\ : std_logic;
SIGNAL \cor|beatVentr|Add0~10_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[5]~30_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~11\ : std_logic;
SIGNAL \cor|beatVentr|Add0~12_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[6]~29_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~7_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~13\ : std_logic;
SIGNAL \cor|beatVentr|Add0~14_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[7]~28_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~15\ : std_logic;
SIGNAL \cor|beatVentr|Add0~16_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[8]~27_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~17\ : std_logic;
SIGNAL \cor|beatVentr|Add0~18_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[9]~26_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~19\ : std_logic;
SIGNAL \cor|beatVentr|Add0~20_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[10]~25_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~21\ : std_logic;
SIGNAL \cor|beatVentr|Add0~22_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[11]~24_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~23\ : std_logic;
SIGNAL \cor|beatVentr|Add0~24_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[12]~23_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~25\ : std_logic;
SIGNAL \cor|beatVentr|Add0~26_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[13]~22_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~27\ : std_logic;
SIGNAL \cor|beatVentr|Add0~28_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[14]~21_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~5_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~6_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~29\ : std_logic;
SIGNAL \cor|beatVentr|Add0~30_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[15]~20_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~31\ : std_logic;
SIGNAL \cor|beatVentr|Add0~32_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[16]~19_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~33\ : std_logic;
SIGNAL \cor|beatVentr|Add0~34_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[17]~18_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~35\ : std_logic;
SIGNAL \cor|beatVentr|Add0~36_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[18]~17_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~37\ : std_logic;
SIGNAL \cor|beatVentr|Add0~38_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[19]~16_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~39\ : std_logic;
SIGNAL \cor|beatVentr|Add0~40_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[20]~15_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~41\ : std_logic;
SIGNAL \cor|beatVentr|Add0~42_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[21]~14_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~43\ : std_logic;
SIGNAL \cor|beatVentr|Add0~44_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[22]~13_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~2_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~45\ : std_logic;
SIGNAL \cor|beatVentr|Add0~46_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[23]~12_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~47\ : std_logic;
SIGNAL \cor|beatVentr|Add0~48_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[24]~11_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~49\ : std_logic;
SIGNAL \cor|beatVentr|Add0~50_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[25]~10_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~51\ : std_logic;
SIGNAL \cor|beatVentr|Add0~52_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[26]~9_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~53\ : std_logic;
SIGNAL \cor|beatVentr|Add0~54_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[27]~8_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~55\ : std_logic;
SIGNAL \cor|beatVentr|Add0~56_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[28]~7_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~57\ : std_logic;
SIGNAL \cor|beatVentr|Add0~58_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[29]~6_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~0_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~3_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~1_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~4_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~8_combout\ : std_logic;
SIGNAL \cor|beatVentr|LessThan0~0_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont~37_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~59\ : std_logic;
SIGNAL \cor|beatVentr|Add0~60_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[30]~5_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~61\ : std_logic;
SIGNAL \cor|beatVentr|Add0~62_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[31]~33_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~0_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[0]~32_combout\ : std_logic;
SIGNAL \cor|beatVentr|Add0~1\ : std_logic;
SIGNAL \cor|beatVentr|Add0~2_combout\ : std_logic;
SIGNAL \cor|beatVentr|intcont[1]~36_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~9_combout\ : std_logic;
SIGNAL \cor|beatVentr|Equal0~10_combout\ : std_logic;
SIGNAL \cor|SVC~combout\ : std_logic;
SIGNAL \mp|millisegundos|ax~0_combout\ : std_logic;
SIGNAL \mp|millisegundos|ax~feeder_combout\ : std_logic;
SIGNAL \mp|millisegundos|ax~q\ : std_logic;
SIGNAL \mp|millisegundos|ax~clkctrl_outclk\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~2_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[4]~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~3\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~6\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~7_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~69_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~9_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~8\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~9_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~67_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~10\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~11_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[4]~1_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~12\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~13_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[5]~27_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~14\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~16\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~17_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[7]~25_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~18\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~19_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[8]~24_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~20\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~21_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[9]~23_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~22\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~23_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[10]~22_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~24\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~25_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[11]~21_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~26\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~27_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[12]~20_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~28\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~29_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[13]~19_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~30\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~31_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[14]~18_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~32\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~33_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[15]~17_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~34\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~35_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[16]~16_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~36\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~37_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[17]~15_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~38\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~39_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[18]~14_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~40\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~41_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[19]~13_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~42\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~43_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[20]~12_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~44\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~45_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[21]~11_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~46\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~47_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[22]~10_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~48\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~49_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[23]~9_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~50\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~51_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[24]~8_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~52\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~53_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[25]~7_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~54\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~55_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[26]~6_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~56\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~57_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[27]~5_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~58\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~59_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[28]~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~60\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~61_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[29]~3_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~62\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~63_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[30]~2_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~64\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~65_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~70_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~10_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~15_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|intcont[6]~26_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~7_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~6_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~5_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~3_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~2_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~1_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|LessThan0~8_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~5_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Add0~68_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Equal0~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoAtrio|Equal0~1_combout\ : std_logic;
SIGNAL \mp|PAT~combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[2]~34\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[3]~35_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[29]~88\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[30]~89_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[30]~90\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[31]~92_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[1]~31_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|LessThan0~0_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|LessThan0~1_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[3]~36\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[4]~37_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[4]~38\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[5]~39_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[5]~40\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[6]~41_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[6]~42\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[7]~43_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[7]~44\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[8]~45_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[8]~46\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[9]~47_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[9]~48\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[10]~49_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[10]~50\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[11]~51_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[11]~52\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[12]~53_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[12]~54\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[13]~55_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[13]~56\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[14]~57_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[14]~58\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[15]~59_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[15]~60\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[16]~61_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[16]~62\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[17]~63_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[17]~64\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[18]~65_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[18]~66\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[19]~67_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[19]~68\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[20]~69_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[20]~70\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[21]~71_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[21]~72\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[22]~73_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[22]~74\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[23]~75_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[23]~76\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[24]~77_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[24]~78\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[25]~79_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[25]~80\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[26]~81_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[26]~82\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[27]~83_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[27]~84\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[28]~85_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[28]~86\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[29]~87_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~7_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~5_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~6_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~3_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~0_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~1_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~2_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~4_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~8_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[0]~91_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[1]~32\ : std_logic;
SIGNAL \mp|delayPulsoVentr|intcont[2]~33_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~9_combout\ : std_logic;
SIGNAL \mp|delayPulsoVentr|Equal0~10_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[0]~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont~37_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~1\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~2_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[1]~36_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~3\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~5\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~6_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[3]~34_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~7\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~8_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[4]~31_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~9\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~10_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[5]~30_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~11\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~12_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[6]~29_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~13\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~14_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[7]~28_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~15\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~16_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[8]~27_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~17\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~18_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[9]~26_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~19\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~20_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[10]~25_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~21\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~22_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[11]~24_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~23\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~24_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[12]~23_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~25\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~26_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[13]~22_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~27\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~28_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[14]~21_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~29\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~30_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[15]~20_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~31\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~32_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[16]~19_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~33\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~34_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[17]~18_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~35\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~36_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[18]~17_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~37\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~38_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[19]~16_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~39\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~40_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[20]~15_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~41\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~42_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[21]~14_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~43\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~44_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[22]~13_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~45\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~46_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[23]~12_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~47\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~48_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[24]~11_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~49\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~50_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[25]~10_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~51\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~52_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[26]~9_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~53\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~54_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[27]~8_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~55\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~56_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[28]~7_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~57\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~58_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[29]~6_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~59\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~60_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[30]~5_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~61\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~62_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[31]~33_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[2]~35_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~6_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~5_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~7_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~1_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~2_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~3_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~4_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~8_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|LessThan0~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Add0~0_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|intcont[0]~32_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~9_combout\ : std_logic;
SIGNAL \mp|beatPulsoVentr|Equal0~10_combout\ : std_logic;
SIGNAL \mp|PVT~combout\ : std_logic;
SIGNAL \cor|millisegundos|cnt\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \cor|delayventr|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mp|beatPulsoVentr|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cor|beatVentr|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \divclockbasico|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \mp|delayPulsoVentr|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mp|beatPulsoAtrio|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cor|beatAtrio|intcont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\ : std_logic;
SIGNAL \cor|beatVentr|ALT_INV_intcont[31]~4_combout\ : std_logic;
SIGNAL \mp|ALT_INV_PAT~combout\ : std_logic;

BEGIN

ww_clockfpga <= clockfpga;
ww_clear <= clear;
SACR <= ww_SACR;
SVCR <= ww_SVCR;
PAMP <= ww_PAMP;
PVMP <= ww_PVMP;
ww_sinais <= sinais;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clockfpga~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockfpga~input_o\);

\cor|millisegundos|ax~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cor|millisegundos|ax~q\);

\divclockbasico|ax~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divclockbasico|ax~q\);

\mp|millisegundos|ax~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mp|millisegundos|ax~q\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
\mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\ <= NOT \mp|beatPulsoVentr|intcont[0]~4_combout\;
\cor|beatVentr|ALT_INV_intcont[31]~4_combout\ <= NOT \cor|beatVentr|intcont[31]~4_combout\;
\mp|ALT_INV_PAT~combout\ <= NOT \mp|PAT~combout\;

-- Location: IOOBUF_X14_Y31_N9
\SACR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cor|SAC~combout\,
	devoe => ww_devoe,
	o => \SACR~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\SVCR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cor|SVC~combout\,
	devoe => ww_devoe,
	o => \SVCR~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\PAMP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mp|ALT_INV_PAT~combout\,
	devoe => ww_devoe,
	o => \PAMP~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\PVMP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mp|PVT~combout\,
	devoe => ww_devoe,
	o => \PVMP~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clockfpga~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockfpga,
	o => \clockfpga~input_o\);

-- Location: CLKCTRL_G17
\clockfpga~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockfpga~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockfpga~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y17_N14
\divclockbasico|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~0_combout\ = \divclockbasico|cnt\(0) $ (VCC)
-- \divclockbasico|Add0~1\ = CARRY(\divclockbasico|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(0),
	datad => VCC,
	combout => \divclockbasico|Add0~0_combout\,
	cout => \divclockbasico|Add0~1\);

-- Location: LCCOMB_X25_Y17_N12
\divclockbasico|cnt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~1_combout\ = (\divclockbasico|Add0~0_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclockbasico|Add0~0_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~1_combout\);

-- Location: FF_X25_Y17_N13
\divclockbasico|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(0));

-- Location: LCCOMB_X25_Y17_N16
\divclockbasico|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~2_combout\ = (\divclockbasico|cnt\(1) & (!\divclockbasico|Add0~1\)) # (!\divclockbasico|cnt\(1) & ((\divclockbasico|Add0~1\) # (GND)))
-- \divclockbasico|Add0~3\ = CARRY((!\divclockbasico|Add0~1\) # (!\divclockbasico|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(1),
	datad => VCC,
	cin => \divclockbasico|Add0~1\,
	combout => \divclockbasico|Add0~2_combout\,
	cout => \divclockbasico|Add0~3\);

-- Location: FF_X25_Y17_N17
\divclockbasico|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(1));

-- Location: LCCOMB_X25_Y17_N18
\divclockbasico|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~4_combout\ = (\divclockbasico|cnt\(2) & (\divclockbasico|Add0~3\ $ (GND))) # (!\divclockbasico|cnt\(2) & (!\divclockbasico|Add0~3\ & VCC))
-- \divclockbasico|Add0~5\ = CARRY((\divclockbasico|cnt\(2) & !\divclockbasico|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(2),
	datad => VCC,
	cin => \divclockbasico|Add0~3\,
	combout => \divclockbasico|Add0~4_combout\,
	cout => \divclockbasico|Add0~5\);

-- Location: FF_X25_Y17_N19
\divclockbasico|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(2));

-- Location: LCCOMB_X25_Y17_N20
\divclockbasico|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~6_combout\ = (\divclockbasico|cnt\(3) & (!\divclockbasico|Add0~5\)) # (!\divclockbasico|cnt\(3) & ((\divclockbasico|Add0~5\) # (GND)))
-- \divclockbasico|Add0~7\ = CARRY((!\divclockbasico|Add0~5\) # (!\divclockbasico|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(3),
	datad => VCC,
	cin => \divclockbasico|Add0~5\,
	combout => \divclockbasico|Add0~6_combout\,
	cout => \divclockbasico|Add0~7\);

-- Location: FF_X25_Y17_N21
\divclockbasico|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(3));

-- Location: LCCOMB_X25_Y17_N22
\divclockbasico|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~8_combout\ = (\divclockbasico|cnt\(4) & (\divclockbasico|Add0~7\ $ (GND))) # (!\divclockbasico|cnt\(4) & (!\divclockbasico|Add0~7\ & VCC))
-- \divclockbasico|Add0~9\ = CARRY((\divclockbasico|cnt\(4) & !\divclockbasico|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(4),
	datad => VCC,
	cin => \divclockbasico|Add0~7\,
	combout => \divclockbasico|Add0~8_combout\,
	cout => \divclockbasico|Add0~9\);

-- Location: LCCOMB_X26_Y17_N24
\divclockbasico|cnt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~2_combout\ = (\divclockbasico|Add0~8_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|Add0~8_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~2_combout\);

-- Location: FF_X26_Y17_N25
\divclockbasico|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(4));

-- Location: LCCOMB_X25_Y17_N24
\divclockbasico|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~10_combout\ = (\divclockbasico|cnt\(5) & (!\divclockbasico|Add0~9\)) # (!\divclockbasico|cnt\(5) & ((\divclockbasico|Add0~9\) # (GND)))
-- \divclockbasico|Add0~11\ = CARRY((!\divclockbasico|Add0~9\) # (!\divclockbasico|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(5),
	datad => VCC,
	cin => \divclockbasico|Add0~9\,
	combout => \divclockbasico|Add0~10_combout\,
	cout => \divclockbasico|Add0~11\);

-- Location: LCCOMB_X26_Y17_N28
\divclockbasico|cnt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~3_combout\ = (\divclockbasico|Add0~10_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|Add0~10_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~3_combout\);

-- Location: FF_X26_Y17_N29
\divclockbasico|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(5));

-- Location: LCCOMB_X25_Y17_N26
\divclockbasico|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~12_combout\ = (\divclockbasico|cnt\(6) & (\divclockbasico|Add0~11\ $ (GND))) # (!\divclockbasico|cnt\(6) & (!\divclockbasico|Add0~11\ & VCC))
-- \divclockbasico|Add0~13\ = CARRY((\divclockbasico|cnt\(6) & !\divclockbasico|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(6),
	datad => VCC,
	cin => \divclockbasico|Add0~11\,
	combout => \divclockbasico|Add0~12_combout\,
	cout => \divclockbasico|Add0~13\);

-- Location: FF_X25_Y17_N27
\divclockbasico|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(6));

-- Location: LCCOMB_X25_Y17_N28
\divclockbasico|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~14_combout\ = (\divclockbasico|cnt\(7) & (!\divclockbasico|Add0~13\)) # (!\divclockbasico|cnt\(7) & ((\divclockbasico|Add0~13\) # (GND)))
-- \divclockbasico|Add0~15\ = CARRY((!\divclockbasico|Add0~13\) # (!\divclockbasico|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(7),
	datad => VCC,
	cin => \divclockbasico|Add0~13\,
	combout => \divclockbasico|Add0~14_combout\,
	cout => \divclockbasico|Add0~15\);

-- Location: LCCOMB_X26_Y17_N2
\divclockbasico|cnt~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~4_combout\ = (!\divclockbasico|Equal0~5_combout\ & \divclockbasico|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|Equal0~5_combout\,
	datad => \divclockbasico|Add0~14_combout\,
	combout => \divclockbasico|cnt~4_combout\);

-- Location: FF_X26_Y17_N3
\divclockbasico|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(7));

-- Location: LCCOMB_X25_Y17_N30
\divclockbasico|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~16_combout\ = (\divclockbasico|cnt\(8) & (\divclockbasico|Add0~15\ $ (GND))) # (!\divclockbasico|cnt\(8) & (!\divclockbasico|Add0~15\ & VCC))
-- \divclockbasico|Add0~17\ = CARRY((\divclockbasico|cnt\(8) & !\divclockbasico|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(8),
	datad => VCC,
	cin => \divclockbasico|Add0~15\,
	combout => \divclockbasico|Add0~16_combout\,
	cout => \divclockbasico|Add0~17\);

-- Location: FF_X25_Y17_N31
\divclockbasico|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(8));

-- Location: LCCOMB_X25_Y16_N0
\divclockbasico|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~18_combout\ = (\divclockbasico|cnt\(9) & (!\divclockbasico|Add0~17\)) # (!\divclockbasico|cnt\(9) & ((\divclockbasico|Add0~17\) # (GND)))
-- \divclockbasico|Add0~19\ = CARRY((!\divclockbasico|Add0~17\) # (!\divclockbasico|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(9),
	datad => VCC,
	cin => \divclockbasico|Add0~17\,
	combout => \divclockbasico|Add0~18_combout\,
	cout => \divclockbasico|Add0~19\);

-- Location: LCCOMB_X25_Y16_N30
\divclockbasico|cnt~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~5_combout\ = (\divclockbasico|Add0~18_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|Add0~18_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~5_combout\);

-- Location: FF_X25_Y16_N31
\divclockbasico|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(9));

-- Location: LCCOMB_X25_Y16_N2
\divclockbasico|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~20_combout\ = (\divclockbasico|cnt\(10) & (\divclockbasico|Add0~19\ $ (GND))) # (!\divclockbasico|cnt\(10) & (!\divclockbasico|Add0~19\ & VCC))
-- \divclockbasico|Add0~21\ = CARRY((\divclockbasico|cnt\(10) & !\divclockbasico|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(10),
	datad => VCC,
	cin => \divclockbasico|Add0~19\,
	combout => \divclockbasico|Add0~20_combout\,
	cout => \divclockbasico|Add0~21\);

-- Location: LCCOMB_X25_Y16_N24
\divclockbasico|cnt~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~6_combout\ = (\divclockbasico|Add0~20_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|Add0~20_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~6_combout\);

-- Location: FF_X25_Y16_N25
\divclockbasico|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(10));

-- Location: LCCOMB_X25_Y16_N4
\divclockbasico|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~22_combout\ = (\divclockbasico|cnt\(11) & (!\divclockbasico|Add0~21\)) # (!\divclockbasico|cnt\(11) & ((\divclockbasico|Add0~21\) # (GND)))
-- \divclockbasico|Add0~23\ = CARRY((!\divclockbasico|Add0~21\) # (!\divclockbasico|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(11),
	datad => VCC,
	cin => \divclockbasico|Add0~21\,
	combout => \divclockbasico|Add0~22_combout\,
	cout => \divclockbasico|Add0~23\);

-- Location: LCCOMB_X25_Y16_N22
\divclockbasico|cnt~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~7_combout\ = (\divclockbasico|Add0~22_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclockbasico|Add0~22_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~7_combout\);

-- Location: FF_X25_Y16_N23
\divclockbasico|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(11));

-- Location: LCCOMB_X25_Y16_N6
\divclockbasico|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~24_combout\ = (\divclockbasico|cnt\(12) & (\divclockbasico|Add0~23\ $ (GND))) # (!\divclockbasico|cnt\(12) & (!\divclockbasico|Add0~23\ & VCC))
-- \divclockbasico|Add0~25\ = CARRY((\divclockbasico|cnt\(12) & !\divclockbasico|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(12),
	datad => VCC,
	cin => \divclockbasico|Add0~23\,
	combout => \divclockbasico|Add0~24_combout\,
	cout => \divclockbasico|Add0~25\);

-- Location: LCCOMB_X25_Y16_N28
\divclockbasico|cnt~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~8_combout\ = (\divclockbasico|Add0~24_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|Add0~24_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~8_combout\);

-- Location: FF_X25_Y16_N29
\divclockbasico|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(12));

-- Location: LCCOMB_X25_Y16_N8
\divclockbasico|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~26_combout\ = (\divclockbasico|cnt\(13) & (!\divclockbasico|Add0~25\)) # (!\divclockbasico|cnt\(13) & ((\divclockbasico|Add0~25\) # (GND)))
-- \divclockbasico|Add0~27\ = CARRY((!\divclockbasico|Add0~25\) # (!\divclockbasico|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(13),
	datad => VCC,
	cin => \divclockbasico|Add0~25\,
	combout => \divclockbasico|Add0~26_combout\,
	cout => \divclockbasico|Add0~27\);

-- Location: FF_X25_Y16_N9
\divclockbasico|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(13));

-- Location: LCCOMB_X25_Y16_N10
\divclockbasico|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~28_combout\ = (\divclockbasico|cnt\(14) & (\divclockbasico|Add0~27\ $ (GND))) # (!\divclockbasico|cnt\(14) & (!\divclockbasico|Add0~27\ & VCC))
-- \divclockbasico|Add0~29\ = CARRY((\divclockbasico|cnt\(14) & !\divclockbasico|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(14),
	datad => VCC,
	cin => \divclockbasico|Add0~27\,
	combout => \divclockbasico|Add0~28_combout\,
	cout => \divclockbasico|Add0~29\);

-- Location: FF_X25_Y16_N11
\divclockbasico|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(14));

-- Location: LCCOMB_X25_Y16_N12
\divclockbasico|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~30_combout\ = (\divclockbasico|cnt\(15) & (!\divclockbasico|Add0~29\)) # (!\divclockbasico|cnt\(15) & ((\divclockbasico|Add0~29\) # (GND)))
-- \divclockbasico|Add0~31\ = CARRY((!\divclockbasico|Add0~29\) # (!\divclockbasico|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(15),
	datad => VCC,
	cin => \divclockbasico|Add0~29\,
	combout => \divclockbasico|Add0~30_combout\,
	cout => \divclockbasico|Add0~31\);

-- Location: FF_X25_Y16_N13
\divclockbasico|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(15));

-- Location: LCCOMB_X25_Y16_N14
\divclockbasico|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~32_combout\ = (\divclockbasico|cnt\(16) & (\divclockbasico|Add0~31\ $ (GND))) # (!\divclockbasico|cnt\(16) & (!\divclockbasico|Add0~31\ & VCC))
-- \divclockbasico|Add0~33\ = CARRY((\divclockbasico|cnt\(16) & !\divclockbasico|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(16),
	datad => VCC,
	cin => \divclockbasico|Add0~31\,
	combout => \divclockbasico|Add0~32_combout\,
	cout => \divclockbasico|Add0~33\);

-- Location: FF_X25_Y16_N15
\divclockbasico|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(16));

-- Location: LCCOMB_X25_Y16_N16
\divclockbasico|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~34_combout\ = (\divclockbasico|cnt\(17) & (!\divclockbasico|Add0~33\)) # (!\divclockbasico|cnt\(17) & ((\divclockbasico|Add0~33\) # (GND)))
-- \divclockbasico|Add0~35\ = CARRY((!\divclockbasico|Add0~33\) # (!\divclockbasico|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|cnt\(17),
	datad => VCC,
	cin => \divclockbasico|Add0~33\,
	combout => \divclockbasico|Add0~34_combout\,
	cout => \divclockbasico|Add0~35\);

-- Location: FF_X25_Y16_N17
\divclockbasico|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(17));

-- Location: LCCOMB_X25_Y16_N18
\divclockbasico|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Add0~36_combout\ = \divclockbasico|cnt\(18) $ (!\divclockbasico|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(18),
	cin => \divclockbasico|Add0~35\,
	combout => \divclockbasico|Add0~36_combout\);

-- Location: LCCOMB_X25_Y16_N20
\divclockbasico|cnt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|cnt~0_combout\ = (\divclockbasico|Add0~36_combout\ & !\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|Add0~36_combout\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|cnt~0_combout\);

-- Location: FF_X25_Y16_N21
\divclockbasico|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|cnt\(18));

-- Location: LCCOMB_X26_Y17_N12
\divclockbasico|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~1_combout\ = (\divclockbasico|cnt\(4) & (\divclockbasico|cnt\(5) & (!\divclockbasico|cnt\(6) & \divclockbasico|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(4),
	datab => \divclockbasico|cnt\(5),
	datac => \divclockbasico|cnt\(6),
	datad => \divclockbasico|cnt\(7),
	combout => \divclockbasico|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y17_N6
\divclockbasico|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~0_combout\ = (!\divclockbasico|cnt\(0) & (!\divclockbasico|cnt\(2) & (!\divclockbasico|cnt\(3) & !\divclockbasico|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(0),
	datab => \divclockbasico|cnt\(2),
	datac => \divclockbasico|cnt\(3),
	datad => \divclockbasico|cnt\(1),
	combout => \divclockbasico|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\divclockbasico|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~3_combout\ = (!\divclockbasico|cnt\(14) & (\divclockbasico|cnt\(12) & (!\divclockbasico|cnt\(13) & !\divclockbasico|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(14),
	datab => \divclockbasico|cnt\(12),
	datac => \divclockbasico|cnt\(13),
	datad => \divclockbasico|cnt\(15),
	combout => \divclockbasico|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y17_N16
\divclockbasico|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~2_combout\ = (\divclockbasico|cnt\(10) & (!\divclockbasico|cnt\(8) & (\divclockbasico|cnt\(9) & \divclockbasico|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(10),
	datab => \divclockbasico|cnt\(8),
	datac => \divclockbasico|cnt\(9),
	datad => \divclockbasico|cnt\(11),
	combout => \divclockbasico|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y17_N20
\divclockbasico|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~4_combout\ = (\divclockbasico|Equal0~1_combout\ & (\divclockbasico|Equal0~0_combout\ & (\divclockbasico|Equal0~3_combout\ & \divclockbasico|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|Equal0~1_combout\,
	datab => \divclockbasico|Equal0~0_combout\,
	datac => \divclockbasico|Equal0~3_combout\,
	datad => \divclockbasico|Equal0~2_combout\,
	combout => \divclockbasico|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y17_N6
\divclockbasico|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|Equal0~5_combout\ = (!\divclockbasico|cnt\(16) & (\divclockbasico|cnt\(18) & (!\divclockbasico|cnt\(17) & \divclockbasico|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclockbasico|cnt\(16),
	datab => \divclockbasico|cnt\(18),
	datac => \divclockbasico|cnt\(17),
	datad => \divclockbasico|Equal0~4_combout\,
	combout => \divclockbasico|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y17_N26
\divclockbasico|ax~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|ax~0_combout\ = \divclockbasico|ax~q\ $ (\divclockbasico|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclockbasico|ax~q\,
	datad => \divclockbasico|Equal0~5_combout\,
	combout => \divclockbasico|ax~0_combout\);

-- Location: LCCOMB_X26_Y17_N30
\divclockbasico|ax~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \divclockbasico|ax~feeder_combout\ = \divclockbasico|ax~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divclockbasico|ax~0_combout\,
	combout => \divclockbasico|ax~feeder_combout\);

-- Location: FF_X26_Y17_N31
\divclockbasico|ax\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockfpga~inputclkctrl_outclk\,
	d => \divclockbasico|ax~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclockbasico|ax~q\);

-- Location: CLKCTRL_G5
\divclockbasico|ax~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divclockbasico|ax~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divclockbasico|ax~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y23_N14
\cor|millisegundos|ax~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|ax~0_combout\ = !\cor|millisegundos|ax~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|ax~q\,
	combout => \cor|millisegundos|ax~0_combout\);

-- Location: LCCOMB_X16_Y23_N30
\cor|millisegundos|ax~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|ax~feeder_combout\ = \cor|millisegundos|ax~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|ax~0_combout\,
	combout => \cor|millisegundos|ax~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N4
\cor|millisegundos|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~0_combout\ = \cor|millisegundos|cnt\(0) $ (VCC)
-- \cor|millisegundos|Add0~1\ = CARRY(\cor|millisegundos|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(0),
	datad => VCC,
	combout => \cor|millisegundos|Add0~0_combout\,
	cout => \cor|millisegundos|Add0~1\);

-- Location: LCCOMB_X15_Y24_N2
\cor|millisegundos|cnt~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~5_combout\ = (\cor|millisegundos|Add0~0_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~0_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~5_combout\);

-- Location: FF_X15_Y24_N3
\cor|millisegundos|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(0));

-- Location: LCCOMB_X15_Y24_N6
\cor|millisegundos|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~2_combout\ = (\cor|millisegundos|cnt\(1) & (!\cor|millisegundos|Add0~1\)) # (!\cor|millisegundos|cnt\(1) & ((\cor|millisegundos|Add0~1\) # (GND)))
-- \cor|millisegundos|Add0~3\ = CARRY((!\cor|millisegundos|Add0~1\) # (!\cor|millisegundos|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(1),
	datad => VCC,
	cin => \cor|millisegundos|Add0~1\,
	combout => \cor|millisegundos|Add0~2_combout\,
	cout => \cor|millisegundos|Add0~3\);

-- Location: FF_X15_Y24_N7
\cor|millisegundos|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(1));

-- Location: LCCOMB_X15_Y24_N8
\cor|millisegundos|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~4_combout\ = (\cor|millisegundos|cnt\(2) & (\cor|millisegundos|Add0~3\ $ (GND))) # (!\cor|millisegundos|cnt\(2) & (!\cor|millisegundos|Add0~3\ & VCC))
-- \cor|millisegundos|Add0~5\ = CARRY((\cor|millisegundos|cnt\(2) & !\cor|millisegundos|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(2),
	datad => VCC,
	cin => \cor|millisegundos|Add0~3\,
	combout => \cor|millisegundos|Add0~4_combout\,
	cout => \cor|millisegundos|Add0~5\);

-- Location: FF_X15_Y24_N9
\cor|millisegundos|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(2));

-- Location: LCCOMB_X15_Y24_N10
\cor|millisegundos|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~6_combout\ = (\cor|millisegundos|cnt\(3) & (!\cor|millisegundos|Add0~5\)) # (!\cor|millisegundos|cnt\(3) & ((\cor|millisegundos|Add0~5\) # (GND)))
-- \cor|millisegundos|Add0~7\ = CARRY((!\cor|millisegundos|Add0~5\) # (!\cor|millisegundos|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(3),
	datad => VCC,
	cin => \cor|millisegundos|Add0~5\,
	combout => \cor|millisegundos|Add0~6_combout\,
	cout => \cor|millisegundos|Add0~7\);

-- Location: FF_X15_Y24_N11
\cor|millisegundos|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(3));

-- Location: LCCOMB_X15_Y24_N12
\cor|millisegundos|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~8_combout\ = (\cor|millisegundos|cnt\(4) & (\cor|millisegundos|Add0~7\ $ (GND))) # (!\cor|millisegundos|cnt\(4) & (!\cor|millisegundos|Add0~7\ & VCC))
-- \cor|millisegundos|Add0~9\ = CARRY((\cor|millisegundos|cnt\(4) & !\cor|millisegundos|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(4),
	datad => VCC,
	cin => \cor|millisegundos|Add0~7\,
	combout => \cor|millisegundos|Add0~8_combout\,
	cout => \cor|millisegundos|Add0~9\);

-- Location: FF_X15_Y24_N13
\cor|millisegundos|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(4));

-- Location: LCCOMB_X15_Y24_N14
\cor|millisegundos|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~10_combout\ = (\cor|millisegundos|cnt\(5) & (!\cor|millisegundos|Add0~9\)) # (!\cor|millisegundos|cnt\(5) & ((\cor|millisegundos|Add0~9\) # (GND)))
-- \cor|millisegundos|Add0~11\ = CARRY((!\cor|millisegundos|Add0~9\) # (!\cor|millisegundos|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(5),
	datad => VCC,
	cin => \cor|millisegundos|Add0~9\,
	combout => \cor|millisegundos|Add0~10_combout\,
	cout => \cor|millisegundos|Add0~11\);

-- Location: FF_X15_Y24_N15
\cor|millisegundos|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(5));

-- Location: LCCOMB_X15_Y24_N16
\cor|millisegundos|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~12_combout\ = (\cor|millisegundos|cnt\(6) & (\cor|millisegundos|Add0~11\ $ (GND))) # (!\cor|millisegundos|cnt\(6) & (!\cor|millisegundos|Add0~11\ & VCC))
-- \cor|millisegundos|Add0~13\ = CARRY((\cor|millisegundos|cnt\(6) & !\cor|millisegundos|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(6),
	datad => VCC,
	cin => \cor|millisegundos|Add0~11\,
	combout => \cor|millisegundos|Add0~12_combout\,
	cout => \cor|millisegundos|Add0~13\);

-- Location: FF_X15_Y24_N17
\cor|millisegundos|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(6));

-- Location: LCCOMB_X15_Y24_N18
\cor|millisegundos|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~14_combout\ = (\cor|millisegundos|cnt\(7) & (!\cor|millisegundos|Add0~13\)) # (!\cor|millisegundos|cnt\(7) & ((\cor|millisegundos|Add0~13\) # (GND)))
-- \cor|millisegundos|Add0~15\ = CARRY((!\cor|millisegundos|Add0~13\) # (!\cor|millisegundos|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(7),
	datad => VCC,
	cin => \cor|millisegundos|Add0~13\,
	combout => \cor|millisegundos|Add0~14_combout\,
	cout => \cor|millisegundos|Add0~15\);

-- Location: LCCOMB_X15_Y24_N0
\cor|millisegundos|cnt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~1_combout\ = (\cor|millisegundos|Add0~14_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Add0~14_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~1_combout\);

-- Location: FF_X15_Y24_N1
\cor|millisegundos|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(7));

-- Location: LCCOMB_X15_Y24_N20
\cor|millisegundos|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~16_combout\ = (\cor|millisegundos|cnt\(8) & (\cor|millisegundos|Add0~15\ $ (GND))) # (!\cor|millisegundos|cnt\(8) & (!\cor|millisegundos|Add0~15\ & VCC))
-- \cor|millisegundos|Add0~17\ = CARRY((\cor|millisegundos|cnt\(8) & !\cor|millisegundos|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(8),
	datad => VCC,
	cin => \cor|millisegundos|Add0~15\,
	combout => \cor|millisegundos|Add0~16_combout\,
	cout => \cor|millisegundos|Add0~17\);

-- Location: LCCOMB_X16_Y24_N28
\cor|millisegundos|cnt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~0_combout\ = (\cor|millisegundos|Add0~16_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Add0~16_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~0_combout\);

-- Location: FF_X16_Y24_N29
\cor|millisegundos|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(8));

-- Location: LCCOMB_X15_Y24_N22
\cor|millisegundos|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~18_combout\ = (\cor|millisegundos|cnt\(9) & (!\cor|millisegundos|Add0~17\)) # (!\cor|millisegundos|cnt\(9) & ((\cor|millisegundos|Add0~17\) # (GND)))
-- \cor|millisegundos|Add0~19\ = CARRY((!\cor|millisegundos|Add0~17\) # (!\cor|millisegundos|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(9),
	datad => VCC,
	cin => \cor|millisegundos|Add0~17\,
	combout => \cor|millisegundos|Add0~18_combout\,
	cout => \cor|millisegundos|Add0~19\);

-- Location: LCCOMB_X16_Y24_N26
\cor|millisegundos|cnt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~2_combout\ = (\cor|millisegundos|Add0~18_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~18_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~2_combout\);

-- Location: FF_X16_Y24_N27
\cor|millisegundos|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(9));

-- Location: LCCOMB_X15_Y24_N24
\cor|millisegundos|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~20_combout\ = (\cor|millisegundos|cnt\(10) & (\cor|millisegundos|Add0~19\ $ (GND))) # (!\cor|millisegundos|cnt\(10) & (!\cor|millisegundos|Add0~19\ & VCC))
-- \cor|millisegundos|Add0~21\ = CARRY((\cor|millisegundos|cnt\(10) & !\cor|millisegundos|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(10),
	datad => VCC,
	cin => \cor|millisegundos|Add0~19\,
	combout => \cor|millisegundos|Add0~20_combout\,
	cout => \cor|millisegundos|Add0~21\);

-- Location: LCCOMB_X16_Y24_N4
\cor|millisegundos|cnt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~3_combout\ = (\cor|millisegundos|Add0~20_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~20_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~3_combout\);

-- Location: FF_X16_Y24_N5
\cor|millisegundos|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(10));

-- Location: LCCOMB_X15_Y24_N26
\cor|millisegundos|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~22_combout\ = (\cor|millisegundos|cnt\(11) & (!\cor|millisegundos|Add0~21\)) # (!\cor|millisegundos|cnt\(11) & ((\cor|millisegundos|Add0~21\) # (GND)))
-- \cor|millisegundos|Add0~23\ = CARRY((!\cor|millisegundos|Add0~21\) # (!\cor|millisegundos|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(11),
	datad => VCC,
	cin => \cor|millisegundos|Add0~21\,
	combout => \cor|millisegundos|Add0~22_combout\,
	cout => \cor|millisegundos|Add0~23\);

-- Location: LCCOMB_X16_Y24_N10
\cor|millisegundos|cnt~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~4_combout\ = (\cor|millisegundos|Add0~22_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~22_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~4_combout\);

-- Location: FF_X16_Y24_N11
\cor|millisegundos|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(11));

-- Location: LCCOMB_X15_Y24_N28
\cor|millisegundos|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~24_combout\ = (\cor|millisegundos|cnt\(12) & (\cor|millisegundos|Add0~23\ $ (GND))) # (!\cor|millisegundos|cnt\(12) & (!\cor|millisegundos|Add0~23\ & VCC))
-- \cor|millisegundos|Add0~25\ = CARRY((\cor|millisegundos|cnt\(12) & !\cor|millisegundos|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(12),
	datad => VCC,
	cin => \cor|millisegundos|Add0~23\,
	combout => \cor|millisegundos|Add0~24_combout\,
	cout => \cor|millisegundos|Add0~25\);

-- Location: LCCOMB_X16_Y24_N6
\cor|millisegundos|cnt~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~6_combout\ = (\cor|millisegundos|Add0~24_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Add0~24_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~6_combout\);

-- Location: FF_X16_Y24_N7
\cor|millisegundos|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(12));

-- Location: LCCOMB_X15_Y24_N30
\cor|millisegundos|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~26_combout\ = (\cor|millisegundos|cnt\(13) & (!\cor|millisegundos|Add0~25\)) # (!\cor|millisegundos|cnt\(13) & ((\cor|millisegundos|Add0~25\) # (GND)))
-- \cor|millisegundos|Add0~27\ = CARRY((!\cor|millisegundos|Add0~25\) # (!\cor|millisegundos|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(13),
	datad => VCC,
	cin => \cor|millisegundos|Add0~25\,
	combout => \cor|millisegundos|Add0~26_combout\,
	cout => \cor|millisegundos|Add0~27\);

-- Location: FF_X15_Y24_N31
\cor|millisegundos|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(13));

-- Location: LCCOMB_X15_Y23_N0
\cor|millisegundos|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~28_combout\ = (\cor|millisegundos|cnt\(14) & (\cor|millisegundos|Add0~27\ $ (GND))) # (!\cor|millisegundos|cnt\(14) & (!\cor|millisegundos|Add0~27\ & VCC))
-- \cor|millisegundos|Add0~29\ = CARRY((\cor|millisegundos|cnt\(14) & !\cor|millisegundos|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(14),
	datad => VCC,
	cin => \cor|millisegundos|Add0~27\,
	combout => \cor|millisegundos|Add0~28_combout\,
	cout => \cor|millisegundos|Add0~29\);

-- Location: LCCOMB_X16_Y24_N16
\cor|millisegundos|cnt~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~7_combout\ = (\cor|millisegundos|Add0~28_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Add0~28_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~7_combout\);

-- Location: FF_X16_Y24_N17
\cor|millisegundos|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(14));

-- Location: LCCOMB_X15_Y23_N2
\cor|millisegundos|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~30_combout\ = (\cor|millisegundos|cnt\(15) & (!\cor|millisegundos|Add0~29\)) # (!\cor|millisegundos|cnt\(15) & ((\cor|millisegundos|Add0~29\) # (GND)))
-- \cor|millisegundos|Add0~31\ = CARRY((!\cor|millisegundos|Add0~29\) # (!\cor|millisegundos|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(15),
	datad => VCC,
	cin => \cor|millisegundos|Add0~29\,
	combout => \cor|millisegundos|Add0~30_combout\,
	cout => \cor|millisegundos|Add0~31\);

-- Location: LCCOMB_X16_Y24_N14
\cor|millisegundos|cnt~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~8_combout\ = (\cor|millisegundos|Add0~30_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|Add0~30_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~8_combout\);

-- Location: FF_X16_Y24_N15
\cor|millisegundos|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(15));

-- Location: LCCOMB_X15_Y23_N4
\cor|millisegundos|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~32_combout\ = (\cor|millisegundos|cnt\(16) & (\cor|millisegundos|Add0~31\ $ (GND))) # (!\cor|millisegundos|cnt\(16) & (!\cor|millisegundos|Add0~31\ & VCC))
-- \cor|millisegundos|Add0~33\ = CARRY((\cor|millisegundos|cnt\(16) & !\cor|millisegundos|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(16),
	datad => VCC,
	cin => \cor|millisegundos|Add0~31\,
	combout => \cor|millisegundos|Add0~32_combout\,
	cout => \cor|millisegundos|Add0~33\);

-- Location: LCCOMB_X16_Y23_N18
\cor|millisegundos|cnt~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~9_combout\ = (\cor|millisegundos|Add0~32_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~32_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~9_combout\);

-- Location: FF_X16_Y23_N19
\cor|millisegundos|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(16));

-- Location: LCCOMB_X15_Y23_N6
\cor|millisegundos|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~34_combout\ = (\cor|millisegundos|cnt\(17) & (!\cor|millisegundos|Add0~33\)) # (!\cor|millisegundos|cnt\(17) & ((\cor|millisegundos|Add0~33\) # (GND)))
-- \cor|millisegundos|Add0~35\ = CARRY((!\cor|millisegundos|Add0~33\) # (!\cor|millisegundos|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(17),
	datad => VCC,
	cin => \cor|millisegundos|Add0~33\,
	combout => \cor|millisegundos|Add0~34_combout\,
	cout => \cor|millisegundos|Add0~35\);

-- Location: LCCOMB_X16_Y23_N8
\cor|millisegundos|cnt~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~10_combout\ = (\cor|millisegundos|Add0~34_combout\ & !\cor|millisegundos|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|Add0~34_combout\,
	datad => \cor|millisegundos|Equal0~9_combout\,
	combout => \cor|millisegundos|cnt~10_combout\);

-- Location: FF_X16_Y23_N9
\cor|millisegundos|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(17));

-- Location: LCCOMB_X15_Y23_N8
\cor|millisegundos|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~36_combout\ = (\cor|millisegundos|cnt\(18) & (\cor|millisegundos|Add0~35\ $ (GND))) # (!\cor|millisegundos|cnt\(18) & (!\cor|millisegundos|Add0~35\ & VCC))
-- \cor|millisegundos|Add0~37\ = CARRY((\cor|millisegundos|cnt\(18) & !\cor|millisegundos|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(18),
	datad => VCC,
	cin => \cor|millisegundos|Add0~35\,
	combout => \cor|millisegundos|Add0~36_combout\,
	cout => \cor|millisegundos|Add0~37\);

-- Location: LCCOMB_X16_Y23_N22
\cor|millisegundos|cnt~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~11_combout\ = (!\cor|millisegundos|Equal0~9_combout\ & \cor|millisegundos|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Equal0~9_combout\,
	datad => \cor|millisegundos|Add0~36_combout\,
	combout => \cor|millisegundos|cnt~11_combout\);

-- Location: FF_X16_Y23_N23
\cor|millisegundos|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(18));

-- Location: LCCOMB_X15_Y23_N10
\cor|millisegundos|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~38_combout\ = (\cor|millisegundos|cnt\(19) & (!\cor|millisegundos|Add0~37\)) # (!\cor|millisegundos|cnt\(19) & ((\cor|millisegundos|Add0~37\) # (GND)))
-- \cor|millisegundos|Add0~39\ = CARRY((!\cor|millisegundos|Add0~37\) # (!\cor|millisegundos|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(19),
	datad => VCC,
	cin => \cor|millisegundos|Add0~37\,
	combout => \cor|millisegundos|Add0~38_combout\,
	cout => \cor|millisegundos|Add0~39\);

-- Location: FF_X15_Y23_N11
\cor|millisegundos|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(19));

-- Location: LCCOMB_X15_Y23_N12
\cor|millisegundos|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~40_combout\ = (\cor|millisegundos|cnt\(20) & (\cor|millisegundos|Add0~39\ $ (GND))) # (!\cor|millisegundos|cnt\(20) & (!\cor|millisegundos|Add0~39\ & VCC))
-- \cor|millisegundos|Add0~41\ = CARRY((\cor|millisegundos|cnt\(20) & !\cor|millisegundos|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(20),
	datad => VCC,
	cin => \cor|millisegundos|Add0~39\,
	combout => \cor|millisegundos|Add0~40_combout\,
	cout => \cor|millisegundos|Add0~41\);

-- Location: LCCOMB_X16_Y23_N20
\cor|millisegundos|cnt~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~12_combout\ = (!\cor|millisegundos|Equal0~9_combout\ & \cor|millisegundos|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Equal0~9_combout\,
	datad => \cor|millisegundos|Add0~40_combout\,
	combout => \cor|millisegundos|cnt~12_combout\);

-- Location: FF_X16_Y23_N21
\cor|millisegundos|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(20));

-- Location: LCCOMB_X15_Y23_N14
\cor|millisegundos|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~42_combout\ = (\cor|millisegundos|cnt\(21) & (!\cor|millisegundos|Add0~41\)) # (!\cor|millisegundos|cnt\(21) & ((\cor|millisegundos|Add0~41\) # (GND)))
-- \cor|millisegundos|Add0~43\ = CARRY((!\cor|millisegundos|Add0~41\) # (!\cor|millisegundos|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(21),
	datad => VCC,
	cin => \cor|millisegundos|Add0~41\,
	combout => \cor|millisegundos|Add0~42_combout\,
	cout => \cor|millisegundos|Add0~43\);

-- Location: FF_X15_Y23_N15
\cor|millisegundos|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(21));

-- Location: LCCOMB_X15_Y23_N16
\cor|millisegundos|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~44_combout\ = (\cor|millisegundos|cnt\(22) & (\cor|millisegundos|Add0~43\ $ (GND))) # (!\cor|millisegundos|cnt\(22) & (!\cor|millisegundos|Add0~43\ & VCC))
-- \cor|millisegundos|Add0~45\ = CARRY((\cor|millisegundos|cnt\(22) & !\cor|millisegundos|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(22),
	datad => VCC,
	cin => \cor|millisegundos|Add0~43\,
	combout => \cor|millisegundos|Add0~44_combout\,
	cout => \cor|millisegundos|Add0~45\);

-- Location: FF_X15_Y23_N17
\cor|millisegundos|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(22));

-- Location: LCCOMB_X15_Y23_N18
\cor|millisegundos|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~46_combout\ = (\cor|millisegundos|cnt\(23) & (!\cor|millisegundos|Add0~45\)) # (!\cor|millisegundos|cnt\(23) & ((\cor|millisegundos|Add0~45\) # (GND)))
-- \cor|millisegundos|Add0~47\ = CARRY((!\cor|millisegundos|Add0~45\) # (!\cor|millisegundos|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(23),
	datad => VCC,
	cin => \cor|millisegundos|Add0~45\,
	combout => \cor|millisegundos|Add0~46_combout\,
	cout => \cor|millisegundos|Add0~47\);

-- Location: FF_X15_Y23_N19
\cor|millisegundos|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(23));

-- Location: LCCOMB_X16_Y23_N10
\cor|millisegundos|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~6_combout\ = (!\cor|millisegundos|cnt\(21) & (\cor|millisegundos|cnt\(20) & (!\cor|millisegundos|cnt\(22) & !\cor|millisegundos|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(21),
	datab => \cor|millisegundos|cnt\(20),
	datac => \cor|millisegundos|cnt\(22),
	datad => \cor|millisegundos|cnt\(23),
	combout => \cor|millisegundos|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y23_N24
\cor|millisegundos|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~5_combout\ = (\cor|millisegundos|cnt\(18) & (!\cor|millisegundos|cnt\(19) & (\cor|millisegundos|cnt\(17) & \cor|millisegundos|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(18),
	datab => \cor|millisegundos|cnt\(19),
	datac => \cor|millisegundos|cnt\(17),
	datad => \cor|millisegundos|cnt\(16),
	combout => \cor|millisegundos|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y24_N22
\cor|millisegundos|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~0_combout\ = (\cor|millisegundos|cnt\(7) & (\cor|millisegundos|cnt\(8) & (!\cor|millisegundos|cnt\(6) & !\cor|millisegundos|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(7),
	datab => \cor|millisegundos|cnt\(8),
	datac => \cor|millisegundos|cnt\(6),
	datad => \cor|millisegundos|cnt\(5),
	combout => \cor|millisegundos|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y24_N24
\cor|millisegundos|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~1_combout\ = (!\cor|millisegundos|cnt\(3) & (!\cor|millisegundos|cnt\(1) & (!\cor|millisegundos|cnt\(2) & !\cor|millisegundos|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(3),
	datab => \cor|millisegundos|cnt\(1),
	datac => \cor|millisegundos|cnt\(2),
	datad => \cor|millisegundos|cnt\(4),
	combout => \cor|millisegundos|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y24_N8
\cor|millisegundos|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~3_combout\ = (\cor|millisegundos|cnt\(12) & (\cor|millisegundos|cnt\(14) & (\cor|millisegundos|cnt\(15) & !\cor|millisegundos|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(12),
	datab => \cor|millisegundos|cnt\(14),
	datac => \cor|millisegundos|cnt\(15),
	datad => \cor|millisegundos|cnt\(13),
	combout => \cor|millisegundos|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y24_N12
\cor|millisegundos|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~2_combout\ = (!\cor|millisegundos|cnt\(0) & (\cor|millisegundos|cnt\(10) & (\cor|millisegundos|cnt\(9) & \cor|millisegundos|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(0),
	datab => \cor|millisegundos|cnt\(10),
	datac => \cor|millisegundos|cnt\(9),
	datad => \cor|millisegundos|cnt\(11),
	combout => \cor|millisegundos|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y24_N30
\cor|millisegundos|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~4_combout\ = (\cor|millisegundos|Equal0~0_combout\ & (\cor|millisegundos|Equal0~1_combout\ & (\cor|millisegundos|Equal0~3_combout\ & \cor|millisegundos|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|Equal0~0_combout\,
	datab => \cor|millisegundos|Equal0~1_combout\,
	datac => \cor|millisegundos|Equal0~3_combout\,
	datad => \cor|millisegundos|Equal0~2_combout\,
	combout => \cor|millisegundos|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y23_N20
\cor|millisegundos|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~48_combout\ = (\cor|millisegundos|cnt\(24) & (\cor|millisegundos|Add0~47\ $ (GND))) # (!\cor|millisegundos|cnt\(24) & (!\cor|millisegundos|Add0~47\ & VCC))
-- \cor|millisegundos|Add0~49\ = CARRY((\cor|millisegundos|cnt\(24) & !\cor|millisegundos|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(24),
	datad => VCC,
	cin => \cor|millisegundos|Add0~47\,
	combout => \cor|millisegundos|Add0~48_combout\,
	cout => \cor|millisegundos|Add0~49\);

-- Location: FF_X15_Y23_N21
\cor|millisegundos|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(24));

-- Location: LCCOMB_X15_Y23_N22
\cor|millisegundos|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~50_combout\ = (\cor|millisegundos|cnt\(25) & (!\cor|millisegundos|Add0~49\)) # (!\cor|millisegundos|cnt\(25) & ((\cor|millisegundos|Add0~49\) # (GND)))
-- \cor|millisegundos|Add0~51\ = CARRY((!\cor|millisegundos|Add0~49\) # (!\cor|millisegundos|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(25),
	datad => VCC,
	cin => \cor|millisegundos|Add0~49\,
	combout => \cor|millisegundos|Add0~50_combout\,
	cout => \cor|millisegundos|Add0~51\);

-- Location: FF_X15_Y23_N23
\cor|millisegundos|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(25));

-- Location: LCCOMB_X15_Y23_N24
\cor|millisegundos|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~52_combout\ = (\cor|millisegundos|cnt\(26) & (\cor|millisegundos|Add0~51\ $ (GND))) # (!\cor|millisegundos|cnt\(26) & (!\cor|millisegundos|Add0~51\ & VCC))
-- \cor|millisegundos|Add0~53\ = CARRY((\cor|millisegundos|cnt\(26) & !\cor|millisegundos|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|cnt\(26),
	datad => VCC,
	cin => \cor|millisegundos|Add0~51\,
	combout => \cor|millisegundos|Add0~52_combout\,
	cout => \cor|millisegundos|Add0~53\);

-- Location: FF_X15_Y23_N25
\cor|millisegundos|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(26));

-- Location: LCCOMB_X15_Y23_N26
\cor|millisegundos|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~54_combout\ = (\cor|millisegundos|cnt\(27) & (!\cor|millisegundos|Add0~53\)) # (!\cor|millisegundos|cnt\(27) & ((\cor|millisegundos|Add0~53\) # (GND)))
-- \cor|millisegundos|Add0~55\ = CARRY((!\cor|millisegundos|Add0~53\) # (!\cor|millisegundos|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(27),
	datad => VCC,
	cin => \cor|millisegundos|Add0~53\,
	combout => \cor|millisegundos|Add0~54_combout\,
	cout => \cor|millisegundos|Add0~55\);

-- Location: FF_X15_Y23_N27
\cor|millisegundos|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(27));

-- Location: LCCOMB_X16_Y23_N26
\cor|millisegundos|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~7_combout\ = (!\cor|millisegundos|cnt\(27) & !\cor|millisegundos|cnt\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|millisegundos|cnt\(27),
	datad => \cor|millisegundos|cnt\(26),
	combout => \cor|millisegundos|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y23_N28
\cor|millisegundos|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Add0~56_combout\ = \cor|millisegundos|cnt\(28) $ (!\cor|millisegundos|Add0~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(28),
	cin => \cor|millisegundos|Add0~55\,
	combout => \cor|millisegundos|Add0~56_combout\);

-- Location: LCCOMB_X15_Y23_N30
\cor|millisegundos|cnt~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|cnt~13_combout\ = (!\cor|millisegundos|Equal0~9_combout\ & \cor|millisegundos|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|millisegundos|Equal0~9_combout\,
	datad => \cor|millisegundos|Add0~56_combout\,
	combout => \cor|millisegundos|cnt~13_combout\);

-- Location: FF_X15_Y23_N31
\cor|millisegundos|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|cnt\(28));

-- Location: LCCOMB_X16_Y23_N28
\cor|millisegundos|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~8_combout\ = (!\cor|millisegundos|cnt\(24) & (!\cor|millisegundos|cnt\(25) & (\cor|millisegundos|Equal0~7_combout\ & \cor|millisegundos|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|cnt\(24),
	datab => \cor|millisegundos|cnt\(25),
	datac => \cor|millisegundos|Equal0~7_combout\,
	datad => \cor|millisegundos|cnt\(28),
	combout => \cor|millisegundos|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y23_N16
\cor|millisegundos|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|millisegundos|Equal0~9_combout\ = (\cor|millisegundos|Equal0~6_combout\ & (\cor|millisegundos|Equal0~5_combout\ & (\cor|millisegundos|Equal0~4_combout\ & \cor|millisegundos|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|millisegundos|Equal0~6_combout\,
	datab => \cor|millisegundos|Equal0~5_combout\,
	datac => \cor|millisegundos|Equal0~4_combout\,
	datad => \cor|millisegundos|Equal0~8_combout\,
	combout => \cor|millisegundos|Equal0~9_combout\);

-- Location: FF_X16_Y23_N31
\cor|millisegundos|ax\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \cor|millisegundos|ax~feeder_combout\,
	ena => \cor|millisegundos|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|millisegundos|ax~q\);

-- Location: CLKCTRL_G14
\cor|millisegundos|ax~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cor|millisegundos|ax~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cor|millisegundos|ax~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y29_N4
\cor|beatAtrio|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~7_combout\ = (\cor|beatAtrio|intcont\(2) & (\cor|beatAtrio|Add0~6\ $ (GND))) # (!\cor|beatAtrio|intcont\(2) & (!\cor|beatAtrio|Add0~6\ & VCC))
-- \cor|beatAtrio|Add0~8\ = CARRY((\cor|beatAtrio|intcont\(2) & !\cor|beatAtrio|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(2),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~6\,
	combout => \cor|beatAtrio|Add0~7_combout\,
	cout => \cor|beatAtrio|Add0~8\);

-- Location: LCCOMB_X17_Y29_N6
\cor|beatAtrio|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~9_combout\ = (\cor|beatAtrio|intcont\(3) & (!\cor|beatAtrio|Add0~8\)) # (!\cor|beatAtrio|intcont\(3) & ((\cor|beatAtrio|Add0~8\) # (GND)))
-- \cor|beatAtrio|Add0~10\ = CARRY((!\cor|beatAtrio|Add0~8\) # (!\cor|beatAtrio|intcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(3),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~8\,
	combout => \cor|beatAtrio|Add0~9_combout\,
	cout => \cor|beatAtrio|Add0~10\);

-- Location: LCCOMB_X16_Y29_N24
\cor|beatAtrio|Add0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~67_combout\ = (\cor|beatAtrio|Add0~9_combout\ & ((\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~9_combout\ & \cor|beatAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|Add0~9_combout\,
	datab => \cor|beatAtrio|LessThan0~9_combout\,
	datac => \cor|beatAtrio|intcont\(31),
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|Add0~67_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G19
\clear~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y29_N8
\cor|beatAtrio|intcont[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[0]~0_combout\ = (\cor|beatAtrio|intcont\(31)) # (((\cor|beatAtrio|LessThan0~8_combout\ & \cor|beatAtrio|LessThan0~9_combout\)) # (!\cor|beatAtrio|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(31),
	datab => \cor|beatAtrio|LessThan0~8_combout\,
	datac => \cor|beatAtrio|LessThan0~9_combout\,
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[0]~0_combout\);

-- Location: FF_X16_Y29_N25
\cor|beatAtrio|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|Add0~67_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatAtrio|intcont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(3));

-- Location: LCCOMB_X17_Y29_N8
\cor|beatAtrio|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~11_combout\ = (\cor|beatAtrio|intcont\(4) & (\cor|beatAtrio|Add0~10\ $ (GND))) # (!\cor|beatAtrio|intcont\(4) & (!\cor|beatAtrio|Add0~10\ & VCC))
-- \cor|beatAtrio|Add0~12\ = CARRY((\cor|beatAtrio|intcont\(4) & !\cor|beatAtrio|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(4),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~10\,
	combout => \cor|beatAtrio|Add0~11_combout\,
	cout => \cor|beatAtrio|Add0~12\);

-- Location: LCCOMB_X18_Y29_N24
\cor|beatAtrio|intcont[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[4]~1_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~11_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(4),
	datad => \cor|beatAtrio|Add0~11_combout\,
	combout => \cor|beatAtrio|intcont[4]~1_combout\);

-- Location: FF_X18_Y29_N25
\cor|beatAtrio|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[4]~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(4));

-- Location: LCCOMB_X16_Y29_N14
\cor|beatAtrio|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~9_combout\ = ((!\cor|beatAtrio|intcont\(3) & !\cor|beatAtrio|intcont\(2))) # (!\cor|beatAtrio|intcont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(3),
	datac => \cor|beatAtrio|intcont\(4),
	datad => \cor|beatAtrio|intcont\(2),
	combout => \cor|beatAtrio|LessThan0~9_combout\);

-- Location: LCCOMB_X16_Y29_N30
\cor|beatAtrio|LessThan0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~10_combout\ = (\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~9_combout\ & \cor|beatAtrio|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|LessThan0~9_combout\,
	datac => \cor|beatAtrio|intcont\(31),
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|LessThan0~10_combout\);

-- Location: LCCOMB_X17_Y29_N10
\cor|beatAtrio|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~13_combout\ = (\cor|beatAtrio|intcont\(5) & (!\cor|beatAtrio|Add0~12\)) # (!\cor|beatAtrio|intcont\(5) & ((\cor|beatAtrio|Add0~12\) # (GND)))
-- \cor|beatAtrio|Add0~14\ = CARRY((!\cor|beatAtrio|Add0~12\) # (!\cor|beatAtrio|intcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(5),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~12\,
	combout => \cor|beatAtrio|Add0~13_combout\,
	cout => \cor|beatAtrio|Add0~14\);

-- Location: LCCOMB_X18_Y29_N12
\cor|beatAtrio|intcont[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[5]~27_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~13_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(5),
	datad => \cor|beatAtrio|Add0~13_combout\,
	combout => \cor|beatAtrio|intcont[5]~27_combout\);

-- Location: FF_X18_Y29_N13
\cor|beatAtrio|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[5]~27_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(5));

-- Location: LCCOMB_X17_Y29_N12
\cor|beatAtrio|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~15_combout\ = (\cor|beatAtrio|intcont\(6) & (\cor|beatAtrio|Add0~14\ $ (GND))) # (!\cor|beatAtrio|intcont\(6) & (!\cor|beatAtrio|Add0~14\ & VCC))
-- \cor|beatAtrio|Add0~16\ = CARRY((\cor|beatAtrio|intcont\(6) & !\cor|beatAtrio|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(6),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~14\,
	combout => \cor|beatAtrio|Add0~15_combout\,
	cout => \cor|beatAtrio|Add0~16\);

-- Location: LCCOMB_X18_Y29_N2
\cor|beatAtrio|intcont[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[6]~26_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~15_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(6),
	datad => \cor|beatAtrio|Add0~15_combout\,
	combout => \cor|beatAtrio|intcont[6]~26_combout\);

-- Location: FF_X18_Y29_N3
\cor|beatAtrio|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[6]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(6));

-- Location: LCCOMB_X18_Y29_N22
\cor|beatAtrio|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~7_combout\ = (!\cor|beatAtrio|intcont\(5) & !\cor|beatAtrio|intcont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(5),
	datad => \cor|beatAtrio|intcont\(6),
	combout => \cor|beatAtrio|LessThan0~7_combout\);

-- Location: LCCOMB_X17_Y29_N14
\cor|beatAtrio|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~17_combout\ = (\cor|beatAtrio|intcont\(7) & (!\cor|beatAtrio|Add0~16\)) # (!\cor|beatAtrio|intcont\(7) & ((\cor|beatAtrio|Add0~16\) # (GND)))
-- \cor|beatAtrio|Add0~18\ = CARRY((!\cor|beatAtrio|Add0~16\) # (!\cor|beatAtrio|intcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(7),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~16\,
	combout => \cor|beatAtrio|Add0~17_combout\,
	cout => \cor|beatAtrio|Add0~18\);

-- Location: LCCOMB_X18_Y29_N30
\cor|beatAtrio|intcont[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[7]~25_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~17_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(7),
	datad => \cor|beatAtrio|Add0~17_combout\,
	combout => \cor|beatAtrio|intcont[7]~25_combout\);

-- Location: FF_X18_Y29_N31
\cor|beatAtrio|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[7]~25_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(7));

-- Location: LCCOMB_X17_Y29_N16
\cor|beatAtrio|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~19_combout\ = (\cor|beatAtrio|intcont\(8) & (\cor|beatAtrio|Add0~18\ $ (GND))) # (!\cor|beatAtrio|intcont\(8) & (!\cor|beatAtrio|Add0~18\ & VCC))
-- \cor|beatAtrio|Add0~20\ = CARRY((\cor|beatAtrio|intcont\(8) & !\cor|beatAtrio|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(8),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~18\,
	combout => \cor|beatAtrio|Add0~19_combout\,
	cout => \cor|beatAtrio|Add0~20\);

-- Location: LCCOMB_X18_Y29_N16
\cor|beatAtrio|intcont[8]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[8]~24_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~19_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(8) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~19_combout\,
	datac => \cor|beatAtrio|intcont\(8),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[8]~24_combout\);

-- Location: FF_X18_Y29_N17
\cor|beatAtrio|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[8]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(8));

-- Location: LCCOMB_X17_Y29_N18
\cor|beatAtrio|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~21_combout\ = (\cor|beatAtrio|intcont\(9) & (!\cor|beatAtrio|Add0~20\)) # (!\cor|beatAtrio|intcont\(9) & ((\cor|beatAtrio|Add0~20\) # (GND)))
-- \cor|beatAtrio|Add0~22\ = CARRY((!\cor|beatAtrio|Add0~20\) # (!\cor|beatAtrio|intcont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(9),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~20\,
	combout => \cor|beatAtrio|Add0~21_combout\,
	cout => \cor|beatAtrio|Add0~22\);

-- Location: LCCOMB_X18_Y29_N18
\cor|beatAtrio|intcont[9]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[9]~23_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~21_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(9) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~21_combout\,
	datac => \cor|beatAtrio|intcont\(9),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[9]~23_combout\);

-- Location: FF_X18_Y29_N19
\cor|beatAtrio|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[9]~23_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(9));

-- Location: LCCOMB_X17_Y29_N20
\cor|beatAtrio|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~23_combout\ = (\cor|beatAtrio|intcont\(10) & (\cor|beatAtrio|Add0~22\ $ (GND))) # (!\cor|beatAtrio|intcont\(10) & (!\cor|beatAtrio|Add0~22\ & VCC))
-- \cor|beatAtrio|Add0~24\ = CARRY((\cor|beatAtrio|intcont\(10) & !\cor|beatAtrio|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(10),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~22\,
	combout => \cor|beatAtrio|Add0~23_combout\,
	cout => \cor|beatAtrio|Add0~24\);

-- Location: LCCOMB_X18_Y29_N28
\cor|beatAtrio|intcont[10]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[10]~22_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~23_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(10) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~23_combout\,
	datac => \cor|beatAtrio|intcont\(10),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[10]~22_combout\);

-- Location: FF_X18_Y29_N29
\cor|beatAtrio|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[10]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(10));

-- Location: LCCOMB_X18_Y29_N4
\cor|beatAtrio|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~6_combout\ = (!\cor|beatAtrio|intcont\(7) & (!\cor|beatAtrio|intcont\(9) & (!\cor|beatAtrio|intcont\(8) & !\cor|beatAtrio|intcont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(7),
	datab => \cor|beatAtrio|intcont\(9),
	datac => \cor|beatAtrio|intcont\(8),
	datad => \cor|beatAtrio|intcont\(10),
	combout => \cor|beatAtrio|LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y29_N22
\cor|beatAtrio|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~25_combout\ = (\cor|beatAtrio|intcont\(11) & (!\cor|beatAtrio|Add0~24\)) # (!\cor|beatAtrio|intcont\(11) & ((\cor|beatAtrio|Add0~24\) # (GND)))
-- \cor|beatAtrio|Add0~26\ = CARRY((!\cor|beatAtrio|Add0~24\) # (!\cor|beatAtrio|intcont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(11),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~24\,
	combout => \cor|beatAtrio|Add0~25_combout\,
	cout => \cor|beatAtrio|Add0~26\);

-- Location: LCCOMB_X18_Y29_N0
\cor|beatAtrio|intcont[11]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[11]~21_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~25_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(11),
	datad => \cor|beatAtrio|Add0~25_combout\,
	combout => \cor|beatAtrio|intcont[11]~21_combout\);

-- Location: FF_X18_Y29_N1
\cor|beatAtrio|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[11]~21_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(11));

-- Location: LCCOMB_X17_Y29_N24
\cor|beatAtrio|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~27_combout\ = (\cor|beatAtrio|intcont\(12) & (\cor|beatAtrio|Add0~26\ $ (GND))) # (!\cor|beatAtrio|intcont\(12) & (!\cor|beatAtrio|Add0~26\ & VCC))
-- \cor|beatAtrio|Add0~28\ = CARRY((\cor|beatAtrio|intcont\(12) & !\cor|beatAtrio|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(12),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~26\,
	combout => \cor|beatAtrio|Add0~27_combout\,
	cout => \cor|beatAtrio|Add0~28\);

-- Location: LCCOMB_X18_Y29_N14
\cor|beatAtrio|intcont[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[12]~20_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~27_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(12),
	datad => \cor|beatAtrio|Add0~27_combout\,
	combout => \cor|beatAtrio|intcont[12]~20_combout\);

-- Location: FF_X18_Y29_N15
\cor|beatAtrio|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[12]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(12));

-- Location: LCCOMB_X17_Y29_N26
\cor|beatAtrio|Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~29_combout\ = (\cor|beatAtrio|intcont\(13) & (!\cor|beatAtrio|Add0~28\)) # (!\cor|beatAtrio|intcont\(13) & ((\cor|beatAtrio|Add0~28\) # (GND)))
-- \cor|beatAtrio|Add0~30\ = CARRY((!\cor|beatAtrio|Add0~28\) # (!\cor|beatAtrio|intcont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(13),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~28\,
	combout => \cor|beatAtrio|Add0~29_combout\,
	cout => \cor|beatAtrio|Add0~30\);

-- Location: LCCOMB_X18_Y29_N20
\cor|beatAtrio|intcont[13]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[13]~19_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~29_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(13) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|Add0~29_combout\,
	datab => \cor|beatAtrio|LessThan0~10_combout\,
	datac => \cor|beatAtrio|intcont\(13),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[13]~19_combout\);

-- Location: FF_X18_Y29_N21
\cor|beatAtrio|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[13]~19_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(13));

-- Location: LCCOMB_X17_Y29_N28
\cor|beatAtrio|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~31_combout\ = (\cor|beatAtrio|intcont\(14) & (\cor|beatAtrio|Add0~30\ $ (GND))) # (!\cor|beatAtrio|intcont\(14) & (!\cor|beatAtrio|Add0~30\ & VCC))
-- \cor|beatAtrio|Add0~32\ = CARRY((\cor|beatAtrio|intcont\(14) & !\cor|beatAtrio|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(14),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~30\,
	combout => \cor|beatAtrio|Add0~31_combout\,
	cout => \cor|beatAtrio|Add0~32\);

-- Location: LCCOMB_X18_Y29_N10
\cor|beatAtrio|intcont[14]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[14]~18_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~31_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(14),
	datad => \cor|beatAtrio|Add0~31_combout\,
	combout => \cor|beatAtrio|intcont[14]~18_combout\);

-- Location: FF_X18_Y29_N11
\cor|beatAtrio|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[14]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(14));

-- Location: LCCOMB_X17_Y29_N30
\cor|beatAtrio|Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~33_combout\ = (\cor|beatAtrio|intcont\(15) & (!\cor|beatAtrio|Add0~32\)) # (!\cor|beatAtrio|intcont\(15) & ((\cor|beatAtrio|Add0~32\) # (GND)))
-- \cor|beatAtrio|Add0~34\ = CARRY((!\cor|beatAtrio|Add0~32\) # (!\cor|beatAtrio|intcont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(15),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~32\,
	combout => \cor|beatAtrio|Add0~33_combout\,
	cout => \cor|beatAtrio|Add0~34\);

-- Location: LCCOMB_X16_Y28_N14
\cor|beatAtrio|intcont[15]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[15]~17_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~33_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(15) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~33_combout\,
	datac => \cor|beatAtrio|intcont\(15),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[15]~17_combout\);

-- Location: FF_X16_Y28_N15
\cor|beatAtrio|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[15]~17_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(15));

-- Location: LCCOMB_X17_Y28_N0
\cor|beatAtrio|Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~35_combout\ = (\cor|beatAtrio|intcont\(16) & (\cor|beatAtrio|Add0~34\ $ (GND))) # (!\cor|beatAtrio|intcont\(16) & (!\cor|beatAtrio|Add0~34\ & VCC))
-- \cor|beatAtrio|Add0~36\ = CARRY((\cor|beatAtrio|intcont\(16) & !\cor|beatAtrio|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(16),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~34\,
	combout => \cor|beatAtrio|Add0~35_combout\,
	cout => \cor|beatAtrio|Add0~36\);

-- Location: LCCOMB_X16_Y28_N16
\cor|beatAtrio|intcont[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[16]~16_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~35_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(16) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~35_combout\,
	datac => \cor|beatAtrio|intcont\(16),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[16]~16_combout\);

-- Location: FF_X16_Y28_N17
\cor|beatAtrio|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[16]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(16));

-- Location: LCCOMB_X17_Y28_N2
\cor|beatAtrio|Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~37_combout\ = (\cor|beatAtrio|intcont\(17) & (!\cor|beatAtrio|Add0~36\)) # (!\cor|beatAtrio|intcont\(17) & ((\cor|beatAtrio|Add0~36\) # (GND)))
-- \cor|beatAtrio|Add0~38\ = CARRY((!\cor|beatAtrio|Add0~36\) # (!\cor|beatAtrio|intcont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(17),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~36\,
	combout => \cor|beatAtrio|Add0~37_combout\,
	cout => \cor|beatAtrio|Add0~38\);

-- Location: LCCOMB_X16_Y28_N6
\cor|beatAtrio|intcont[17]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[17]~15_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~37_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(17),
	datad => \cor|beatAtrio|Add0~37_combout\,
	combout => \cor|beatAtrio|intcont[17]~15_combout\);

-- Location: FF_X16_Y28_N7
\cor|beatAtrio|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[17]~15_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(17));

-- Location: LCCOMB_X17_Y28_N4
\cor|beatAtrio|Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~39_combout\ = (\cor|beatAtrio|intcont\(18) & (\cor|beatAtrio|Add0~38\ $ (GND))) # (!\cor|beatAtrio|intcont\(18) & (!\cor|beatAtrio|Add0~38\ & VCC))
-- \cor|beatAtrio|Add0~40\ = CARRY((\cor|beatAtrio|intcont\(18) & !\cor|beatAtrio|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(18),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~38\,
	combout => \cor|beatAtrio|Add0~39_combout\,
	cout => \cor|beatAtrio|Add0~40\);

-- Location: LCCOMB_X16_Y28_N24
\cor|beatAtrio|intcont[18]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[18]~14_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~39_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(18) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~39_combout\,
	datac => \cor|beatAtrio|intcont\(18),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[18]~14_combout\);

-- Location: FF_X16_Y28_N25
\cor|beatAtrio|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[18]~14_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(18));

-- Location: LCCOMB_X16_Y28_N28
\cor|beatAtrio|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~3_combout\ = (!\cor|beatAtrio|intcont\(17) & (!\cor|beatAtrio|intcont\(16) & (!\cor|beatAtrio|intcont\(15) & !\cor|beatAtrio|intcont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(17),
	datab => \cor|beatAtrio|intcont\(16),
	datac => \cor|beatAtrio|intcont\(15),
	datad => \cor|beatAtrio|intcont\(18),
	combout => \cor|beatAtrio|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y28_N6
\cor|beatAtrio|Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~41_combout\ = (\cor|beatAtrio|intcont\(19) & (!\cor|beatAtrio|Add0~40\)) # (!\cor|beatAtrio|intcont\(19) & ((\cor|beatAtrio|Add0~40\) # (GND)))
-- \cor|beatAtrio|Add0~42\ = CARRY((!\cor|beatAtrio|Add0~40\) # (!\cor|beatAtrio|intcont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(19),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~40\,
	combout => \cor|beatAtrio|Add0~41_combout\,
	cout => \cor|beatAtrio|Add0~42\);

-- Location: LCCOMB_X16_Y28_N20
\cor|beatAtrio|intcont[19]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[19]~13_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~41_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(19),
	datad => \cor|beatAtrio|Add0~41_combout\,
	combout => \cor|beatAtrio|intcont[19]~13_combout\);

-- Location: FF_X16_Y28_N21
\cor|beatAtrio|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[19]~13_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(19));

-- Location: LCCOMB_X17_Y28_N8
\cor|beatAtrio|Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~43_combout\ = (\cor|beatAtrio|intcont\(20) & (\cor|beatAtrio|Add0~42\ $ (GND))) # (!\cor|beatAtrio|intcont\(20) & (!\cor|beatAtrio|Add0~42\ & VCC))
-- \cor|beatAtrio|Add0~44\ = CARRY((\cor|beatAtrio|intcont\(20) & !\cor|beatAtrio|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(20),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~42\,
	combout => \cor|beatAtrio|Add0~43_combout\,
	cout => \cor|beatAtrio|Add0~44\);

-- Location: LCCOMB_X16_Y28_N26
\cor|beatAtrio|intcont[20]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[20]~12_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~43_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(20) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~43_combout\,
	datac => \cor|beatAtrio|intcont\(20),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[20]~12_combout\);

-- Location: FF_X16_Y28_N27
\cor|beatAtrio|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[20]~12_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(20));

-- Location: LCCOMB_X17_Y28_N10
\cor|beatAtrio|Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~45_combout\ = (\cor|beatAtrio|intcont\(21) & (!\cor|beatAtrio|Add0~44\)) # (!\cor|beatAtrio|intcont\(21) & ((\cor|beatAtrio|Add0~44\) # (GND)))
-- \cor|beatAtrio|Add0~46\ = CARRY((!\cor|beatAtrio|Add0~44\) # (!\cor|beatAtrio|intcont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(21),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~44\,
	combout => \cor|beatAtrio|Add0~45_combout\,
	cout => \cor|beatAtrio|Add0~46\);

-- Location: LCCOMB_X16_Y28_N12
\cor|beatAtrio|intcont[21]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[21]~11_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~45_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(21) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~45_combout\,
	datac => \cor|beatAtrio|intcont\(21),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[21]~11_combout\);

-- Location: FF_X16_Y28_N13
\cor|beatAtrio|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[21]~11_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(21));

-- Location: LCCOMB_X17_Y28_N12
\cor|beatAtrio|Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~47_combout\ = (\cor|beatAtrio|intcont\(22) & (\cor|beatAtrio|Add0~46\ $ (GND))) # (!\cor|beatAtrio|intcont\(22) & (!\cor|beatAtrio|Add0~46\ & VCC))
-- \cor|beatAtrio|Add0~48\ = CARRY((\cor|beatAtrio|intcont\(22) & !\cor|beatAtrio|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(22),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~46\,
	combout => \cor|beatAtrio|Add0~47_combout\,
	cout => \cor|beatAtrio|Add0~48\);

-- Location: LCCOMB_X16_Y28_N22
\cor|beatAtrio|intcont[22]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[22]~10_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~47_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(22) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~47_combout\,
	datac => \cor|beatAtrio|intcont\(22),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[22]~10_combout\);

-- Location: FF_X16_Y28_N23
\cor|beatAtrio|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[22]~10_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(22));

-- Location: LCCOMB_X17_Y28_N14
\cor|beatAtrio|Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~49_combout\ = (\cor|beatAtrio|intcont\(23) & (!\cor|beatAtrio|Add0~48\)) # (!\cor|beatAtrio|intcont\(23) & ((\cor|beatAtrio|Add0~48\) # (GND)))
-- \cor|beatAtrio|Add0~50\ = CARRY((!\cor|beatAtrio|Add0~48\) # (!\cor|beatAtrio|intcont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(23),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~48\,
	combout => \cor|beatAtrio|Add0~49_combout\,
	cout => \cor|beatAtrio|Add0~50\);

-- Location: LCCOMB_X16_Y28_N2
\cor|beatAtrio|intcont[23]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[23]~9_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~49_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(23) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~49_combout\,
	datac => \cor|beatAtrio|intcont\(23),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[23]~9_combout\);

-- Location: FF_X16_Y28_N3
\cor|beatAtrio|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[23]~9_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(23));

-- Location: LCCOMB_X17_Y28_N16
\cor|beatAtrio|Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~51_combout\ = (\cor|beatAtrio|intcont\(24) & (\cor|beatAtrio|Add0~50\ $ (GND))) # (!\cor|beatAtrio|intcont\(24) & (!\cor|beatAtrio|Add0~50\ & VCC))
-- \cor|beatAtrio|Add0~52\ = CARRY((\cor|beatAtrio|intcont\(24) & !\cor|beatAtrio|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(24),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~50\,
	combout => \cor|beatAtrio|Add0~51_combout\,
	cout => \cor|beatAtrio|Add0~52\);

-- Location: LCCOMB_X16_Y28_N8
\cor|beatAtrio|intcont[24]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[24]~8_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~51_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(24) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~51_combout\,
	datac => \cor|beatAtrio|intcont\(24),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[24]~8_combout\);

-- Location: FF_X16_Y28_N9
\cor|beatAtrio|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[24]~8_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(24));

-- Location: LCCOMB_X17_Y28_N18
\cor|beatAtrio|Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~53_combout\ = (\cor|beatAtrio|intcont\(25) & (!\cor|beatAtrio|Add0~52\)) # (!\cor|beatAtrio|intcont\(25) & ((\cor|beatAtrio|Add0~52\) # (GND)))
-- \cor|beatAtrio|Add0~54\ = CARRY((!\cor|beatAtrio|Add0~52\) # (!\cor|beatAtrio|intcont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(25),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~52\,
	combout => \cor|beatAtrio|Add0~53_combout\,
	cout => \cor|beatAtrio|Add0~54\);

-- Location: LCCOMB_X16_Y28_N30
\cor|beatAtrio|intcont[25]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[25]~7_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~53_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(25) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Add0~53_combout\,
	datac => \cor|beatAtrio|intcont\(25),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[25]~7_combout\);

-- Location: FF_X16_Y28_N31
\cor|beatAtrio|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[25]~7_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(25));

-- Location: LCCOMB_X17_Y28_N20
\cor|beatAtrio|Add0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~55_combout\ = (\cor|beatAtrio|intcont\(26) & (\cor|beatAtrio|Add0~54\ $ (GND))) # (!\cor|beatAtrio|intcont\(26) & (!\cor|beatAtrio|Add0~54\ & VCC))
-- \cor|beatAtrio|Add0~56\ = CARRY((\cor|beatAtrio|intcont\(26) & !\cor|beatAtrio|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(26),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~54\,
	combout => \cor|beatAtrio|Add0~55_combout\,
	cout => \cor|beatAtrio|Add0~56\);

-- Location: LCCOMB_X16_Y28_N4
\cor|beatAtrio|intcont[26]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[26]~6_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Add0~55_combout\)) # (!\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|intcont\(26) & \cor|beatAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|Add0~55_combout\,
	datab => \cor|beatAtrio|LessThan0~10_combout\,
	datac => \cor|beatAtrio|intcont\(26),
	datad => \cor|beatAtrio|Equal0~1_combout\,
	combout => \cor|beatAtrio|intcont[26]~6_combout\);

-- Location: FF_X16_Y28_N5
\cor|beatAtrio|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[26]~6_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(26));

-- Location: LCCOMB_X16_Y28_N0
\cor|beatAtrio|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~1_combout\ = (!\cor|beatAtrio|intcont\(25) & (!\cor|beatAtrio|intcont\(26) & (!\cor|beatAtrio|intcont\(24) & !\cor|beatAtrio|intcont\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(25),
	datab => \cor|beatAtrio|intcont\(26),
	datac => \cor|beatAtrio|intcont\(24),
	datad => \cor|beatAtrio|intcont\(23),
	combout => \cor|beatAtrio|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y28_N22
\cor|beatAtrio|Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~57_combout\ = (\cor|beatAtrio|intcont\(27) & (!\cor|beatAtrio|Add0~56\)) # (!\cor|beatAtrio|intcont\(27) & ((\cor|beatAtrio|Add0~56\) # (GND)))
-- \cor|beatAtrio|Add0~58\ = CARRY((!\cor|beatAtrio|Add0~56\) # (!\cor|beatAtrio|intcont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(27),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~56\,
	combout => \cor|beatAtrio|Add0~57_combout\,
	cout => \cor|beatAtrio|Add0~58\);

-- Location: LCCOMB_X16_Y29_N20
\cor|beatAtrio|intcont[27]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[27]~5_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~57_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(27),
	datad => \cor|beatAtrio|Add0~57_combout\,
	combout => \cor|beatAtrio|intcont[27]~5_combout\);

-- Location: FF_X16_Y29_N21
\cor|beatAtrio|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[27]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(27));

-- Location: LCCOMB_X17_Y28_N24
\cor|beatAtrio|Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~59_combout\ = (\cor|beatAtrio|intcont\(28) & (\cor|beatAtrio|Add0~58\ $ (GND))) # (!\cor|beatAtrio|intcont\(28) & (!\cor|beatAtrio|Add0~58\ & VCC))
-- \cor|beatAtrio|Add0~60\ = CARRY((\cor|beatAtrio|intcont\(28) & !\cor|beatAtrio|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(28),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~58\,
	combout => \cor|beatAtrio|Add0~59_combout\,
	cout => \cor|beatAtrio|Add0~60\);

-- Location: LCCOMB_X16_Y29_N2
\cor|beatAtrio|intcont[28]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[28]~4_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~59_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(28),
	datad => \cor|beatAtrio|Add0~59_combout\,
	combout => \cor|beatAtrio|intcont[28]~4_combout\);

-- Location: FF_X16_Y29_N3
\cor|beatAtrio|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[28]~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(28));

-- Location: LCCOMB_X17_Y28_N26
\cor|beatAtrio|Add0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~61_combout\ = (\cor|beatAtrio|intcont\(29) & (!\cor|beatAtrio|Add0~60\)) # (!\cor|beatAtrio|intcont\(29) & ((\cor|beatAtrio|Add0~60\) # (GND)))
-- \cor|beatAtrio|Add0~62\ = CARRY((!\cor|beatAtrio|Add0~60\) # (!\cor|beatAtrio|intcont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|intcont\(29),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~60\,
	combout => \cor|beatAtrio|Add0~61_combout\,
	cout => \cor|beatAtrio|Add0~62\);

-- Location: LCCOMB_X16_Y29_N4
\cor|beatAtrio|intcont[29]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[29]~3_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~61_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(29),
	datad => \cor|beatAtrio|Add0~61_combout\,
	combout => \cor|beatAtrio|intcont[29]~3_combout\);

-- Location: FF_X16_Y29_N5
\cor|beatAtrio|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[29]~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(29));

-- Location: LCCOMB_X17_Y28_N28
\cor|beatAtrio|Add0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~63_combout\ = (\cor|beatAtrio|intcont\(30) & (\cor|beatAtrio|Add0~62\ $ (GND))) # (!\cor|beatAtrio|intcont\(30) & (!\cor|beatAtrio|Add0~62\ & VCC))
-- \cor|beatAtrio|Add0~64\ = CARRY((\cor|beatAtrio|intcont\(30) & !\cor|beatAtrio|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(30),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~62\,
	combout => \cor|beatAtrio|Add0~63_combout\,
	cout => \cor|beatAtrio|Add0~64\);

-- Location: LCCOMB_X16_Y29_N10
\cor|beatAtrio|intcont[30]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|intcont[30]~2_combout\ = (\cor|beatAtrio|LessThan0~10_combout\ & (((\cor|beatAtrio|Add0~63_combout\)))) # (!\cor|beatAtrio|LessThan0~10_combout\ & (\cor|beatAtrio|Equal0~1_combout\ & (\cor|beatAtrio|intcont\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~10_combout\,
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \cor|beatAtrio|intcont\(30),
	datad => \cor|beatAtrio|Add0~63_combout\,
	combout => \cor|beatAtrio|intcont[30]~2_combout\);

-- Location: FF_X16_Y29_N11
\cor|beatAtrio|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|intcont[30]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(30));

-- Location: LCCOMB_X16_Y29_N18
\cor|beatAtrio|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~0_combout\ = (!\cor|beatAtrio|intcont\(30) & (!\cor|beatAtrio|intcont\(28) & (!\cor|beatAtrio|intcont\(29) & !\cor|beatAtrio|intcont\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(30),
	datab => \cor|beatAtrio|intcont\(28),
	datac => \cor|beatAtrio|intcont\(29),
	datad => \cor|beatAtrio|intcont\(27),
	combout => \cor|beatAtrio|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y28_N18
\cor|beatAtrio|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~2_combout\ = (!\cor|beatAtrio|intcont\(20) & (!\cor|beatAtrio|intcont\(19) & (!\cor|beatAtrio|intcont\(22) & !\cor|beatAtrio|intcont\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(20),
	datab => \cor|beatAtrio|intcont\(19),
	datac => \cor|beatAtrio|intcont\(22),
	datad => \cor|beatAtrio|intcont\(21),
	combout => \cor|beatAtrio|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y28_N10
\cor|beatAtrio|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~4_combout\ = (\cor|beatAtrio|LessThan0~3_combout\ & (\cor|beatAtrio|LessThan0~1_combout\ & (\cor|beatAtrio|LessThan0~0_combout\ & \cor|beatAtrio|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~3_combout\,
	datab => \cor|beatAtrio|LessThan0~1_combout\,
	datac => \cor|beatAtrio|LessThan0~0_combout\,
	datad => \cor|beatAtrio|LessThan0~2_combout\,
	combout => \cor|beatAtrio|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y29_N6
\cor|beatAtrio|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~5_combout\ = (!\cor|beatAtrio|intcont\(14) & (!\cor|beatAtrio|intcont\(13) & (!\cor|beatAtrio|intcont\(12) & !\cor|beatAtrio|intcont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(14),
	datab => \cor|beatAtrio|intcont\(13),
	datac => \cor|beatAtrio|intcont\(12),
	datad => \cor|beatAtrio|intcont\(11),
	combout => \cor|beatAtrio|LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y29_N12
\cor|beatAtrio|LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|LessThan0~8_combout\ = (\cor|beatAtrio|LessThan0~7_combout\ & (\cor|beatAtrio|LessThan0~6_combout\ & (\cor|beatAtrio|LessThan0~4_combout\ & \cor|beatAtrio|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~7_combout\,
	datab => \cor|beatAtrio|LessThan0~6_combout\,
	datac => \cor|beatAtrio|LessThan0~4_combout\,
	datad => \cor|beatAtrio|LessThan0~5_combout\,
	combout => \cor|beatAtrio|LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y28_N30
\cor|beatAtrio|Add0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~65_combout\ = \cor|beatAtrio|Add0~64\ $ (\cor|beatAtrio|intcont\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cor|beatAtrio|intcont\(31),
	cin => \cor|beatAtrio|Add0~64\,
	combout => \cor|beatAtrio|Add0~65_combout\);

-- Location: LCCOMB_X16_Y29_N26
\cor|beatAtrio|Add0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~70_combout\ = (\cor|beatAtrio|Add0~65_combout\ & ((\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~8_combout\ & \cor|beatAtrio|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|LessThan0~8_combout\,
	datab => \cor|beatAtrio|LessThan0~9_combout\,
	datac => \cor|beatAtrio|intcont\(31),
	datad => \cor|beatAtrio|Add0~65_combout\,
	combout => \cor|beatAtrio|Add0~70_combout\);

-- Location: FF_X16_Y29_N27
\cor|beatAtrio|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|Add0~70_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(31));

-- Location: LCCOMB_X17_Y29_N0
\cor|beatAtrio|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~2_combout\ = \cor|beatAtrio|intcont\(0) $ (VCC)
-- \cor|beatAtrio|Add0~3\ = CARRY(\cor|beatAtrio|intcont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(0),
	datad => VCC,
	combout => \cor|beatAtrio|Add0~2_combout\,
	cout => \cor|beatAtrio|Add0~3\);

-- Location: LCCOMB_X16_Y29_N16
\cor|beatAtrio|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~4_combout\ = (\cor|beatAtrio|Add0~2_combout\ & ((\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~9_combout\ & \cor|beatAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(31),
	datab => \cor|beatAtrio|Add0~2_combout\,
	datac => \cor|beatAtrio|LessThan0~9_combout\,
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|Add0~4_combout\);

-- Location: FF_X16_Y29_N17
\cor|beatAtrio|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|Add0~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatAtrio|intcont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(0));

-- Location: LCCOMB_X17_Y29_N2
\cor|beatAtrio|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~5_combout\ = (\cor|beatAtrio|intcont\(1) & (!\cor|beatAtrio|Add0~3\)) # (!\cor|beatAtrio|intcont\(1) & ((\cor|beatAtrio|Add0~3\) # (GND)))
-- \cor|beatAtrio|Add0~6\ = CARRY((!\cor|beatAtrio|Add0~3\) # (!\cor|beatAtrio|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(1),
	datad => VCC,
	cin => \cor|beatAtrio|Add0~3\,
	combout => \cor|beatAtrio|Add0~5_combout\,
	cout => \cor|beatAtrio|Add0~6\);

-- Location: LCCOMB_X16_Y29_N0
\cor|beatAtrio|Add0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~68_combout\ = (\cor|beatAtrio|Add0~5_combout\ & ((\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~9_combout\ & \cor|beatAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(31),
	datab => \cor|beatAtrio|Add0~5_combout\,
	datac => \cor|beatAtrio|LessThan0~9_combout\,
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|Add0~68_combout\);

-- Location: FF_X16_Y29_N1
\cor|beatAtrio|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|Add0~68_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatAtrio|intcont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(1));

-- Location: LCCOMB_X16_Y29_N6
\cor|beatAtrio|Add0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Add0~69_combout\ = (\cor|beatAtrio|Add0~7_combout\ & ((\cor|beatAtrio|intcont\(31)) # ((\cor|beatAtrio|LessThan0~9_combout\ & \cor|beatAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|Add0~7_combout\,
	datab => \cor|beatAtrio|LessThan0~9_combout\,
	datac => \cor|beatAtrio|intcont\(31),
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|Add0~69_combout\);

-- Location: FF_X16_Y29_N7
\cor|beatAtrio|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatAtrio|Add0~69_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatAtrio|intcont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatAtrio|intcont\(2));

-- Location: LCCOMB_X16_Y29_N22
\cor|beatAtrio|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Equal0~0_combout\ = ((\cor|beatAtrio|intcont\(0)) # ((\cor|beatAtrio|intcont\(31)) # (\cor|beatAtrio|intcont\(3)))) # (!\cor|beatAtrio|intcont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(4),
	datab => \cor|beatAtrio|intcont\(0),
	datac => \cor|beatAtrio|intcont\(31),
	datad => \cor|beatAtrio|intcont\(3),
	combout => \cor|beatAtrio|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y29_N28
\cor|beatAtrio|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatAtrio|Equal0~1_combout\ = ((\cor|beatAtrio|intcont\(1)) # ((\cor|beatAtrio|Equal0~0_combout\) # (!\cor|beatAtrio|LessThan0~8_combout\))) # (!\cor|beatAtrio|intcont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatAtrio|intcont\(2),
	datab => \cor|beatAtrio|intcont\(1),
	datac => \cor|beatAtrio|Equal0~0_combout\,
	datad => \cor|beatAtrio|LessThan0~8_combout\,
	combout => \cor|beatAtrio|Equal0~1_combout\);

-- Location: IOIBUF_X20_Y31_N1
\sinais[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sinais(0),
	o => \sinais[0]~input_o\);

-- Location: LCCOMB_X18_Y29_N8
\cor|SAC\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|SAC~combout\ = (!\cor|beatAtrio|Equal0~1_combout\ & \sinais[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datad => \sinais[0]~input_o\,
	combout => \cor|SAC~combout\);

-- Location: IOIBUF_X10_Y31_N1
\sinais[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sinais(1),
	o => \sinais[1]~input_o\);

-- Location: LCCOMB_X15_Y13_N28
\cor|delayventr|intcont[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[30]~89_combout\ = (\cor|delayventr|intcont\(30) & (!\cor|delayventr|intcont[29]~88\)) # (!\cor|delayventr|intcont\(30) & ((\cor|delayventr|intcont[29]~88\) # (GND)))
-- \cor|delayventr|intcont[30]~90\ = CARRY((!\cor|delayventr|intcont[29]~88\) # (!\cor|delayventr|intcont\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(30),
	datad => VCC,
	cin => \cor|delayventr|intcont[29]~88\,
	combout => \cor|delayventr|intcont[30]~89_combout\,
	cout => \cor|delayventr|intcont[30]~90\);

-- Location: LCCOMB_X15_Y13_N30
\cor|delayventr|intcont[31]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[31]~92_combout\ = \cor|delayventr|intcont\(31) $ (!\cor|delayventr|intcont[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(31),
	cin => \cor|delayventr|intcont[30]~90\,
	combout => \cor|delayventr|intcont[31]~92_combout\);

-- Location: LCCOMB_X15_Y14_N2
\cor|delayventr|intcont[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[1]~31_combout\ = (\cor|delayventr|intcont\(0) & (\cor|delayventr|intcont\(1) $ (VCC))) # (!\cor|delayventr|intcont\(0) & (\cor|delayventr|intcont\(1) & VCC))
-- \cor|delayventr|intcont[1]~32\ = CARRY((\cor|delayventr|intcont\(0) & \cor|delayventr|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(0),
	datab => \cor|delayventr|intcont\(1),
	datad => VCC,
	combout => \cor|delayventr|intcont[1]~31_combout\,
	cout => \cor|delayventr|intcont[1]~32\);

-- Location: FF_X15_Y14_N3
\cor|delayventr|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[1]~31_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(1));

-- Location: LCCOMB_X14_Y14_N22
\cor|delayventr|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|LessThan0~0_combout\ = ((!\cor|delayventr|intcont\(0) & !\cor|delayventr|intcont\(1))) # (!\cor|delayventr|intcont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(2),
	datab => \cor|delayventr|intcont\(0),
	datad => \cor|delayventr|intcont\(1),
	combout => \cor|delayventr|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\cor|delayventr|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|LessThan0~1_combout\ = (\cor|delayventr|intcont\(31)) # ((\cor|delayventr|LessThan0~0_combout\ & \cor|delayventr|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|LessThan0~0_combout\,
	datac => \cor|delayventr|intcont\(31),
	datad => \cor|delayventr|Equal0~8_combout\,
	combout => \cor|delayventr|LessThan0~1_combout\);

-- Location: FF_X15_Y13_N31
\cor|delayventr|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[31]~92_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(31));

-- Location: LCCOMB_X14_Y14_N16
\cor|delayventr|intcont[0]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[0]~91_combout\ = \cor|delayventr|intcont\(0) $ (((\cor|delayventr|intcont\(31)) # ((\cor|delayventr|LessThan0~0_combout\ & \cor|delayventr|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(31),
	datab => \cor|delayventr|LessThan0~0_combout\,
	datac => \cor|delayventr|intcont\(0),
	datad => \cor|delayventr|Equal0~8_combout\,
	combout => \cor|delayventr|intcont[0]~91_combout\);

-- Location: FF_X14_Y14_N17
\cor|delayventr|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[0]~91_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(0));

-- Location: LCCOMB_X15_Y14_N4
\cor|delayventr|intcont[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[2]~33_combout\ = (\cor|delayventr|intcont\(2) & (!\cor|delayventr|intcont[1]~32\)) # (!\cor|delayventr|intcont\(2) & ((\cor|delayventr|intcont[1]~32\) # (GND)))
-- \cor|delayventr|intcont[2]~34\ = CARRY((!\cor|delayventr|intcont[1]~32\) # (!\cor|delayventr|intcont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(2),
	datad => VCC,
	cin => \cor|delayventr|intcont[1]~32\,
	combout => \cor|delayventr|intcont[2]~33_combout\,
	cout => \cor|delayventr|intcont[2]~34\);

-- Location: FF_X15_Y14_N5
\cor|delayventr|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[2]~33_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(2));

-- Location: LCCOMB_X15_Y14_N6
\cor|delayventr|intcont[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[3]~35_combout\ = (\cor|delayventr|intcont\(3) & (\cor|delayventr|intcont[2]~34\ $ (GND))) # (!\cor|delayventr|intcont\(3) & (!\cor|delayventr|intcont[2]~34\ & VCC))
-- \cor|delayventr|intcont[3]~36\ = CARRY((\cor|delayventr|intcont\(3) & !\cor|delayventr|intcont[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(3),
	datad => VCC,
	cin => \cor|delayventr|intcont[2]~34\,
	combout => \cor|delayventr|intcont[3]~35_combout\,
	cout => \cor|delayventr|intcont[3]~36\);

-- Location: FF_X15_Y14_N7
\cor|delayventr|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[3]~35_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(3));

-- Location: LCCOMB_X15_Y14_N8
\cor|delayventr|intcont[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[4]~37_combout\ = (\cor|delayventr|intcont\(4) & (!\cor|delayventr|intcont[3]~36\)) # (!\cor|delayventr|intcont\(4) & ((\cor|delayventr|intcont[3]~36\) # (GND)))
-- \cor|delayventr|intcont[4]~38\ = CARRY((!\cor|delayventr|intcont[3]~36\) # (!\cor|delayventr|intcont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(4),
	datad => VCC,
	cin => \cor|delayventr|intcont[3]~36\,
	combout => \cor|delayventr|intcont[4]~37_combout\,
	cout => \cor|delayventr|intcont[4]~38\);

-- Location: FF_X15_Y14_N9
\cor|delayventr|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[4]~37_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(4));

-- Location: LCCOMB_X15_Y14_N10
\cor|delayventr|intcont[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[5]~39_combout\ = (\cor|delayventr|intcont\(5) & (\cor|delayventr|intcont[4]~38\ $ (GND))) # (!\cor|delayventr|intcont\(5) & (!\cor|delayventr|intcont[4]~38\ & VCC))
-- \cor|delayventr|intcont[5]~40\ = CARRY((\cor|delayventr|intcont\(5) & !\cor|delayventr|intcont[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(5),
	datad => VCC,
	cin => \cor|delayventr|intcont[4]~38\,
	combout => \cor|delayventr|intcont[5]~39_combout\,
	cout => \cor|delayventr|intcont[5]~40\);

-- Location: FF_X15_Y14_N11
\cor|delayventr|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[5]~39_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(5));

-- Location: LCCOMB_X15_Y14_N12
\cor|delayventr|intcont[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[6]~41_combout\ = (\cor|delayventr|intcont\(6) & (!\cor|delayventr|intcont[5]~40\)) # (!\cor|delayventr|intcont\(6) & ((\cor|delayventr|intcont[5]~40\) # (GND)))
-- \cor|delayventr|intcont[6]~42\ = CARRY((!\cor|delayventr|intcont[5]~40\) # (!\cor|delayventr|intcont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(6),
	datad => VCC,
	cin => \cor|delayventr|intcont[5]~40\,
	combout => \cor|delayventr|intcont[6]~41_combout\,
	cout => \cor|delayventr|intcont[6]~42\);

-- Location: FF_X15_Y14_N13
\cor|delayventr|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[6]~41_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(6));

-- Location: LCCOMB_X15_Y14_N14
\cor|delayventr|intcont[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[7]~43_combout\ = (\cor|delayventr|intcont\(7) & (\cor|delayventr|intcont[6]~42\ $ (GND))) # (!\cor|delayventr|intcont\(7) & (!\cor|delayventr|intcont[6]~42\ & VCC))
-- \cor|delayventr|intcont[7]~44\ = CARRY((\cor|delayventr|intcont\(7) & !\cor|delayventr|intcont[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(7),
	datad => VCC,
	cin => \cor|delayventr|intcont[6]~42\,
	combout => \cor|delayventr|intcont[7]~43_combout\,
	cout => \cor|delayventr|intcont[7]~44\);

-- Location: FF_X15_Y14_N15
\cor|delayventr|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[7]~43_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(7));

-- Location: LCCOMB_X15_Y14_N16
\cor|delayventr|intcont[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[8]~45_combout\ = (\cor|delayventr|intcont\(8) & (!\cor|delayventr|intcont[7]~44\)) # (!\cor|delayventr|intcont\(8) & ((\cor|delayventr|intcont[7]~44\) # (GND)))
-- \cor|delayventr|intcont[8]~46\ = CARRY((!\cor|delayventr|intcont[7]~44\) # (!\cor|delayventr|intcont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(8),
	datad => VCC,
	cin => \cor|delayventr|intcont[7]~44\,
	combout => \cor|delayventr|intcont[8]~45_combout\,
	cout => \cor|delayventr|intcont[8]~46\);

-- Location: FF_X15_Y14_N17
\cor|delayventr|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[8]~45_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(8));

-- Location: LCCOMB_X15_Y14_N18
\cor|delayventr|intcont[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[9]~47_combout\ = (\cor|delayventr|intcont\(9) & (\cor|delayventr|intcont[8]~46\ $ (GND))) # (!\cor|delayventr|intcont\(9) & (!\cor|delayventr|intcont[8]~46\ & VCC))
-- \cor|delayventr|intcont[9]~48\ = CARRY((\cor|delayventr|intcont\(9) & !\cor|delayventr|intcont[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(9),
	datad => VCC,
	cin => \cor|delayventr|intcont[8]~46\,
	combout => \cor|delayventr|intcont[9]~47_combout\,
	cout => \cor|delayventr|intcont[9]~48\);

-- Location: FF_X15_Y14_N19
\cor|delayventr|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[9]~47_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(9));

-- Location: LCCOMB_X15_Y14_N20
\cor|delayventr|intcont[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[10]~49_combout\ = (\cor|delayventr|intcont\(10) & (!\cor|delayventr|intcont[9]~48\)) # (!\cor|delayventr|intcont\(10) & ((\cor|delayventr|intcont[9]~48\) # (GND)))
-- \cor|delayventr|intcont[10]~50\ = CARRY((!\cor|delayventr|intcont[9]~48\) # (!\cor|delayventr|intcont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(10),
	datad => VCC,
	cin => \cor|delayventr|intcont[9]~48\,
	combout => \cor|delayventr|intcont[10]~49_combout\,
	cout => \cor|delayventr|intcont[10]~50\);

-- Location: FF_X15_Y14_N21
\cor|delayventr|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[10]~49_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(10));

-- Location: LCCOMB_X15_Y14_N22
\cor|delayventr|intcont[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[11]~51_combout\ = (\cor|delayventr|intcont\(11) & (\cor|delayventr|intcont[10]~50\ $ (GND))) # (!\cor|delayventr|intcont\(11) & (!\cor|delayventr|intcont[10]~50\ & VCC))
-- \cor|delayventr|intcont[11]~52\ = CARRY((\cor|delayventr|intcont\(11) & !\cor|delayventr|intcont[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(11),
	datad => VCC,
	cin => \cor|delayventr|intcont[10]~50\,
	combout => \cor|delayventr|intcont[11]~51_combout\,
	cout => \cor|delayventr|intcont[11]~52\);

-- Location: FF_X15_Y14_N23
\cor|delayventr|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[11]~51_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(11));

-- Location: LCCOMB_X15_Y14_N24
\cor|delayventr|intcont[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[12]~53_combout\ = (\cor|delayventr|intcont\(12) & (!\cor|delayventr|intcont[11]~52\)) # (!\cor|delayventr|intcont\(12) & ((\cor|delayventr|intcont[11]~52\) # (GND)))
-- \cor|delayventr|intcont[12]~54\ = CARRY((!\cor|delayventr|intcont[11]~52\) # (!\cor|delayventr|intcont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(12),
	datad => VCC,
	cin => \cor|delayventr|intcont[11]~52\,
	combout => \cor|delayventr|intcont[12]~53_combout\,
	cout => \cor|delayventr|intcont[12]~54\);

-- Location: FF_X15_Y14_N25
\cor|delayventr|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[12]~53_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(12));

-- Location: LCCOMB_X15_Y14_N26
\cor|delayventr|intcont[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[13]~55_combout\ = (\cor|delayventr|intcont\(13) & (\cor|delayventr|intcont[12]~54\ $ (GND))) # (!\cor|delayventr|intcont\(13) & (!\cor|delayventr|intcont[12]~54\ & VCC))
-- \cor|delayventr|intcont[13]~56\ = CARRY((\cor|delayventr|intcont\(13) & !\cor|delayventr|intcont[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(13),
	datad => VCC,
	cin => \cor|delayventr|intcont[12]~54\,
	combout => \cor|delayventr|intcont[13]~55_combout\,
	cout => \cor|delayventr|intcont[13]~56\);

-- Location: FF_X15_Y14_N27
\cor|delayventr|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[13]~55_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(13));

-- Location: LCCOMB_X15_Y14_N28
\cor|delayventr|intcont[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[14]~57_combout\ = (\cor|delayventr|intcont\(14) & (!\cor|delayventr|intcont[13]~56\)) # (!\cor|delayventr|intcont\(14) & ((\cor|delayventr|intcont[13]~56\) # (GND)))
-- \cor|delayventr|intcont[14]~58\ = CARRY((!\cor|delayventr|intcont[13]~56\) # (!\cor|delayventr|intcont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(14),
	datad => VCC,
	cin => \cor|delayventr|intcont[13]~56\,
	combout => \cor|delayventr|intcont[14]~57_combout\,
	cout => \cor|delayventr|intcont[14]~58\);

-- Location: FF_X15_Y14_N29
\cor|delayventr|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[14]~57_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(14));

-- Location: LCCOMB_X15_Y14_N30
\cor|delayventr|intcont[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[15]~59_combout\ = (\cor|delayventr|intcont\(15) & (\cor|delayventr|intcont[14]~58\ $ (GND))) # (!\cor|delayventr|intcont\(15) & (!\cor|delayventr|intcont[14]~58\ & VCC))
-- \cor|delayventr|intcont[15]~60\ = CARRY((\cor|delayventr|intcont\(15) & !\cor|delayventr|intcont[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(15),
	datad => VCC,
	cin => \cor|delayventr|intcont[14]~58\,
	combout => \cor|delayventr|intcont[15]~59_combout\,
	cout => \cor|delayventr|intcont[15]~60\);

-- Location: FF_X15_Y14_N31
\cor|delayventr|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[15]~59_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(15));

-- Location: LCCOMB_X15_Y13_N0
\cor|delayventr|intcont[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[16]~61_combout\ = (\cor|delayventr|intcont\(16) & (!\cor|delayventr|intcont[15]~60\)) # (!\cor|delayventr|intcont\(16) & ((\cor|delayventr|intcont[15]~60\) # (GND)))
-- \cor|delayventr|intcont[16]~62\ = CARRY((!\cor|delayventr|intcont[15]~60\) # (!\cor|delayventr|intcont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(16),
	datad => VCC,
	cin => \cor|delayventr|intcont[15]~60\,
	combout => \cor|delayventr|intcont[16]~61_combout\,
	cout => \cor|delayventr|intcont[16]~62\);

-- Location: FF_X15_Y13_N1
\cor|delayventr|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[16]~61_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(16));

-- Location: LCCOMB_X15_Y13_N2
\cor|delayventr|intcont[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[17]~63_combout\ = (\cor|delayventr|intcont\(17) & (\cor|delayventr|intcont[16]~62\ $ (GND))) # (!\cor|delayventr|intcont\(17) & (!\cor|delayventr|intcont[16]~62\ & VCC))
-- \cor|delayventr|intcont[17]~64\ = CARRY((\cor|delayventr|intcont\(17) & !\cor|delayventr|intcont[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(17),
	datad => VCC,
	cin => \cor|delayventr|intcont[16]~62\,
	combout => \cor|delayventr|intcont[17]~63_combout\,
	cout => \cor|delayventr|intcont[17]~64\);

-- Location: FF_X15_Y13_N3
\cor|delayventr|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[17]~63_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(17));

-- Location: LCCOMB_X15_Y13_N4
\cor|delayventr|intcont[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[18]~65_combout\ = (\cor|delayventr|intcont\(18) & (!\cor|delayventr|intcont[17]~64\)) # (!\cor|delayventr|intcont\(18) & ((\cor|delayventr|intcont[17]~64\) # (GND)))
-- \cor|delayventr|intcont[18]~66\ = CARRY((!\cor|delayventr|intcont[17]~64\) # (!\cor|delayventr|intcont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(18),
	datad => VCC,
	cin => \cor|delayventr|intcont[17]~64\,
	combout => \cor|delayventr|intcont[18]~65_combout\,
	cout => \cor|delayventr|intcont[18]~66\);

-- Location: FF_X15_Y13_N5
\cor|delayventr|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[18]~65_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(18));

-- Location: LCCOMB_X15_Y13_N6
\cor|delayventr|intcont[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[19]~67_combout\ = (\cor|delayventr|intcont\(19) & (\cor|delayventr|intcont[18]~66\ $ (GND))) # (!\cor|delayventr|intcont\(19) & (!\cor|delayventr|intcont[18]~66\ & VCC))
-- \cor|delayventr|intcont[19]~68\ = CARRY((\cor|delayventr|intcont\(19) & !\cor|delayventr|intcont[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(19),
	datad => VCC,
	cin => \cor|delayventr|intcont[18]~66\,
	combout => \cor|delayventr|intcont[19]~67_combout\,
	cout => \cor|delayventr|intcont[19]~68\);

-- Location: FF_X15_Y13_N7
\cor|delayventr|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[19]~67_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(19));

-- Location: LCCOMB_X15_Y13_N8
\cor|delayventr|intcont[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[20]~69_combout\ = (\cor|delayventr|intcont\(20) & (!\cor|delayventr|intcont[19]~68\)) # (!\cor|delayventr|intcont\(20) & ((\cor|delayventr|intcont[19]~68\) # (GND)))
-- \cor|delayventr|intcont[20]~70\ = CARRY((!\cor|delayventr|intcont[19]~68\) # (!\cor|delayventr|intcont\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(20),
	datad => VCC,
	cin => \cor|delayventr|intcont[19]~68\,
	combout => \cor|delayventr|intcont[20]~69_combout\,
	cout => \cor|delayventr|intcont[20]~70\);

-- Location: FF_X15_Y13_N9
\cor|delayventr|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[20]~69_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(20));

-- Location: LCCOMB_X15_Y13_N10
\cor|delayventr|intcont[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[21]~71_combout\ = (\cor|delayventr|intcont\(21) & (\cor|delayventr|intcont[20]~70\ $ (GND))) # (!\cor|delayventr|intcont\(21) & (!\cor|delayventr|intcont[20]~70\ & VCC))
-- \cor|delayventr|intcont[21]~72\ = CARRY((\cor|delayventr|intcont\(21) & !\cor|delayventr|intcont[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(21),
	datad => VCC,
	cin => \cor|delayventr|intcont[20]~70\,
	combout => \cor|delayventr|intcont[21]~71_combout\,
	cout => \cor|delayventr|intcont[21]~72\);

-- Location: FF_X15_Y13_N11
\cor|delayventr|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[21]~71_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(21));

-- Location: LCCOMB_X15_Y13_N12
\cor|delayventr|intcont[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[22]~73_combout\ = (\cor|delayventr|intcont\(22) & (!\cor|delayventr|intcont[21]~72\)) # (!\cor|delayventr|intcont\(22) & ((\cor|delayventr|intcont[21]~72\) # (GND)))
-- \cor|delayventr|intcont[22]~74\ = CARRY((!\cor|delayventr|intcont[21]~72\) # (!\cor|delayventr|intcont\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(22),
	datad => VCC,
	cin => \cor|delayventr|intcont[21]~72\,
	combout => \cor|delayventr|intcont[22]~73_combout\,
	cout => \cor|delayventr|intcont[22]~74\);

-- Location: FF_X15_Y13_N13
\cor|delayventr|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[22]~73_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(22));

-- Location: LCCOMB_X15_Y13_N14
\cor|delayventr|intcont[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[23]~75_combout\ = (\cor|delayventr|intcont\(23) & (\cor|delayventr|intcont[22]~74\ $ (GND))) # (!\cor|delayventr|intcont\(23) & (!\cor|delayventr|intcont[22]~74\ & VCC))
-- \cor|delayventr|intcont[23]~76\ = CARRY((\cor|delayventr|intcont\(23) & !\cor|delayventr|intcont[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(23),
	datad => VCC,
	cin => \cor|delayventr|intcont[22]~74\,
	combout => \cor|delayventr|intcont[23]~75_combout\,
	cout => \cor|delayventr|intcont[23]~76\);

-- Location: FF_X15_Y13_N15
\cor|delayventr|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[23]~75_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(23));

-- Location: LCCOMB_X15_Y13_N16
\cor|delayventr|intcont[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[24]~77_combout\ = (\cor|delayventr|intcont\(24) & (!\cor|delayventr|intcont[23]~76\)) # (!\cor|delayventr|intcont\(24) & ((\cor|delayventr|intcont[23]~76\) # (GND)))
-- \cor|delayventr|intcont[24]~78\ = CARRY((!\cor|delayventr|intcont[23]~76\) # (!\cor|delayventr|intcont\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(24),
	datad => VCC,
	cin => \cor|delayventr|intcont[23]~76\,
	combout => \cor|delayventr|intcont[24]~77_combout\,
	cout => \cor|delayventr|intcont[24]~78\);

-- Location: FF_X15_Y13_N17
\cor|delayventr|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[24]~77_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(24));

-- Location: LCCOMB_X15_Y13_N18
\cor|delayventr|intcont[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[25]~79_combout\ = (\cor|delayventr|intcont\(25) & (\cor|delayventr|intcont[24]~78\ $ (GND))) # (!\cor|delayventr|intcont\(25) & (!\cor|delayventr|intcont[24]~78\ & VCC))
-- \cor|delayventr|intcont[25]~80\ = CARRY((\cor|delayventr|intcont\(25) & !\cor|delayventr|intcont[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(25),
	datad => VCC,
	cin => \cor|delayventr|intcont[24]~78\,
	combout => \cor|delayventr|intcont[25]~79_combout\,
	cout => \cor|delayventr|intcont[25]~80\);

-- Location: FF_X15_Y13_N19
\cor|delayventr|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[25]~79_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(25));

-- Location: LCCOMB_X15_Y13_N20
\cor|delayventr|intcont[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[26]~81_combout\ = (\cor|delayventr|intcont\(26) & (!\cor|delayventr|intcont[25]~80\)) # (!\cor|delayventr|intcont\(26) & ((\cor|delayventr|intcont[25]~80\) # (GND)))
-- \cor|delayventr|intcont[26]~82\ = CARRY((!\cor|delayventr|intcont[25]~80\) # (!\cor|delayventr|intcont\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(26),
	datad => VCC,
	cin => \cor|delayventr|intcont[25]~80\,
	combout => \cor|delayventr|intcont[26]~81_combout\,
	cout => \cor|delayventr|intcont[26]~82\);

-- Location: FF_X15_Y13_N21
\cor|delayventr|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[26]~81_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(26));

-- Location: LCCOMB_X15_Y13_N22
\cor|delayventr|intcont[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[27]~83_combout\ = (\cor|delayventr|intcont\(27) & (\cor|delayventr|intcont[26]~82\ $ (GND))) # (!\cor|delayventr|intcont\(27) & (!\cor|delayventr|intcont[26]~82\ & VCC))
-- \cor|delayventr|intcont[27]~84\ = CARRY((\cor|delayventr|intcont\(27) & !\cor|delayventr|intcont[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(27),
	datad => VCC,
	cin => \cor|delayventr|intcont[26]~82\,
	combout => \cor|delayventr|intcont[27]~83_combout\,
	cout => \cor|delayventr|intcont[27]~84\);

-- Location: FF_X15_Y13_N23
\cor|delayventr|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[27]~83_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(27));

-- Location: LCCOMB_X15_Y13_N24
\cor|delayventr|intcont[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[28]~85_combout\ = (\cor|delayventr|intcont\(28) & (!\cor|delayventr|intcont[27]~84\)) # (!\cor|delayventr|intcont\(28) & ((\cor|delayventr|intcont[27]~84\) # (GND)))
-- \cor|delayventr|intcont[28]~86\ = CARRY((!\cor|delayventr|intcont[27]~84\) # (!\cor|delayventr|intcont\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|delayventr|intcont\(28),
	datad => VCC,
	cin => \cor|delayventr|intcont[27]~84\,
	combout => \cor|delayventr|intcont[28]~85_combout\,
	cout => \cor|delayventr|intcont[28]~86\);

-- Location: FF_X15_Y13_N25
\cor|delayventr|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[28]~85_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(28));

-- Location: LCCOMB_X15_Y13_N26
\cor|delayventr|intcont[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|intcont[29]~87_combout\ = (\cor|delayventr|intcont\(29) & (\cor|delayventr|intcont[28]~86\ $ (GND))) # (!\cor|delayventr|intcont\(29) & (!\cor|delayventr|intcont[28]~86\ & VCC))
-- \cor|delayventr|intcont[29]~88\ = CARRY((\cor|delayventr|intcont\(29) & !\cor|delayventr|intcont[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(29),
	datad => VCC,
	cin => \cor|delayventr|intcont[28]~86\,
	combout => \cor|delayventr|intcont[29]~87_combout\,
	cout => \cor|delayventr|intcont[29]~88\);

-- Location: FF_X15_Y13_N27
\cor|delayventr|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[29]~87_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(29));

-- Location: FF_X15_Y13_N29
\cor|delayventr|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|delayventr|intcont[30]~89_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|delayventr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|delayventr|intcont\(30));

-- Location: LCCOMB_X14_Y13_N2
\cor|delayventr|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~7_combout\ = (!\cor|delayventr|intcont\(30) & (!\cor|delayventr|intcont\(27) & (!\cor|delayventr|intcont\(28) & !\cor|delayventr|intcont\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(30),
	datab => \cor|delayventr|intcont\(27),
	datac => \cor|delayventr|intcont\(28),
	datad => \cor|delayventr|intcont\(29),
	combout => \cor|delayventr|Equal0~7_combout\);

-- Location: LCCOMB_X14_Y13_N0
\cor|delayventr|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~5_combout\ = (!\cor|delayventr|intcont\(19) & (!\cor|delayventr|intcont\(21) & (!\cor|delayventr|intcont\(22) & !\cor|delayventr|intcont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(19),
	datab => \cor|delayventr|intcont\(21),
	datac => \cor|delayventr|intcont\(22),
	datad => \cor|delayventr|intcont\(20),
	combout => \cor|delayventr|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y14_N8
\cor|delayventr|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~6_combout\ = (!\cor|delayventr|intcont\(23) & (!\cor|delayventr|intcont\(25) & (!\cor|delayventr|intcont\(26) & !\cor|delayventr|intcont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(23),
	datab => \cor|delayventr|intcont\(25),
	datac => \cor|delayventr|intcont\(26),
	datad => \cor|delayventr|intcont\(24),
	combout => \cor|delayventr|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y14_N12
\cor|delayventr|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~0_combout\ = (!\cor|delayventr|intcont\(3) & (!\cor|delayventr|intcont\(5) & (!\cor|delayventr|intcont\(4) & !\cor|delayventr|intcont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(3),
	datab => \cor|delayventr|intcont\(5),
	datac => \cor|delayventr|intcont\(4),
	datad => \cor|delayventr|intcont\(6),
	combout => \cor|delayventr|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\cor|delayventr|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~1_combout\ = (!\cor|delayventr|intcont\(10) & (!\cor|delayventr|intcont\(8) & (!\cor|delayventr|intcont\(7) & !\cor|delayventr|intcont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(10),
	datab => \cor|delayventr|intcont\(8),
	datac => \cor|delayventr|intcont\(7),
	datad => \cor|delayventr|intcont\(9),
	combout => \cor|delayventr|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y14_N0
\cor|delayventr|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~2_combout\ = (!\cor|delayventr|intcont\(13) & (!\cor|delayventr|intcont\(14) & (!\cor|delayventr|intcont\(11) & !\cor|delayventr|intcont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(13),
	datab => \cor|delayventr|intcont\(14),
	datac => \cor|delayventr|intcont\(11),
	datad => \cor|delayventr|intcont\(12),
	combout => \cor|delayventr|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y14_N28
\cor|delayventr|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~3_combout\ = (!\cor|delayventr|intcont\(15) & (!\cor|delayventr|intcont\(16) & (!\cor|delayventr|intcont\(18) & !\cor|delayventr|intcont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(15),
	datab => \cor|delayventr|intcont\(16),
	datac => \cor|delayventr|intcont\(18),
	datad => \cor|delayventr|intcont\(17),
	combout => \cor|delayventr|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y14_N2
\cor|delayventr|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~4_combout\ = (\cor|delayventr|Equal0~0_combout\ & (\cor|delayventr|Equal0~1_combout\ & (\cor|delayventr|Equal0~2_combout\ & \cor|delayventr|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|Equal0~0_combout\,
	datab => \cor|delayventr|Equal0~1_combout\,
	datac => \cor|delayventr|Equal0~2_combout\,
	datad => \cor|delayventr|Equal0~3_combout\,
	combout => \cor|delayventr|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y14_N6
\cor|delayventr|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~8_combout\ = (\cor|delayventr|Equal0~7_combout\ & (\cor|delayventr|Equal0~5_combout\ & (\cor|delayventr|Equal0~6_combout\ & \cor|delayventr|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|Equal0~7_combout\,
	datab => \cor|delayventr|Equal0~5_combout\,
	datac => \cor|delayventr|Equal0~6_combout\,
	datad => \cor|delayventr|Equal0~4_combout\,
	combout => \cor|delayventr|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y14_N14
\cor|delayventr|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~9_combout\ = (\cor|delayventr|intcont\(2) & (\cor|delayventr|intcont\(0) & (!\cor|delayventr|intcont\(31) & !\cor|delayventr|intcont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|intcont\(2),
	datab => \cor|delayventr|intcont\(0),
	datac => \cor|delayventr|intcont\(31),
	datad => \cor|delayventr|intcont\(1),
	combout => \cor|delayventr|Equal0~9_combout\);

-- Location: LCCOMB_X12_Y14_N2
\cor|beatVentr|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~2_combout\ = (\cor|beatVentr|intcont\(1) & (!\cor|beatVentr|Add0~1\)) # (!\cor|beatVentr|intcont\(1) & ((\cor|beatVentr|Add0~1\) # (GND)))
-- \cor|beatVentr|Add0~3\ = CARRY((!\cor|beatVentr|Add0~1\) # (!\cor|beatVentr|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(1),
	datad => VCC,
	cin => \cor|beatVentr|Add0~1\,
	combout => \cor|beatVentr|Add0~2_combout\,
	cout => \cor|beatVentr|Add0~3\);

-- Location: LCCOMB_X12_Y14_N4
\cor|beatVentr|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~4_combout\ = (\cor|beatVentr|intcont\(2) & (\cor|beatVentr|Add0~3\ $ (GND))) # (!\cor|beatVentr|intcont\(2) & (!\cor|beatVentr|Add0~3\ & VCC))
-- \cor|beatVentr|Add0~5\ = CARRY((\cor|beatVentr|intcont\(2) & !\cor|beatVentr|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(2),
	datad => VCC,
	cin => \cor|beatVentr|Add0~3\,
	combout => \cor|beatVentr|Add0~4_combout\,
	cout => \cor|beatVentr|Add0~5\);

-- Location: LCCOMB_X14_Y14_N24
\cor|delayventr|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|delayventr|Equal0~10_combout\ = (\cor|delayventr|Equal0~9_combout\ & \cor|delayventr|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|delayventr|Equal0~9_combout\,
	datad => \cor|delayventr|Equal0~8_combout\,
	combout => \cor|delayventr|Equal0~10_combout\);

-- Location: LCCOMB_X13_Y14_N24
\cor|beatVentr|intcont[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[2]~35_combout\ = (\cor|beatVentr|Add0~4_combout\ & (\cor|delayventr|Equal0~10_combout\ & ((\cor|beatVentr|intcont\(31)) # (\cor|beatVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(31),
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|Add0~4_combout\,
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[2]~35_combout\);

-- Location: LCCOMB_X13_Y14_N28
\cor|beatVentr|intcont[31]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[31]~4_combout\ = ((!\cor|beatVentr|intcont\(31) & (!\cor|beatVentr|LessThan0~0_combout\ & !\cor|beatVentr|Equal0~10_combout\))) # (!\cor|delayventr|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(31),
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|Equal0~10_combout\,
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[31]~4_combout\);

-- Location: FF_X13_Y14_N25
\cor|beatVentr|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[2]~35_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatVentr|ALT_INV_intcont[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(2));

-- Location: LCCOMB_X12_Y14_N6
\cor|beatVentr|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~6_combout\ = (\cor|beatVentr|intcont\(3) & (!\cor|beatVentr|Add0~5\)) # (!\cor|beatVentr|intcont\(3) & ((\cor|beatVentr|Add0~5\) # (GND)))
-- \cor|beatVentr|Add0~7\ = CARRY((!\cor|beatVentr|Add0~5\) # (!\cor|beatVentr|intcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(3),
	datad => VCC,
	cin => \cor|beatVentr|Add0~5\,
	combout => \cor|beatVentr|Add0~6_combout\,
	cout => \cor|beatVentr|Add0~7\);

-- Location: LCCOMB_X13_Y14_N12
\cor|beatVentr|intcont[3]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[3]~34_combout\ = (\cor|beatVentr|Add0~6_combout\ & (\cor|delayventr|Equal0~10_combout\ & ((\cor|beatVentr|intcont\(31)) # (\cor|beatVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(31),
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|Add0~6_combout\,
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[3]~34_combout\);

-- Location: FF_X13_Y14_N13
\cor|beatVentr|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[3]~34_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatVentr|ALT_INV_intcont[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(3));

-- Location: LCCOMB_X12_Y14_N8
\cor|beatVentr|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~8_combout\ = (\cor|beatVentr|intcont\(4) & (\cor|beatVentr|Add0~7\ $ (GND))) # (!\cor|beatVentr|intcont\(4) & (!\cor|beatVentr|Add0~7\ & VCC))
-- \cor|beatVentr|Add0~9\ = CARRY((\cor|beatVentr|intcont\(4) & !\cor|beatVentr|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(4),
	datad => VCC,
	cin => \cor|beatVentr|Add0~7\,
	combout => \cor|beatVentr|Add0~8_combout\,
	cout => \cor|beatVentr|Add0~9\);

-- Location: LCCOMB_X13_Y14_N22
\cor|beatVentr|intcont[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[4]~31_combout\ = (\cor|beatVentr|Add0~8_combout\ & (\cor|delayventr|Equal0~10_combout\ & ((\cor|beatVentr|LessThan0~0_combout\) # (\cor|beatVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Add0~8_combout\,
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|intcont\(31),
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[4]~31_combout\);

-- Location: FF_X13_Y14_N23
\cor|beatVentr|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[4]~31_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatVentr|ALT_INV_intcont[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(4));

-- Location: LCCOMB_X12_Y14_N10
\cor|beatVentr|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~10_combout\ = (\cor|beatVentr|intcont\(5) & (!\cor|beatVentr|Add0~9\)) # (!\cor|beatVentr|intcont\(5) & ((\cor|beatVentr|Add0~9\) # (GND)))
-- \cor|beatVentr|Add0~11\ = CARRY((!\cor|beatVentr|Add0~9\) # (!\cor|beatVentr|intcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(5),
	datad => VCC,
	cin => \cor|beatVentr|Add0~9\,
	combout => \cor|beatVentr|Add0~10_combout\,
	cout => \cor|beatVentr|Add0~11\);

-- Location: LCCOMB_X11_Y14_N14
\cor|beatVentr|intcont[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[5]~30_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(5)) # ((\cor|beatVentr|Add0~10_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~10_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~10_combout\,
	datac => \cor|beatVentr|intcont\(5),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[5]~30_combout\);

-- Location: FF_X11_Y14_N15
\cor|beatVentr|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[5]~30_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(5));

-- Location: LCCOMB_X12_Y14_N12
\cor|beatVentr|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~12_combout\ = (\cor|beatVentr|intcont\(6) & (\cor|beatVentr|Add0~11\ $ (GND))) # (!\cor|beatVentr|intcont\(6) & (!\cor|beatVentr|Add0~11\ & VCC))
-- \cor|beatVentr|Add0~13\ = CARRY((\cor|beatVentr|intcont\(6) & !\cor|beatVentr|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(6),
	datad => VCC,
	cin => \cor|beatVentr|Add0~11\,
	combout => \cor|beatVentr|Add0~12_combout\,
	cout => \cor|beatVentr|Add0~13\);

-- Location: LCCOMB_X11_Y14_N12
\cor|beatVentr|intcont[6]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[6]~29_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(6)) # ((\cor|beatVentr|Add0~12_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~12_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~12_combout\,
	datac => \cor|beatVentr|intcont\(6),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[6]~29_combout\);

-- Location: FF_X11_Y14_N13
\cor|beatVentr|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[6]~29_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(6));

-- Location: LCCOMB_X11_Y14_N24
\cor|beatVentr|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~7_combout\ = (!\cor|beatVentr|intcont\(5) & !\cor|beatVentr|intcont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cor|beatVentr|intcont\(5),
	datad => \cor|beatVentr|intcont\(6),
	combout => \cor|beatVentr|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y14_N14
\cor|beatVentr|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~14_combout\ = (\cor|beatVentr|intcont\(7) & (!\cor|beatVentr|Add0~13\)) # (!\cor|beatVentr|intcont\(7) & ((\cor|beatVentr|Add0~13\) # (GND)))
-- \cor|beatVentr|Add0~15\ = CARRY((!\cor|beatVentr|Add0~13\) # (!\cor|beatVentr|intcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(7),
	datad => VCC,
	cin => \cor|beatVentr|Add0~13\,
	combout => \cor|beatVentr|Add0~14_combout\,
	cout => \cor|beatVentr|Add0~15\);

-- Location: LCCOMB_X13_Y14_N4
\cor|beatVentr|intcont[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[7]~28_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~14_combout\) # ((\cor|beatVentr|intcont[31]~4_combout\ & \cor|beatVentr|intcont\(7))))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (\cor|beatVentr|intcont[31]~4_combout\ & (\cor|beatVentr|intcont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|intcont[31]~4_combout\,
	datac => \cor|beatVentr|intcont\(7),
	datad => \cor|beatVentr|Add0~14_combout\,
	combout => \cor|beatVentr|intcont[7]~28_combout\);

-- Location: FF_X13_Y14_N5
\cor|beatVentr|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[7]~28_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(7));

-- Location: LCCOMB_X12_Y14_N16
\cor|beatVentr|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~16_combout\ = (\cor|beatVentr|intcont\(8) & (\cor|beatVentr|Add0~15\ $ (GND))) # (!\cor|beatVentr|intcont\(8) & (!\cor|beatVentr|Add0~15\ & VCC))
-- \cor|beatVentr|Add0~17\ = CARRY((\cor|beatVentr|intcont\(8) & !\cor|beatVentr|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(8),
	datad => VCC,
	cin => \cor|beatVentr|Add0~15\,
	combout => \cor|beatVentr|Add0~16_combout\,
	cout => \cor|beatVentr|Add0~17\);

-- Location: LCCOMB_X11_Y14_N10
\cor|beatVentr|intcont[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[8]~27_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(8)) # ((\cor|beatVentr|Add0~16_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~16_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~16_combout\,
	datac => \cor|beatVentr|intcont\(8),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[8]~27_combout\);

-- Location: FF_X11_Y14_N11
\cor|beatVentr|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[8]~27_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(8));

-- Location: LCCOMB_X12_Y14_N18
\cor|beatVentr|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~18_combout\ = (\cor|beatVentr|intcont\(9) & (!\cor|beatVentr|Add0~17\)) # (!\cor|beatVentr|intcont\(9) & ((\cor|beatVentr|Add0~17\) # (GND)))
-- \cor|beatVentr|Add0~19\ = CARRY((!\cor|beatVentr|Add0~17\) # (!\cor|beatVentr|intcont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(9),
	datad => VCC,
	cin => \cor|beatVentr|Add0~17\,
	combout => \cor|beatVentr|Add0~18_combout\,
	cout => \cor|beatVentr|Add0~19\);

-- Location: LCCOMB_X11_Y14_N4
\cor|beatVentr|intcont[9]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[9]~26_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(9)) # ((\cor|beatVentr|Add0~18_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~18_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~18_combout\,
	datac => \cor|beatVentr|intcont\(9),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[9]~26_combout\);

-- Location: FF_X11_Y14_N5
\cor|beatVentr|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[9]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(9));

-- Location: LCCOMB_X12_Y14_N20
\cor|beatVentr|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~20_combout\ = (\cor|beatVentr|intcont\(10) & (\cor|beatVentr|Add0~19\ $ (GND))) # (!\cor|beatVentr|intcont\(10) & (!\cor|beatVentr|Add0~19\ & VCC))
-- \cor|beatVentr|Add0~21\ = CARRY((\cor|beatVentr|intcont\(10) & !\cor|beatVentr|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(10),
	datad => VCC,
	cin => \cor|beatVentr|Add0~19\,
	combout => \cor|beatVentr|Add0~20_combout\,
	cout => \cor|beatVentr|Add0~21\);

-- Location: LCCOMB_X13_Y14_N6
\cor|beatVentr|intcont[10]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[10]~25_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~20_combout\) # ((\cor|beatVentr|intcont\(10) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(10) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~20_combout\,
	datac => \cor|beatVentr|intcont\(10),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[10]~25_combout\);

-- Location: FF_X13_Y14_N7
\cor|beatVentr|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[10]~25_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(10));

-- Location: LCCOMB_X12_Y14_N22
\cor|beatVentr|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~22_combout\ = (\cor|beatVentr|intcont\(11) & (!\cor|beatVentr|Add0~21\)) # (!\cor|beatVentr|intcont\(11) & ((\cor|beatVentr|Add0~21\) # (GND)))
-- \cor|beatVentr|Add0~23\ = CARRY((!\cor|beatVentr|Add0~21\) # (!\cor|beatVentr|intcont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(11),
	datad => VCC,
	cin => \cor|beatVentr|Add0~21\,
	combout => \cor|beatVentr|Add0~22_combout\,
	cout => \cor|beatVentr|Add0~23\);

-- Location: LCCOMB_X11_Y14_N0
\cor|beatVentr|intcont[11]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[11]~24_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(11)) # ((\cor|beatVentr|Add0~22_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~22_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~22_combout\,
	datac => \cor|beatVentr|intcont\(11),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[11]~24_combout\);

-- Location: FF_X11_Y14_N1
\cor|beatVentr|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[11]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(11));

-- Location: LCCOMB_X12_Y14_N24
\cor|beatVentr|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~24_combout\ = (\cor|beatVentr|intcont\(12) & (\cor|beatVentr|Add0~23\ $ (GND))) # (!\cor|beatVentr|intcont\(12) & (!\cor|beatVentr|Add0~23\ & VCC))
-- \cor|beatVentr|Add0~25\ = CARRY((\cor|beatVentr|intcont\(12) & !\cor|beatVentr|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(12),
	datad => VCC,
	cin => \cor|beatVentr|Add0~23\,
	combout => \cor|beatVentr|Add0~24_combout\,
	cout => \cor|beatVentr|Add0~25\);

-- Location: LCCOMB_X11_Y14_N26
\cor|beatVentr|intcont[12]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[12]~23_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(12)) # ((\cor|beatVentr|Add0~24_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~24_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~24_combout\,
	datac => \cor|beatVentr|intcont\(12),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[12]~23_combout\);

-- Location: FF_X11_Y14_N27
\cor|beatVentr|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[12]~23_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(12));

-- Location: LCCOMB_X12_Y14_N26
\cor|beatVentr|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~26_combout\ = (\cor|beatVentr|intcont\(13) & (!\cor|beatVentr|Add0~25\)) # (!\cor|beatVentr|intcont\(13) & ((\cor|beatVentr|Add0~25\) # (GND)))
-- \cor|beatVentr|Add0~27\ = CARRY((!\cor|beatVentr|Add0~25\) # (!\cor|beatVentr|intcont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(13),
	datad => VCC,
	cin => \cor|beatVentr|Add0~25\,
	combout => \cor|beatVentr|Add0~26_combout\,
	cout => \cor|beatVentr|Add0~27\);

-- Location: LCCOMB_X11_Y14_N16
\cor|beatVentr|intcont[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[13]~22_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(13)) # ((\cor|beatVentr|Add0~26_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~26_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~26_combout\,
	datac => \cor|beatVentr|intcont\(13),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[13]~22_combout\);

-- Location: FF_X11_Y14_N17
\cor|beatVentr|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[13]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(13));

-- Location: LCCOMB_X12_Y14_N28
\cor|beatVentr|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~28_combout\ = (\cor|beatVentr|intcont\(14) & (\cor|beatVentr|Add0~27\ $ (GND))) # (!\cor|beatVentr|intcont\(14) & (!\cor|beatVentr|Add0~27\ & VCC))
-- \cor|beatVentr|Add0~29\ = CARRY((\cor|beatVentr|intcont\(14) & !\cor|beatVentr|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(14),
	datad => VCC,
	cin => \cor|beatVentr|Add0~27\,
	combout => \cor|beatVentr|Add0~28_combout\,
	cout => \cor|beatVentr|Add0~29\);

-- Location: LCCOMB_X11_Y14_N6
\cor|beatVentr|intcont[14]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[14]~21_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(14)) # ((\cor|beatVentr|Add0~28_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~28_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~28_combout\,
	datac => \cor|beatVentr|intcont\(14),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[14]~21_combout\);

-- Location: FF_X11_Y14_N7
\cor|beatVentr|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[14]~21_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(14));

-- Location: LCCOMB_X11_Y14_N2
\cor|beatVentr|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~5_combout\ = (!\cor|beatVentr|intcont\(14) & (!\cor|beatVentr|intcont\(11) & (!\cor|beatVentr|intcont\(12) & !\cor|beatVentr|intcont\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(14),
	datab => \cor|beatVentr|intcont\(11),
	datac => \cor|beatVentr|intcont\(12),
	datad => \cor|beatVentr|intcont\(13),
	combout => \cor|beatVentr|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y14_N14
\cor|beatVentr|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~6_combout\ = (!\cor|beatVentr|intcont\(10) & (!\cor|beatVentr|intcont\(7) & (!\cor|beatVentr|intcont\(9) & !\cor|beatVentr|intcont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(10),
	datab => \cor|beatVentr|intcont\(7),
	datac => \cor|beatVentr|intcont\(9),
	datad => \cor|beatVentr|intcont\(8),
	combout => \cor|beatVentr|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y14_N30
\cor|beatVentr|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~30_combout\ = (\cor|beatVentr|intcont\(15) & (!\cor|beatVentr|Add0~29\)) # (!\cor|beatVentr|intcont\(15) & ((\cor|beatVentr|Add0~29\) # (GND)))
-- \cor|beatVentr|Add0~31\ = CARRY((!\cor|beatVentr|Add0~29\) # (!\cor|beatVentr|intcont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(15),
	datad => VCC,
	cin => \cor|beatVentr|Add0~29\,
	combout => \cor|beatVentr|Add0~30_combout\,
	cout => \cor|beatVentr|Add0~31\);

-- Location: LCCOMB_X13_Y13_N26
\cor|beatVentr|intcont[15]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[15]~20_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~30_combout\) # ((\cor|beatVentr|intcont\(15) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(15) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~30_combout\,
	datac => \cor|beatVentr|intcont\(15),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[15]~20_combout\);

-- Location: FF_X13_Y13_N27
\cor|beatVentr|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[15]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(15));

-- Location: LCCOMB_X12_Y13_N0
\cor|beatVentr|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~32_combout\ = (\cor|beatVentr|intcont\(16) & (\cor|beatVentr|Add0~31\ $ (GND))) # (!\cor|beatVentr|intcont\(16) & (!\cor|beatVentr|Add0~31\ & VCC))
-- \cor|beatVentr|Add0~33\ = CARRY((\cor|beatVentr|intcont\(16) & !\cor|beatVentr|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(16),
	datad => VCC,
	cin => \cor|beatVentr|Add0~31\,
	combout => \cor|beatVentr|Add0~32_combout\,
	cout => \cor|beatVentr|Add0~33\);

-- Location: LCCOMB_X13_Y13_N16
\cor|beatVentr|intcont[16]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[16]~19_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~32_combout\) # ((\cor|beatVentr|intcont\(16) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(16) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~32_combout\,
	datac => \cor|beatVentr|intcont\(16),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[16]~19_combout\);

-- Location: FF_X13_Y13_N17
\cor|beatVentr|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[16]~19_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(16));

-- Location: LCCOMB_X12_Y13_N2
\cor|beatVentr|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~34_combout\ = (\cor|beatVentr|intcont\(17) & (!\cor|beatVentr|Add0~33\)) # (!\cor|beatVentr|intcont\(17) & ((\cor|beatVentr|Add0~33\) # (GND)))
-- \cor|beatVentr|Add0~35\ = CARRY((!\cor|beatVentr|Add0~33\) # (!\cor|beatVentr|intcont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(17),
	datad => VCC,
	cin => \cor|beatVentr|Add0~33\,
	combout => \cor|beatVentr|Add0~34_combout\,
	cout => \cor|beatVentr|Add0~35\);

-- Location: LCCOMB_X13_Y13_N10
\cor|beatVentr|intcont[17]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[17]~18_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~34_combout\) # ((\cor|beatVentr|intcont\(17) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(17) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~34_combout\,
	datac => \cor|beatVentr|intcont\(17),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[17]~18_combout\);

-- Location: FF_X13_Y13_N11
\cor|beatVentr|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[17]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(17));

-- Location: LCCOMB_X12_Y13_N4
\cor|beatVentr|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~36_combout\ = (\cor|beatVentr|intcont\(18) & (\cor|beatVentr|Add0~35\ $ (GND))) # (!\cor|beatVentr|intcont\(18) & (!\cor|beatVentr|Add0~35\ & VCC))
-- \cor|beatVentr|Add0~37\ = CARRY((\cor|beatVentr|intcont\(18) & !\cor|beatVentr|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(18),
	datad => VCC,
	cin => \cor|beatVentr|Add0~35\,
	combout => \cor|beatVentr|Add0~36_combout\,
	cout => \cor|beatVentr|Add0~37\);

-- Location: LCCOMB_X13_Y13_N4
\cor|beatVentr|intcont[18]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[18]~17_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~36_combout\) # ((\cor|beatVentr|intcont\(18) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(18) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~36_combout\,
	datac => \cor|beatVentr|intcont\(18),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[18]~17_combout\);

-- Location: FF_X13_Y13_N5
\cor|beatVentr|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[18]~17_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(18));

-- Location: LCCOMB_X12_Y13_N6
\cor|beatVentr|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~38_combout\ = (\cor|beatVentr|intcont\(19) & (!\cor|beatVentr|Add0~37\)) # (!\cor|beatVentr|intcont\(19) & ((\cor|beatVentr|Add0~37\) # (GND)))
-- \cor|beatVentr|Add0~39\ = CARRY((!\cor|beatVentr|Add0~37\) # (!\cor|beatVentr|intcont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(19),
	datad => VCC,
	cin => \cor|beatVentr|Add0~37\,
	combout => \cor|beatVentr|Add0~38_combout\,
	cout => \cor|beatVentr|Add0~39\);

-- Location: LCCOMB_X11_Y14_N30
\cor|beatVentr|intcont[19]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[19]~16_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(19)) # ((\cor|beatVentr|Add0~38_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~38_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~38_combout\,
	datac => \cor|beatVentr|intcont\(19),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[19]~16_combout\);

-- Location: FF_X11_Y14_N31
\cor|beatVentr|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[19]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(19));

-- Location: LCCOMB_X12_Y13_N8
\cor|beatVentr|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~40_combout\ = (\cor|beatVentr|intcont\(20) & (\cor|beatVentr|Add0~39\ $ (GND))) # (!\cor|beatVentr|intcont\(20) & (!\cor|beatVentr|Add0~39\ & VCC))
-- \cor|beatVentr|Add0~41\ = CARRY((\cor|beatVentr|intcont\(20) & !\cor|beatVentr|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(20),
	datad => VCC,
	cin => \cor|beatVentr|Add0~39\,
	combout => \cor|beatVentr|Add0~40_combout\,
	cout => \cor|beatVentr|Add0~41\);

-- Location: LCCOMB_X11_Y14_N28
\cor|beatVentr|intcont[20]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[20]~15_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(20)) # ((\cor|beatVentr|Add0~40_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~40_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~40_combout\,
	datac => \cor|beatVentr|intcont\(20),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[20]~15_combout\);

-- Location: FF_X11_Y14_N29
\cor|beatVentr|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[20]~15_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(20));

-- Location: LCCOMB_X12_Y13_N10
\cor|beatVentr|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~42_combout\ = (\cor|beatVentr|intcont\(21) & (!\cor|beatVentr|Add0~41\)) # (!\cor|beatVentr|intcont\(21) & ((\cor|beatVentr|Add0~41\) # (GND)))
-- \cor|beatVentr|Add0~43\ = CARRY((!\cor|beatVentr|Add0~41\) # (!\cor|beatVentr|intcont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(21),
	datad => VCC,
	cin => \cor|beatVentr|Add0~41\,
	combout => \cor|beatVentr|Add0~42_combout\,
	cout => \cor|beatVentr|Add0~43\);

-- Location: LCCOMB_X11_Y14_N22
\cor|beatVentr|intcont[21]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[21]~14_combout\ = (\cor|beatVentr|Add0~42_combout\ & ((\cor|beatVentr|intcont~37_combout\) # ((\cor|beatVentr|intcont\(21) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|Add0~42_combout\ & 
-- (((\cor|beatVentr|intcont\(21) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Add0~42_combout\,
	datab => \cor|beatVentr|intcont~37_combout\,
	datac => \cor|beatVentr|intcont\(21),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[21]~14_combout\);

-- Location: FF_X11_Y14_N23
\cor|beatVentr|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[21]~14_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(21));

-- Location: LCCOMB_X12_Y13_N12
\cor|beatVentr|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~44_combout\ = (\cor|beatVentr|intcont\(22) & (\cor|beatVentr|Add0~43\ $ (GND))) # (!\cor|beatVentr|intcont\(22) & (!\cor|beatVentr|Add0~43\ & VCC))
-- \cor|beatVentr|Add0~45\ = CARRY((\cor|beatVentr|intcont\(22) & !\cor|beatVentr|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(22),
	datad => VCC,
	cin => \cor|beatVentr|Add0~43\,
	combout => \cor|beatVentr|Add0~44_combout\,
	cout => \cor|beatVentr|Add0~45\);

-- Location: LCCOMB_X11_Y14_N8
\cor|beatVentr|intcont[22]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[22]~13_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & ((\cor|beatVentr|intcont\(22)) # ((\cor|beatVentr|Add0~44_combout\ & \cor|beatVentr|intcont~37_combout\)))) # (!\cor|beatVentr|intcont[31]~4_combout\ & 
-- (\cor|beatVentr|Add0~44_combout\ & ((\cor|beatVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont[31]~4_combout\,
	datab => \cor|beatVentr|Add0~44_combout\,
	datac => \cor|beatVentr|intcont\(22),
	datad => \cor|beatVentr|intcont~37_combout\,
	combout => \cor|beatVentr|intcont[22]~13_combout\);

-- Location: FF_X11_Y14_N9
\cor|beatVentr|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[22]~13_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(22));

-- Location: LCCOMB_X11_Y14_N20
\cor|beatVentr|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~2_combout\ = (!\cor|beatVentr|intcont\(19) & (!\cor|beatVentr|intcont\(22) & (!\cor|beatVentr|intcont\(21) & !\cor|beatVentr|intcont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(19),
	datab => \cor|beatVentr|intcont\(22),
	datac => \cor|beatVentr|intcont\(21),
	datad => \cor|beatVentr|intcont\(20),
	combout => \cor|beatVentr|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y13_N14
\cor|beatVentr|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~46_combout\ = (\cor|beatVentr|intcont\(23) & (!\cor|beatVentr|Add0~45\)) # (!\cor|beatVentr|intcont\(23) & ((\cor|beatVentr|Add0~45\) # (GND)))
-- \cor|beatVentr|Add0~47\ = CARRY((!\cor|beatVentr|Add0~45\) # (!\cor|beatVentr|intcont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(23),
	datad => VCC,
	cin => \cor|beatVentr|Add0~45\,
	combout => \cor|beatVentr|Add0~46_combout\,
	cout => \cor|beatVentr|Add0~47\);

-- Location: LCCOMB_X13_Y13_N24
\cor|beatVentr|intcont[23]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[23]~12_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~46_combout\) # ((\cor|beatVentr|intcont\(23) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(23) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~46_combout\,
	datac => \cor|beatVentr|intcont\(23),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[23]~12_combout\);

-- Location: FF_X13_Y13_N25
\cor|beatVentr|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[23]~12_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(23));

-- Location: LCCOMB_X12_Y13_N16
\cor|beatVentr|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~48_combout\ = (\cor|beatVentr|intcont\(24) & (\cor|beatVentr|Add0~47\ $ (GND))) # (!\cor|beatVentr|intcont\(24) & (!\cor|beatVentr|Add0~47\ & VCC))
-- \cor|beatVentr|Add0~49\ = CARRY((\cor|beatVentr|intcont\(24) & !\cor|beatVentr|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(24),
	datad => VCC,
	cin => \cor|beatVentr|Add0~47\,
	combout => \cor|beatVentr|Add0~48_combout\,
	cout => \cor|beatVentr|Add0~49\);

-- Location: LCCOMB_X13_Y13_N18
\cor|beatVentr|intcont[24]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[24]~11_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~48_combout\) # ((\cor|beatVentr|intcont\(24) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(24) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~48_combout\,
	datac => \cor|beatVentr|intcont\(24),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[24]~11_combout\);

-- Location: FF_X13_Y13_N19
\cor|beatVentr|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[24]~11_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(24));

-- Location: LCCOMB_X12_Y13_N18
\cor|beatVentr|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~50_combout\ = (\cor|beatVentr|intcont\(25) & (!\cor|beatVentr|Add0~49\)) # (!\cor|beatVentr|intcont\(25) & ((\cor|beatVentr|Add0~49\) # (GND)))
-- \cor|beatVentr|Add0~51\ = CARRY((!\cor|beatVentr|Add0~49\) # (!\cor|beatVentr|intcont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(25),
	datad => VCC,
	cin => \cor|beatVentr|Add0~49\,
	combout => \cor|beatVentr|Add0~50_combout\,
	cout => \cor|beatVentr|Add0~51\);

-- Location: LCCOMB_X13_Y13_N12
\cor|beatVentr|intcont[25]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[25]~10_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~50_combout\) # ((\cor|beatVentr|intcont\(25) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(25) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~50_combout\,
	datac => \cor|beatVentr|intcont\(25),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[25]~10_combout\);

-- Location: FF_X13_Y13_N13
\cor|beatVentr|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[25]~10_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(25));

-- Location: LCCOMB_X12_Y13_N20
\cor|beatVentr|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~52_combout\ = (\cor|beatVentr|intcont\(26) & (\cor|beatVentr|Add0~51\ $ (GND))) # (!\cor|beatVentr|intcont\(26) & (!\cor|beatVentr|Add0~51\ & VCC))
-- \cor|beatVentr|Add0~53\ = CARRY((\cor|beatVentr|intcont\(26) & !\cor|beatVentr|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(26),
	datad => VCC,
	cin => \cor|beatVentr|Add0~51\,
	combout => \cor|beatVentr|Add0~52_combout\,
	cout => \cor|beatVentr|Add0~53\);

-- Location: LCCOMB_X13_Y13_N14
\cor|beatVentr|intcont[26]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[26]~9_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~52_combout\) # ((\cor|beatVentr|intcont\(26) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(26) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~52_combout\,
	datac => \cor|beatVentr|intcont\(26),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[26]~9_combout\);

-- Location: FF_X13_Y13_N15
\cor|beatVentr|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[26]~9_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(26));

-- Location: LCCOMB_X12_Y13_N22
\cor|beatVentr|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~54_combout\ = (\cor|beatVentr|intcont\(27) & (!\cor|beatVentr|Add0~53\)) # (!\cor|beatVentr|intcont\(27) & ((\cor|beatVentr|Add0~53\) # (GND)))
-- \cor|beatVentr|Add0~55\ = CARRY((!\cor|beatVentr|Add0~53\) # (!\cor|beatVentr|intcont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(27),
	datad => VCC,
	cin => \cor|beatVentr|Add0~53\,
	combout => \cor|beatVentr|Add0~54_combout\,
	cout => \cor|beatVentr|Add0~55\);

-- Location: LCCOMB_X13_Y13_N30
\cor|beatVentr|intcont[27]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[27]~8_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~54_combout\) # ((\cor|beatVentr|intcont\(27) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(27) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~54_combout\,
	datac => \cor|beatVentr|intcont\(27),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[27]~8_combout\);

-- Location: FF_X13_Y13_N31
\cor|beatVentr|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[27]~8_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(27));

-- Location: LCCOMB_X12_Y13_N24
\cor|beatVentr|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~56_combout\ = (\cor|beatVentr|intcont\(28) & (\cor|beatVentr|Add0~55\ $ (GND))) # (!\cor|beatVentr|intcont\(28) & (!\cor|beatVentr|Add0~55\ & VCC))
-- \cor|beatVentr|Add0~57\ = CARRY((\cor|beatVentr|intcont\(28) & !\cor|beatVentr|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatVentr|intcont\(28),
	datad => VCC,
	cin => \cor|beatVentr|Add0~55\,
	combout => \cor|beatVentr|Add0~56_combout\,
	cout => \cor|beatVentr|Add0~57\);

-- Location: LCCOMB_X13_Y13_N28
\cor|beatVentr|intcont[28]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[28]~7_combout\ = (\cor|beatVentr|intcont~37_combout\ & ((\cor|beatVentr|Add0~56_combout\) # ((\cor|beatVentr|intcont\(28) & \cor|beatVentr|intcont[31]~4_combout\)))) # (!\cor|beatVentr|intcont~37_combout\ & 
-- (((\cor|beatVentr|intcont\(28) & \cor|beatVentr|intcont[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~56_combout\,
	datac => \cor|beatVentr|intcont\(28),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[28]~7_combout\);

-- Location: FF_X13_Y13_N29
\cor|beatVentr|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[28]~7_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(28));

-- Location: LCCOMB_X12_Y13_N26
\cor|beatVentr|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~58_combout\ = (\cor|beatVentr|intcont\(29) & (!\cor|beatVentr|Add0~57\)) # (!\cor|beatVentr|intcont\(29) & ((\cor|beatVentr|Add0~57\) # (GND)))
-- \cor|beatVentr|Add0~59\ = CARRY((!\cor|beatVentr|Add0~57\) # (!\cor|beatVentr|intcont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(29),
	datad => VCC,
	cin => \cor|beatVentr|Add0~57\,
	combout => \cor|beatVentr|Add0~58_combout\,
	cout => \cor|beatVentr|Add0~59\);

-- Location: LCCOMB_X13_Y13_N6
\cor|beatVentr|intcont[29]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[29]~6_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & (((\cor|beatVentr|intcont\(29))))) # (!\cor|beatVentr|intcont[31]~4_combout\ & (\cor|beatVentr|Add0~58_combout\ & (\cor|beatVentr|intcont~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Add0~58_combout\,
	datab => \cor|beatVentr|intcont~37_combout\,
	datac => \cor|beatVentr|intcont\(29),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[29]~6_combout\);

-- Location: FF_X13_Y13_N7
\cor|beatVentr|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[29]~6_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(29));

-- Location: LCCOMB_X13_Y13_N0
\cor|beatVentr|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~0_combout\ = (!\cor|beatVentr|intcont\(29) & (!\cor|beatVentr|intcont\(30) & (!\cor|beatVentr|intcont\(27) & !\cor|beatVentr|intcont\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(29),
	datab => \cor|beatVentr|intcont\(30),
	datac => \cor|beatVentr|intcont\(27),
	datad => \cor|beatVentr|intcont\(28),
	combout => \cor|beatVentr|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y13_N8
\cor|beatVentr|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~3_combout\ = (!\cor|beatVentr|intcont\(15) & (!\cor|beatVentr|intcont\(16) & (!\cor|beatVentr|intcont\(18) & !\cor|beatVentr|intcont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(15),
	datab => \cor|beatVentr|intcont\(16),
	datac => \cor|beatVentr|intcont\(18),
	datad => \cor|beatVentr|intcont\(17),
	combout => \cor|beatVentr|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y13_N22
\cor|beatVentr|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~1_combout\ = (!\cor|beatVentr|intcont\(25) & (!\cor|beatVentr|intcont\(23) & (!\cor|beatVentr|intcont\(26) & !\cor|beatVentr|intcont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(25),
	datab => \cor|beatVentr|intcont\(23),
	datac => \cor|beatVentr|intcont\(26),
	datad => \cor|beatVentr|intcont\(24),
	combout => \cor|beatVentr|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N0
\cor|beatVentr|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~4_combout\ = (\cor|beatVentr|Equal0~2_combout\ & (\cor|beatVentr|Equal0~0_combout\ & (\cor|beatVentr|Equal0~3_combout\ & \cor|beatVentr|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Equal0~2_combout\,
	datab => \cor|beatVentr|Equal0~0_combout\,
	datac => \cor|beatVentr|Equal0~3_combout\,
	datad => \cor|beatVentr|Equal0~1_combout\,
	combout => \cor|beatVentr|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y14_N16
\cor|beatVentr|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~8_combout\ = (\cor|beatVentr|Equal0~7_combout\ & (\cor|beatVentr|Equal0~5_combout\ & (\cor|beatVentr|Equal0~6_combout\ & \cor|beatVentr|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Equal0~7_combout\,
	datab => \cor|beatVentr|Equal0~5_combout\,
	datac => \cor|beatVentr|Equal0~6_combout\,
	datad => \cor|beatVentr|Equal0~4_combout\,
	combout => \cor|beatVentr|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y14_N2
\cor|beatVentr|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|LessThan0~0_combout\ = (\cor|beatVentr|Equal0~8_combout\ & (((!\cor|beatVentr|intcont\(3) & !\cor|beatVentr|intcont\(2))) # (!\cor|beatVentr|intcont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(3),
	datab => \cor|beatVentr|intcont\(2),
	datac => \cor|beatVentr|intcont\(4),
	datad => \cor|beatVentr|Equal0~8_combout\,
	combout => \cor|beatVentr|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\cor|beatVentr|intcont~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont~37_combout\ = (\cor|delayventr|Equal0~8_combout\ & (\cor|delayventr|Equal0~9_combout\ & ((\cor|beatVentr|intcont\(31)) # (\cor|beatVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|delayventr|Equal0~8_combout\,
	datab => \cor|beatVentr|intcont\(31),
	datac => \cor|delayventr|Equal0~9_combout\,
	datad => \cor|beatVentr|LessThan0~0_combout\,
	combout => \cor|beatVentr|intcont~37_combout\);

-- Location: LCCOMB_X12_Y13_N28
\cor|beatVentr|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~60_combout\ = (\cor|beatVentr|intcont\(30) & (\cor|beatVentr|Add0~59\ $ (GND))) # (!\cor|beatVentr|intcont\(30) & (!\cor|beatVentr|Add0~59\ & VCC))
-- \cor|beatVentr|Add0~61\ = CARRY((\cor|beatVentr|intcont\(30) & !\cor|beatVentr|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(30),
	datad => VCC,
	cin => \cor|beatVentr|Add0~59\,
	combout => \cor|beatVentr|Add0~60_combout\,
	cout => \cor|beatVentr|Add0~61\);

-- Location: LCCOMB_X13_Y13_N20
\cor|beatVentr|intcont[30]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[30]~5_combout\ = (\cor|beatVentr|intcont[31]~4_combout\ & (((\cor|beatVentr|intcont\(30))))) # (!\cor|beatVentr|intcont[31]~4_combout\ & (\cor|beatVentr|intcont~37_combout\ & (\cor|beatVentr|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont~37_combout\,
	datab => \cor|beatVentr|Add0~60_combout\,
	datac => \cor|beatVentr|intcont\(30),
	datad => \cor|beatVentr|intcont[31]~4_combout\,
	combout => \cor|beatVentr|intcont[30]~5_combout\);

-- Location: FF_X13_Y13_N21
\cor|beatVentr|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[30]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(30));

-- Location: LCCOMB_X12_Y13_N30
\cor|beatVentr|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~62_combout\ = \cor|beatVentr|Add0~61\ $ (\cor|beatVentr|intcont\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cor|beatVentr|intcont\(31),
	cin => \cor|beatVentr|Add0~61\,
	combout => \cor|beatVentr|Add0~62_combout\);

-- Location: LCCOMB_X13_Y14_N26
\cor|beatVentr|intcont[31]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[31]~33_combout\ = (\cor|delayventr|Equal0~10_combout\ & (\cor|beatVentr|Add0~62_combout\ & ((\cor|beatVentr|LessThan0~0_combout\) # (\cor|beatVentr|intcont\(31))))) # (!\cor|delayventr|Equal0~10_combout\ & 
-- (((\cor|beatVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Add0~62_combout\,
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|intcont\(31),
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[31]~33_combout\);

-- Location: FF_X13_Y14_N27
\cor|beatVentr|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[31]~33_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(31));

-- Location: LCCOMB_X12_Y14_N0
\cor|beatVentr|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Add0~0_combout\ = \cor|beatVentr|intcont\(0) $ (VCC)
-- \cor|beatVentr|Add0~1\ = CARRY(\cor|beatVentr|intcont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(0),
	datad => VCC,
	combout => \cor|beatVentr|Add0~0_combout\,
	cout => \cor|beatVentr|Add0~1\);

-- Location: LCCOMB_X13_Y14_N20
\cor|beatVentr|intcont[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[0]~32_combout\ = (\cor|beatVentr|Add0~0_combout\ & (\cor|delayventr|Equal0~10_combout\ & ((\cor|beatVentr|intcont\(31)) # (\cor|beatVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(31),
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|Add0~0_combout\,
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[0]~32_combout\);

-- Location: FF_X13_Y14_N21
\cor|beatVentr|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[0]~32_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatVentr|ALT_INV_intcont[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(0));

-- Location: LCCOMB_X13_Y14_N10
\cor|beatVentr|intcont[1]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|intcont[1]~36_combout\ = (\cor|beatVentr|Add0~2_combout\ & (\cor|delayventr|Equal0~10_combout\ & ((\cor|beatVentr|LessThan0~0_combout\) # (\cor|beatVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|Add0~2_combout\,
	datab => \cor|beatVentr|LessThan0~0_combout\,
	datac => \cor|beatVentr|intcont\(31),
	datad => \cor|delayventr|Equal0~10_combout\,
	combout => \cor|beatVentr|intcont[1]~36_combout\);

-- Location: FF_X13_Y14_N11
\cor|beatVentr|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cor|millisegundos|ax~clkctrl_outclk\,
	d => \cor|beatVentr|intcont[1]~36_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \cor|beatVentr|ALT_INV_intcont[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cor|beatVentr|intcont\(1));

-- Location: LCCOMB_X13_Y14_N18
\cor|beatVentr|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~9_combout\ = (!\cor|beatVentr|intcont\(3) & (\cor|beatVentr|intcont\(4) & (!\cor|beatVentr|intcont\(31) & !\cor|beatVentr|intcont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(3),
	datab => \cor|beatVentr|intcont\(4),
	datac => \cor|beatVentr|intcont\(31),
	datad => \cor|beatVentr|intcont\(0),
	combout => \cor|beatVentr|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y14_N8
\cor|beatVentr|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|beatVentr|Equal0~10_combout\ = (!\cor|beatVentr|intcont\(1) & (\cor|beatVentr|intcont\(2) & (\cor|beatVentr|Equal0~9_combout\ & \cor|beatVentr|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|beatVentr|intcont\(1),
	datab => \cor|beatVentr|intcont\(2),
	datac => \cor|beatVentr|Equal0~9_combout\,
	datad => \cor|beatVentr|Equal0~8_combout\,
	combout => \cor|beatVentr|Equal0~10_combout\);

-- Location: LCCOMB_X13_Y27_N24
\cor|SVC\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cor|SVC~combout\ = (\sinais[1]~input_o\ & \cor|beatVentr|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sinais[1]~input_o\,
	datad => \cor|beatVentr|Equal0~10_combout\,
	combout => \cor|SVC~combout\);

-- Location: LCCOMB_X16_Y23_N12
\mp|millisegundos|ax~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|millisegundos|ax~0_combout\ = !\mp|millisegundos|ax~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mp|millisegundos|ax~q\,
	combout => \mp|millisegundos|ax~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\mp|millisegundos|ax~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|millisegundos|ax~feeder_combout\ = \mp|millisegundos|ax~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mp|millisegundos|ax~0_combout\,
	combout => \mp|millisegundos|ax~feeder_combout\);

-- Location: FF_X16_Y23_N1
\mp|millisegundos|ax\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclockbasico|ax~clkctrl_outclk\,
	d => \mp|millisegundos|ax~feeder_combout\,
	ena => \cor|millisegundos|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|millisegundos|ax~q\);

-- Location: CLKCTRL_G10
\mp|millisegundos|ax~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mp|millisegundos|ax~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mp|millisegundos|ax~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y19_N0
\mp|beatPulsoAtrio|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~2_combout\ = \mp|beatPulsoAtrio|intcont\(0) $ (VCC)
-- \mp|beatPulsoAtrio|Add0~3\ = CARRY(\mp|beatPulsoAtrio|intcont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(0),
	datad => VCC,
	combout => \mp|beatPulsoAtrio|Add0~2_combout\,
	cout => \mp|beatPulsoAtrio|Add0~3\);

-- Location: LCCOMB_X9_Y19_N16
\mp|beatPulsoAtrio|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~4_combout\ = (\mp|beatPulsoAtrio|Add0~2_combout\ & ((\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~9_combout\ & \mp|beatPulsoAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|Add0~2_combout\,
	datad => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	combout => \mp|beatPulsoAtrio|Add0~4_combout\);

-- Location: LCCOMB_X9_Y19_N4
\mp|beatPulsoAtrio|intcont[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[4]~0_combout\ = (\mp|beatPulsoAtrio|intcont\(31)) # (((\mp|beatPulsoAtrio|LessThan0~8_combout\ & \mp|beatPulsoAtrio|LessThan0~9_combout\)) # (!\mp|beatPulsoAtrio|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[4]~0_combout\);

-- Location: FF_X9_Y19_N17
\mp|beatPulsoAtrio|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|Add0~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoAtrio|intcont[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(0));

-- Location: LCCOMB_X10_Y19_N2
\mp|beatPulsoAtrio|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~5_combout\ = (\mp|beatPulsoAtrio|intcont\(1) & (!\mp|beatPulsoAtrio|Add0~3\)) # (!\mp|beatPulsoAtrio|intcont\(1) & ((\mp|beatPulsoAtrio|Add0~3\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~6\ = CARRY((!\mp|beatPulsoAtrio|Add0~3\) # (!\mp|beatPulsoAtrio|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(1),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~3\,
	combout => \mp|beatPulsoAtrio|Add0~5_combout\,
	cout => \mp|beatPulsoAtrio|Add0~6\);

-- Location: LCCOMB_X10_Y19_N4
\mp|beatPulsoAtrio|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~7_combout\ = (\mp|beatPulsoAtrio|intcont\(2) & (\mp|beatPulsoAtrio|Add0~6\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(2) & (!\mp|beatPulsoAtrio|Add0~6\ & VCC))
-- \mp|beatPulsoAtrio|Add0~8\ = CARRY((\mp|beatPulsoAtrio|intcont\(2) & !\mp|beatPulsoAtrio|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(2),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~6\,
	combout => \mp|beatPulsoAtrio|Add0~7_combout\,
	cout => \mp|beatPulsoAtrio|Add0~8\);

-- Location: LCCOMB_X9_Y19_N22
\mp|beatPulsoAtrio|Add0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~69_combout\ = (\mp|beatPulsoAtrio|Add0~7_combout\ & ((\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~8_combout\ & \mp|beatPulsoAtrio|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datad => \mp|beatPulsoAtrio|Add0~7_combout\,
	combout => \mp|beatPulsoAtrio|Add0~69_combout\);

-- Location: FF_X9_Y19_N23
\mp|beatPulsoAtrio|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|Add0~69_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoAtrio|intcont[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(2));

-- Location: LCCOMB_X9_Y19_N18
\mp|beatPulsoAtrio|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~9_combout\ = ((!\mp|beatPulsoAtrio|intcont\(3) & !\mp|beatPulsoAtrio|intcont\(2))) # (!\mp|beatPulsoAtrio|intcont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(3),
	datac => \mp|beatPulsoAtrio|intcont\(2),
	datad => \mp|beatPulsoAtrio|intcont\(4),
	combout => \mp|beatPulsoAtrio|LessThan0~9_combout\);

-- Location: LCCOMB_X10_Y19_N6
\mp|beatPulsoAtrio|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~9_combout\ = (\mp|beatPulsoAtrio|intcont\(3) & (!\mp|beatPulsoAtrio|Add0~8\)) # (!\mp|beatPulsoAtrio|intcont\(3) & ((\mp|beatPulsoAtrio|Add0~8\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~10\ = CARRY((!\mp|beatPulsoAtrio|Add0~8\) # (!\mp|beatPulsoAtrio|intcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(3),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~8\,
	combout => \mp|beatPulsoAtrio|Add0~9_combout\,
	cout => \mp|beatPulsoAtrio|Add0~10\);

-- Location: LCCOMB_X9_Y19_N14
\mp|beatPulsoAtrio|Add0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~67_combout\ = (\mp|beatPulsoAtrio|Add0~9_combout\ & ((\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~8_combout\ & \mp|beatPulsoAtrio|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datad => \mp|beatPulsoAtrio|Add0~9_combout\,
	combout => \mp|beatPulsoAtrio|Add0~67_combout\);

-- Location: FF_X9_Y19_N15
\mp|beatPulsoAtrio|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|Add0~67_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoAtrio|intcont[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(3));

-- Location: LCCOMB_X10_Y19_N8
\mp|beatPulsoAtrio|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~11_combout\ = (\mp|beatPulsoAtrio|intcont\(4) & (\mp|beatPulsoAtrio|Add0~10\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(4) & (!\mp|beatPulsoAtrio|Add0~10\ & VCC))
-- \mp|beatPulsoAtrio|Add0~12\ = CARRY((\mp|beatPulsoAtrio|intcont\(4) & !\mp|beatPulsoAtrio|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(4),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~10\,
	combout => \mp|beatPulsoAtrio|Add0~11_combout\,
	cout => \mp|beatPulsoAtrio|Add0~12\);

-- Location: LCCOMB_X11_Y19_N20
\mp|beatPulsoAtrio|intcont[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[4]~1_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~11_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(4),
	datad => \mp|beatPulsoAtrio|Add0~11_combout\,
	combout => \mp|beatPulsoAtrio|intcont[4]~1_combout\);

-- Location: FF_X11_Y19_N21
\mp|beatPulsoAtrio|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[4]~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(4));

-- Location: LCCOMB_X10_Y19_N10
\mp|beatPulsoAtrio|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~13_combout\ = (\mp|beatPulsoAtrio|intcont\(5) & (!\mp|beatPulsoAtrio|Add0~12\)) # (!\mp|beatPulsoAtrio|intcont\(5) & ((\mp|beatPulsoAtrio|Add0~12\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~14\ = CARRY((!\mp|beatPulsoAtrio|Add0~12\) # (!\mp|beatPulsoAtrio|intcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(5),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~12\,
	combout => \mp|beatPulsoAtrio|Add0~13_combout\,
	cout => \mp|beatPulsoAtrio|Add0~14\);

-- Location: LCCOMB_X11_Y19_N28
\mp|beatPulsoAtrio|intcont[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[5]~27_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~13_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(5),
	datad => \mp|beatPulsoAtrio|Add0~13_combout\,
	combout => \mp|beatPulsoAtrio|intcont[5]~27_combout\);

-- Location: FF_X11_Y19_N29
\mp|beatPulsoAtrio|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[5]~27_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(5));

-- Location: LCCOMB_X10_Y19_N12
\mp|beatPulsoAtrio|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~15_combout\ = (\mp|beatPulsoAtrio|intcont\(6) & (\mp|beatPulsoAtrio|Add0~14\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(6) & (!\mp|beatPulsoAtrio|Add0~14\ & VCC))
-- \mp|beatPulsoAtrio|Add0~16\ = CARRY((\mp|beatPulsoAtrio|intcont\(6) & !\mp|beatPulsoAtrio|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(6),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~14\,
	combout => \mp|beatPulsoAtrio|Add0~15_combout\,
	cout => \mp|beatPulsoAtrio|Add0~16\);

-- Location: LCCOMB_X10_Y19_N14
\mp|beatPulsoAtrio|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~17_combout\ = (\mp|beatPulsoAtrio|intcont\(7) & (!\mp|beatPulsoAtrio|Add0~16\)) # (!\mp|beatPulsoAtrio|intcont\(7) & ((\mp|beatPulsoAtrio|Add0~16\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~18\ = CARRY((!\mp|beatPulsoAtrio|Add0~16\) # (!\mp|beatPulsoAtrio|intcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(7),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~16\,
	combout => \mp|beatPulsoAtrio|Add0~17_combout\,
	cout => \mp|beatPulsoAtrio|Add0~18\);

-- Location: LCCOMB_X11_Y19_N22
\mp|beatPulsoAtrio|intcont[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[7]~25_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~17_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(7),
	datad => \mp|beatPulsoAtrio|Add0~17_combout\,
	combout => \mp|beatPulsoAtrio|intcont[7]~25_combout\);

-- Location: FF_X11_Y19_N23
\mp|beatPulsoAtrio|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[7]~25_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(7));

-- Location: LCCOMB_X10_Y19_N16
\mp|beatPulsoAtrio|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~19_combout\ = (\mp|beatPulsoAtrio|intcont\(8) & (\mp|beatPulsoAtrio|Add0~18\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(8) & (!\mp|beatPulsoAtrio|Add0~18\ & VCC))
-- \mp|beatPulsoAtrio|Add0~20\ = CARRY((\mp|beatPulsoAtrio|intcont\(8) & !\mp|beatPulsoAtrio|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(8),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~18\,
	combout => \mp|beatPulsoAtrio|Add0~19_combout\,
	cout => \mp|beatPulsoAtrio|Add0~20\);

-- Location: LCCOMB_X11_Y19_N24
\mp|beatPulsoAtrio|intcont[8]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[8]~24_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~19_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(8) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Add0~19_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(8),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[8]~24_combout\);

-- Location: FF_X11_Y19_N25
\mp|beatPulsoAtrio|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[8]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(8));

-- Location: LCCOMB_X10_Y19_N18
\mp|beatPulsoAtrio|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~21_combout\ = (\mp|beatPulsoAtrio|intcont\(9) & (!\mp|beatPulsoAtrio|Add0~20\)) # (!\mp|beatPulsoAtrio|intcont\(9) & ((\mp|beatPulsoAtrio|Add0~20\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~22\ = CARRY((!\mp|beatPulsoAtrio|Add0~20\) # (!\mp|beatPulsoAtrio|intcont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(9),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~20\,
	combout => \mp|beatPulsoAtrio|Add0~21_combout\,
	cout => \mp|beatPulsoAtrio|Add0~22\);

-- Location: LCCOMB_X11_Y19_N10
\mp|beatPulsoAtrio|intcont[9]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[9]~23_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~21_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(9),
	datad => \mp|beatPulsoAtrio|Add0~21_combout\,
	combout => \mp|beatPulsoAtrio|intcont[9]~23_combout\);

-- Location: FF_X11_Y19_N11
\mp|beatPulsoAtrio|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[9]~23_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(9));

-- Location: LCCOMB_X10_Y19_N20
\mp|beatPulsoAtrio|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~23_combout\ = (\mp|beatPulsoAtrio|intcont\(10) & (\mp|beatPulsoAtrio|Add0~22\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(10) & (!\mp|beatPulsoAtrio|Add0~22\ & VCC))
-- \mp|beatPulsoAtrio|Add0~24\ = CARRY((\mp|beatPulsoAtrio|intcont\(10) & !\mp|beatPulsoAtrio|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(10),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~22\,
	combout => \mp|beatPulsoAtrio|Add0~23_combout\,
	cout => \mp|beatPulsoAtrio|Add0~24\);

-- Location: LCCOMB_X11_Y19_N16
\mp|beatPulsoAtrio|intcont[10]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[10]~22_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~23_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(10),
	datad => \mp|beatPulsoAtrio|Add0~23_combout\,
	combout => \mp|beatPulsoAtrio|intcont[10]~22_combout\);

-- Location: FF_X11_Y19_N17
\mp|beatPulsoAtrio|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[10]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(10));

-- Location: LCCOMB_X10_Y19_N22
\mp|beatPulsoAtrio|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~25_combout\ = (\mp|beatPulsoAtrio|intcont\(11) & (!\mp|beatPulsoAtrio|Add0~24\)) # (!\mp|beatPulsoAtrio|intcont\(11) & ((\mp|beatPulsoAtrio|Add0~24\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~26\ = CARRY((!\mp|beatPulsoAtrio|Add0~24\) # (!\mp|beatPulsoAtrio|intcont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(11),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~24\,
	combout => \mp|beatPulsoAtrio|Add0~25_combout\,
	cout => \mp|beatPulsoAtrio|Add0~26\);

-- Location: LCCOMB_X11_Y19_N0
\mp|beatPulsoAtrio|intcont[11]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[11]~21_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~25_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(11),
	datad => \mp|beatPulsoAtrio|Add0~25_combout\,
	combout => \mp|beatPulsoAtrio|intcont[11]~21_combout\);

-- Location: FF_X11_Y19_N1
\mp|beatPulsoAtrio|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[11]~21_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(11));

-- Location: LCCOMB_X10_Y19_N24
\mp|beatPulsoAtrio|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~27_combout\ = (\mp|beatPulsoAtrio|intcont\(12) & (\mp|beatPulsoAtrio|Add0~26\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(12) & (!\mp|beatPulsoAtrio|Add0~26\ & VCC))
-- \mp|beatPulsoAtrio|Add0~28\ = CARRY((\mp|beatPulsoAtrio|intcont\(12) & !\mp|beatPulsoAtrio|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(12),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~26\,
	combout => \mp|beatPulsoAtrio|Add0~27_combout\,
	cout => \mp|beatPulsoAtrio|Add0~28\);

-- Location: LCCOMB_X11_Y19_N18
\mp|beatPulsoAtrio|intcont[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[12]~20_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~27_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(12),
	datad => \mp|beatPulsoAtrio|Add0~27_combout\,
	combout => \mp|beatPulsoAtrio|intcont[12]~20_combout\);

-- Location: FF_X11_Y19_N19
\mp|beatPulsoAtrio|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[12]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(12));

-- Location: LCCOMB_X10_Y19_N26
\mp|beatPulsoAtrio|Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~29_combout\ = (\mp|beatPulsoAtrio|intcont\(13) & (!\mp|beatPulsoAtrio|Add0~28\)) # (!\mp|beatPulsoAtrio|intcont\(13) & ((\mp|beatPulsoAtrio|Add0~28\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~30\ = CARRY((!\mp|beatPulsoAtrio|Add0~28\) # (!\mp|beatPulsoAtrio|intcont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(13),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~28\,
	combout => \mp|beatPulsoAtrio|Add0~29_combout\,
	cout => \mp|beatPulsoAtrio|Add0~30\);

-- Location: LCCOMB_X11_Y19_N4
\mp|beatPulsoAtrio|intcont[13]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[13]~19_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~29_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(13) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Add0~29_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(13),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[13]~19_combout\);

-- Location: FF_X11_Y19_N5
\mp|beatPulsoAtrio|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[13]~19_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(13));

-- Location: LCCOMB_X10_Y19_N28
\mp|beatPulsoAtrio|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~31_combout\ = (\mp|beatPulsoAtrio|intcont\(14) & (\mp|beatPulsoAtrio|Add0~30\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(14) & (!\mp|beatPulsoAtrio|Add0~30\ & VCC))
-- \mp|beatPulsoAtrio|Add0~32\ = CARRY((\mp|beatPulsoAtrio|intcont\(14) & !\mp|beatPulsoAtrio|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(14),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~30\,
	combout => \mp|beatPulsoAtrio|Add0~31_combout\,
	cout => \mp|beatPulsoAtrio|Add0~32\);

-- Location: LCCOMB_X11_Y19_N6
\mp|beatPulsoAtrio|intcont[14]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[14]~18_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~31_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(14),
	datad => \mp|beatPulsoAtrio|Add0~31_combout\,
	combout => \mp|beatPulsoAtrio|intcont[14]~18_combout\);

-- Location: FF_X11_Y19_N7
\mp|beatPulsoAtrio|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[14]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(14));

-- Location: LCCOMB_X10_Y19_N30
\mp|beatPulsoAtrio|Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~33_combout\ = (\mp|beatPulsoAtrio|intcont\(15) & (!\mp|beatPulsoAtrio|Add0~32\)) # (!\mp|beatPulsoAtrio|intcont\(15) & ((\mp|beatPulsoAtrio|Add0~32\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~34\ = CARRY((!\mp|beatPulsoAtrio|Add0~32\) # (!\mp|beatPulsoAtrio|intcont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(15),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~32\,
	combout => \mp|beatPulsoAtrio|Add0~33_combout\,
	cout => \mp|beatPulsoAtrio|Add0~34\);

-- Location: LCCOMB_X9_Y19_N2
\mp|beatPulsoAtrio|intcont[15]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[15]~17_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~33_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(15),
	datad => \mp|beatPulsoAtrio|Add0~33_combout\,
	combout => \mp|beatPulsoAtrio|intcont[15]~17_combout\);

-- Location: FF_X9_Y19_N3
\mp|beatPulsoAtrio|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[15]~17_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(15));

-- Location: LCCOMB_X10_Y18_N0
\mp|beatPulsoAtrio|Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~35_combout\ = (\mp|beatPulsoAtrio|intcont\(16) & (\mp|beatPulsoAtrio|Add0~34\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(16) & (!\mp|beatPulsoAtrio|Add0~34\ & VCC))
-- \mp|beatPulsoAtrio|Add0~36\ = CARRY((\mp|beatPulsoAtrio|intcont\(16) & !\mp|beatPulsoAtrio|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(16),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~34\,
	combout => \mp|beatPulsoAtrio|Add0~35_combout\,
	cout => \mp|beatPulsoAtrio|Add0~36\);

-- Location: LCCOMB_X9_Y19_N28
\mp|beatPulsoAtrio|intcont[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[16]~16_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~35_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(16),
	datad => \mp|beatPulsoAtrio|Add0~35_combout\,
	combout => \mp|beatPulsoAtrio|intcont[16]~16_combout\);

-- Location: FF_X9_Y19_N29
\mp|beatPulsoAtrio|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[16]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(16));

-- Location: LCCOMB_X10_Y18_N2
\mp|beatPulsoAtrio|Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~37_combout\ = (\mp|beatPulsoAtrio|intcont\(17) & (!\mp|beatPulsoAtrio|Add0~36\)) # (!\mp|beatPulsoAtrio|intcont\(17) & ((\mp|beatPulsoAtrio|Add0~36\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~38\ = CARRY((!\mp|beatPulsoAtrio|Add0~36\) # (!\mp|beatPulsoAtrio|intcont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(17),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~36\,
	combout => \mp|beatPulsoAtrio|Add0~37_combout\,
	cout => \mp|beatPulsoAtrio|Add0~38\);

-- Location: LCCOMB_X9_Y19_N30
\mp|beatPulsoAtrio|intcont[17]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[17]~15_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~37_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(17),
	datad => \mp|beatPulsoAtrio|Add0~37_combout\,
	combout => \mp|beatPulsoAtrio|intcont[17]~15_combout\);

-- Location: FF_X9_Y19_N31
\mp|beatPulsoAtrio|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[17]~15_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(17));

-- Location: LCCOMB_X10_Y18_N4
\mp|beatPulsoAtrio|Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~39_combout\ = (\mp|beatPulsoAtrio|intcont\(18) & (\mp|beatPulsoAtrio|Add0~38\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(18) & (!\mp|beatPulsoAtrio|Add0~38\ & VCC))
-- \mp|beatPulsoAtrio|Add0~40\ = CARRY((\mp|beatPulsoAtrio|intcont\(18) & !\mp|beatPulsoAtrio|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(18),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~38\,
	combout => \mp|beatPulsoAtrio|Add0~39_combout\,
	cout => \mp|beatPulsoAtrio|Add0~40\);

-- Location: LCCOMB_X9_Y19_N8
\mp|beatPulsoAtrio|intcont[18]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[18]~14_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~39_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(18) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Add0~39_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(18),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[18]~14_combout\);

-- Location: FF_X9_Y19_N9
\mp|beatPulsoAtrio|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[18]~14_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(18));

-- Location: LCCOMB_X10_Y18_N6
\mp|beatPulsoAtrio|Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~41_combout\ = (\mp|beatPulsoAtrio|intcont\(19) & (!\mp|beatPulsoAtrio|Add0~40\)) # (!\mp|beatPulsoAtrio|intcont\(19) & ((\mp|beatPulsoAtrio|Add0~40\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~42\ = CARRY((!\mp|beatPulsoAtrio|Add0~40\) # (!\mp|beatPulsoAtrio|intcont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(19),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~40\,
	combout => \mp|beatPulsoAtrio|Add0~41_combout\,
	cout => \mp|beatPulsoAtrio|Add0~42\);

-- Location: LCCOMB_X9_Y18_N12
\mp|beatPulsoAtrio|intcont[19]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[19]~13_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~41_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(19),
	datad => \mp|beatPulsoAtrio|Add0~41_combout\,
	combout => \mp|beatPulsoAtrio|intcont[19]~13_combout\);

-- Location: FF_X9_Y18_N13
\mp|beatPulsoAtrio|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[19]~13_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(19));

-- Location: LCCOMB_X10_Y18_N8
\mp|beatPulsoAtrio|Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~43_combout\ = (\mp|beatPulsoAtrio|intcont\(20) & (\mp|beatPulsoAtrio|Add0~42\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(20) & (!\mp|beatPulsoAtrio|Add0~42\ & VCC))
-- \mp|beatPulsoAtrio|Add0~44\ = CARRY((\mp|beatPulsoAtrio|intcont\(20) & !\mp|beatPulsoAtrio|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(20),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~42\,
	combout => \mp|beatPulsoAtrio|Add0~43_combout\,
	cout => \mp|beatPulsoAtrio|Add0~44\);

-- Location: LCCOMB_X9_Y18_N18
\mp|beatPulsoAtrio|intcont[20]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[20]~12_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~43_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(20) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Add0~43_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(20),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[20]~12_combout\);

-- Location: FF_X9_Y18_N19
\mp|beatPulsoAtrio|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[20]~12_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(20));

-- Location: LCCOMB_X10_Y18_N10
\mp|beatPulsoAtrio|Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~45_combout\ = (\mp|beatPulsoAtrio|intcont\(21) & (!\mp|beatPulsoAtrio|Add0~44\)) # (!\mp|beatPulsoAtrio|intcont\(21) & ((\mp|beatPulsoAtrio|Add0~44\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~46\ = CARRY((!\mp|beatPulsoAtrio|Add0~44\) # (!\mp|beatPulsoAtrio|intcont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(21),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~44\,
	combout => \mp|beatPulsoAtrio|Add0~45_combout\,
	cout => \mp|beatPulsoAtrio|Add0~46\);

-- Location: LCCOMB_X9_Y18_N28
\mp|beatPulsoAtrio|intcont[21]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[21]~11_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~45_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(21) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Add0~45_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(21),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[21]~11_combout\);

-- Location: FF_X9_Y18_N29
\mp|beatPulsoAtrio|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[21]~11_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(21));

-- Location: LCCOMB_X10_Y18_N12
\mp|beatPulsoAtrio|Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~47_combout\ = (\mp|beatPulsoAtrio|intcont\(22) & (\mp|beatPulsoAtrio|Add0~46\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(22) & (!\mp|beatPulsoAtrio|Add0~46\ & VCC))
-- \mp|beatPulsoAtrio|Add0~48\ = CARRY((\mp|beatPulsoAtrio|intcont\(22) & !\mp|beatPulsoAtrio|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(22),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~46\,
	combout => \mp|beatPulsoAtrio|Add0~47_combout\,
	cout => \mp|beatPulsoAtrio|Add0~48\);

-- Location: LCCOMB_X9_Y18_N22
\mp|beatPulsoAtrio|intcont[22]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[22]~10_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~47_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(22) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Add0~47_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(22),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[22]~10_combout\);

-- Location: FF_X9_Y18_N23
\mp|beatPulsoAtrio|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[22]~10_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(22));

-- Location: LCCOMB_X10_Y18_N14
\mp|beatPulsoAtrio|Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~49_combout\ = (\mp|beatPulsoAtrio|intcont\(23) & (!\mp|beatPulsoAtrio|Add0~48\)) # (!\mp|beatPulsoAtrio|intcont\(23) & ((\mp|beatPulsoAtrio|Add0~48\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~50\ = CARRY((!\mp|beatPulsoAtrio|Add0~48\) # (!\mp|beatPulsoAtrio|intcont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(23),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~48\,
	combout => \mp|beatPulsoAtrio|Add0~49_combout\,
	cout => \mp|beatPulsoAtrio|Add0~50\);

-- Location: LCCOMB_X9_Y18_N26
\mp|beatPulsoAtrio|intcont[23]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[23]~9_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~49_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(23) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Add0~49_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(23),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[23]~9_combout\);

-- Location: FF_X9_Y18_N27
\mp|beatPulsoAtrio|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[23]~9_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(23));

-- Location: LCCOMB_X10_Y18_N16
\mp|beatPulsoAtrio|Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~51_combout\ = (\mp|beatPulsoAtrio|intcont\(24) & (\mp|beatPulsoAtrio|Add0~50\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(24) & (!\mp|beatPulsoAtrio|Add0~50\ & VCC))
-- \mp|beatPulsoAtrio|Add0~52\ = CARRY((\mp|beatPulsoAtrio|intcont\(24) & !\mp|beatPulsoAtrio|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(24),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~50\,
	combout => \mp|beatPulsoAtrio|Add0~51_combout\,
	cout => \mp|beatPulsoAtrio|Add0~52\);

-- Location: LCCOMB_X9_Y18_N8
\mp|beatPulsoAtrio|intcont[24]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[24]~8_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~51_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(24),
	datad => \mp|beatPulsoAtrio|Add0~51_combout\,
	combout => \mp|beatPulsoAtrio|intcont[24]~8_combout\);

-- Location: FF_X9_Y18_N9
\mp|beatPulsoAtrio|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[24]~8_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(24));

-- Location: LCCOMB_X10_Y18_N18
\mp|beatPulsoAtrio|Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~53_combout\ = (\mp|beatPulsoAtrio|intcont\(25) & (!\mp|beatPulsoAtrio|Add0~52\)) # (!\mp|beatPulsoAtrio|intcont\(25) & ((\mp|beatPulsoAtrio|Add0~52\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~54\ = CARRY((!\mp|beatPulsoAtrio|Add0~52\) # (!\mp|beatPulsoAtrio|intcont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(25),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~52\,
	combout => \mp|beatPulsoAtrio|Add0~53_combout\,
	cout => \mp|beatPulsoAtrio|Add0~54\);

-- Location: LCCOMB_X9_Y18_N14
\mp|beatPulsoAtrio|intcont[25]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[25]~7_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~53_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(25),
	datad => \mp|beatPulsoAtrio|Add0~53_combout\,
	combout => \mp|beatPulsoAtrio|intcont[25]~7_combout\);

-- Location: FF_X9_Y18_N15
\mp|beatPulsoAtrio|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[25]~7_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(25));

-- Location: LCCOMB_X10_Y18_N20
\mp|beatPulsoAtrio|Add0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~55_combout\ = (\mp|beatPulsoAtrio|intcont\(26) & (\mp|beatPulsoAtrio|Add0~54\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(26) & (!\mp|beatPulsoAtrio|Add0~54\ & VCC))
-- \mp|beatPulsoAtrio|Add0~56\ = CARRY((\mp|beatPulsoAtrio|intcont\(26) & !\mp|beatPulsoAtrio|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(26),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~54\,
	combout => \mp|beatPulsoAtrio|Add0~55_combout\,
	cout => \mp|beatPulsoAtrio|Add0~56\);

-- Location: LCCOMB_X9_Y18_N24
\mp|beatPulsoAtrio|intcont[26]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[26]~6_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Add0~55_combout\)) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|intcont\(26) & \mp|beatPulsoAtrio|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Add0~55_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(26),
	datad => \mp|beatPulsoAtrio|Equal0~1_combout\,
	combout => \mp|beatPulsoAtrio|intcont[26]~6_combout\);

-- Location: FF_X9_Y18_N25
\mp|beatPulsoAtrio|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[26]~6_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(26));

-- Location: LCCOMB_X10_Y18_N22
\mp|beatPulsoAtrio|Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~57_combout\ = (\mp|beatPulsoAtrio|intcont\(27) & (!\mp|beatPulsoAtrio|Add0~56\)) # (!\mp|beatPulsoAtrio|intcont\(27) & ((\mp|beatPulsoAtrio|Add0~56\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~58\ = CARRY((!\mp|beatPulsoAtrio|Add0~56\) # (!\mp|beatPulsoAtrio|intcont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(27),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~56\,
	combout => \mp|beatPulsoAtrio|Add0~57_combout\,
	cout => \mp|beatPulsoAtrio|Add0~58\);

-- Location: LCCOMB_X9_Y18_N16
\mp|beatPulsoAtrio|intcont[27]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[27]~5_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~57_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(27),
	datad => \mp|beatPulsoAtrio|Add0~57_combout\,
	combout => \mp|beatPulsoAtrio|intcont[27]~5_combout\);

-- Location: FF_X9_Y18_N17
\mp|beatPulsoAtrio|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[27]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(27));

-- Location: LCCOMB_X10_Y18_N24
\mp|beatPulsoAtrio|Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~59_combout\ = (\mp|beatPulsoAtrio|intcont\(28) & (\mp|beatPulsoAtrio|Add0~58\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(28) & (!\mp|beatPulsoAtrio|Add0~58\ & VCC))
-- \mp|beatPulsoAtrio|Add0~60\ = CARRY((\mp|beatPulsoAtrio|intcont\(28) & !\mp|beatPulsoAtrio|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(28),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~58\,
	combout => \mp|beatPulsoAtrio|Add0~59_combout\,
	cout => \mp|beatPulsoAtrio|Add0~60\);

-- Location: LCCOMB_X9_Y18_N6
\mp|beatPulsoAtrio|intcont[28]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[28]~4_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~59_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(28),
	datad => \mp|beatPulsoAtrio|Add0~59_combout\,
	combout => \mp|beatPulsoAtrio|intcont[28]~4_combout\);

-- Location: FF_X9_Y18_N7
\mp|beatPulsoAtrio|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[28]~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(28));

-- Location: LCCOMB_X10_Y18_N26
\mp|beatPulsoAtrio|Add0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~61_combout\ = (\mp|beatPulsoAtrio|intcont\(29) & (!\mp|beatPulsoAtrio|Add0~60\)) # (!\mp|beatPulsoAtrio|intcont\(29) & ((\mp|beatPulsoAtrio|Add0~60\) # (GND)))
-- \mp|beatPulsoAtrio|Add0~62\ = CARRY((!\mp|beatPulsoAtrio|Add0~60\) # (!\mp|beatPulsoAtrio|intcont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(29),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~60\,
	combout => \mp|beatPulsoAtrio|Add0~61_combout\,
	cout => \mp|beatPulsoAtrio|Add0~62\);

-- Location: LCCOMB_X9_Y18_N4
\mp|beatPulsoAtrio|intcont[29]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[29]~3_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~61_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(29),
	datad => \mp|beatPulsoAtrio|Add0~61_combout\,
	combout => \mp|beatPulsoAtrio|intcont[29]~3_combout\);

-- Location: FF_X9_Y18_N5
\mp|beatPulsoAtrio|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[29]~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(29));

-- Location: LCCOMB_X10_Y18_N28
\mp|beatPulsoAtrio|Add0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~63_combout\ = (\mp|beatPulsoAtrio|intcont\(30) & (\mp|beatPulsoAtrio|Add0~62\ $ (GND))) # (!\mp|beatPulsoAtrio|intcont\(30) & (!\mp|beatPulsoAtrio|Add0~62\ & VCC))
-- \mp|beatPulsoAtrio|Add0~64\ = CARRY((\mp|beatPulsoAtrio|intcont\(30) & !\mp|beatPulsoAtrio|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(30),
	datad => VCC,
	cin => \mp|beatPulsoAtrio|Add0~62\,
	combout => \mp|beatPulsoAtrio|Add0~63_combout\,
	cout => \mp|beatPulsoAtrio|Add0~64\);

-- Location: LCCOMB_X9_Y18_N2
\mp|beatPulsoAtrio|intcont[30]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[30]~2_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~63_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datab => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(30),
	datad => \mp|beatPulsoAtrio|Add0~63_combout\,
	combout => \mp|beatPulsoAtrio|intcont[30]~2_combout\);

-- Location: FF_X9_Y18_N3
\mp|beatPulsoAtrio|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[30]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(30));

-- Location: LCCOMB_X10_Y18_N30
\mp|beatPulsoAtrio|Add0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~65_combout\ = \mp|beatPulsoAtrio|intcont\(31) $ (\mp|beatPulsoAtrio|Add0~64\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(31),
	cin => \mp|beatPulsoAtrio|Add0~64\,
	combout => \mp|beatPulsoAtrio|Add0~65_combout\);

-- Location: LCCOMB_X9_Y18_N0
\mp|beatPulsoAtrio|Add0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~70_combout\ = (\mp|beatPulsoAtrio|Add0~65_combout\ & ((\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~9_combout\ & \mp|beatPulsoAtrio|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Add0~65_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(31),
	datad => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	combout => \mp|beatPulsoAtrio|Add0~70_combout\);

-- Location: FF_X9_Y18_N1
\mp|beatPulsoAtrio|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|Add0~70_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(31));

-- Location: LCCOMB_X9_Y19_N26
\mp|beatPulsoAtrio|LessThan0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~10_combout\ = (\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~9_combout\ & \mp|beatPulsoAtrio|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datad => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	combout => \mp|beatPulsoAtrio|LessThan0~10_combout\);

-- Location: LCCOMB_X11_Y19_N30
\mp|beatPulsoAtrio|intcont[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|intcont[6]~26_combout\ = (\mp|beatPulsoAtrio|LessThan0~10_combout\ & (((\mp|beatPulsoAtrio|Add0~15_combout\)))) # (!\mp|beatPulsoAtrio|LessThan0~10_combout\ & (\mp|beatPulsoAtrio|Equal0~1_combout\ & (\mp|beatPulsoAtrio|intcont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~10_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(6),
	datad => \mp|beatPulsoAtrio|Add0~15_combout\,
	combout => \mp|beatPulsoAtrio|intcont[6]~26_combout\);

-- Location: FF_X11_Y19_N31
\mp|beatPulsoAtrio|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|intcont[6]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(6));

-- Location: LCCOMB_X11_Y19_N26
\mp|beatPulsoAtrio|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~7_combout\ = (!\mp|beatPulsoAtrio|intcont\(6) & !\mp|beatPulsoAtrio|intcont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mp|beatPulsoAtrio|intcont\(6),
	datad => \mp|beatPulsoAtrio|intcont\(5),
	combout => \mp|beatPulsoAtrio|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y19_N12
\mp|beatPulsoAtrio|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~6_combout\ = (!\mp|beatPulsoAtrio|intcont\(9) & (!\mp|beatPulsoAtrio|intcont\(8) & (!\mp|beatPulsoAtrio|intcont\(7) & !\mp|beatPulsoAtrio|intcont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(9),
	datab => \mp|beatPulsoAtrio|intcont\(8),
	datac => \mp|beatPulsoAtrio|intcont\(7),
	datad => \mp|beatPulsoAtrio|intcont\(10),
	combout => \mp|beatPulsoAtrio|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y19_N2
\mp|beatPulsoAtrio|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~5_combout\ = (!\mp|beatPulsoAtrio|intcont\(14) & (!\mp|beatPulsoAtrio|intcont\(11) & (!\mp|beatPulsoAtrio|intcont\(13) & !\mp|beatPulsoAtrio|intcont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(14),
	datab => \mp|beatPulsoAtrio|intcont\(11),
	datac => \mp|beatPulsoAtrio|intcont\(13),
	datad => \mp|beatPulsoAtrio|intcont\(12),
	combout => \mp|beatPulsoAtrio|LessThan0~5_combout\);

-- Location: LCCOMB_X9_Y18_N30
\mp|beatPulsoAtrio|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~0_combout\ = (!\mp|beatPulsoAtrio|intcont\(28) & (!\mp|beatPulsoAtrio|intcont\(27) & (!\mp|beatPulsoAtrio|intcont\(29) & !\mp|beatPulsoAtrio|intcont\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(28),
	datab => \mp|beatPulsoAtrio|intcont\(27),
	datac => \mp|beatPulsoAtrio|intcont\(29),
	datad => \mp|beatPulsoAtrio|intcont\(30),
	combout => \mp|beatPulsoAtrio|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y19_N24
\mp|beatPulsoAtrio|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~3_combout\ = (!\mp|beatPulsoAtrio|intcont\(17) & (!\mp|beatPulsoAtrio|intcont\(16) & (!\mp|beatPulsoAtrio|intcont\(18) & !\mp|beatPulsoAtrio|intcont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(17),
	datab => \mp|beatPulsoAtrio|intcont\(16),
	datac => \mp|beatPulsoAtrio|intcont\(18),
	datad => \mp|beatPulsoAtrio|intcont\(15),
	combout => \mp|beatPulsoAtrio|LessThan0~3_combout\);

-- Location: LCCOMB_X9_Y18_N10
\mp|beatPulsoAtrio|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~2_combout\ = (!\mp|beatPulsoAtrio|intcont\(19) & (!\mp|beatPulsoAtrio|intcont\(21) & (!\mp|beatPulsoAtrio|intcont\(22) & !\mp|beatPulsoAtrio|intcont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(19),
	datab => \mp|beatPulsoAtrio|intcont\(21),
	datac => \mp|beatPulsoAtrio|intcont\(22),
	datad => \mp|beatPulsoAtrio|intcont\(20),
	combout => \mp|beatPulsoAtrio|LessThan0~2_combout\);

-- Location: LCCOMB_X9_Y18_N20
\mp|beatPulsoAtrio|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~1_combout\ = (!\mp|beatPulsoAtrio|intcont\(23) & (!\mp|beatPulsoAtrio|intcont\(25) & (!\mp|beatPulsoAtrio|intcont\(24) & !\mp|beatPulsoAtrio|intcont\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(23),
	datab => \mp|beatPulsoAtrio|intcont\(25),
	datac => \mp|beatPulsoAtrio|intcont\(24),
	datad => \mp|beatPulsoAtrio|intcont\(26),
	combout => \mp|beatPulsoAtrio|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y19_N10
\mp|beatPulsoAtrio|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~4_combout\ = (\mp|beatPulsoAtrio|LessThan0~0_combout\ & (\mp|beatPulsoAtrio|LessThan0~3_combout\ & (\mp|beatPulsoAtrio|LessThan0~2_combout\ & \mp|beatPulsoAtrio|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~0_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~3_combout\,
	datac => \mp|beatPulsoAtrio|LessThan0~2_combout\,
	datad => \mp|beatPulsoAtrio|LessThan0~1_combout\,
	combout => \mp|beatPulsoAtrio|LessThan0~4_combout\);

-- Location: LCCOMB_X9_Y19_N12
\mp|beatPulsoAtrio|LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|LessThan0~8_combout\ = (\mp|beatPulsoAtrio|LessThan0~7_combout\ & (\mp|beatPulsoAtrio|LessThan0~6_combout\ & (\mp|beatPulsoAtrio|LessThan0~5_combout\ & \mp|beatPulsoAtrio|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~7_combout\,
	datab => \mp|beatPulsoAtrio|LessThan0~6_combout\,
	datac => \mp|beatPulsoAtrio|LessThan0~5_combout\,
	datad => \mp|beatPulsoAtrio|LessThan0~4_combout\,
	combout => \mp|beatPulsoAtrio|LessThan0~8_combout\);

-- Location: LCCOMB_X9_Y19_N6
\mp|beatPulsoAtrio|Add0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Add0~68_combout\ = (\mp|beatPulsoAtrio|Add0~5_combout\ & ((\mp|beatPulsoAtrio|intcont\(31)) # ((\mp|beatPulsoAtrio|LessThan0~8_combout\ & \mp|beatPulsoAtrio|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	datab => \mp|beatPulsoAtrio|intcont\(31),
	datac => \mp|beatPulsoAtrio|LessThan0~9_combout\,
	datad => \mp|beatPulsoAtrio|Add0~5_combout\,
	combout => \mp|beatPulsoAtrio|Add0~68_combout\);

-- Location: FF_X9_Y19_N7
\mp|beatPulsoAtrio|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoAtrio|Add0~68_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoAtrio|intcont[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoAtrio|intcont\(1));

-- Location: LCCOMB_X9_Y19_N0
\mp|beatPulsoAtrio|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Equal0~0_combout\ = ((\mp|beatPulsoAtrio|intcont\(0)) # ((\mp|beatPulsoAtrio|intcont\(3)) # (\mp|beatPulsoAtrio|intcont\(31)))) # (!\mp|beatPulsoAtrio|intcont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(4),
	datab => \mp|beatPulsoAtrio|intcont\(0),
	datac => \mp|beatPulsoAtrio|intcont\(3),
	datad => \mp|beatPulsoAtrio|intcont\(31),
	combout => \mp|beatPulsoAtrio|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y19_N20
\mp|beatPulsoAtrio|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoAtrio|Equal0~1_combout\ = (\mp|beatPulsoAtrio|intcont\(1)) # ((\mp|beatPulsoAtrio|Equal0~0_combout\) # ((!\mp|beatPulsoAtrio|LessThan0~8_combout\) # (!\mp|beatPulsoAtrio|intcont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoAtrio|intcont\(1),
	datab => \mp|beatPulsoAtrio|Equal0~0_combout\,
	datac => \mp|beatPulsoAtrio|intcont\(2),
	datad => \mp|beatPulsoAtrio|LessThan0~8_combout\,
	combout => \mp|beatPulsoAtrio|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y29_N26
\mp|PAT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|PAT~combout\ = (\mp|beatPulsoAtrio|Equal0~1_combout\) # ((!\cor|beatAtrio|Equal0~1_combout\ & \sinais[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cor|beatAtrio|Equal0~1_combout\,
	datac => \mp|beatPulsoAtrio|Equal0~1_combout\,
	datad => \sinais[0]~input_o\,
	combout => \mp|PAT~combout\);

-- Location: LCCOMB_X10_Y22_N4
\mp|delayPulsoVentr|intcont[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[2]~33_combout\ = (\mp|delayPulsoVentr|intcont\(2) & (!\mp|delayPulsoVentr|intcont[1]~32\)) # (!\mp|delayPulsoVentr|intcont\(2) & ((\mp|delayPulsoVentr|intcont[1]~32\) # (GND)))
-- \mp|delayPulsoVentr|intcont[2]~34\ = CARRY((!\mp|delayPulsoVentr|intcont[1]~32\) # (!\mp|delayPulsoVentr|intcont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(2),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[1]~32\,
	combout => \mp|delayPulsoVentr|intcont[2]~33_combout\,
	cout => \mp|delayPulsoVentr|intcont[2]~34\);

-- Location: LCCOMB_X10_Y22_N6
\mp|delayPulsoVentr|intcont[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[3]~35_combout\ = (\mp|delayPulsoVentr|intcont\(3) & (\mp|delayPulsoVentr|intcont[2]~34\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(3) & (!\mp|delayPulsoVentr|intcont[2]~34\ & VCC))
-- \mp|delayPulsoVentr|intcont[3]~36\ = CARRY((\mp|delayPulsoVentr|intcont\(3) & !\mp|delayPulsoVentr|intcont[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(3),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[2]~34\,
	combout => \mp|delayPulsoVentr|intcont[3]~35_combout\,
	cout => \mp|delayPulsoVentr|intcont[3]~36\);

-- Location: LCCOMB_X10_Y21_N26
\mp|delayPulsoVentr|intcont[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[29]~87_combout\ = (\mp|delayPulsoVentr|intcont\(29) & (\mp|delayPulsoVentr|intcont[28]~86\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(29) & (!\mp|delayPulsoVentr|intcont[28]~86\ & VCC))
-- \mp|delayPulsoVentr|intcont[29]~88\ = CARRY((\mp|delayPulsoVentr|intcont\(29) & !\mp|delayPulsoVentr|intcont[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(29),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[28]~86\,
	combout => \mp|delayPulsoVentr|intcont[29]~87_combout\,
	cout => \mp|delayPulsoVentr|intcont[29]~88\);

-- Location: LCCOMB_X10_Y21_N28
\mp|delayPulsoVentr|intcont[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[30]~89_combout\ = (\mp|delayPulsoVentr|intcont\(30) & (!\mp|delayPulsoVentr|intcont[29]~88\)) # (!\mp|delayPulsoVentr|intcont\(30) & ((\mp|delayPulsoVentr|intcont[29]~88\) # (GND)))
-- \mp|delayPulsoVentr|intcont[30]~90\ = CARRY((!\mp|delayPulsoVentr|intcont[29]~88\) # (!\mp|delayPulsoVentr|intcont\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(30),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[29]~88\,
	combout => \mp|delayPulsoVentr|intcont[30]~89_combout\,
	cout => \mp|delayPulsoVentr|intcont[30]~90\);

-- Location: FF_X10_Y21_N29
\mp|delayPulsoVentr|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[30]~89_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(30));

-- Location: LCCOMB_X10_Y21_N30
\mp|delayPulsoVentr|intcont[31]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[31]~92_combout\ = \mp|delayPulsoVentr|intcont\(31) $ (!\mp|delayPulsoVentr|intcont[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(31),
	cin => \mp|delayPulsoVentr|intcont[30]~90\,
	combout => \mp|delayPulsoVentr|intcont[31]~92_combout\);

-- Location: FF_X10_Y21_N31
\mp|delayPulsoVentr|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[31]~92_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(31));

-- Location: LCCOMB_X10_Y22_N2
\mp|delayPulsoVentr|intcont[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[1]~31_combout\ = (\mp|delayPulsoVentr|intcont\(0) & (\mp|delayPulsoVentr|intcont\(1) $ (VCC))) # (!\mp|delayPulsoVentr|intcont\(0) & (\mp|delayPulsoVentr|intcont\(1) & VCC))
-- \mp|delayPulsoVentr|intcont[1]~32\ = CARRY((\mp|delayPulsoVentr|intcont\(0) & \mp|delayPulsoVentr|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(0),
	datab => \mp|delayPulsoVentr|intcont\(1),
	datad => VCC,
	combout => \mp|delayPulsoVentr|intcont[1]~31_combout\,
	cout => \mp|delayPulsoVentr|intcont[1]~32\);

-- Location: FF_X10_Y22_N3
\mp|delayPulsoVentr|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[1]~31_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(1));

-- Location: LCCOMB_X11_Y21_N12
\mp|delayPulsoVentr|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|LessThan0~0_combout\ = ((!\mp|delayPulsoVentr|intcont\(1) & !\mp|delayPulsoVentr|intcont\(0))) # (!\mp|delayPulsoVentr|intcont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(2),
	datac => \mp|delayPulsoVentr|intcont\(1),
	datad => \mp|delayPulsoVentr|intcont\(0),
	combout => \mp|delayPulsoVentr|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y21_N22
\mp|delayPulsoVentr|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|LessThan0~1_combout\ = (\mp|delayPulsoVentr|intcont\(31)) # ((\mp|delayPulsoVentr|LessThan0~0_combout\ & \mp|delayPulsoVentr|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(31),
	datac => \mp|delayPulsoVentr|LessThan0~0_combout\,
	datad => \mp|delayPulsoVentr|Equal0~8_combout\,
	combout => \mp|delayPulsoVentr|LessThan0~1_combout\);

-- Location: FF_X10_Y22_N7
\mp|delayPulsoVentr|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[3]~35_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(3));

-- Location: LCCOMB_X10_Y22_N8
\mp|delayPulsoVentr|intcont[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[4]~37_combout\ = (\mp|delayPulsoVentr|intcont\(4) & (!\mp|delayPulsoVentr|intcont[3]~36\)) # (!\mp|delayPulsoVentr|intcont\(4) & ((\mp|delayPulsoVentr|intcont[3]~36\) # (GND)))
-- \mp|delayPulsoVentr|intcont[4]~38\ = CARRY((!\mp|delayPulsoVentr|intcont[3]~36\) # (!\mp|delayPulsoVentr|intcont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(4),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[3]~36\,
	combout => \mp|delayPulsoVentr|intcont[4]~37_combout\,
	cout => \mp|delayPulsoVentr|intcont[4]~38\);

-- Location: FF_X10_Y22_N9
\mp|delayPulsoVentr|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[4]~37_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(4));

-- Location: LCCOMB_X10_Y22_N10
\mp|delayPulsoVentr|intcont[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[5]~39_combout\ = (\mp|delayPulsoVentr|intcont\(5) & (\mp|delayPulsoVentr|intcont[4]~38\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(5) & (!\mp|delayPulsoVentr|intcont[4]~38\ & VCC))
-- \mp|delayPulsoVentr|intcont[5]~40\ = CARRY((\mp|delayPulsoVentr|intcont\(5) & !\mp|delayPulsoVentr|intcont[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(5),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[4]~38\,
	combout => \mp|delayPulsoVentr|intcont[5]~39_combout\,
	cout => \mp|delayPulsoVentr|intcont[5]~40\);

-- Location: FF_X10_Y22_N11
\mp|delayPulsoVentr|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[5]~39_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(5));

-- Location: LCCOMB_X10_Y22_N12
\mp|delayPulsoVentr|intcont[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[6]~41_combout\ = (\mp|delayPulsoVentr|intcont\(6) & (!\mp|delayPulsoVentr|intcont[5]~40\)) # (!\mp|delayPulsoVentr|intcont\(6) & ((\mp|delayPulsoVentr|intcont[5]~40\) # (GND)))
-- \mp|delayPulsoVentr|intcont[6]~42\ = CARRY((!\mp|delayPulsoVentr|intcont[5]~40\) # (!\mp|delayPulsoVentr|intcont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(6),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[5]~40\,
	combout => \mp|delayPulsoVentr|intcont[6]~41_combout\,
	cout => \mp|delayPulsoVentr|intcont[6]~42\);

-- Location: FF_X10_Y22_N13
\mp|delayPulsoVentr|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[6]~41_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(6));

-- Location: LCCOMB_X10_Y22_N14
\mp|delayPulsoVentr|intcont[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[7]~43_combout\ = (\mp|delayPulsoVentr|intcont\(7) & (\mp|delayPulsoVentr|intcont[6]~42\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(7) & (!\mp|delayPulsoVentr|intcont[6]~42\ & VCC))
-- \mp|delayPulsoVentr|intcont[7]~44\ = CARRY((\mp|delayPulsoVentr|intcont\(7) & !\mp|delayPulsoVentr|intcont[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(7),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[6]~42\,
	combout => \mp|delayPulsoVentr|intcont[7]~43_combout\,
	cout => \mp|delayPulsoVentr|intcont[7]~44\);

-- Location: FF_X10_Y22_N15
\mp|delayPulsoVentr|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[7]~43_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(7));

-- Location: LCCOMB_X10_Y22_N16
\mp|delayPulsoVentr|intcont[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[8]~45_combout\ = (\mp|delayPulsoVentr|intcont\(8) & (!\mp|delayPulsoVentr|intcont[7]~44\)) # (!\mp|delayPulsoVentr|intcont\(8) & ((\mp|delayPulsoVentr|intcont[7]~44\) # (GND)))
-- \mp|delayPulsoVentr|intcont[8]~46\ = CARRY((!\mp|delayPulsoVentr|intcont[7]~44\) # (!\mp|delayPulsoVentr|intcont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(8),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[7]~44\,
	combout => \mp|delayPulsoVentr|intcont[8]~45_combout\,
	cout => \mp|delayPulsoVentr|intcont[8]~46\);

-- Location: FF_X10_Y22_N17
\mp|delayPulsoVentr|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[8]~45_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(8));

-- Location: LCCOMB_X10_Y22_N18
\mp|delayPulsoVentr|intcont[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[9]~47_combout\ = (\mp|delayPulsoVentr|intcont\(9) & (\mp|delayPulsoVentr|intcont[8]~46\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(9) & (!\mp|delayPulsoVentr|intcont[8]~46\ & VCC))
-- \mp|delayPulsoVentr|intcont[9]~48\ = CARRY((\mp|delayPulsoVentr|intcont\(9) & !\mp|delayPulsoVentr|intcont[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(9),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[8]~46\,
	combout => \mp|delayPulsoVentr|intcont[9]~47_combout\,
	cout => \mp|delayPulsoVentr|intcont[9]~48\);

-- Location: FF_X10_Y22_N19
\mp|delayPulsoVentr|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[9]~47_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(9));

-- Location: LCCOMB_X10_Y22_N20
\mp|delayPulsoVentr|intcont[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[10]~49_combout\ = (\mp|delayPulsoVentr|intcont\(10) & (!\mp|delayPulsoVentr|intcont[9]~48\)) # (!\mp|delayPulsoVentr|intcont\(10) & ((\mp|delayPulsoVentr|intcont[9]~48\) # (GND)))
-- \mp|delayPulsoVentr|intcont[10]~50\ = CARRY((!\mp|delayPulsoVentr|intcont[9]~48\) # (!\mp|delayPulsoVentr|intcont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(10),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[9]~48\,
	combout => \mp|delayPulsoVentr|intcont[10]~49_combout\,
	cout => \mp|delayPulsoVentr|intcont[10]~50\);

-- Location: FF_X10_Y22_N21
\mp|delayPulsoVentr|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[10]~49_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(10));

-- Location: LCCOMB_X10_Y22_N22
\mp|delayPulsoVentr|intcont[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[11]~51_combout\ = (\mp|delayPulsoVentr|intcont\(11) & (\mp|delayPulsoVentr|intcont[10]~50\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(11) & (!\mp|delayPulsoVentr|intcont[10]~50\ & VCC))
-- \mp|delayPulsoVentr|intcont[11]~52\ = CARRY((\mp|delayPulsoVentr|intcont\(11) & !\mp|delayPulsoVentr|intcont[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(11),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[10]~50\,
	combout => \mp|delayPulsoVentr|intcont[11]~51_combout\,
	cout => \mp|delayPulsoVentr|intcont[11]~52\);

-- Location: FF_X10_Y22_N23
\mp|delayPulsoVentr|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[11]~51_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(11));

-- Location: LCCOMB_X10_Y22_N24
\mp|delayPulsoVentr|intcont[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[12]~53_combout\ = (\mp|delayPulsoVentr|intcont\(12) & (!\mp|delayPulsoVentr|intcont[11]~52\)) # (!\mp|delayPulsoVentr|intcont\(12) & ((\mp|delayPulsoVentr|intcont[11]~52\) # (GND)))
-- \mp|delayPulsoVentr|intcont[12]~54\ = CARRY((!\mp|delayPulsoVentr|intcont[11]~52\) # (!\mp|delayPulsoVentr|intcont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(12),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[11]~52\,
	combout => \mp|delayPulsoVentr|intcont[12]~53_combout\,
	cout => \mp|delayPulsoVentr|intcont[12]~54\);

-- Location: FF_X10_Y22_N25
\mp|delayPulsoVentr|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[12]~53_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(12));

-- Location: LCCOMB_X10_Y22_N26
\mp|delayPulsoVentr|intcont[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[13]~55_combout\ = (\mp|delayPulsoVentr|intcont\(13) & (\mp|delayPulsoVentr|intcont[12]~54\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(13) & (!\mp|delayPulsoVentr|intcont[12]~54\ & VCC))
-- \mp|delayPulsoVentr|intcont[13]~56\ = CARRY((\mp|delayPulsoVentr|intcont\(13) & !\mp|delayPulsoVentr|intcont[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(13),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[12]~54\,
	combout => \mp|delayPulsoVentr|intcont[13]~55_combout\,
	cout => \mp|delayPulsoVentr|intcont[13]~56\);

-- Location: FF_X10_Y22_N27
\mp|delayPulsoVentr|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[13]~55_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(13));

-- Location: LCCOMB_X10_Y22_N28
\mp|delayPulsoVentr|intcont[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[14]~57_combout\ = (\mp|delayPulsoVentr|intcont\(14) & (!\mp|delayPulsoVentr|intcont[13]~56\)) # (!\mp|delayPulsoVentr|intcont\(14) & ((\mp|delayPulsoVentr|intcont[13]~56\) # (GND)))
-- \mp|delayPulsoVentr|intcont[14]~58\ = CARRY((!\mp|delayPulsoVentr|intcont[13]~56\) # (!\mp|delayPulsoVentr|intcont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(14),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[13]~56\,
	combout => \mp|delayPulsoVentr|intcont[14]~57_combout\,
	cout => \mp|delayPulsoVentr|intcont[14]~58\);

-- Location: FF_X10_Y22_N29
\mp|delayPulsoVentr|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[14]~57_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(14));

-- Location: LCCOMB_X10_Y22_N30
\mp|delayPulsoVentr|intcont[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[15]~59_combout\ = (\mp|delayPulsoVentr|intcont\(15) & (\mp|delayPulsoVentr|intcont[14]~58\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(15) & (!\mp|delayPulsoVentr|intcont[14]~58\ & VCC))
-- \mp|delayPulsoVentr|intcont[15]~60\ = CARRY((\mp|delayPulsoVentr|intcont\(15) & !\mp|delayPulsoVentr|intcont[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(15),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[14]~58\,
	combout => \mp|delayPulsoVentr|intcont[15]~59_combout\,
	cout => \mp|delayPulsoVentr|intcont[15]~60\);

-- Location: FF_X10_Y22_N31
\mp|delayPulsoVentr|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[15]~59_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(15));

-- Location: LCCOMB_X10_Y21_N0
\mp|delayPulsoVentr|intcont[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[16]~61_combout\ = (\mp|delayPulsoVentr|intcont\(16) & (!\mp|delayPulsoVentr|intcont[15]~60\)) # (!\mp|delayPulsoVentr|intcont\(16) & ((\mp|delayPulsoVentr|intcont[15]~60\) # (GND)))
-- \mp|delayPulsoVentr|intcont[16]~62\ = CARRY((!\mp|delayPulsoVentr|intcont[15]~60\) # (!\mp|delayPulsoVentr|intcont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(16),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[15]~60\,
	combout => \mp|delayPulsoVentr|intcont[16]~61_combout\,
	cout => \mp|delayPulsoVentr|intcont[16]~62\);

-- Location: FF_X10_Y21_N1
\mp|delayPulsoVentr|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[16]~61_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(16));

-- Location: LCCOMB_X10_Y21_N2
\mp|delayPulsoVentr|intcont[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[17]~63_combout\ = (\mp|delayPulsoVentr|intcont\(17) & (\mp|delayPulsoVentr|intcont[16]~62\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(17) & (!\mp|delayPulsoVentr|intcont[16]~62\ & VCC))
-- \mp|delayPulsoVentr|intcont[17]~64\ = CARRY((\mp|delayPulsoVentr|intcont\(17) & !\mp|delayPulsoVentr|intcont[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(17),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[16]~62\,
	combout => \mp|delayPulsoVentr|intcont[17]~63_combout\,
	cout => \mp|delayPulsoVentr|intcont[17]~64\);

-- Location: FF_X10_Y21_N3
\mp|delayPulsoVentr|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[17]~63_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(17));

-- Location: LCCOMB_X10_Y21_N4
\mp|delayPulsoVentr|intcont[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[18]~65_combout\ = (\mp|delayPulsoVentr|intcont\(18) & (!\mp|delayPulsoVentr|intcont[17]~64\)) # (!\mp|delayPulsoVentr|intcont\(18) & ((\mp|delayPulsoVentr|intcont[17]~64\) # (GND)))
-- \mp|delayPulsoVentr|intcont[18]~66\ = CARRY((!\mp|delayPulsoVentr|intcont[17]~64\) # (!\mp|delayPulsoVentr|intcont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(18),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[17]~64\,
	combout => \mp|delayPulsoVentr|intcont[18]~65_combout\,
	cout => \mp|delayPulsoVentr|intcont[18]~66\);

-- Location: FF_X10_Y21_N5
\mp|delayPulsoVentr|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[18]~65_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(18));

-- Location: LCCOMB_X10_Y21_N6
\mp|delayPulsoVentr|intcont[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[19]~67_combout\ = (\mp|delayPulsoVentr|intcont\(19) & (\mp|delayPulsoVentr|intcont[18]~66\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(19) & (!\mp|delayPulsoVentr|intcont[18]~66\ & VCC))
-- \mp|delayPulsoVentr|intcont[19]~68\ = CARRY((\mp|delayPulsoVentr|intcont\(19) & !\mp|delayPulsoVentr|intcont[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(19),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[18]~66\,
	combout => \mp|delayPulsoVentr|intcont[19]~67_combout\,
	cout => \mp|delayPulsoVentr|intcont[19]~68\);

-- Location: FF_X10_Y21_N7
\mp|delayPulsoVentr|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[19]~67_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(19));

-- Location: LCCOMB_X10_Y21_N8
\mp|delayPulsoVentr|intcont[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[20]~69_combout\ = (\mp|delayPulsoVentr|intcont\(20) & (!\mp|delayPulsoVentr|intcont[19]~68\)) # (!\mp|delayPulsoVentr|intcont\(20) & ((\mp|delayPulsoVentr|intcont[19]~68\) # (GND)))
-- \mp|delayPulsoVentr|intcont[20]~70\ = CARRY((!\mp|delayPulsoVentr|intcont[19]~68\) # (!\mp|delayPulsoVentr|intcont\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(20),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[19]~68\,
	combout => \mp|delayPulsoVentr|intcont[20]~69_combout\,
	cout => \mp|delayPulsoVentr|intcont[20]~70\);

-- Location: FF_X10_Y21_N9
\mp|delayPulsoVentr|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[20]~69_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(20));

-- Location: LCCOMB_X10_Y21_N10
\mp|delayPulsoVentr|intcont[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[21]~71_combout\ = (\mp|delayPulsoVentr|intcont\(21) & (\mp|delayPulsoVentr|intcont[20]~70\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(21) & (!\mp|delayPulsoVentr|intcont[20]~70\ & VCC))
-- \mp|delayPulsoVentr|intcont[21]~72\ = CARRY((\mp|delayPulsoVentr|intcont\(21) & !\mp|delayPulsoVentr|intcont[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(21),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[20]~70\,
	combout => \mp|delayPulsoVentr|intcont[21]~71_combout\,
	cout => \mp|delayPulsoVentr|intcont[21]~72\);

-- Location: FF_X10_Y21_N11
\mp|delayPulsoVentr|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[21]~71_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(21));

-- Location: LCCOMB_X10_Y21_N12
\mp|delayPulsoVentr|intcont[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[22]~73_combout\ = (\mp|delayPulsoVentr|intcont\(22) & (!\mp|delayPulsoVentr|intcont[21]~72\)) # (!\mp|delayPulsoVentr|intcont\(22) & ((\mp|delayPulsoVentr|intcont[21]~72\) # (GND)))
-- \mp|delayPulsoVentr|intcont[22]~74\ = CARRY((!\mp|delayPulsoVentr|intcont[21]~72\) # (!\mp|delayPulsoVentr|intcont\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(22),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[21]~72\,
	combout => \mp|delayPulsoVentr|intcont[22]~73_combout\,
	cout => \mp|delayPulsoVentr|intcont[22]~74\);

-- Location: FF_X10_Y21_N13
\mp|delayPulsoVentr|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[22]~73_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(22));

-- Location: LCCOMB_X10_Y21_N14
\mp|delayPulsoVentr|intcont[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[23]~75_combout\ = (\mp|delayPulsoVentr|intcont\(23) & (\mp|delayPulsoVentr|intcont[22]~74\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(23) & (!\mp|delayPulsoVentr|intcont[22]~74\ & VCC))
-- \mp|delayPulsoVentr|intcont[23]~76\ = CARRY((\mp|delayPulsoVentr|intcont\(23) & !\mp|delayPulsoVentr|intcont[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(23),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[22]~74\,
	combout => \mp|delayPulsoVentr|intcont[23]~75_combout\,
	cout => \mp|delayPulsoVentr|intcont[23]~76\);

-- Location: FF_X10_Y21_N15
\mp|delayPulsoVentr|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[23]~75_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(23));

-- Location: LCCOMB_X10_Y21_N16
\mp|delayPulsoVentr|intcont[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[24]~77_combout\ = (\mp|delayPulsoVentr|intcont\(24) & (!\mp|delayPulsoVentr|intcont[23]~76\)) # (!\mp|delayPulsoVentr|intcont\(24) & ((\mp|delayPulsoVentr|intcont[23]~76\) # (GND)))
-- \mp|delayPulsoVentr|intcont[24]~78\ = CARRY((!\mp|delayPulsoVentr|intcont[23]~76\) # (!\mp|delayPulsoVentr|intcont\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(24),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[23]~76\,
	combout => \mp|delayPulsoVentr|intcont[24]~77_combout\,
	cout => \mp|delayPulsoVentr|intcont[24]~78\);

-- Location: FF_X10_Y21_N17
\mp|delayPulsoVentr|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[24]~77_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(24));

-- Location: LCCOMB_X10_Y21_N18
\mp|delayPulsoVentr|intcont[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[25]~79_combout\ = (\mp|delayPulsoVentr|intcont\(25) & (\mp|delayPulsoVentr|intcont[24]~78\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(25) & (!\mp|delayPulsoVentr|intcont[24]~78\ & VCC))
-- \mp|delayPulsoVentr|intcont[25]~80\ = CARRY((\mp|delayPulsoVentr|intcont\(25) & !\mp|delayPulsoVentr|intcont[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(25),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[24]~78\,
	combout => \mp|delayPulsoVentr|intcont[25]~79_combout\,
	cout => \mp|delayPulsoVentr|intcont[25]~80\);

-- Location: FF_X10_Y21_N19
\mp|delayPulsoVentr|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[25]~79_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(25));

-- Location: LCCOMB_X10_Y21_N20
\mp|delayPulsoVentr|intcont[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[26]~81_combout\ = (\mp|delayPulsoVentr|intcont\(26) & (!\mp|delayPulsoVentr|intcont[25]~80\)) # (!\mp|delayPulsoVentr|intcont\(26) & ((\mp|delayPulsoVentr|intcont[25]~80\) # (GND)))
-- \mp|delayPulsoVentr|intcont[26]~82\ = CARRY((!\mp|delayPulsoVentr|intcont[25]~80\) # (!\mp|delayPulsoVentr|intcont\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(26),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[25]~80\,
	combout => \mp|delayPulsoVentr|intcont[26]~81_combout\,
	cout => \mp|delayPulsoVentr|intcont[26]~82\);

-- Location: FF_X10_Y21_N21
\mp|delayPulsoVentr|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[26]~81_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(26));

-- Location: LCCOMB_X10_Y21_N22
\mp|delayPulsoVentr|intcont[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[27]~83_combout\ = (\mp|delayPulsoVentr|intcont\(27) & (\mp|delayPulsoVentr|intcont[26]~82\ $ (GND))) # (!\mp|delayPulsoVentr|intcont\(27) & (!\mp|delayPulsoVentr|intcont[26]~82\ & VCC))
-- \mp|delayPulsoVentr|intcont[27]~84\ = CARRY((\mp|delayPulsoVentr|intcont\(27) & !\mp|delayPulsoVentr|intcont[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(27),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[26]~82\,
	combout => \mp|delayPulsoVentr|intcont[27]~83_combout\,
	cout => \mp|delayPulsoVentr|intcont[27]~84\);

-- Location: FF_X10_Y21_N23
\mp|delayPulsoVentr|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[27]~83_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(27));

-- Location: LCCOMB_X10_Y21_N24
\mp|delayPulsoVentr|intcont[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[28]~85_combout\ = (\mp|delayPulsoVentr|intcont\(28) & (!\mp|delayPulsoVentr|intcont[27]~84\)) # (!\mp|delayPulsoVentr|intcont\(28) & ((\mp|delayPulsoVentr|intcont[27]~84\) # (GND)))
-- \mp|delayPulsoVentr|intcont[28]~86\ = CARRY((!\mp|delayPulsoVentr|intcont[27]~84\) # (!\mp|delayPulsoVentr|intcont\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|delayPulsoVentr|intcont\(28),
	datad => VCC,
	cin => \mp|delayPulsoVentr|intcont[27]~84\,
	combout => \mp|delayPulsoVentr|intcont[28]~85_combout\,
	cout => \mp|delayPulsoVentr|intcont[28]~86\);

-- Location: FF_X10_Y21_N25
\mp|delayPulsoVentr|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[28]~85_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(28));

-- Location: FF_X10_Y21_N27
\mp|delayPulsoVentr|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[29]~87_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(29));

-- Location: LCCOMB_X9_Y21_N26
\mp|delayPulsoVentr|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~7_combout\ = (!\mp|delayPulsoVentr|intcont\(29) & (!\mp|delayPulsoVentr|intcont\(30) & (!\mp|delayPulsoVentr|intcont\(28) & !\mp|delayPulsoVentr|intcont\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(29),
	datab => \mp|delayPulsoVentr|intcont\(30),
	datac => \mp|delayPulsoVentr|intcont\(28),
	datad => \mp|delayPulsoVentr|intcont\(27),
	combout => \mp|delayPulsoVentr|Equal0~7_combout\);

-- Location: LCCOMB_X9_Y21_N2
\mp|delayPulsoVentr|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~5_combout\ = (!\mp|delayPulsoVentr|intcont\(22) & (!\mp|delayPulsoVentr|intcont\(21) & (!\mp|delayPulsoVentr|intcont\(20) & !\mp|delayPulsoVentr|intcont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(22),
	datab => \mp|delayPulsoVentr|intcont\(21),
	datac => \mp|delayPulsoVentr|intcont\(20),
	datad => \mp|delayPulsoVentr|intcont\(19),
	combout => \mp|delayPulsoVentr|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y21_N4
\mp|delayPulsoVentr|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~6_combout\ = (!\mp|delayPulsoVentr|intcont\(26) & (!\mp|delayPulsoVentr|intcont\(25) & (!\mp|delayPulsoVentr|intcont\(23) & !\mp|delayPulsoVentr|intcont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(26),
	datab => \mp|delayPulsoVentr|intcont\(25),
	datac => \mp|delayPulsoVentr|intcont\(23),
	datad => \mp|delayPulsoVentr|intcont\(24),
	combout => \mp|delayPulsoVentr|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y21_N10
\mp|delayPulsoVentr|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~3_combout\ = (!\mp|delayPulsoVentr|intcont\(17) & (!\mp|delayPulsoVentr|intcont\(16) & (!\mp|delayPulsoVentr|intcont\(15) & !\mp|delayPulsoVentr|intcont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(17),
	datab => \mp|delayPulsoVentr|intcont\(16),
	datac => \mp|delayPulsoVentr|intcont\(15),
	datad => \mp|delayPulsoVentr|intcont\(18),
	combout => \mp|delayPulsoVentr|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y22_N0
\mp|delayPulsoVentr|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~0_combout\ = (!\mp|delayPulsoVentr|intcont\(3) & (!\mp|delayPulsoVentr|intcont\(4) & (!\mp|delayPulsoVentr|intcont\(6) & !\mp|delayPulsoVentr|intcont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(3),
	datab => \mp|delayPulsoVentr|intcont\(4),
	datac => \mp|delayPulsoVentr|intcont\(6),
	datad => \mp|delayPulsoVentr|intcont\(5),
	combout => \mp|delayPulsoVentr|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y21_N8
\mp|delayPulsoVentr|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~1_combout\ = (!\mp|delayPulsoVentr|intcont\(10) & (!\mp|delayPulsoVentr|intcont\(9) & (!\mp|delayPulsoVentr|intcont\(7) & !\mp|delayPulsoVentr|intcont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(10),
	datab => \mp|delayPulsoVentr|intcont\(9),
	datac => \mp|delayPulsoVentr|intcont\(7),
	datad => \mp|delayPulsoVentr|intcont\(8),
	combout => \mp|delayPulsoVentr|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y22_N28
\mp|delayPulsoVentr|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~2_combout\ = (!\mp|delayPulsoVentr|intcont\(11) & (!\mp|delayPulsoVentr|intcont\(14) & (!\mp|delayPulsoVentr|intcont\(13) & !\mp|delayPulsoVentr|intcont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(11),
	datab => \mp|delayPulsoVentr|intcont\(14),
	datac => \mp|delayPulsoVentr|intcont\(13),
	datad => \mp|delayPulsoVentr|intcont\(12),
	combout => \mp|delayPulsoVentr|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y21_N12
\mp|delayPulsoVentr|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~4_combout\ = (\mp|delayPulsoVentr|Equal0~3_combout\ & (\mp|delayPulsoVentr|Equal0~0_combout\ & (\mp|delayPulsoVentr|Equal0~1_combout\ & \mp|delayPulsoVentr|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|Equal0~3_combout\,
	datab => \mp|delayPulsoVentr|Equal0~0_combout\,
	datac => \mp|delayPulsoVentr|Equal0~1_combout\,
	datad => \mp|delayPulsoVentr|Equal0~2_combout\,
	combout => \mp|delayPulsoVentr|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y21_N28
\mp|delayPulsoVentr|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~8_combout\ = (\mp|delayPulsoVentr|Equal0~7_combout\ & (\mp|delayPulsoVentr|Equal0~5_combout\ & (\mp|delayPulsoVentr|Equal0~6_combout\ & \mp|delayPulsoVentr|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|Equal0~7_combout\,
	datab => \mp|delayPulsoVentr|Equal0~5_combout\,
	datac => \mp|delayPulsoVentr|Equal0~6_combout\,
	datad => \mp|delayPulsoVentr|Equal0~4_combout\,
	combout => \mp|delayPulsoVentr|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y21_N2
\mp|delayPulsoVentr|intcont[0]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|intcont[0]~91_combout\ = \mp|delayPulsoVentr|intcont\(0) $ (((\mp|delayPulsoVentr|intcont\(31)) # ((\mp|delayPulsoVentr|Equal0~8_combout\ & \mp|delayPulsoVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|Equal0~8_combout\,
	datab => \mp|delayPulsoVentr|intcont\(31),
	datac => \mp|delayPulsoVentr|intcont\(0),
	datad => \mp|delayPulsoVentr|LessThan0~0_combout\,
	combout => \mp|delayPulsoVentr|intcont[0]~91_combout\);

-- Location: FF_X11_Y21_N3
\mp|delayPulsoVentr|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[0]~91_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(0));

-- Location: FF_X10_Y22_N5
\mp|delayPulsoVentr|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|delayPulsoVentr|intcont[2]~33_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|delayPulsoVentr|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|delayPulsoVentr|intcont\(2));

-- Location: LCCOMB_X11_Y21_N16
\mp|delayPulsoVentr|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~9_combout\ = (\mp|delayPulsoVentr|intcont\(2) & (!\mp|delayPulsoVentr|intcont\(31) & (!\mp|delayPulsoVentr|intcont\(1) & \mp|delayPulsoVentr|intcont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|delayPulsoVentr|intcont\(2),
	datab => \mp|delayPulsoVentr|intcont\(31),
	datac => \mp|delayPulsoVentr|intcont\(1),
	datad => \mp|delayPulsoVentr|intcont\(0),
	combout => \mp|delayPulsoVentr|Equal0~9_combout\);

-- Location: LCCOMB_X12_Y21_N0
\mp|delayPulsoVentr|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|delayPulsoVentr|Equal0~10_combout\ = (\mp|delayPulsoVentr|Equal0~9_combout\ & \mp|delayPulsoVentr|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mp|delayPulsoVentr|Equal0~9_combout\,
	datad => \mp|delayPulsoVentr|Equal0~8_combout\,
	combout => \mp|delayPulsoVentr|Equal0~10_combout\);

-- Location: LCCOMB_X12_Y21_N30
\mp|beatPulsoVentr|intcont[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[0]~4_combout\ = ((!\mp|beatPulsoVentr|intcont\(31) & (!\mp|beatPulsoVentr|Equal0~10_combout\ & !\mp|beatPulsoVentr|LessThan0~0_combout\))) # (!\mp|delayPulsoVentr|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(31),
	datab => \mp|beatPulsoVentr|Equal0~10_combout\,
	datac => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[0]~4_combout\);

-- Location: LCCOMB_X11_Y21_N30
\mp|beatPulsoVentr|intcont~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont~37_combout\ = (\mp|delayPulsoVentr|Equal0~9_combout\ & (\mp|delayPulsoVentr|Equal0~8_combout\ & ((\mp|beatPulsoVentr|intcont\(31)) # (\mp|beatPulsoVentr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(31),
	datab => \mp|delayPulsoVentr|Equal0~9_combout\,
	datac => \mp|delayPulsoVentr|Equal0~8_combout\,
	datad => \mp|beatPulsoVentr|LessThan0~0_combout\,
	combout => \mp|beatPulsoVentr|intcont~37_combout\);

-- Location: LCCOMB_X13_Y21_N0
\mp|beatPulsoVentr|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~0_combout\ = \mp|beatPulsoVentr|intcont\(0) $ (VCC)
-- \mp|beatPulsoVentr|Add0~1\ = CARRY(\mp|beatPulsoVentr|intcont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(0),
	datad => VCC,
	combout => \mp|beatPulsoVentr|Add0~0_combout\,
	cout => \mp|beatPulsoVentr|Add0~1\);

-- Location: LCCOMB_X13_Y21_N2
\mp|beatPulsoVentr|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~2_combout\ = (\mp|beatPulsoVentr|intcont\(1) & (!\mp|beatPulsoVentr|Add0~1\)) # (!\mp|beatPulsoVentr|intcont\(1) & ((\mp|beatPulsoVentr|Add0~1\) # (GND)))
-- \mp|beatPulsoVentr|Add0~3\ = CARRY((!\mp|beatPulsoVentr|Add0~1\) # (!\mp|beatPulsoVentr|intcont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(1),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~1\,
	combout => \mp|beatPulsoVentr|Add0~2_combout\,
	cout => \mp|beatPulsoVentr|Add0~3\);

-- Location: LCCOMB_X12_Y21_N10
\mp|beatPulsoVentr|intcont[1]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[1]~36_combout\ = (\mp|beatPulsoVentr|Add0~2_combout\ & (\mp|delayPulsoVentr|Equal0~10_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|beatPulsoVentr|intcont\(31),
	datac => \mp|beatPulsoVentr|Add0~2_combout\,
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[1]~36_combout\);

-- Location: FF_X12_Y21_N11
\mp|beatPulsoVentr|intcont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[1]~36_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(1));

-- Location: LCCOMB_X13_Y21_N4
\mp|beatPulsoVentr|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~4_combout\ = (\mp|beatPulsoVentr|intcont\(2) & (\mp|beatPulsoVentr|Add0~3\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(2) & (!\mp|beatPulsoVentr|Add0~3\ & VCC))
-- \mp|beatPulsoVentr|Add0~5\ = CARRY((\mp|beatPulsoVentr|intcont\(2) & !\mp|beatPulsoVentr|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(2),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~3\,
	combout => \mp|beatPulsoVentr|Add0~4_combout\,
	cout => \mp|beatPulsoVentr|Add0~5\);

-- Location: LCCOMB_X13_Y21_N6
\mp|beatPulsoVentr|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~6_combout\ = (\mp|beatPulsoVentr|intcont\(3) & (!\mp|beatPulsoVentr|Add0~5\)) # (!\mp|beatPulsoVentr|intcont\(3) & ((\mp|beatPulsoVentr|Add0~5\) # (GND)))
-- \mp|beatPulsoVentr|Add0~7\ = CARRY((!\mp|beatPulsoVentr|Add0~5\) # (!\mp|beatPulsoVentr|intcont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(3),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~5\,
	combout => \mp|beatPulsoVentr|Add0~6_combout\,
	cout => \mp|beatPulsoVentr|Add0~7\);

-- Location: LCCOMB_X12_Y21_N26
\mp|beatPulsoVentr|intcont[3]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[3]~34_combout\ = (\mp|beatPulsoVentr|Add0~6_combout\ & (\mp|delayPulsoVentr|Equal0~10_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|beatPulsoVentr|intcont\(31),
	datac => \mp|beatPulsoVentr|Add0~6_combout\,
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[3]~34_combout\);

-- Location: FF_X12_Y21_N27
\mp|beatPulsoVentr|intcont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[3]~34_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(3));

-- Location: LCCOMB_X13_Y21_N8
\mp|beatPulsoVentr|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~8_combout\ = (\mp|beatPulsoVentr|intcont\(4) & (\mp|beatPulsoVentr|Add0~7\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(4) & (!\mp|beatPulsoVentr|Add0~7\ & VCC))
-- \mp|beatPulsoVentr|Add0~9\ = CARRY((\mp|beatPulsoVentr|intcont\(4) & !\mp|beatPulsoVentr|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(4),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~7\,
	combout => \mp|beatPulsoVentr|Add0~8_combout\,
	cout => \mp|beatPulsoVentr|Add0~9\);

-- Location: LCCOMB_X12_Y21_N12
\mp|beatPulsoVentr|intcont[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[4]~31_combout\ = (\mp|beatPulsoVentr|Add0~8_combout\ & (\mp|delayPulsoVentr|Equal0~10_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|beatPulsoVentr|intcont\(31),
	datac => \mp|beatPulsoVentr|Add0~8_combout\,
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[4]~31_combout\);

-- Location: FF_X12_Y21_N13
\mp|beatPulsoVentr|intcont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[4]~31_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(4));

-- Location: LCCOMB_X13_Y21_N10
\mp|beatPulsoVentr|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~10_combout\ = (\mp|beatPulsoVentr|intcont\(5) & (!\mp|beatPulsoVentr|Add0~9\)) # (!\mp|beatPulsoVentr|intcont\(5) & ((\mp|beatPulsoVentr|Add0~9\) # (GND)))
-- \mp|beatPulsoVentr|Add0~11\ = CARRY((!\mp|beatPulsoVentr|Add0~9\) # (!\mp|beatPulsoVentr|intcont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(5),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~9\,
	combout => \mp|beatPulsoVentr|Add0~10_combout\,
	cout => \mp|beatPulsoVentr|Add0~11\);

-- Location: LCCOMB_X12_Y21_N18
\mp|beatPulsoVentr|intcont[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[5]~30_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(5)) # ((\mp|beatPulsoVentr|Add0~10_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~10_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~10_combout\,
	datac => \mp|beatPulsoVentr|intcont\(5),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[5]~30_combout\);

-- Location: FF_X12_Y21_N19
\mp|beatPulsoVentr|intcont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[5]~30_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(5));

-- Location: LCCOMB_X13_Y21_N12
\mp|beatPulsoVentr|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~12_combout\ = (\mp|beatPulsoVentr|intcont\(6) & (\mp|beatPulsoVentr|Add0~11\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(6) & (!\mp|beatPulsoVentr|Add0~11\ & VCC))
-- \mp|beatPulsoVentr|Add0~13\ = CARRY((\mp|beatPulsoVentr|intcont\(6) & !\mp|beatPulsoVentr|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(6),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~11\,
	combout => \mp|beatPulsoVentr|Add0~12_combout\,
	cout => \mp|beatPulsoVentr|Add0~13\);

-- Location: LCCOMB_X12_Y21_N20
\mp|beatPulsoVentr|intcont[6]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[6]~29_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(6)) # ((\mp|beatPulsoVentr|Add0~12_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~12_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~12_combout\,
	datac => \mp|beatPulsoVentr|intcont\(6),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[6]~29_combout\);

-- Location: FF_X12_Y21_N21
\mp|beatPulsoVentr|intcont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[6]~29_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(6));

-- Location: LCCOMB_X13_Y21_N14
\mp|beatPulsoVentr|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~14_combout\ = (\mp|beatPulsoVentr|intcont\(7) & (!\mp|beatPulsoVentr|Add0~13\)) # (!\mp|beatPulsoVentr|intcont\(7) & ((\mp|beatPulsoVentr|Add0~13\) # (GND)))
-- \mp|beatPulsoVentr|Add0~15\ = CARRY((!\mp|beatPulsoVentr|Add0~13\) # (!\mp|beatPulsoVentr|intcont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(7),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~13\,
	combout => \mp|beatPulsoVentr|Add0~14_combout\,
	cout => \mp|beatPulsoVentr|Add0~15\);

-- Location: LCCOMB_X12_Y21_N14
\mp|beatPulsoVentr|intcont[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[7]~28_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(7)) # ((\mp|beatPulsoVentr|Add0~14_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~14_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~14_combout\,
	datac => \mp|beatPulsoVentr|intcont\(7),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[7]~28_combout\);

-- Location: FF_X12_Y21_N15
\mp|beatPulsoVentr|intcont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[7]~28_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(7));

-- Location: LCCOMB_X13_Y21_N16
\mp|beatPulsoVentr|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~16_combout\ = (\mp|beatPulsoVentr|intcont\(8) & (\mp|beatPulsoVentr|Add0~15\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(8) & (!\mp|beatPulsoVentr|Add0~15\ & VCC))
-- \mp|beatPulsoVentr|Add0~17\ = CARRY((\mp|beatPulsoVentr|intcont\(8) & !\mp|beatPulsoVentr|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(8),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~15\,
	combout => \mp|beatPulsoVentr|Add0~16_combout\,
	cout => \mp|beatPulsoVentr|Add0~17\);

-- Location: LCCOMB_X12_Y21_N24
\mp|beatPulsoVentr|intcont[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[8]~27_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(8)) # ((\mp|beatPulsoVentr|Add0~16_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~16_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~16_combout\,
	datac => \mp|beatPulsoVentr|intcont\(8),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[8]~27_combout\);

-- Location: FF_X12_Y21_N25
\mp|beatPulsoVentr|intcont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[8]~27_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(8));

-- Location: LCCOMB_X13_Y21_N18
\mp|beatPulsoVentr|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~18_combout\ = (\mp|beatPulsoVentr|intcont\(9) & (!\mp|beatPulsoVentr|Add0~17\)) # (!\mp|beatPulsoVentr|intcont\(9) & ((\mp|beatPulsoVentr|Add0~17\) # (GND)))
-- \mp|beatPulsoVentr|Add0~19\ = CARRY((!\mp|beatPulsoVentr|Add0~17\) # (!\mp|beatPulsoVentr|intcont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(9),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~17\,
	combout => \mp|beatPulsoVentr|Add0~18_combout\,
	cout => \mp|beatPulsoVentr|Add0~19\);

-- Location: LCCOMB_X12_Y21_N2
\mp|beatPulsoVentr|intcont[9]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[9]~26_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(9)) # ((\mp|beatPulsoVentr|Add0~18_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~18_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~18_combout\,
	datac => \mp|beatPulsoVentr|intcont\(9),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[9]~26_combout\);

-- Location: FF_X12_Y21_N3
\mp|beatPulsoVentr|intcont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[9]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(9));

-- Location: LCCOMB_X13_Y21_N20
\mp|beatPulsoVentr|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~20_combout\ = (\mp|beatPulsoVentr|intcont\(10) & (\mp|beatPulsoVentr|Add0~19\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(10) & (!\mp|beatPulsoVentr|Add0~19\ & VCC))
-- \mp|beatPulsoVentr|Add0~21\ = CARRY((\mp|beatPulsoVentr|intcont\(10) & !\mp|beatPulsoVentr|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(10),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~19\,
	combout => \mp|beatPulsoVentr|Add0~20_combout\,
	cout => \mp|beatPulsoVentr|Add0~21\);

-- Location: LCCOMB_X12_Y21_N8
\mp|beatPulsoVentr|intcont[10]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[10]~25_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(10)) # ((\mp|beatPulsoVentr|Add0~20_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~20_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~20_combout\,
	datac => \mp|beatPulsoVentr|intcont\(10),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[10]~25_combout\);

-- Location: FF_X12_Y21_N9
\mp|beatPulsoVentr|intcont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[10]~25_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(10));

-- Location: LCCOMB_X13_Y21_N22
\mp|beatPulsoVentr|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~22_combout\ = (\mp|beatPulsoVentr|intcont\(11) & (!\mp|beatPulsoVentr|Add0~21\)) # (!\mp|beatPulsoVentr|intcont\(11) & ((\mp|beatPulsoVentr|Add0~21\) # (GND)))
-- \mp|beatPulsoVentr|Add0~23\ = CARRY((!\mp|beatPulsoVentr|Add0~21\) # (!\mp|beatPulsoVentr|intcont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(11),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~21\,
	combout => \mp|beatPulsoVentr|Add0~22_combout\,
	cout => \mp|beatPulsoVentr|Add0~23\);

-- Location: LCCOMB_X11_Y21_N24
\mp|beatPulsoVentr|intcont[11]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[11]~24_combout\ = (\mp|beatPulsoVentr|intcont~37_combout\ & ((\mp|beatPulsoVentr|Add0~22_combout\) # ((\mp|beatPulsoVentr|intcont\(11) & \mp|beatPulsoVentr|intcont[0]~4_combout\)))) # (!\mp|beatPulsoVentr|intcont~37_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(11) & \mp|beatPulsoVentr|intcont[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont~37_combout\,
	datab => \mp|beatPulsoVentr|Add0~22_combout\,
	datac => \mp|beatPulsoVentr|intcont\(11),
	datad => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	combout => \mp|beatPulsoVentr|intcont[11]~24_combout\);

-- Location: FF_X11_Y21_N25
\mp|beatPulsoVentr|intcont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[11]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(11));

-- Location: LCCOMB_X13_Y21_N24
\mp|beatPulsoVentr|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~24_combout\ = (\mp|beatPulsoVentr|intcont\(12) & (\mp|beatPulsoVentr|Add0~23\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(12) & (!\mp|beatPulsoVentr|Add0~23\ & VCC))
-- \mp|beatPulsoVentr|Add0~25\ = CARRY((\mp|beatPulsoVentr|intcont\(12) & !\mp|beatPulsoVentr|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(12),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~23\,
	combout => \mp|beatPulsoVentr|Add0~24_combout\,
	cout => \mp|beatPulsoVentr|Add0~25\);

-- Location: LCCOMB_X12_Y21_N22
\mp|beatPulsoVentr|intcont[12]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[12]~23_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(12)) # ((\mp|beatPulsoVentr|Add0~24_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~24_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~24_combout\,
	datac => \mp|beatPulsoVentr|intcont\(12),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[12]~23_combout\);

-- Location: FF_X12_Y21_N23
\mp|beatPulsoVentr|intcont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[12]~23_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(12));

-- Location: LCCOMB_X13_Y21_N26
\mp|beatPulsoVentr|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~26_combout\ = (\mp|beatPulsoVentr|intcont\(13) & (!\mp|beatPulsoVentr|Add0~25\)) # (!\mp|beatPulsoVentr|intcont\(13) & ((\mp|beatPulsoVentr|Add0~25\) # (GND)))
-- \mp|beatPulsoVentr|Add0~27\ = CARRY((!\mp|beatPulsoVentr|Add0~25\) # (!\mp|beatPulsoVentr|intcont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(13),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~25\,
	combout => \mp|beatPulsoVentr|Add0~26_combout\,
	cout => \mp|beatPulsoVentr|Add0~27\);

-- Location: LCCOMB_X12_Y21_N28
\mp|beatPulsoVentr|intcont[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[13]~22_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(13)) # ((\mp|beatPulsoVentr|Add0~26_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~26_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~26_combout\,
	datac => \mp|beatPulsoVentr|intcont\(13),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[13]~22_combout\);

-- Location: FF_X12_Y21_N29
\mp|beatPulsoVentr|intcont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[13]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(13));

-- Location: LCCOMB_X13_Y21_N28
\mp|beatPulsoVentr|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~28_combout\ = (\mp|beatPulsoVentr|intcont\(14) & (\mp|beatPulsoVentr|Add0~27\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(14) & (!\mp|beatPulsoVentr|Add0~27\ & VCC))
-- \mp|beatPulsoVentr|Add0~29\ = CARRY((\mp|beatPulsoVentr|intcont\(14) & !\mp|beatPulsoVentr|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(14),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~27\,
	combout => \mp|beatPulsoVentr|Add0~28_combout\,
	cout => \mp|beatPulsoVentr|Add0~29\);

-- Location: LCCOMB_X11_Y21_N22
\mp|beatPulsoVentr|intcont[14]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[14]~21_combout\ = (\mp|beatPulsoVentr|intcont~37_combout\ & ((\mp|beatPulsoVentr|Add0~28_combout\) # ((\mp|beatPulsoVentr|intcont\(14) & \mp|beatPulsoVentr|intcont[0]~4_combout\)))) # (!\mp|beatPulsoVentr|intcont~37_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(14) & \mp|beatPulsoVentr|intcont[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont~37_combout\,
	datab => \mp|beatPulsoVentr|Add0~28_combout\,
	datac => \mp|beatPulsoVentr|intcont\(14),
	datad => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	combout => \mp|beatPulsoVentr|intcont[14]~21_combout\);

-- Location: FF_X11_Y21_N23
\mp|beatPulsoVentr|intcont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[14]~21_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(14));

-- Location: LCCOMB_X13_Y21_N30
\mp|beatPulsoVentr|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~30_combout\ = (\mp|beatPulsoVentr|intcont\(15) & (!\mp|beatPulsoVentr|Add0~29\)) # (!\mp|beatPulsoVentr|intcont\(15) & ((\mp|beatPulsoVentr|Add0~29\) # (GND)))
-- \mp|beatPulsoVentr|Add0~31\ = CARRY((!\mp|beatPulsoVentr|Add0~29\) # (!\mp|beatPulsoVentr|intcont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(15),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~29\,
	combout => \mp|beatPulsoVentr|Add0~30_combout\,
	cout => \mp|beatPulsoVentr|Add0~31\);

-- Location: LCCOMB_X12_Y20_N24
\mp|beatPulsoVentr|intcont[15]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[15]~20_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(15)) # ((\mp|beatPulsoVentr|Add0~30_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~30_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~30_combout\,
	datac => \mp|beatPulsoVentr|intcont\(15),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[15]~20_combout\);

-- Location: FF_X12_Y20_N25
\mp|beatPulsoVentr|intcont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[15]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(15));

-- Location: LCCOMB_X13_Y20_N0
\mp|beatPulsoVentr|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~32_combout\ = (\mp|beatPulsoVentr|intcont\(16) & (\mp|beatPulsoVentr|Add0~31\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(16) & (!\mp|beatPulsoVentr|Add0~31\ & VCC))
-- \mp|beatPulsoVentr|Add0~33\ = CARRY((\mp|beatPulsoVentr|intcont\(16) & !\mp|beatPulsoVentr|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(16),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~31\,
	combout => \mp|beatPulsoVentr|Add0~32_combout\,
	cout => \mp|beatPulsoVentr|Add0~33\);

-- Location: LCCOMB_X12_Y20_N6
\mp|beatPulsoVentr|intcont[16]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[16]~19_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(16)) # ((\mp|beatPulsoVentr|Add0~32_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~32_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~32_combout\,
	datac => \mp|beatPulsoVentr|intcont\(16),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[16]~19_combout\);

-- Location: FF_X12_Y20_N7
\mp|beatPulsoVentr|intcont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[16]~19_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(16));

-- Location: LCCOMB_X13_Y20_N2
\mp|beatPulsoVentr|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~34_combout\ = (\mp|beatPulsoVentr|intcont\(17) & (!\mp|beatPulsoVentr|Add0~33\)) # (!\mp|beatPulsoVentr|intcont\(17) & ((\mp|beatPulsoVentr|Add0~33\) # (GND)))
-- \mp|beatPulsoVentr|Add0~35\ = CARRY((!\mp|beatPulsoVentr|Add0~33\) # (!\mp|beatPulsoVentr|intcont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(17),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~33\,
	combout => \mp|beatPulsoVentr|Add0~34_combout\,
	cout => \mp|beatPulsoVentr|Add0~35\);

-- Location: LCCOMB_X12_Y20_N16
\mp|beatPulsoVentr|intcont[17]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[17]~18_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(17)) # ((\mp|beatPulsoVentr|Add0~34_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~34_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~34_combout\,
	datac => \mp|beatPulsoVentr|intcont\(17),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[17]~18_combout\);

-- Location: FF_X12_Y20_N17
\mp|beatPulsoVentr|intcont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[17]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(17));

-- Location: LCCOMB_X13_Y20_N4
\mp|beatPulsoVentr|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~36_combout\ = (\mp|beatPulsoVentr|intcont\(18) & (\mp|beatPulsoVentr|Add0~35\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(18) & (!\mp|beatPulsoVentr|Add0~35\ & VCC))
-- \mp|beatPulsoVentr|Add0~37\ = CARRY((\mp|beatPulsoVentr|intcont\(18) & !\mp|beatPulsoVentr|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(18),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~35\,
	combout => \mp|beatPulsoVentr|Add0~36_combout\,
	cout => \mp|beatPulsoVentr|Add0~37\);

-- Location: LCCOMB_X12_Y20_N26
\mp|beatPulsoVentr|intcont[18]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[18]~17_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(18)) # ((\mp|beatPulsoVentr|Add0~36_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~36_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~36_combout\,
	datac => \mp|beatPulsoVentr|intcont\(18),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[18]~17_combout\);

-- Location: FF_X12_Y20_N27
\mp|beatPulsoVentr|intcont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[18]~17_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(18));

-- Location: LCCOMB_X13_Y20_N6
\mp|beatPulsoVentr|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~38_combout\ = (\mp|beatPulsoVentr|intcont\(19) & (!\mp|beatPulsoVentr|Add0~37\)) # (!\mp|beatPulsoVentr|intcont\(19) & ((\mp|beatPulsoVentr|Add0~37\) # (GND)))
-- \mp|beatPulsoVentr|Add0~39\ = CARRY((!\mp|beatPulsoVentr|Add0~37\) # (!\mp|beatPulsoVentr|intcont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(19),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~37\,
	combout => \mp|beatPulsoVentr|Add0~38_combout\,
	cout => \mp|beatPulsoVentr|Add0~39\);

-- Location: LCCOMB_X11_Y20_N0
\mp|beatPulsoVentr|intcont[19]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[19]~16_combout\ = (\mp|beatPulsoVentr|intcont~37_combout\ & ((\mp|beatPulsoVentr|Add0~38_combout\) # ((\mp|beatPulsoVentr|intcont\(19) & \mp|beatPulsoVentr|intcont[0]~4_combout\)))) # (!\mp|beatPulsoVentr|intcont~37_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(19) & \mp|beatPulsoVentr|intcont[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont~37_combout\,
	datab => \mp|beatPulsoVentr|Add0~38_combout\,
	datac => \mp|beatPulsoVentr|intcont\(19),
	datad => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	combout => \mp|beatPulsoVentr|intcont[19]~16_combout\);

-- Location: FF_X11_Y20_N1
\mp|beatPulsoVentr|intcont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[19]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(19));

-- Location: LCCOMB_X13_Y20_N8
\mp|beatPulsoVentr|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~40_combout\ = (\mp|beatPulsoVentr|intcont\(20) & (\mp|beatPulsoVentr|Add0~39\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(20) & (!\mp|beatPulsoVentr|Add0~39\ & VCC))
-- \mp|beatPulsoVentr|Add0~41\ = CARRY((\mp|beatPulsoVentr|intcont\(20) & !\mp|beatPulsoVentr|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(20),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~39\,
	combout => \mp|beatPulsoVentr|Add0~40_combout\,
	cout => \mp|beatPulsoVentr|Add0~41\);

-- Location: LCCOMB_X12_Y20_N12
\mp|beatPulsoVentr|intcont[20]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[20]~15_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(20)) # ((\mp|beatPulsoVentr|Add0~40_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~40_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~40_combout\,
	datac => \mp|beatPulsoVentr|intcont\(20),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[20]~15_combout\);

-- Location: FF_X12_Y20_N13
\mp|beatPulsoVentr|intcont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[20]~15_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(20));

-- Location: LCCOMB_X13_Y20_N10
\mp|beatPulsoVentr|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~42_combout\ = (\mp|beatPulsoVentr|intcont\(21) & (!\mp|beatPulsoVentr|Add0~41\)) # (!\mp|beatPulsoVentr|intcont\(21) & ((\mp|beatPulsoVentr|Add0~41\) # (GND)))
-- \mp|beatPulsoVentr|Add0~43\ = CARRY((!\mp|beatPulsoVentr|Add0~41\) # (!\mp|beatPulsoVentr|intcont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(21),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~41\,
	combout => \mp|beatPulsoVentr|Add0~42_combout\,
	cout => \mp|beatPulsoVentr|Add0~43\);

-- Location: LCCOMB_X11_Y20_N2
\mp|beatPulsoVentr|intcont[21]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[21]~14_combout\ = (\mp|beatPulsoVentr|intcont~37_combout\ & ((\mp|beatPulsoVentr|Add0~42_combout\) # ((\mp|beatPulsoVentr|intcont\(21) & \mp|beatPulsoVentr|intcont[0]~4_combout\)))) # (!\mp|beatPulsoVentr|intcont~37_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(21) & \mp|beatPulsoVentr|intcont[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont~37_combout\,
	datab => \mp|beatPulsoVentr|Add0~42_combout\,
	datac => \mp|beatPulsoVentr|intcont\(21),
	datad => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	combout => \mp|beatPulsoVentr|intcont[21]~14_combout\);

-- Location: FF_X11_Y20_N3
\mp|beatPulsoVentr|intcont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[21]~14_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(21));

-- Location: LCCOMB_X13_Y20_N12
\mp|beatPulsoVentr|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~44_combout\ = (\mp|beatPulsoVentr|intcont\(22) & (\mp|beatPulsoVentr|Add0~43\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(22) & (!\mp|beatPulsoVentr|Add0~43\ & VCC))
-- \mp|beatPulsoVentr|Add0~45\ = CARRY((\mp|beatPulsoVentr|intcont\(22) & !\mp|beatPulsoVentr|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(22),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~43\,
	combout => \mp|beatPulsoVentr|Add0~44_combout\,
	cout => \mp|beatPulsoVentr|Add0~45\);

-- Location: LCCOMB_X11_Y20_N12
\mp|beatPulsoVentr|intcont[22]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[22]~13_combout\ = (\mp|beatPulsoVentr|intcont~37_combout\ & ((\mp|beatPulsoVentr|Add0~44_combout\) # ((\mp|beatPulsoVentr|intcont\(22) & \mp|beatPulsoVentr|intcont[0]~4_combout\)))) # (!\mp|beatPulsoVentr|intcont~37_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(22) & \mp|beatPulsoVentr|intcont[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont~37_combout\,
	datab => \mp|beatPulsoVentr|Add0~44_combout\,
	datac => \mp|beatPulsoVentr|intcont\(22),
	datad => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	combout => \mp|beatPulsoVentr|intcont[22]~13_combout\);

-- Location: FF_X11_Y20_N13
\mp|beatPulsoVentr|intcont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[22]~13_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(22));

-- Location: LCCOMB_X13_Y20_N14
\mp|beatPulsoVentr|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~46_combout\ = (\mp|beatPulsoVentr|intcont\(23) & (!\mp|beatPulsoVentr|Add0~45\)) # (!\mp|beatPulsoVentr|intcont\(23) & ((\mp|beatPulsoVentr|Add0~45\) # (GND)))
-- \mp|beatPulsoVentr|Add0~47\ = CARRY((!\mp|beatPulsoVentr|Add0~45\) # (!\mp|beatPulsoVentr|intcont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(23),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~45\,
	combout => \mp|beatPulsoVentr|Add0~46_combout\,
	cout => \mp|beatPulsoVentr|Add0~47\);

-- Location: LCCOMB_X12_Y20_N20
\mp|beatPulsoVentr|intcont[23]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[23]~12_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(23)) # ((\mp|beatPulsoVentr|Add0~46_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~46_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~46_combout\,
	datac => \mp|beatPulsoVentr|intcont\(23),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[23]~12_combout\);

-- Location: FF_X12_Y20_N21
\mp|beatPulsoVentr|intcont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[23]~12_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(23));

-- Location: LCCOMB_X13_Y20_N16
\mp|beatPulsoVentr|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~48_combout\ = (\mp|beatPulsoVentr|intcont\(24) & (\mp|beatPulsoVentr|Add0~47\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(24) & (!\mp|beatPulsoVentr|Add0~47\ & VCC))
-- \mp|beatPulsoVentr|Add0~49\ = CARRY((\mp|beatPulsoVentr|intcont\(24) & !\mp|beatPulsoVentr|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(24),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~47\,
	combout => \mp|beatPulsoVentr|Add0~48_combout\,
	cout => \mp|beatPulsoVentr|Add0~49\);

-- Location: LCCOMB_X12_Y20_N2
\mp|beatPulsoVentr|intcont[24]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[24]~11_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(24)) # ((\mp|beatPulsoVentr|Add0~48_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~48_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~48_combout\,
	datac => \mp|beatPulsoVentr|intcont\(24),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[24]~11_combout\);

-- Location: FF_X12_Y20_N3
\mp|beatPulsoVentr|intcont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[24]~11_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(24));

-- Location: LCCOMB_X13_Y20_N18
\mp|beatPulsoVentr|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~50_combout\ = (\mp|beatPulsoVentr|intcont\(25) & (!\mp|beatPulsoVentr|Add0~49\)) # (!\mp|beatPulsoVentr|intcont\(25) & ((\mp|beatPulsoVentr|Add0~49\) # (GND)))
-- \mp|beatPulsoVentr|Add0~51\ = CARRY((!\mp|beatPulsoVentr|Add0~49\) # (!\mp|beatPulsoVentr|intcont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(25),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~49\,
	combout => \mp|beatPulsoVentr|Add0~50_combout\,
	cout => \mp|beatPulsoVentr|Add0~51\);

-- Location: LCCOMB_X12_Y20_N8
\mp|beatPulsoVentr|intcont[25]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[25]~10_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(25)) # ((\mp|beatPulsoVentr|Add0~50_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~50_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~50_combout\,
	datac => \mp|beatPulsoVentr|intcont\(25),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[25]~10_combout\);

-- Location: FF_X12_Y20_N9
\mp|beatPulsoVentr|intcont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[25]~10_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(25));

-- Location: LCCOMB_X13_Y20_N20
\mp|beatPulsoVentr|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~52_combout\ = (\mp|beatPulsoVentr|intcont\(26) & (\mp|beatPulsoVentr|Add0~51\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(26) & (!\mp|beatPulsoVentr|Add0~51\ & VCC))
-- \mp|beatPulsoVentr|Add0~53\ = CARRY((\mp|beatPulsoVentr|intcont\(26) & !\mp|beatPulsoVentr|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(26),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~51\,
	combout => \mp|beatPulsoVentr|Add0~52_combout\,
	cout => \mp|beatPulsoVentr|Add0~53\);

-- Location: LCCOMB_X12_Y20_N30
\mp|beatPulsoVentr|intcont[26]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[26]~9_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(26)) # ((\mp|beatPulsoVentr|Add0~52_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~52_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~52_combout\,
	datac => \mp|beatPulsoVentr|intcont\(26),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[26]~9_combout\);

-- Location: FF_X12_Y20_N31
\mp|beatPulsoVentr|intcont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[26]~9_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(26));

-- Location: LCCOMB_X13_Y20_N22
\mp|beatPulsoVentr|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~54_combout\ = (\mp|beatPulsoVentr|intcont\(27) & (!\mp|beatPulsoVentr|Add0~53\)) # (!\mp|beatPulsoVentr|intcont\(27) & ((\mp|beatPulsoVentr|Add0~53\) # (GND)))
-- \mp|beatPulsoVentr|Add0~55\ = CARRY((!\mp|beatPulsoVentr|Add0~53\) # (!\mp|beatPulsoVentr|intcont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(27),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~53\,
	combout => \mp|beatPulsoVentr|Add0~54_combout\,
	cout => \mp|beatPulsoVentr|Add0~55\);

-- Location: LCCOMB_X12_Y20_N22
\mp|beatPulsoVentr|intcont[27]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[27]~8_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(27)) # ((\mp|beatPulsoVentr|Add0~54_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~54_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~54_combout\,
	datac => \mp|beatPulsoVentr|intcont\(27),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[27]~8_combout\);

-- Location: FF_X12_Y20_N23
\mp|beatPulsoVentr|intcont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[27]~8_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(27));

-- Location: LCCOMB_X13_Y20_N24
\mp|beatPulsoVentr|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~56_combout\ = (\mp|beatPulsoVentr|intcont\(28) & (\mp|beatPulsoVentr|Add0~55\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(28) & (!\mp|beatPulsoVentr|Add0~55\ & VCC))
-- \mp|beatPulsoVentr|Add0~57\ = CARRY((\mp|beatPulsoVentr|intcont\(28) & !\mp|beatPulsoVentr|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(28),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~55\,
	combout => \mp|beatPulsoVentr|Add0~56_combout\,
	cout => \mp|beatPulsoVentr|Add0~57\);

-- Location: LCCOMB_X12_Y20_N28
\mp|beatPulsoVentr|intcont[28]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[28]~7_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & ((\mp|beatPulsoVentr|intcont\(28)) # ((\mp|beatPulsoVentr|Add0~56_combout\ & \mp|beatPulsoVentr|intcont~37_combout\)))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & 
-- (\mp|beatPulsoVentr|Add0~56_combout\ & ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~56_combout\,
	datac => \mp|beatPulsoVentr|intcont\(28),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[28]~7_combout\);

-- Location: FF_X12_Y20_N29
\mp|beatPulsoVentr|intcont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[28]~7_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(28));

-- Location: LCCOMB_X13_Y20_N26
\mp|beatPulsoVentr|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~58_combout\ = (\mp|beatPulsoVentr|intcont\(29) & (!\mp|beatPulsoVentr|Add0~57\)) # (!\mp|beatPulsoVentr|intcont\(29) & ((\mp|beatPulsoVentr|Add0~57\) # (GND)))
-- \mp|beatPulsoVentr|Add0~59\ = CARRY((!\mp|beatPulsoVentr|Add0~57\) # (!\mp|beatPulsoVentr|intcont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(29),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~57\,
	combout => \mp|beatPulsoVentr|Add0~58_combout\,
	cout => \mp|beatPulsoVentr|Add0~59\);

-- Location: LCCOMB_X12_Y20_N10
\mp|beatPulsoVentr|intcont[29]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[29]~6_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & (((\mp|beatPulsoVentr|intcont\(29))))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & (\mp|beatPulsoVentr|Add0~58_combout\ & 
-- ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~58_combout\,
	datac => \mp|beatPulsoVentr|intcont\(29),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[29]~6_combout\);

-- Location: FF_X12_Y20_N11
\mp|beatPulsoVentr|intcont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[29]~6_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(29));

-- Location: LCCOMB_X13_Y20_N28
\mp|beatPulsoVentr|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~60_combout\ = (\mp|beatPulsoVentr|intcont\(30) & (\mp|beatPulsoVentr|Add0~59\ $ (GND))) # (!\mp|beatPulsoVentr|intcont\(30) & (!\mp|beatPulsoVentr|Add0~59\ & VCC))
-- \mp|beatPulsoVentr|Add0~61\ = CARRY((\mp|beatPulsoVentr|intcont\(30) & !\mp|beatPulsoVentr|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mp|beatPulsoVentr|intcont\(30),
	datad => VCC,
	cin => \mp|beatPulsoVentr|Add0~59\,
	combout => \mp|beatPulsoVentr|Add0~60_combout\,
	cout => \mp|beatPulsoVentr|Add0~61\);

-- Location: LCCOMB_X12_Y20_N4
\mp|beatPulsoVentr|intcont[30]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[30]~5_combout\ = (\mp|beatPulsoVentr|intcont[0]~4_combout\ & (((\mp|beatPulsoVentr|intcont\(30))))) # (!\mp|beatPulsoVentr|intcont[0]~4_combout\ & (\mp|beatPulsoVentr|Add0~60_combout\ & 
-- ((\mp|beatPulsoVentr|intcont~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont[0]~4_combout\,
	datab => \mp|beatPulsoVentr|Add0~60_combout\,
	datac => \mp|beatPulsoVentr|intcont\(30),
	datad => \mp|beatPulsoVentr|intcont~37_combout\,
	combout => \mp|beatPulsoVentr|intcont[30]~5_combout\);

-- Location: FF_X12_Y20_N5
\mp|beatPulsoVentr|intcont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[30]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(30));

-- Location: LCCOMB_X13_Y20_N30
\mp|beatPulsoVentr|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Add0~62_combout\ = \mp|beatPulsoVentr|intcont\(31) $ (\mp|beatPulsoVentr|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(31),
	cin => \mp|beatPulsoVentr|Add0~61\,
	combout => \mp|beatPulsoVentr|Add0~62_combout\);

-- Location: LCCOMB_X12_Y21_N4
\mp|beatPulsoVentr|intcont[31]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[31]~33_combout\ = (\mp|delayPulsoVentr|Equal0~10_combout\ & (\mp|beatPulsoVentr|Add0~62_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31))))) # (!\mp|delayPulsoVentr|Equal0~10_combout\ & 
-- (((\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|delayPulsoVentr|Equal0~10_combout\,
	datac => \mp|beatPulsoVentr|intcont\(31),
	datad => \mp|beatPulsoVentr|Add0~62_combout\,
	combout => \mp|beatPulsoVentr|intcont[31]~33_combout\);

-- Location: FF_X12_Y21_N5
\mp|beatPulsoVentr|intcont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[31]~33_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(31));

-- Location: LCCOMB_X12_Y21_N16
\mp|beatPulsoVentr|intcont[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[2]~35_combout\ = (\mp|beatPulsoVentr|Add0~4_combout\ & (\mp|delayPulsoVentr|Equal0~10_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|beatPulsoVentr|intcont\(31),
	datac => \mp|beatPulsoVentr|Add0~4_combout\,
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[2]~35_combout\);

-- Location: FF_X12_Y21_N17
\mp|beatPulsoVentr|intcont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[2]~35_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(2));

-- Location: LCCOMB_X11_Y21_N8
\mp|beatPulsoVentr|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~6_combout\ = (!\mp|beatPulsoVentr|intcont\(7) & (!\mp|beatPulsoVentr|intcont\(8) & (!\mp|beatPulsoVentr|intcont\(9) & !\mp|beatPulsoVentr|intcont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(7),
	datab => \mp|beatPulsoVentr|intcont\(8),
	datac => \mp|beatPulsoVentr|intcont\(9),
	datad => \mp|beatPulsoVentr|intcont\(10),
	combout => \mp|beatPulsoVentr|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y21_N18
\mp|beatPulsoVentr|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~5_combout\ = (!\mp|beatPulsoVentr|intcont\(14) & (!\mp|beatPulsoVentr|intcont\(12) & (!\mp|beatPulsoVentr|intcont\(13) & !\mp|beatPulsoVentr|intcont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(14),
	datab => \mp|beatPulsoVentr|intcont\(12),
	datac => \mp|beatPulsoVentr|intcont\(13),
	datad => \mp|beatPulsoVentr|intcont\(11),
	combout => \mp|beatPulsoVentr|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y21_N14
\mp|beatPulsoVentr|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~7_combout\ = (!\mp|beatPulsoVentr|intcont\(5) & !\mp|beatPulsoVentr|intcont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(5),
	datac => \mp|beatPulsoVentr|intcont\(6),
	combout => \mp|beatPulsoVentr|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y20_N18
\mp|beatPulsoVentr|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~1_combout\ = (!\mp|beatPulsoVentr|intcont\(26) & (!\mp|beatPulsoVentr|intcont\(24) & (!\mp|beatPulsoVentr|intcont\(25) & !\mp|beatPulsoVentr|intcont\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(26),
	datab => \mp|beatPulsoVentr|intcont\(24),
	datac => \mp|beatPulsoVentr|intcont\(25),
	datad => \mp|beatPulsoVentr|intcont\(23),
	combout => \mp|beatPulsoVentr|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y20_N0
\mp|beatPulsoVentr|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~0_combout\ = (!\mp|beatPulsoVentr|intcont\(29) & (!\mp|beatPulsoVentr|intcont\(30) & (!\mp|beatPulsoVentr|intcont\(27) & !\mp|beatPulsoVentr|intcont\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(29),
	datab => \mp|beatPulsoVentr|intcont\(30),
	datac => \mp|beatPulsoVentr|intcont\(27),
	datad => \mp|beatPulsoVentr|intcont\(28),
	combout => \mp|beatPulsoVentr|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\mp|beatPulsoVentr|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~2_combout\ = (!\mp|beatPulsoVentr|intcont\(22) & (!\mp|beatPulsoVentr|intcont\(21) & (!\mp|beatPulsoVentr|intcont\(20) & !\mp|beatPulsoVentr|intcont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(22),
	datab => \mp|beatPulsoVentr|intcont\(21),
	datac => \mp|beatPulsoVentr|intcont\(20),
	datad => \mp|beatPulsoVentr|intcont\(19),
	combout => \mp|beatPulsoVentr|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y20_N14
\mp|beatPulsoVentr|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~3_combout\ = (!\mp|beatPulsoVentr|intcont\(16) & (!\mp|beatPulsoVentr|intcont\(17) & (!\mp|beatPulsoVentr|intcont\(18) & !\mp|beatPulsoVentr|intcont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(16),
	datab => \mp|beatPulsoVentr|intcont\(17),
	datac => \mp|beatPulsoVentr|intcont\(18),
	datad => \mp|beatPulsoVentr|intcont\(15),
	combout => \mp|beatPulsoVentr|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y21_N20
\mp|beatPulsoVentr|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~4_combout\ = (\mp|beatPulsoVentr|Equal0~1_combout\ & (\mp|beatPulsoVentr|Equal0~0_combout\ & (\mp|beatPulsoVentr|Equal0~2_combout\ & \mp|beatPulsoVentr|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|Equal0~1_combout\,
	datab => \mp|beatPulsoVentr|Equal0~0_combout\,
	datac => \mp|beatPulsoVentr|Equal0~2_combout\,
	datad => \mp|beatPulsoVentr|Equal0~3_combout\,
	combout => \mp|beatPulsoVentr|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y21_N28
\mp|beatPulsoVentr|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~8_combout\ = (\mp|beatPulsoVentr|Equal0~6_combout\ & (\mp|beatPulsoVentr|Equal0~5_combout\ & (\mp|beatPulsoVentr|Equal0~7_combout\ & \mp|beatPulsoVentr|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|Equal0~6_combout\,
	datab => \mp|beatPulsoVentr|Equal0~5_combout\,
	datac => \mp|beatPulsoVentr|Equal0~7_combout\,
	datad => \mp|beatPulsoVentr|Equal0~4_combout\,
	combout => \mp|beatPulsoVentr|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y21_N26
\mp|beatPulsoVentr|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|LessThan0~0_combout\ = (\mp|beatPulsoVentr|Equal0~8_combout\ & (((!\mp|beatPulsoVentr|intcont\(2) & !\mp|beatPulsoVentr|intcont\(3))) # (!\mp|beatPulsoVentr|intcont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(2),
	datab => \mp|beatPulsoVentr|intcont\(3),
	datac => \mp|beatPulsoVentr|intcont\(4),
	datad => \mp|beatPulsoVentr|Equal0~8_combout\,
	combout => \mp|beatPulsoVentr|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y21_N6
\mp|beatPulsoVentr|intcont[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|intcont[0]~32_combout\ = (\mp|beatPulsoVentr|Add0~0_combout\ & (\mp|delayPulsoVentr|Equal0~10_combout\ & ((\mp|beatPulsoVentr|LessThan0~0_combout\) # (\mp|beatPulsoVentr|intcont\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|LessThan0~0_combout\,
	datab => \mp|beatPulsoVentr|Add0~0_combout\,
	datac => \mp|beatPulsoVentr|intcont\(31),
	datad => \mp|delayPulsoVentr|Equal0~10_combout\,
	combout => \mp|beatPulsoVentr|intcont[0]~32_combout\);

-- Location: FF_X12_Y21_N7
\mp|beatPulsoVentr|intcont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mp|millisegundos|ax~clkctrl_outclk\,
	d => \mp|beatPulsoVentr|intcont[0]~32_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \mp|beatPulsoVentr|ALT_INV_intcont[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mp|beatPulsoVentr|intcont\(0));

-- Location: LCCOMB_X11_Y21_N10
\mp|beatPulsoVentr|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~9_combout\ = (!\mp|beatPulsoVentr|intcont\(0) & (!\mp|beatPulsoVentr|intcont\(3) & (\mp|beatPulsoVentr|intcont\(4) & !\mp|beatPulsoVentr|intcont\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|intcont\(0),
	datab => \mp|beatPulsoVentr|intcont\(3),
	datac => \mp|beatPulsoVentr|intcont\(4),
	datad => \mp|beatPulsoVentr|intcont\(31),
	combout => \mp|beatPulsoVentr|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y21_N4
\mp|beatPulsoVentr|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|beatPulsoVentr|Equal0~10_combout\ = (\mp|beatPulsoVentr|Equal0~9_combout\ & (\mp|beatPulsoVentr|intcont\(2) & (!\mp|beatPulsoVentr|intcont\(1) & \mp|beatPulsoVentr|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|Equal0~9_combout\,
	datab => \mp|beatPulsoVentr|intcont\(2),
	datac => \mp|beatPulsoVentr|intcont\(1),
	datad => \mp|beatPulsoVentr|Equal0~8_combout\,
	combout => \mp|beatPulsoVentr|Equal0~10_combout\);

-- Location: LCCOMB_X13_Y27_N22
\mp|PVT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mp|PVT~combout\ = (\mp|beatPulsoVentr|Equal0~10_combout\ & ((!\cor|beatVentr|Equal0~10_combout\) # (!\sinais[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mp|beatPulsoVentr|Equal0~10_combout\,
	datac => \sinais[1]~input_o\,
	datad => \cor|beatVentr|Equal0~10_combout\,
	combout => \mp|PVT~combout\);

ww_SACR <= \SACR~output_o\;

ww_SVCR <= \SVCR~output_o\;

ww_PAMP <= \PAMP~output_o\;

ww_PVMP <= \PVMP~output_o\;
END structure;


