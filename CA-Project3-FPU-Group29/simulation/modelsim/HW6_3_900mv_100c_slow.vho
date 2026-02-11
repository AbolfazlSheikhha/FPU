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

-- DATE "04/18/2024 20:34:01"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	opcode : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	PC : OUT std_logic_vector(7 DOWNTO 0);
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0);
	R4 : OUT std_logic_vector(7 DOWNTO 0);
	R5 : OUT std_logic_vector(7 DOWNTO 0);
	R6 : OUT std_logic_vector(7 DOWNTO 0);
	R7 : OUT std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- opcode[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R7 : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \R4[7]~output_o\ : std_logic;
SIGNAL \R4[6]~output_o\ : std_logic;
SIGNAL \R4[5]~output_o\ : std_logic;
SIGNAL \R4[4]~output_o\ : std_logic;
SIGNAL \R4[3]~output_o\ : std_logic;
SIGNAL \R4[2]~output_o\ : std_logic;
SIGNAL \R4[1]~output_o\ : std_logic;
SIGNAL \R4[0]~output_o\ : std_logic;
SIGNAL \R5[7]~output_o\ : std_logic;
SIGNAL \R5[6]~output_o\ : std_logic;
SIGNAL \R5[5]~output_o\ : std_logic;
SIGNAL \R5[4]~output_o\ : std_logic;
SIGNAL \R5[3]~output_o\ : std_logic;
SIGNAL \R5[2]~output_o\ : std_logic;
SIGNAL \R5[1]~output_o\ : std_logic;
SIGNAL \R5[0]~output_o\ : std_logic;
SIGNAL \R6[7]~output_o\ : std_logic;
SIGNAL \R6[6]~output_o\ : std_logic;
SIGNAL \R6[5]~output_o\ : std_logic;
SIGNAL \R6[4]~output_o\ : std_logic;
SIGNAL \R6[3]~output_o\ : std_logic;
SIGNAL \R6[2]~output_o\ : std_logic;
SIGNAL \R6[1]~output_o\ : std_logic;
SIGNAL \R6[0]~output_o\ : std_logic;
SIGNAL \R7[7]~output_o\ : std_logic;
SIGNAL \R7[6]~output_o\ : std_logic;
SIGNAL \R7[5]~output_o\ : std_logic;
SIGNAL \R7[4]~output_o\ : std_logic;
SIGNAL \R7[3]~output_o\ : std_logic;
SIGNAL \R7[2]~output_o\ : std_logic;
SIGNAL \R7[1]~output_o\ : std_logic;
SIGNAL \R7[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst29|12~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst|inst3~combout\ : std_logic;
SIGNAL \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|inst4~q\ : std_logic;
SIGNAL \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|inst3~q\ : std_logic;
SIGNAL \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst29|24~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst2|inst16~q\ : std_logic;
SIGNAL \inst9|inst3~combout\ : std_logic;
SIGNAL \inst9|inst0~q\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst|inst4|inst20|inst10~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst3~q\ : std_logic;
SIGNAL \inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|inst12~q\ : std_logic;
SIGNAL \inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~3_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~4_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~5_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst4|32~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~9_combout\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst10~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst28[7]~0DUPLICATE_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~6_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~11_combout\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst4|32~10_combout\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst4|32~7_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst28[7]~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst5|33~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst28[7]~16_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|11~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|5~0_combout\ : std_logic;
SIGNAL \inst2|inst8|inst7|inst3|6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|5~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|5~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~8_combout\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[0]~2_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[0]~24_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|5~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|11~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst28[0]~6_combout\ : std_logic;
SIGNAL \inst|inst9|5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst28[1]~4_combout\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst28[1]~5_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~7_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~6_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~5_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst24|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|X~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst24|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst9|7~combout\ : std_logic;
SIGNAL \inst|inst9|8~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|6~0_combout\ : std_logic;
SIGNAL \inst|inst9|6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|6~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst28[2]~12_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst30|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst4~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst28[3]~14_combout\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst28[3]~15_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst28[4]~9_combout\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst28[4]~8_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[4]~3_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[4]~20_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst14~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst28[5]~11_combout\ : std_logic;
SIGNAL \inst|inst9|18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst3|inst5~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|5~2_combout\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst28[6]~3_combout\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst12~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst28[6]~2_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst9|23~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst9|19~combout\ : std_logic;
SIGNAL \inst|inst9|21~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|23~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|23~0_combout\ : std_logic;
SIGNAL \inst|inst9|12~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|23~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst28[7]~0_combout\ : std_logic;
SIGNAL \inst|inst9|24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Rt1|X~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Rt1|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|and~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst20~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst19~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|12~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|X~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|X~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst32~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst31~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst31~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst30~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst29~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|X~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|X~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst28~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst27~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst24~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|X~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst6|inst3|24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst2|24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|24~0_combout\ : std_logic;
SIGNAL \inst|inst11[6]~1_combout\ : std_logic;
SIGNAL \inst|inst25|inst12~q\ : std_logic;
SIGNAL \inst|inst30|inst12~q\ : std_logic;
SIGNAL \inst|inst27|23~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[6]~4_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[6]~32_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst14~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst28[5]~10DUPLICATE_combout\ : std_logic;
SIGNAL \inst|inst9|20~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|18~1_combout\ : std_logic;
SIGNAL \inst|inst11[4]~3_combout\ : std_logic;
SIGNAL \inst|inst25|inst16~q\ : std_logic;
SIGNAL \inst|inst30|inst16~q\ : std_logic;
SIGNAL \inst|inst27|17~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst9|17~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst16~q\ : std_logic;
SIGNAL \inst|inst9|15~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|17~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|17~0_combout\ : std_logic;
SIGNAL \inst|inst11[3]~4_combout\ : std_logic;
SIGNAL \inst|inst25|inst4~q\ : std_logic;
SIGNAL \inst|inst27|12~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[3]~6_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[3]~8_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|12~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|12~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|12~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst3|inst3~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|12~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|12~0_combout\ : std_logic;
SIGNAL \inst|inst11[2]~5_combout\ : std_logic;
SIGNAL \inst|inst25|inst3~q\ : std_logic;
SIGNAL \inst|inst27|11~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst28[2]~13_combout\ : std_logic;
SIGNAL \inst|inst9|11~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst9|9~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|11~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|11~0_combout\ : std_logic;
SIGNAL \inst|inst11[1]~6_combout\ : std_logic;
SIGNAL \inst|inst25|inst2~q\ : std_logic;
SIGNAL \inst|inst13|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst2~q\ : std_logic;
SIGNAL \inst|inst27|6~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[1]~7_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[1]~28_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst9|4~combout\ : std_logic;
SIGNAL \inst|inst9|3~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|5~3_combout\ : std_logic;
SIGNAL \inst|inst25|inst100~q\ : std_logic;
SIGNAL \inst|inst30|inst100~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst100~q\ : std_logic;
SIGNAL \inst|inst27|5~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst28[0]~7_combout\ : std_logic;
SIGNAL \inst|inst11[0]~7_combout\ : std_logic;
SIGNAL \inst|inst11[7]~0_combout\ : std_logic;
SIGNAL \inst|inst25|inst10~q\ : std_logic;
SIGNAL \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst10~q\ : std_logic;
SIGNAL \inst|inst27|24~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[7]~0_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[7]~36_combout\ : std_logic;
SIGNAL \inst|inst29|24~2_combout\ : std_logic;
SIGNAL \inst|inst29|24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst3|inst~1_combout\ : std_logic;
SIGNAL \inst|inst18~0_combout\ : std_logic;
SIGNAL \inst|inst29|24~3_combout\ : std_logic;
SIGNAL \inst|inst6|inst10~q\ : std_logic;
SIGNAL \inst|inst4|inst20|inst14~q\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst6|inst12~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst4~q\ : std_logic;
SIGNAL \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|32~2_combout\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst28[5]~10_combout\ : std_logic;
SIGNAL \inst|inst11[5]~2_combout\ : std_logic;
SIGNAL \inst|inst25|inst14~q\ : std_logic;
SIGNAL \inst|inst30|inst14~q\ : std_logic;
SIGNAL \inst|inst27|18~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|inst14~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[5]~5_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[5]~16_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst6|inst14~q\ : std_logic;
SIGNAL \inst|inst4|inst20|inst16~q\ : std_logic;
SIGNAL \inst|inst6|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst16~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst14~q\ : std_logic;
SIGNAL \inst6|inst2~combout\ : std_logic;
SIGNAL \inst|inst29|12~1_combout\ : std_logic;
SIGNAL \inst|inst29|12~2_combout\ : std_logic;
SIGNAL \inst|inst6|inst4~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst5|ROut1[2]~1_combout\ : std_logic;
SIGNAL \inst|inst5|ROut1[2]~12_combout\ : std_logic;
SIGNAL \inst|inst6|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst3~q\ : std_logic;
SIGNAL \inst|inst4|inst20|inst2~q\ : std_logic;
SIGNAL \inst|inst6|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst2~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst12~q\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|6~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|and~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst10|inst2|inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst8~combout\ : std_logic;
SIGNAL \inst9|inst~combout\ : std_logic;
SIGNAL \inst9|inst2~q\ : std_logic;
SIGNAL \inst9|inst5~combout\ : std_logic;
SIGNAL \inst9|inst1~q\ : std_logic;
SIGNAL \inst|inst4|inst20|inst100~q\ : std_logic;
SIGNAL \inst|inst6|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst100~q\ : std_logic;
SIGNAL \inst|inst4|inst2|inst10~q\ : std_logic;
SIGNAL \inst|inst|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst2|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst5|ALT_INV_inst28[5]~10DUPLICATE_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[7]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_12~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_12~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_12~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_12~1_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[1]~7_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[3]~6_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_5~4_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[5]~5_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[6]~4_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[4]~3_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[0]~2_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[2]~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst32~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|ALT_INV_X~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|ALT_INV_X~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\ : std_logic;
SIGNAL \inst|inst3|inst1|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst8|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst27~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst9|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst24~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \ALT_INV_inst12~combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|ALT_INV_and~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|regByte|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|ALT_INV_and~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst10|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst3|inst1|counter|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst9|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst4|ALT_INV_32~6_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|ALT_INV_32~4_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|ALT_INV_32~3_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst27|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst27|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst27|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst27|ALT_INV_23~0_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst4|ALT_INV_32~1_combout\ : std_logic;
SIGNAL \inst|inst5|inst4|ALT_INV_32~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst27|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst30|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst29|ALT_INV_12~1_combout\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst16~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst12~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst0~q\ : std_logic;
SIGNAL \inst|inst29|ALT_INV_24~2_combout\ : std_logic;
SIGNAL \inst|inst29|ALT_INV_24~1_combout\ : std_logic;
SIGNAL \inst|inst29|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst6~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst3|ALT_INV_inst~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst3|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_5~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_3~combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_4~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_8~combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_7~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_18~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_20~combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_23~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_23~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_23~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_21~combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_5~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_17~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_15~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_9~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|ALT_INV_6~combout\ : std_logic;
SIGNAL \inst2|inst8|inst7|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[7]~16_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_19~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst|inst2|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst6|inst3|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_12~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[3]~15_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[3]~14_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst3|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[2]~13_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[2]~12_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_18~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[5]~11_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[5]~10_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst3|ALT_INV_inst5~combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_17~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[4]~9_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[4]~8_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[0]~7_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[0]~6_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[1]~5_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[1]~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_23~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[6]~3_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[6]~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst28|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst7|inst4|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst13|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \inst|inst9|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[7]~1_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_inst28[7]~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst5|ALT_INV_33~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[7]~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst29|ALT_INV_24~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst1|inst|inst|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst20|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_inst1~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst15|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst14|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst93|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst7|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst3|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst8|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst5|inst9|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst6|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[7]~36_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[6]~32_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[1]~28_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[0]~24_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[4]~20_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[5]~16_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[2]~12_combout\ : std_logic;
SIGNAL \inst|inst5|ALT_INV_ROut1[3]~8_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_11~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_17~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst7|inst3|ALT_INV_6~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst25|ALT_INV_inst100~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst3~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst|inst25|ALT_INV_inst10~q\ : std_logic;

BEGIN

opcode <= ww_opcode;
ww_clk <= clk;
PC <= ww_PC;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
R4 <= ww_R4;
R5 <= ww_R5;
R6 <= ww_R6;
R7 <= ww_R7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(15) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(14) & 
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(13) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(12) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(11) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(10) & 
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(9) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(8) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(7) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(6) & 
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(5) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(4) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(3) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(2) & 
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(1) & \inst|inst|inst|sram|ram_block|auto_generated|q_a\(0));

\inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst6|inst10~q\ & \inst|inst6|inst12~q\ & \inst|inst6|inst14~q\ & \inst|inst6|inst16~q\ & \inst|inst6|inst4~q\ & \inst|inst6|inst3~q\ & \inst|inst6|inst2~q\ & 
\inst|inst6|inst100~q\);

\inst|inst|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(8) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(9) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(10) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(11) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(12) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(13) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(14) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|inst|inst|sram|ram_block|auto_generated|q_a\(15) <= \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|inst11[7]~0_combout\ & \inst|inst11[6]~1_combout\ & \inst|inst11[5]~2_combout\ & \inst|inst11[4]~3_combout\
& \inst|inst11[3]~4_combout\ & \inst|inst11[2]~5_combout\ & \inst|inst11[1]~6_combout\ & \inst|inst11[0]~7_combout\);

\inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst3|inst|inst7|inst3|24~0_combout\ & \inst|inst3|inst|inst7|inst3|23~1_combout\ & \inst|inst3|inst|inst7|inst3|18~1_combout\ & 
\inst|inst3|inst|inst7|inst3|17~0_combout\ & \inst|inst3|inst|inst7|inst3|12~0_combout\ & \inst|inst3|inst|inst7|inst3|11~0_combout\ & \inst|inst3|inst|inst7|inst3|6~0_combout\ & \inst|inst3|inst|inst7|inst3|5~3_combout\);

\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst5|ALT_INV_inst28[5]~10DUPLICATE_combout\ <= NOT \inst|inst5|inst28[5]~10DUPLICATE_combout\;
\inst|inst5|ALT_INV_inst28[7]~0DUPLICATE_combout\ <= NOT \inst|inst5|inst28[7]~0DUPLICATE_combout\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_12~4_combout\ <= NOT \inst|inst3|inst|inst7|inst3|12~4_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_12~3_combout\ <= NOT \inst|inst3|inst|inst7|inst3|12~3_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_12~2_combout\ <= NOT \inst|inst3|inst|inst7|inst3|12~2_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_12~1_combout\ <= NOT \inst|inst3|inst|inst7|inst3|12~1_combout\;
\inst|inst5|ALT_INV_ROut1[1]~7_combout\ <= NOT \inst|inst5|ROut1[1]~7_combout\;
\inst|inst5|ALT_INV_ROut1[3]~6_combout\ <= NOT \inst|inst5|ROut1[3]~6_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_5~4_combout\ <= NOT \inst|inst3|inst|inst7|inst3|5~4_combout\;
\inst|inst5|ALT_INV_ROut1[5]~5_combout\ <= NOT \inst|inst5|ROut1[5]~5_combout\;
\inst|inst5|ALT_INV_ROut1[6]~4_combout\ <= NOT \inst|inst5|ROut1[6]~4_combout\;
\inst|inst5|ALT_INV_ROut1[4]~3_combout\ <= NOT \inst|inst5|ROut1[4]~3_combout\;
\inst|inst5|ALT_INV_ROut1[0]~2_combout\ <= NOT \inst|inst5|ROut1[0]~2_combout\;
\inst|inst5|ALT_INV_ROut1[2]~1_combout\ <= NOT \inst|inst5|ROut1[2]~1_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst10~q\;
\inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst12~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst32~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst32~q\;
\inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~1_combout\ <= NOT \inst|inst3|inst1|Result1|inst2|inst31~1_combout\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst2|inst31~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\;
\inst|inst3|inst1|inst8|ALT_INV_18~0_combout\ <= NOT \inst|inst3|inst1|inst8|18~0_combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst14~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst31~q\;
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst16~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst30~q\;
\inst|inst3|inst1|Result1|ALT_INV_X~1_combout\ <= NOT \inst|inst3|inst1|Result1|X~1_combout\;
\inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\;
\inst|inst3|inst1|inst8|ALT_INV_12~0_combout\ <= NOT \inst|inst3|inst1|inst8|12~0_combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst4~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst29~q\;
\inst|inst3|inst1|Result1|ALT_INV_X~0_combout\ <= NOT \inst|inst3|inst1|Result1|X~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst3~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst28~q\;
\inst|inst3|inst1|ALT_INV_inst19~combout\ <= NOT \inst|inst3|inst1|inst19~combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\;
\inst|inst3|inst1|ALT_INV_inst20~combout\ <= NOT \inst|inst3|inst1|inst20~combout\;
\inst|inst3|inst1|inst8|ALT_INV_6~0_combout\ <= NOT \inst|inst3|inst1|inst8|6~0_combout\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst2~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst27~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst27~q\;
\inst|inst3|inst1|inst9|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|inst9|inst2|inst100~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst24~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst24~q\;
\inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|Rt1|inst2|inst100~q\;
\ALT_INV_inst12~combout\ <= NOT \inst12~combout\;
\inst|inst3|ALT_INV_inst8~combout\ <= NOT \inst|inst3|inst8~combout\;
\inst|inst3|inst1|ALT_INV_and~1_combout\ <= NOT \inst|inst3|inst1|and~1_combout\;
\inst|inst3|inst1|regByte|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst1|regByte|inst3~q\;
\inst|inst3|inst1|regByte|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|regByte|inst100~q\;
\inst|inst3|inst1|regByte|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst1|regByte|inst2~q\;
\inst|inst3|inst1|ALT_INV_and~0_combout\ <= NOT \inst|inst3|inst1|and~0_combout\;
\inst|inst3|inst1|inst10|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|inst10|inst2|inst100~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst100~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst2~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst14~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst12~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst16~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst3~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst4~q\;
\inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\ <= NOT \inst|inst3|inst1|inst24|inst1|inst~combout\;
\inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\ <= NOT \inst|inst3|inst1|inst24|inst1|inst~0_combout\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst100~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst2~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst4~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst3~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst16~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst14~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst10~q\;
\inst|inst3|inst1|counter|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst1|counter|inst2|inst12~q\;
\inst|inst3|inst1|Result1|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst1|Result1|inst2|inst10~q\;
\inst9|ALT_INV_inst2~q\ <= NOT \inst9|inst2~q\;
\inst|inst5|inst4|ALT_INV_32~6_combout\ <= NOT \inst|inst5|inst4|32~6_combout\;
\inst|inst5|inst4|ALT_INV_32~4_combout\ <= NOT \inst|inst5|inst4|32~4_combout\;
\inst|inst5|inst4|ALT_INV_32~3_combout\ <= NOT \inst|inst5|inst4|32~3_combout\;
\inst|inst30|ALT_INV_inst100~q\ <= NOT \inst|inst30|inst100~q\;
\inst|inst27|ALT_INV_6~0_combout\ <= NOT \inst|inst27|6~0_combout\;
\inst|inst30|ALT_INV_inst2~q\ <= NOT \inst|inst30|inst2~q\;
\inst|inst30|ALT_INV_inst3~q\ <= NOT \inst|inst30|inst3~q\;
\inst|inst27|ALT_INV_12~0_combout\ <= NOT \inst|inst27|12~0_combout\;
\inst|inst30|ALT_INV_inst4~q\ <= NOT \inst|inst30|inst4~q\;
\inst|inst30|ALT_INV_inst16~q\ <= NOT \inst|inst30|inst16~q\;
\inst|inst27|ALT_INV_18~0_combout\ <= NOT \inst|inst27|18~0_combout\;
\inst|inst30|ALT_INV_inst14~q\ <= NOT \inst|inst30|inst14~q\;
\inst|inst27|ALT_INV_23~0_combout\ <= NOT \inst|inst27|23~0_combout\;
\inst|inst30|ALT_INV_inst12~q\ <= NOT \inst|inst30|inst12~q\;
\inst|inst5|inst4|ALT_INV_32~1_combout\ <= NOT \inst|inst5|inst4|32~1_combout\;
\inst|inst5|inst4|ALT_INV_32~0_combout\ <= NOT \inst|inst5|inst4|32~0_combout\;
\ALT_INV_inst11~0_combout\ <= NOT \inst11~0_combout\;
\inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst27|ALT_INV_24~0_combout\ <= NOT \inst|inst27|24~0_combout\;
\inst|inst30|ALT_INV_inst10~q\ <= NOT \inst|inst30|inst10~q\;
\inst|inst29|ALT_INV_12~1_combout\ <= NOT \inst|inst29|12~1_combout\;
\inst|inst6|ALT_INV_inst16~0_combout\ <= NOT \inst|inst6|inst16~0_combout\;
\inst|inst6|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst6|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst6|ALT_INV_inst12~0_combout\ <= NOT \inst|inst6|inst12~0_combout\;
\inst9|ALT_INV_inst0~q\ <= NOT \inst9|inst0~q\;
\inst|inst29|ALT_INV_24~2_combout\ <= NOT \inst|inst29|24~2_combout\;
\inst|inst29|ALT_INV_24~1_combout\ <= NOT \inst|inst29|24~1_combout\;
\inst|inst29|ALT_INV_12~0_combout\ <= NOT \inst|inst29|12~0_combout\;
\inst5|ALT_INV_inst6~0_combout\ <= NOT \inst5|inst6~0_combout\;
\inst3|ALT_INV_inst~0_combout\ <= NOT \inst3|inst~0_combout\;
\inst6|ALT_INV_inst2~combout\ <= NOT \inst6|inst2~combout\;
\inst6|ALT_INV_inst2~0_combout\ <= NOT \inst6|inst2~0_combout\;
\inst|ALT_INV_inst18~0_combout\ <= NOT \inst|inst18~0_combout\;
\inst|inst3|inst3|ALT_INV_inst~1_combout\ <= NOT \inst|inst3|inst3|inst~1_combout\;
\inst|inst3|inst3|ALT_INV_inst~0_combout\ <= NOT \inst|inst3|inst3|inst~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_5~3_combout\ <= NOT \inst|inst3|inst|inst7|inst3|5~3_combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst100~q\;
\inst|inst3|inst|inst|inst3|ALT_INV_5~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|5~0_combout\;
\inst|inst9|ALT_INV_3~combout\ <= NOT \inst|inst9|3~combout\;
\inst|inst9|ALT_INV_4~combout\ <= NOT \inst|inst9|4~combout\;
\inst|inst3|inst|inst|inst3|ALT_INV_6~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|6~0_combout\;
\inst|inst9|ALT_INV_8~combout\ <= NOT \inst|inst9|8~combout\;
\inst|inst9|ALT_INV_7~combout\ <= NOT \inst|inst9|7~combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst2~q\;
\inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_18~1_combout\ <= NOT \inst|inst3|inst|inst7|inst3|18~1_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_18~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|18~0_combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst14~q\;
\inst|inst3|inst|inst|inst3|ALT_INV_18~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|18~0_combout\;
\inst|inst9|ALT_INV_20~combout\ <= NOT \inst|inst9|20~combout\;
\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_23~1_combout\ <= NOT \inst|inst3|inst|inst7|inst3|23~1_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_23~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|23~0_combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst12~q\;
\inst|inst3|inst|inst|inst3|ALT_INV_23~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|23~0_combout\;
\inst|inst9|ALT_INV_21~combout\ <= NOT \inst|inst9|21~combout\;
\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_5~2_combout\ <= NOT \inst|inst3|inst|inst7|inst3|5~2_combout\;
\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst|inst3|ALT_INV_17~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|17~0_combout\;
\inst|inst9|ALT_INV_15~combout\ <= NOT \inst|inst9|15~combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst16~q\;
\inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\ <= NOT \inst|inst3|inst|inst7|inst3|5~1_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|5~0_combout\;
\inst|inst3|inst|inst|inst3|ALT_INV_11~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|11~0_combout\;
\inst|inst9|ALT_INV_9~combout\ <= NOT \inst|inst9|9~combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst3~q\;
\inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_12~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|12~0_combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst4~q\;
\inst|inst3|inst|inst7|inst3|ALT_INV_24~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|24~0_combout\;
\inst2|inst|inst7|inst4|ALT_INV_6~combout\ <= NOT \inst2|inst|inst7|inst4|6~combout\;
\inst2|inst8|inst7|inst3|ALT_INV_6~0_combout\ <= NOT \inst2|inst8|inst7|inst3|6~0_combout\;
\inst|inst3|inst|inst|inst3|ALT_INV_24~0_combout\ <= NOT \inst|inst3|inst|inst|inst3|24~0_combout\;
\inst|inst5|ALT_INV_inst28[7]~16_combout\ <= NOT \inst|inst5|inst28[7]~16_combout\;
\inst|inst9|ALT_INV_19~combout\ <= NOT \inst|inst9|19~combout\;
\inst|inst3|inst|inst|inst2|ALT_INV_24~0_combout\ <= NOT \inst|inst3|inst|inst|inst2|24~0_combout\;
\inst|inst3|inst|inst6|inst3|ALT_INV_24~0_combout\ <= NOT \inst|inst3|inst|inst6|inst3|24~0_combout\;
\inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst9|ALT_INV_12~0_combout\ <= NOT \inst|inst9|12~0_combout\;
\inst|inst5|ALT_INV_inst28[3]~15_combout\ <= NOT \inst|inst5|inst28[3]~15_combout\;
\inst|inst5|ALT_INV_inst28[3]~14_combout\ <= NOT \inst|inst5|inst28[3]~14_combout\;
\inst|inst3|inst6|inst3|ALT_INV_inst3~combout\ <= NOT \inst|inst3|inst6|inst3|inst3~combout\;
\inst|inst9|ALT_INV_11~0_combout\ <= NOT \inst|inst9|11~0_combout\;
\inst|inst5|ALT_INV_inst28[2]~13_combout\ <= NOT \inst|inst5|inst28[2]~13_combout\;
\inst|inst5|ALT_INV_inst28[2]~12_combout\ <= NOT \inst|inst5|inst28[2]~12_combout\;
\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst9|ALT_INV_18~0_combout\ <= NOT \inst|inst9|18~0_combout\;
\inst|inst5|ALT_INV_inst28[5]~11_combout\ <= NOT \inst|inst5|inst28[5]~11_combout\;
\inst|inst5|ALT_INV_inst28[5]~10_combout\ <= NOT \inst|inst5|inst28[5]~10_combout\;
\inst|inst3|inst6|inst3|ALT_INV_inst5~combout\ <= NOT \inst|inst3|inst6|inst3|inst5~combout\;
\inst|inst9|ALT_INV_17~0_combout\ <= NOT \inst|inst9|17~0_combout\;
\inst|inst5|ALT_INV_inst28[4]~9_combout\ <= NOT \inst|inst5|inst28[4]~9_combout\;
\inst|inst5|ALT_INV_inst28[4]~8_combout\ <= NOT \inst|inst5|inst28[4]~8_combout\;
\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst9|ALT_INV_5~0_combout\ <= NOT \inst|inst9|5~0_combout\;
\inst|inst5|ALT_INV_inst28[0]~7_combout\ <= NOT \inst|inst5|inst28[0]~7_combout\;
\inst|inst5|ALT_INV_inst28[0]~6_combout\ <= NOT \inst|inst5|inst28[0]~6_combout\;
\inst|inst9|ALT_INV_6~0_combout\ <= NOT \inst|inst9|6~0_combout\;
\inst|inst5|ALT_INV_inst28[1]~5_combout\ <= NOT \inst|inst5|inst28[1]~5_combout\;
\inst|inst5|ALT_INV_inst28[1]~4_combout\ <= NOT \inst|inst5|inst28[1]~4_combout\;
\inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst9|ALT_INV_23~0_combout\ <= NOT \inst|inst9|23~0_combout\;
\inst|inst5|ALT_INV_inst28[6]~3_combout\ <= NOT \inst|inst5|inst28[6]~3_combout\;
\inst|inst5|ALT_INV_inst28[6]~2_combout\ <= NOT \inst|inst5|inst28[6]~2_combout\;
\inst2|inst|inst7|inst4|ALT_INV_11~1_combout\ <= NOT \inst2|inst|inst7|inst4|11~1_combout\;
\inst2|inst|inst7|inst4|ALT_INV_11~0_combout\ <= NOT \inst2|inst|inst7|inst4|11~0_combout\;
\inst|inst3|inst1|inst28|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst3|inst1|inst28|inst2|inst10~q\;
\inst2|inst|inst7|inst4|ALT_INV_5~1_combout\ <= NOT \inst2|inst|inst7|inst4|5~1_combout\;
\inst2|inst|inst7|inst4|ALT_INV_5~0_combout\ <= NOT \inst2|inst|inst7|inst4|5~0_combout\;
\inst|inst3|inst13|ALT_INV_inst8~0_combout\ <= NOT \inst|inst3|inst13|inst8~0_combout\;
\inst|inst9|ALT_INV_24~0_combout\ <= NOT \inst|inst9|24~0_combout\;
\inst|inst5|ALT_INV_inst28[7]~1_combout\ <= NOT \inst|inst5|inst28[7]~1_combout\;
\inst|inst5|ALT_INV_inst28[7]~0_combout\ <= NOT \inst|inst5|inst28[7]~0_combout\;
\inst|inst5|inst5|ALT_INV_33~0_combout\ <= NOT \inst|inst5|inst5|33~0_combout\;
\inst|inst4|inst20|ALT_INV_inst12~q\ <= NOT \inst|inst4|inst20|inst12~q\;
\inst|inst4|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst4|inst2|inst100~q\;
\inst|inst4|inst20|ALT_INV_inst10~q\ <= NOT \inst|inst4|inst20|inst10~q\;
\inst4|ALT_INV_inst1~0_combout\ <= NOT \inst4|inst1~0_combout\;
\inst|inst5|ALT_INV_ROut1[7]~0_combout\ <= NOT \inst|inst5|ROut1[7]~0_combout\;
\inst|inst4|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst4|inst2|inst3~q\;
\inst|inst4|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst4|inst2|inst4~q\;
\inst|inst4|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst4|inst2|inst2~q\;
\inst|inst29|ALT_INV_24~0_combout\ <= NOT \inst|inst29|24~0_combout\;
\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst17|inst1|inst|inst|ALT_INV_inst3~combout\ <= NOT \inst|inst17|inst1|inst|inst|inst3~combout\;
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ <= NOT \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\;
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\;
\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst20|ALT_INV_inst4~q\ <= NOT \inst|inst4|inst20|inst4~q\;
\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst20|ALT_INV_inst3~q\ <= NOT \inst|inst4|inst20|inst3~q\;
\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst20|ALT_INV_inst2~q\ <= NOT \inst|inst4|inst20|inst2~q\;
\inst|inst4|inst20|ALT_INV_inst100~q\ <= NOT \inst|inst4|inst20|inst100~q\;
\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst20|ALT_INV_inst16~q\ <= NOT \inst|inst4|inst20|inst16~q\;
\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst20|ALT_INV_inst14~q\ <= NOT \inst|inst4|inst20|inst14~q\;
\inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst13|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst9|ALT_INV_inst1~q\ <= NOT \inst9|inst1~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst15|inst2|inst100~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst15|inst2|inst2~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst15|inst2|inst3~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst15|inst2|inst4~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst15|inst2|inst16~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst15|inst2|inst14~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst15|inst2|inst12~q\;
\inst|inst5|inst15|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst15|inst2|inst10~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst14|inst2|inst100~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst14|inst2|inst2~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst14|inst2|inst3~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst14|inst2|inst4~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst14|inst2|inst16~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst14|inst2|inst14~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst14|inst2|inst12~q\;
\inst|inst5|inst14|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst14|inst2|inst10~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst93|inst2|inst100~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst93|inst2|inst2~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst93|inst2|inst3~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst93|inst2|inst4~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst93|inst2|inst16~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst93|inst2|inst14~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst93|inst2|inst12~q\;
\inst|inst5|inst93|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst93|inst2|inst10~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst7|inst2|inst100~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst7|inst2|inst2~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst7|inst2|inst3~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst7|inst2|inst4~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst7|inst2|inst16~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst7|inst2|inst14~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst7|inst2|inst12~q\;
\inst|inst5|inst7|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst7|inst2|inst10~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst3|inst2|inst100~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst3|inst2|inst2~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst3|inst2|inst3~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst3|inst2|inst4~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst3|inst2|inst16~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst3|inst2|inst14~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst3|inst2|inst12~q\;
\inst|inst5|inst3|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst3|inst2|inst10~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst8|inst2|inst100~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst8|inst2|inst2~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst8|inst2|inst3~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst8|inst2|inst4~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst8|inst2|inst16~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst8|inst2|inst14~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst8|inst2|inst12~q\;
\inst|inst5|inst8|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst8|inst2|inst10~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst100~q\ <= NOT \inst|inst5|inst9|inst2|inst100~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst2~q\ <= NOT \inst|inst5|inst9|inst2|inst2~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst3~q\ <= NOT \inst|inst5|inst9|inst2|inst3~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst4~q\ <= NOT \inst|inst5|inst9|inst2|inst4~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst5|inst9|inst2|inst16~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst5|inst9|inst2|inst14~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst5|inst9|inst2|inst12~q\;
\inst|inst5|inst9|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst5|inst9|inst2|inst10~q\;
\inst|inst6|ALT_INV_inst100~q\ <= NOT \inst|inst6|inst100~q\;
\inst|inst6|ALT_INV_inst2~q\ <= NOT \inst|inst6|inst2~q\;
\inst|inst6|ALT_INV_inst3~q\ <= NOT \inst|inst6|inst3~q\;
\inst|inst6|ALT_INV_inst4~q\ <= NOT \inst|inst6|inst4~q\;
\inst|inst6|ALT_INV_inst16~q\ <= NOT \inst|inst6|inst16~q\;
\inst|inst6|ALT_INV_inst14~q\ <= NOT \inst|inst6|inst14~q\;
\inst|inst6|ALT_INV_inst12~q\ <= NOT \inst|inst6|inst12~q\;
\inst|inst6|ALT_INV_inst10~q\ <= NOT \inst|inst6|inst10~q\;
\inst|inst4|inst2|ALT_INV_inst16~q\ <= NOT \inst|inst4|inst2|inst16~q\;
\inst|inst4|inst2|ALT_INV_inst14~q\ <= NOT \inst|inst4|inst2|inst14~q\;
\inst|inst4|inst2|ALT_INV_inst12~q\ <= NOT \inst|inst4|inst2|inst12~q\;
\inst|inst4|inst2|ALT_INV_inst10~q\ <= NOT \inst|inst4|inst2|inst10~q\;
\inst|inst5|ALT_INV_ROut1[7]~36_combout\ <= NOT \inst|inst5|ROut1[7]~36_combout\;
\inst|inst5|ALT_INV_ROut1[6]~32_combout\ <= NOT \inst|inst5|ROut1[6]~32_combout\;
\inst|inst5|ALT_INV_ROut1[1]~28_combout\ <= NOT \inst|inst5|ROut1[1]~28_combout\;
\inst|inst5|ALT_INV_ROut1[0]~24_combout\ <= NOT \inst|inst5|ROut1[0]~24_combout\;
\inst|inst5|ALT_INV_ROut1[4]~20_combout\ <= NOT \inst|inst5|ROut1[4]~20_combout\;
\inst|inst5|ALT_INV_ROut1[5]~16_combout\ <= NOT \inst|inst5|ROut1[5]~16_combout\;
\inst|inst5|ALT_INV_ROut1[2]~12_combout\ <= NOT \inst|inst5|ROut1[2]~12_combout\;
\inst|inst5|ALT_INV_ROut1[3]~8_combout\ <= NOT \inst|inst5|ROut1[3]~8_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_11~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|11~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_17~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|17~0_combout\;
\inst|inst3|inst|inst7|inst3|ALT_INV_6~0_combout\ <= NOT \inst|inst3|inst|inst7|inst3|6~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(1);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(2);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(3);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(4);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(5);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(6);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(7);
\inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0) <= NOT \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(0);
\inst|inst25|ALT_INV_inst100~q\ <= NOT \inst|inst25|inst100~q\;
\inst|inst25|ALT_INV_inst2~q\ <= NOT \inst|inst25|inst2~q\;
\inst|inst25|ALT_INV_inst3~q\ <= NOT \inst|inst25|inst3~q\;
\inst|inst25|ALT_INV_inst4~q\ <= NOT \inst|inst25|inst4~q\;
\inst|inst25|ALT_INV_inst16~q\ <= NOT \inst|inst25|inst16~q\;
\inst|inst25|ALT_INV_inst14~q\ <= NOT \inst|inst25|inst14~q\;
\inst|inst25|ALT_INV_inst12~q\ <= NOT \inst|inst25|inst12~q\;
\inst|inst25|ALT_INV_inst10~q\ <= NOT \inst|inst25|inst10~q\;

-- Location: IOOBUF_X29_Y0_N98
\opcode[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\opcode[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\opcode[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\opcode[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\PC[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst10~q\,
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\PC[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst12~q\,
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\PC[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst14~q\,
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\PC[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst16~q\,
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\PC[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst4~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\PC[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst3~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\PC[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst2~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\PC[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6|inst100~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N36
\R0[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\R0[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N67
\R0[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X10_Y56_N67
\R0[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X10_Y56_N98
\R0[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\R0[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N67
\R0[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N98
\R0[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N67
\R1[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\R1[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\R1[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\R1[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N33
\R1[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\R1[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\R1[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N98
\R1[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst9|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\R2[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\R2[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\R2[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\R2[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\R2[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\R2[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X59_Y7_N67
\R2[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\R2[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst8|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\R3[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\R3[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N98
\R3[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\R3[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\R3[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\R3[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\R3[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\R3[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst3|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\R4[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R4[7]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\R4[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R4[6]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\R4[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R4[5]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\R4[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R4[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\R4[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R4[3]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\R4[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R4[2]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\R4[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R4[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\R4[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst7|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R4[0]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\R5[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R5[7]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\R5[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R5[6]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\R5[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R5[5]~output_o\);

-- Location: IOOBUF_X59_Y7_N98
\R5[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R5[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\R5[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R5[3]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\R5[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R5[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\R5[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R5[1]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\R5[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst93|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R5[0]~output_o\);

-- Location: IOOBUF_X10_Y56_N33
\R6[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R6[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\R6[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R6[6]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\R6[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R6[5]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\R6[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R6[4]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\R6[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R6[3]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\R6[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R6[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\R6[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R6[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\R6[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst14|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R6[0]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\R7[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst10~q\,
	devoe => ww_devoe,
	o => \R7[7]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\R7[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \R7[6]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\R7[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst14~q\,
	devoe => ww_devoe,
	o => \R7[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\R7[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst16~q\,
	devoe => ww_devoe,
	o => \R7[4]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\R7[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst4~q\,
	devoe => ww_devoe,
	o => \R7[3]~output_o\);

-- Location: IOOBUF_X59_Y9_N33
\R7[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst3~q\,
	devoe => ww_devoe,
	o => \R7[2]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\R7[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst2~q\,
	devoe => ww_devoe,
	o => \R7[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\R7[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5|inst15|inst2|inst100~q\,
	devoe => ww_devoe,
	o => \R7[0]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LABCELL_X32_Y28_N24
\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst4~q\ & ( !\inst|inst6|inst16~q\ $ (((!\inst|inst6|inst100~q\) # ((!\inst|inst6|inst2~q\) # (!\inst|inst6|inst3~q\)))) ) ) # ( 
-- !\inst|inst6|inst4~q\ & ( \inst|inst6|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst2~q\,
	datac => \inst|inst6|ALT_INV_inst16~q\,
	datad => \inst|inst6|ALT_INV_inst3~q\,
	dataf => \inst|inst6|ALT_INV_inst4~q\,
	combout => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y28_N10
\inst3|inst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst3|inst~0_combout\ = ( \inst|inst4|inst2|inst14~q\ & ( \inst|inst4|inst2|inst12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst14~q\,
	combout => \inst3|inst~0_combout\);

-- Location: LABCELL_X35_Y28_N16
\inst5|inst6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst5|inst6~0_combout\ = ( \inst3|inst~0_combout\ & ( \inst|inst4|inst2|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst3|ALT_INV_inst~0_combout\,
	combout => \inst5|inst6~0_combout\);

-- Location: MLABCELL_X31_Y28_N14
\inst|inst29|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|12~0_combout\ = ( !\inst5|inst6~0_combout\ & ( !\inst6|inst2~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_inst2~combout\,
	datae => \inst5|ALT_INV_inst6~0_combout\,
	combout => \inst|inst29|12~0_combout\);

-- Location: LABCELL_X32_Y28_N20
\inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst4~q\ & ( (\inst|inst6|inst3~q\ & (\inst|inst6|inst100~q\ & \inst|inst6|inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst3~q\,
	datac => \inst|inst6|ALT_INV_inst100~q\,
	datad => \inst|inst6|ALT_INV_inst2~q\,
	dataf => \inst|inst6|ALT_INV_inst4~q\,
	combout => \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y28_N4
\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst14~q\ & ( \inst|inst6|inst12~q\ & ( (!\inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (!\inst|inst6|inst16~q\) ) ) ) # ( !\inst|inst6|inst14~q\ & ( \inst|inst6|inst12~q\ ) ) # ( \inst|inst6|inst14~q\ & ( !\inst|inst6|inst12~q\ & ( (\inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst|inst6|inst16~q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst6|ALT_INV_inst16~q\,
	datae => \inst|inst6|ALT_INV_inst14~q\,
	dataf => \inst|inst6|ALT_INV_inst12~q\,
	combout => \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y28_N14
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\ = ( \inst|inst6|inst2~q\ & ( \inst|inst6|inst16~q\ & ( (\inst|inst6|inst100~q\ & (\inst|inst6|inst4~q\ & (!\inst|inst6|inst14~q\ & \inst|inst6|inst3~q\))) ) ) ) # ( 
-- \inst|inst6|inst2~q\ & ( !\inst|inst6|inst16~q\ & ( (\inst|inst6|inst100~q\ & (\inst|inst6|inst4~q\ & (\inst|inst6|inst14~q\ & \inst|inst6|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst4~q\,
	datac => \inst|inst6|ALT_INV_inst14~q\,
	datad => \inst|inst6|ALT_INV_inst3~q\,
	datae => \inst|inst6|ALT_INV_inst2~q\,
	dataf => \inst|inst6|ALT_INV_inst16~q\,
	combout => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X32_Y28_N16
\inst|inst17|inst1|inst|inst|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst1|inst|inst|inst3~combout\ = ( \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst20|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst20|ALT_INV_inst16~q\,
	dataf => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst17|inst1|inst|inst|inst3~combout\);

-- Location: MLABCELL_X34_Y28_N8
\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\inst|inst6|inst2~q\ & (\inst|inst4|inst20|inst2~q\ & ((\inst|inst4|inst20|inst100~q\) # (\inst|inst6|inst100~q\)))) # (\inst|inst6|inst2~q\ & 
-- (!\inst|inst6|inst100~q\ & ((\inst|inst4|inst20|inst2~q\) # (\inst|inst4|inst20|inst100~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001101110000000100110111000000010011011100000001001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst2~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst2~q\,
	combout => \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: M9K_X33_Y27_N0
\inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0\ : arriaii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000784F0381C029C380102A7F1A33CFE0C02840784F008A080491A33C2118083042045",
	clk0_core_clock_enable => "ena2",
	clk0_input_clock_enable => "ena2",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "hw_factorial.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath:inst|Instruction_Memory:inst|lpm_ram_io:inst|altram:sram|altsyncram:ram_block|altsyncram_nqg1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \ALT_INV_clk~inputclkctrl_outclk\,
	ena2 => VCC,
	portadatain => \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X34_Y27_N31
\inst|inst4|inst20|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst4~q\);

-- Location: MLABCELL_X34_Y28_N10
\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst2~q\ & ( !\inst|inst6|inst100~q\ $ (!\inst|inst6|inst3~q\) ) ) # ( !\inst|inst6|inst2~q\ & ( \inst|inst6|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datac => \inst|inst6|ALT_INV_inst3~q\,
	dataf => \inst|inst6|ALT_INV_inst2~q\,
	combout => \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y27_N7
\inst|inst4|inst20|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst3~q\);

-- Location: MLABCELL_X34_Y28_N4
\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst3~q\ & ( \inst|inst6|inst2~q\ & ( !\inst|inst6|inst100~q\ $ (!\inst|inst6|inst4~q\) ) ) ) # ( !\inst|inst6|inst3~q\ & ( \inst|inst6|inst2~q\ & ( 
-- \inst|inst6|inst4~q\ ) ) ) # ( \inst|inst6|inst3~q\ & ( !\inst|inst6|inst2~q\ & ( \inst|inst6|inst4~q\ ) ) ) # ( !\inst|inst6|inst3~q\ & ( !\inst|inst6|inst2~q\ & ( \inst|inst6|inst4~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datac => \inst|inst6|ALT_INV_inst4~q\,
	datae => \inst|inst6|ALT_INV_inst3~q\,
	dataf => \inst|inst6|ALT_INV_inst2~q\,
	combout => \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y28_N28
\inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst4|inst20|inst4~q\ & ( \inst|inst4|inst20|inst3~q\ & ( (!\inst|inst6|inst4~q\ & (((\inst|inst6|inst100~q\ & \inst|inst6|inst2~q\)) # 
-- (\inst|inst6|inst3~q\))) # (\inst|inst6|inst4~q\ & ((!\inst|inst6|inst3~q\) # ((!\inst|inst6|inst100~q\) # (!\inst|inst6|inst2~q\)))) ) ) ) # ( !\inst|inst4|inst20|inst4~q\ & ( \inst|inst4|inst20|inst3~q\ & ( (\inst|inst6|inst4~q\ & (!\inst|inst6|inst3~q\ 
-- $ (((!\inst|inst6|inst100~q\) # (!\inst|inst6|inst2~q\))))) ) ) ) # ( \inst|inst4|inst20|inst4~q\ & ( !\inst|inst4|inst20|inst3~q\ & ( !\inst|inst6|inst4~q\ $ (((!\inst|inst6|inst3~q\) # ((!\inst|inst6|inst100~q\) # (!\inst|inst6|inst2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101011000010001000101000111011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst4~q\,
	datab => \inst|inst6|ALT_INV_inst3~q\,
	datac => \inst|inst6|ALT_INV_inst100~q\,
	datad => \inst|inst6|ALT_INV_inst2~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst4~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst3~q\,
	combout => \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y28_N34
\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst|inst4|inst20|inst4~q\ & 
-- (!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst|inst4|inst20|inst3~q\))) ) ) ) # ( !\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst4|inst20|inst4~q\) # 
-- ((!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst|inst4|inst20|inst3~q\)))) ) ) ) # ( \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # ((!\inst|inst4|inst20|inst4~q\ & 
-- (!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst|inst4|inst20|inst3~q\))) ) ) ) # ( !\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # ((!\inst|inst4|inst20|inst4~q\) # 
-- ((!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst|inst4|inst20|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101110111010101010101001010100010001000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst4~q\,
	datac => \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datae => \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst17|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y28_N36
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst2~q\ & ( \inst|inst6|inst3~q\ & ( !\inst|inst6|inst14~q\ $ (((!\inst|inst6|inst16~q\) # ((!\inst|inst6|inst100~q\) # (!\inst|inst6|inst4~q\)))) ) 
-- ) ) # ( !\inst|inst6|inst2~q\ & ( \inst|inst6|inst3~q\ & ( \inst|inst6|inst14~q\ ) ) ) # ( \inst|inst6|inst2~q\ & ( !\inst|inst6|inst3~q\ & ( \inst|inst6|inst14~q\ ) ) ) # ( !\inst|inst6|inst2~q\ & ( !\inst|inst6|inst3~q\ & ( \inst|inst6|inst14~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst16~q\,
	datab => \inst|inst6|ALT_INV_inst14~q\,
	datac => \inst|inst6|ALT_INV_inst100~q\,
	datad => \inst|inst6|ALT_INV_inst4~q\,
	datae => \inst|inst6|ALT_INV_inst2~q\,
	dataf => \inst|inst6|ALT_INV_inst3~q\,
	combout => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y28_N4
\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst4|inst20|inst14~q\ & !\inst|inst4|inst20|inst16~q\) ) ) ) # ( 
-- \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst20|inst14~q\ ) ) ) # ( 
-- !\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst4|inst20|inst14~q\) # 
-- (!\inst|inst4|inst20|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100110011001100110011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst16~q\,
	datae => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y28_N24
\inst|inst29|24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|24~1_combout\ = ( !\inst|inst4|inst20|inst14~q\ & ( (!\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|inst20|ALT_INV_inst14~q\,
	combout => \inst|inst29|24~1_combout\);

-- Location: FF_X39_Y27_N31
\inst|inst4|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(12),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst16~q\);

-- Location: MLABCELL_X34_Y28_N2
\inst9|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst3~combout\ = ( \inst|inst3|inst8~combout\ & ( \inst9|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_inst2~q\,
	dataf => \inst|inst3|ALT_INV_inst8~combout\,
	combout => \inst9|inst3~combout\);

-- Location: FF_X34_Y28_N3
\inst9|inst0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst0~q\);

-- Location: LABCELL_X35_Y28_N14
inst12 : arriaii_lcell_comb
-- Equation(s):
-- \inst12~combout\ = ( \inst3|inst~0_combout\ & ( (!\inst|inst4|inst2|inst10~q\ & (!\inst|inst4|inst2|inst16~q\ & \inst9|inst0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datad => \inst9|ALT_INV_inst0~q\,
	dataf => \inst3|ALT_INV_inst~0_combout\,
	combout => \inst12~combout\);

-- Location: FF_X34_Y27_N1
\inst|inst4|inst20|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst10~q\);

-- Location: FF_X38_Y27_N5
\inst|inst4|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst3~q\);

-- Location: MLABCELL_X39_Y27_N14
\inst4|inst1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst4|inst1~0_combout\ = ( \inst|inst4|inst2|inst12~q\ & ( !\inst|inst4|inst2|inst10~q\ ) ) # ( !\inst|inst4|inst2|inst12~q\ & ( (!\inst|inst4|inst2|inst10~q\ & ((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst12~q\,
	combout => \inst4|inst1~0_combout\);

-- Location: LABCELL_X30_Y28_N2
\inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst4|inst1~0_combout\ & ( \inst5|inst6~0_combout\ & ( \inst|inst4|inst2|inst3~q\ ) ) ) # ( !\inst4|inst1~0_combout\ & ( \inst5|inst6~0_combout\ & ( 
-- \inst|inst4|inst2|inst3~q\ ) ) ) # ( \inst4|inst1~0_combout\ & ( !\inst5|inst6~0_combout\ & ( \inst|inst4|inst20|inst10~q\ ) ) ) # ( !\inst4|inst1~0_combout\ & ( !\inst5|inst6~0_combout\ & ( \inst|inst4|inst20|inst16~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst20|ALT_INV_inst16~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datae => \inst4|ALT_INV_inst1~0_combout\,
	dataf => \inst5|ALT_INV_inst6~0_combout\,
	combout => \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y27_N37
\inst|inst4|inst20|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst12~q\);

-- Location: MLABCELL_X34_Y28_N20
\inst6|inst2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst6|inst2~0_combout\ = ( \inst|inst4|inst20|inst100~q\ & ( (\inst|inst4|inst20|inst3~q\ & \inst|inst4|inst20|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst2~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst100~q\,
	combout => \inst6|inst2~0_combout\);

-- Location: LABCELL_X30_Y28_N12
\inst11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ( \inst|inst4|inst2|inst16~q\ & ( \inst6|inst2~0_combout\ & ( (\inst9|inst0~q\ & ((!\inst|inst4|inst2|inst14~q\ & (\inst|inst4|inst2|inst12~q\ & !\inst|inst4|inst2|inst10~q\)) # (\inst|inst4|inst2|inst14~q\ & 
-- ((!\inst|inst4|inst2|inst10~q\) # (\inst|inst4|inst2|inst12~q\))))) ) ) ) # ( !\inst|inst4|inst2|inst16~q\ & ( \inst6|inst2~0_combout\ & ( (\inst9|inst0~q\ & (!\inst|inst4|inst2|inst10~q\ & (!\inst|inst4|inst2|inst14~q\ $ (!\inst|inst4|inst2|inst12~q\)))) 
-- ) ) ) # ( \inst|inst4|inst2|inst16~q\ & ( !\inst6|inst2~0_combout\ & ( (\inst9|inst0~q\ & ((!\inst|inst4|inst2|inst14~q\ & (\inst|inst4|inst2|inst12~q\ & !\inst|inst4|inst2|inst10~q\)) # (\inst|inst4|inst2|inst14~q\ & ((!\inst|inst4|inst2|inst10~q\) # 
-- (\inst|inst4|inst2|inst12~q\))))) ) ) ) # ( !\inst|inst4|inst2|inst16~q\ & ( !\inst6|inst2~0_combout\ & ( (\inst9|inst0~q\ & (!\inst|inst4|inst2|inst10~q\ & ((!\inst|inst4|inst2|inst14~q\) # (!\inst|inst4|inst2|inst12~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000000101010000000100010100000000000001010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_inst0~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst16~q\,
	dataf => \inst6|ALT_INV_inst2~0_combout\,
	combout => \inst11~0_combout\);

-- Location: LABCELL_X30_Y28_N20
\inst|inst5|inst4|32~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~3_combout\ = ( \inst11~0_combout\ & ( \inst5|inst6~0_combout\ & ( !\inst|inst4|inst2|inst2~q\ ) ) ) # ( \inst11~0_combout\ & ( !\inst5|inst6~0_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst4|inst20|inst4~q\)) # 
-- (\inst4|inst1~0_combout\ & ((!\inst|inst4|inst20|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst4~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datad => \inst4|ALT_INV_inst1~0_combout\,
	datae => \ALT_INV_inst11~0_combout\,
	dataf => \inst5|ALT_INV_inst6~0_combout\,
	combout => \inst|inst5|inst4|32~3_combout\);

-- Location: LABCELL_X30_Y28_N8
\inst|inst5|inst4|32~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~4_combout\ = ( \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst5|inst4|32~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~3_combout\,
	combout => \inst|inst5|inst4|32~4_combout\);

-- Location: LABCELL_X30_Y27_N6
\inst|inst5|inst4|32~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~5_combout\ = ( \inst|inst5|inst4|32~4_combout\ & ( !\inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~4_combout\,
	combout => \inst|inst5|inst4|32~5_combout\);

-- Location: FF_X30_Y27_N15
\inst|inst5|inst8|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst10~q\);

-- Location: LABCELL_X30_Y28_N18
\inst|inst5|inst4|32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~0_combout\ = ( \inst11~0_combout\ & ( \inst5|inst6~0_combout\ & ( \inst|inst4|inst2|inst2~q\ ) ) ) # ( \inst11~0_combout\ & ( !\inst5|inst6~0_combout\ & ( (!\inst4|inst1~0_combout\ & (\inst|inst4|inst20|inst4~q\)) # 
-- (\inst4|inst1~0_combout\ & ((\inst|inst4|inst20|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst4~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datae => \ALT_INV_inst11~0_combout\,
	dataf => \inst5|ALT_INV_inst6~0_combout\,
	combout => \inst|inst5|inst4|32~0_combout\);

-- Location: MLABCELL_X29_Y27_N24
\inst|inst5|inst4|32~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~1_combout\ = ( \inst|inst5|inst4|32~0_combout\ & ( !\inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|inst5|inst4|ALT_INV_32~0_combout\,
	dataf => \inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst5|inst4|32~1_combout\);

-- Location: LABCELL_X30_Y27_N26
\inst|inst5|inst4|32~9\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~9_combout\ = ( \inst|inst5|inst4|32~1_combout\ & ( \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~1_combout\,
	combout => \inst|inst5|inst4|32~9_combout\);

-- Location: FF_X31_Y27_N19
\inst|inst5|inst93|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst10~q\);

-- Location: FF_X34_Y27_N17
\inst|inst4|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(8),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst100~q\);

-- Location: LABCELL_X27_Y27_N34
\inst|inst5|inst9|inst2|inst10~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst9|inst2|inst10~feeder_combout\ = ( \inst|inst27|24~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_24~0_combout\,
	combout => \inst|inst5|inst9|inst2|inst10~feeder_combout\);

-- Location: FF_X27_Y27_N35
\inst|inst5|inst9|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst9|inst2|inst10~feeder_combout\,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst10~q\);

-- Location: LABCELL_X30_Y27_N8
\inst|inst5|inst28[7]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[7]~0DUPLICATE_combout\ = ( \inst|inst5|inst9|inst2|inst10~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst93|inst2|inst10~q\ & (!\inst|inst4|inst20|inst10~q\ & \inst|inst4|inst2|inst100~q\)) ) ) ) # ( 
-- !\inst|inst5|inst9|inst2|inst10~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst5|inst93|inst2|inst10~q\) # (!\inst|inst4|inst2|inst100~q\))) ) ) ) # ( \inst|inst5|inst9|inst2|inst10~q\ & ( 
-- !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst5|inst7|inst2|inst10~q\) # (!\inst|inst4|inst2|inst100~q\))) ) ) ) # ( !\inst|inst5|inst9|inst2|inst10~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ 
-- & ((!\inst|inst5|inst7|inst2|inst10~q\) # (!\inst|inst4|inst2|inst100~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst93|inst2|ALT_INV_inst10~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst5|inst9|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[7]~0DUPLICATE_combout\);

-- Location: MLABCELL_X29_Y27_N22
\inst|inst5|inst4|32~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~6_combout\ = ( \inst|inst5|inst4|32~0_combout\ & ( \inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|inst5|inst4|ALT_INV_32~0_combout\,
	dataf => \inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst5|inst4|32~6_combout\);

-- Location: MLABCELL_X29_Y27_N28
\inst|inst5|inst4|32~11\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~11_combout\ = ( \inst|inst5|inst4|32~6_combout\ & ( \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~6_combout\,
	combout => \inst|inst5|inst4|32~11_combout\);

-- Location: FF_X29_Y27_N33
\inst|inst5|inst15|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst10~q\);

-- Location: LABCELL_X30_Y27_N36
\inst|inst5|inst4|32~10\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~10_combout\ = ( \inst|inst5|inst4|32~4_combout\ & ( \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~4_combout\,
	combout => \inst|inst5|inst4|32~10_combout\);

-- Location: FF_X30_Y27_N17
\inst|inst5|inst14|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst10~q\);

-- Location: MLABCELL_X29_Y27_N38
\inst|inst5|inst4|32~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~7_combout\ = ( \inst|inst5|inst4|32~6_combout\ & ( !\inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~6_combout\,
	combout => \inst|inst5|inst4|32~7_combout\);

-- Location: FF_X29_Y27_N23
\inst|inst5|inst3|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst10~q\);

-- Location: LABCELL_X30_Y27_N22
\inst|inst5|inst28[7]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[7]~1_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst15|inst2|inst10~q\ & \inst|inst4|inst20|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( 
-- (!\inst|inst5|inst3|inst2|inst10~q\ & \inst|inst4|inst20|inst10~q\) ) ) ) # ( \inst|inst4|inst2|inst100~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst14|inst2|inst10~q\ & \inst|inst4|inst20|inst10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000111100000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst15|inst2|ALT_INV_inst10~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst5|inst3|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[7]~1_combout\);

-- Location: MLABCELL_X34_Y27_N20
\inst|inst5|inst5|33~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst5|33~0_combout\ = ( !\inst|inst4|inst2|inst100~q\ & ( (\inst|inst4|inst20|inst10~q\ & !\inst|inst4|inst20|inst12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst5|inst5|33~0_combout\);

-- Location: LABCELL_X30_Y27_N34
\inst|inst5|inst28[7]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[7]~16_combout\ = ( !\inst|inst5|inst28[7]~1_combout\ & ( \inst|inst5|inst5|33~0_combout\ & ( (\inst|inst5|inst8|inst2|inst10~q\ & !\inst|inst5|inst28[7]~0DUPLICATE_combout\) ) ) ) # ( !\inst|inst5|inst28[7]~1_combout\ & ( 
-- !\inst|inst5|inst5|33~0_combout\ & ( !\inst|inst5|inst28[7]~0DUPLICATE_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst5|ALT_INV_inst28[7]~0DUPLICATE_combout\,
	datae => \inst|inst5|ALT_INV_inst28[7]~1_combout\,
	dataf => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	combout => \inst|inst5|inst28[7]~16_combout\);

-- Location: MLABCELL_X39_Y27_N28
\inst2|inst|inst7|inst4|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|inst4|11~0_combout\ = ( \inst|inst4|inst20|inst3~q\ & ( (!\inst|inst4|inst2|inst14~q\ & (((!\inst|inst4|inst20|inst2~q\ & !\inst|inst4|inst20|inst100~q\)) # (\inst|inst4|inst2|inst10~q\))) ) ) # ( !\inst|inst4|inst20|inst3~q\ & ( 
-- (!\inst|inst4|inst2|inst14~q\ & (((!\inst|inst4|inst20|inst2~q\ & \inst|inst4|inst20|inst100~q\)) # (\inst|inst4|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010100010001000101010001010100010001000101010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst2~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst3~q\,
	combout => \inst2|inst|inst7|inst4|11~0_combout\);

-- Location: MLABCELL_X39_Y27_N12
\inst2|inst|inst7|inst4|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|inst4|5~0_combout\ = ( \inst|inst4|inst20|inst3~q\ & ( (\inst|inst4|inst20|inst100~q\ & !\inst|inst4|inst20|inst2~q\) ) ) # ( !\inst|inst4|inst20|inst3~q\ & ( !\inst|inst4|inst20|inst100~q\ $ (!\inst|inst4|inst20|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst2~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst3~q\,
	combout => \inst2|inst|inst7|inst4|5~0_combout\);

-- Location: MLABCELL_X39_Y27_N0
\inst2|inst8|inst7|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst8|inst7|inst3|6~0_combout\ = ( \inst|inst4|inst20|inst3~q\ & ( (!\inst|inst4|inst20|inst2~q\ & !\inst|inst4|inst20|inst100~q\) ) ) # ( !\inst|inst4|inst20|inst3~q\ & ( (\inst|inst4|inst20|inst100~q\) # (\inst|inst4|inst20|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst20|ALT_INV_inst2~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst3~q\,
	combout => \inst2|inst8|inst7|inst3|6~0_combout\);

-- Location: LABCELL_X32_Y27_N14
\inst|inst3|inst|inst7|inst3|5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|5~4_combout\ = ( !\inst|inst4|inst2|inst14~q\ & ( (!\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst14~q\,
	combout => \inst|inst3|inst|inst7|inst3|5~4_combout\);

-- Location: LABCELL_X40_Y27_N30
\inst|inst3|inst|inst7|inst3|5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|5~1_combout\ = ( \inst2|inst8|inst7|inst3|6~0_combout\ & ( \inst|inst3|inst|inst7|inst3|5~4_combout\ & ( (!\inst|inst4|inst2|inst10~q\ & ((!\inst2|inst|inst7|inst4|11~0_combout\) # ((!\inst2|inst|inst7|inst4|5~0_combout\) # 
-- (\inst|inst4|inst2|inst12~q\)))) ) ) ) # ( !\inst2|inst8|inst7|inst3|6~0_combout\ & ( \inst|inst3|inst|inst7|inst3|5~4_combout\ & ( (\inst|inst4|inst2|inst12~q\ & !\inst|inst4|inst2|inst10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000001111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst7|inst4|ALT_INV_11~0_combout\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_5~0_combout\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst2|inst8|inst7|inst3|ALT_INV_6~0_combout\,
	dataf => \inst|inst3|inst|inst7|inst3|ALT_INV_5~4_combout\,
	combout => \inst|inst3|inst|inst7|inst3|5~1_combout\);

-- Location: MLABCELL_X29_Y27_N4
\inst|inst5|inst4|32~8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~8_combout\ = ( !\inst|inst34|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst|inst5|inst4|32~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst5|inst4|ALT_INV_32~3_combout\,
	dataf => \inst|inst34|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst5|inst4|32~8_combout\);

-- Location: FF_X38_Y27_N9
\inst|inst5|inst7|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst100~q\);

-- Location: FF_X34_Y27_N19
\inst|inst5|inst14|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst100~q\);

-- Location: FF_X30_Y27_N31
\inst|inst5|inst3|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst100~q\);

-- Location: FF_X31_Y27_N27
\inst|inst5|inst93|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst100~q\);

-- Location: FF_X38_Y27_N33
\inst|inst5|inst9|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst100~q\);

-- Location: LABCELL_X38_Y27_N32
\inst|inst5|ROut1[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[0]~2_combout\ = ( \inst|inst5|inst9|inst2|inst100~q\ & ( \inst|inst5|inst15|inst2|inst100~q\ & ( (!\inst|inst4|inst2|inst3~q\ & (((!\inst|inst4|inst2|inst4~q\) # (\inst|inst5|inst93|inst2|inst100~q\)))) # (\inst|inst4|inst2|inst3~q\ & 
-- (((\inst|inst4|inst2|inst4~q\)) # (\inst|inst5|inst3|inst2|inst100~q\))) ) ) ) # ( !\inst|inst5|inst9|inst2|inst100~q\ & ( \inst|inst5|inst15|inst2|inst100~q\ & ( (!\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst93|inst2|inst100~q\ & 
-- \inst|inst4|inst2|inst4~q\)))) # (\inst|inst4|inst2|inst3~q\ & (((\inst|inst4|inst2|inst4~q\)) # (\inst|inst5|inst3|inst2|inst100~q\))) ) ) ) # ( \inst|inst5|inst9|inst2|inst100~q\ & ( !\inst|inst5|inst15|inst2|inst100~q\ & ( (!\inst|inst4|inst2|inst3~q\ 
-- & (((!\inst|inst4|inst2|inst4~q\) # (\inst|inst5|inst93|inst2|inst100~q\)))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst3|inst2|inst100~q\ & ((!\inst|inst4|inst2|inst4~q\)))) ) ) ) # ( !\inst|inst5|inst9|inst2|inst100~q\ & ( 
-- !\inst|inst5|inst15|inst2|inst100~q\ & ( (!\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst93|inst2|inst100~q\ & \inst|inst4|inst2|inst4~q\)))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst3|inst2|inst100~q\ & ((!\inst|inst4|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst5|inst93|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst5|inst9|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst5|ROut1[0]~2_combout\);

-- Location: FF_X32_Y27_N37
\inst|inst5|inst8|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst100~q\);

-- Location: LABCELL_X38_Y27_N10
\inst|inst5|ROut1[0]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[0]~24_combout\ = ( !\inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst8|inst2|inst100~q\))) # (\inst|inst4|inst2|inst2~q\ & ((((\inst|inst5|ROut1[0]~2_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & ((!\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst7|inst2|inst100~q\)) # (\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst14|inst2|inst100~q\)))))) # (\inst|inst4|inst2|inst2~q\ & 
-- ((((\inst|inst5|ROut1[0]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000100000010000100110000110111001101110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst5|inst14|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[0]~2_combout\,
	datag => \inst|inst5|inst8|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst5|ROut1[0]~24_combout\);

-- Location: LABCELL_X32_Y27_N18
\inst2|inst|inst7|inst4|5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|inst4|5~1_combout\ = ( \inst2|inst|inst7|inst4|5~0_combout\ & ( (!\inst|inst4|inst2|inst14~q\ & (((\inst|inst4|inst2|inst12~q\ & \inst|inst4|inst2|inst10~q\)) # (\inst|inst4|inst2|inst16~q\))) # (\inst|inst4|inst2|inst14~q\ & 
-- ((!\inst|inst4|inst2|inst16~q\) # ((\inst|inst4|inst2|inst10~q\) # (\inst|inst4|inst2|inst12~q\)))) ) ) # ( !\inst2|inst|inst7|inst4|5~0_combout\ & ( (!\inst|inst4|inst2|inst14~q\ & ((!\inst|inst4|inst2|inst12~q\ $ (\inst|inst4|inst2|inst10~q\)) # 
-- (\inst|inst4|inst2|inst16~q\))) # (\inst|inst4|inst2|inst14~q\ & ((!\inst|inst4|inst2|inst16~q\) # ((\inst|inst4|inst2|inst10~q\) # (\inst|inst4|inst2|inst12~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011101111111111001110111111101100111011111110110011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_5~0_combout\,
	combout => \inst2|inst|inst7|inst4|5~1_combout\);

-- Location: MLABCELL_X39_Y27_N2
\inst2|inst|inst7|inst4|11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|inst4|11~1_combout\ = ( \inst2|inst|inst7|inst4|11~0_combout\ & ( (!\inst|inst4|inst2|inst12~q\ & ((!\inst|inst4|inst2|inst14~q\ & ((!\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst10~q\))) # (\inst|inst4|inst2|inst14~q\ & 
-- (!\inst|inst4|inst2|inst10~q\)))) ) ) # ( !\inst2|inst|inst7|inst4|11~0_combout\ & ( (!\inst|inst4|inst2|inst12~q\ & (\inst|inst4|inst2|inst16~q\ & (!\inst|inst4|inst2|inst14~q\ $ (!\inst|inst4|inst2|inst10~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100011001000010010001100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst16~q\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_11~0_combout\,
	combout => \inst2|inst|inst7|inst4|11~1_combout\);

-- Location: LABCELL_X32_Y27_N16
\inst|inst3|inst|inst7|inst3|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|5~0_combout\ = ( \inst2|inst|inst7|inst4|11~1_combout\ & ( \inst2|inst|inst7|inst4|6~combout\ ) ) # ( !\inst2|inst|inst7|inst4|11~1_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\) # (!\inst2|inst|inst7|inst4|5~1_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	combout => \inst|inst3|inst|inst7|inst3|5~0_combout\);

-- Location: MLABCELL_X31_Y27_N16
\inst|inst5|inst28[0]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[0]~6_combout\ = ( \inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ & ( (!\inst|inst4|inst2|inst100~q\ & ((!\inst|inst5|inst9|inst2|inst100~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst93|inst2|inst100~q\)) ) ) 
-- ) # ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ & ( (!\inst|inst5|inst7|inst2|inst100~q\) # (!\inst|inst4|inst2|inst100~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst7|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst5|inst9|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst10~q\,
	combout => \inst|inst5|inst28[0]~6_combout\);

-- Location: LABCELL_X32_Y27_N36
\inst|inst9|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|5~0_combout\ = ( \inst|inst5|inst8|inst2|inst100~q\ & ( \inst|inst5|inst28[0]~6_combout\ & ( (\inst|inst4|inst20|inst100~q\ & \inst4|inst1~0_combout\) ) ) ) # ( !\inst|inst5|inst8|inst2|inst100~q\ & ( \inst|inst5|inst28[0]~6_combout\ & ( 
-- (\inst|inst4|inst20|inst100~q\ & \inst4|inst1~0_combout\) ) ) ) # ( \inst|inst5|inst8|inst2|inst100~q\ & ( !\inst|inst5|inst28[0]~6_combout\ & ( (!\inst4|inst1~0_combout\ & ((!\inst|inst5|inst28[0]~7_combout\))) # (\inst4|inst1~0_combout\ & 
-- (\inst|inst4|inst20|inst100~q\)) ) ) ) # ( !\inst|inst5|inst8|inst2|inst100~q\ & ( !\inst|inst5|inst28[0]~6_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst5|33~0_combout\ & ((!\inst|inst5|inst28[0]~7_combout\)))) # (\inst4|inst1~0_combout\ & 
-- (((\inst|inst4|inst20|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000110011111100000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datac => \inst|inst5|ALT_INV_inst28[0]~7_combout\,
	datad => \inst4|ALT_INV_inst1~0_combout\,
	datae => \inst|inst5|inst8|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst5|ALT_INV_inst28[0]~6_combout\,
	combout => \inst|inst9|5~0_combout\);

-- Location: LABCELL_X40_Y27_N32
\inst|inst5|inst8|inst2|inst2~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst8|inst2|inst2~feeder_combout\ = ( \inst|inst27|6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_6~0_combout\,
	combout => \inst|inst5|inst8|inst2|inst2~feeder_combout\);

-- Location: FF_X40_Y27_N33
\inst|inst5|inst8|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst8|inst2|inst2~feeder_combout\,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst2~q\);

-- Location: FF_X38_Y27_N1
\inst|inst5|inst7|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|6~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst2~q\);

-- Location: LABCELL_X40_Y27_N26
\inst|inst5|inst93|inst2|inst2~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst93|inst2|inst2~feeder_combout\ = ( \inst|inst27|6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_6~0_combout\,
	combout => \inst|inst5|inst93|inst2|inst2~feeder_combout\);

-- Location: FF_X40_Y27_N27
\inst|inst5|inst93|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst93|inst2|inst2~feeder_combout\,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst2~q\);

-- Location: FF_X38_Y27_N29
\inst|inst5|inst9|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|6~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst2~q\);

-- Location: LABCELL_X40_Y27_N6
\inst|inst5|inst28[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[1]~4_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst93|inst2|inst2~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( 
-- (!\inst|inst5|inst9|inst2|inst2~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( \inst|inst4|inst2|inst100~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst7|inst2|inst2~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ & 
-- ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011110000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst7|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst9|inst2|ALT_INV_inst2~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[1]~4_combout\);

-- Location: FF_X39_Y27_N35
\inst|inst5|inst14|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|6~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst2~q\);

-- Location: FF_X32_Y27_N35
\inst|inst5|inst15|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|6~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst2~q\);

-- Location: MLABCELL_X39_Y27_N26
\inst|inst5|inst28[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[1]~5_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (!\inst|inst4|inst20|inst12~q\ & (!\inst|inst5|inst14|inst2|inst2~q\)) # (\inst|inst4|inst20|inst12~q\ & ((!\inst|inst5|inst15|inst2|inst2~q\))) ) ) ) # 
-- ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (!\inst|inst5|inst3|inst2|inst2~q\ & \inst|inst4|inst20|inst12~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010101100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datad => \inst|inst5|inst15|inst2|ALT_INV_inst2~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst10~q\,
	combout => \inst|inst5|inst28[1]~5_combout\);

-- Location: LABCELL_X35_Y26_N36
\inst|inst3|inst1|counter|X~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~7_combout\ = (!\inst|inst3|inst1|and~1_combout\ & !\inst|inst3|inst1|counter|inst2|inst100~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst3|inst1|counter|X~7_combout\);

-- Location: FF_X35_Y26_N37
\inst|inst3|inst1|counter|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst100~q\);

-- Location: LABCELL_X35_Y26_N24
\inst|inst3|inst1|counter|X~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~6_combout\ = ( \inst|inst3|inst1|counter|inst2|inst2~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( \inst|inst3|inst1|counter|inst2|inst100~q\ ) ) ) # ( !\inst|inst3|inst1|counter|inst2|inst2~q\ & ( 
-- !\inst|inst3|inst1|and~1_combout\ & ( !\inst|inst3|inst1|counter|inst2|inst100~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|counter|X~6_combout\);

-- Location: FF_X35_Y26_N25
\inst|inst3|inst1|counter|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst2~q\);

-- Location: LABCELL_X35_Y26_N16
\inst|inst3|inst1|counter|X~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~4_combout\ = ( \inst|inst3|inst1|counter|inst2|inst2~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & \inst|inst3|inst1|counter|inst2|inst3~q\) ) ) # ( !\inst|inst3|inst1|counter|inst2|inst2~q\ & ( (!\inst|inst3|inst1|and~1_combout\ 
-- & (!\inst|inst3|inst1|counter|inst2|inst100~q\ $ (\inst|inst3|inst1|counter|inst2|inst3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst3|inst1|counter|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\,
	combout => \inst|inst3|inst1|counter|X~4_combout\);

-- Location: FF_X35_Y26_N17
\inst|inst3|inst1|counter|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst3~q\);

-- Location: LABCELL_X35_Y26_N12
\inst|inst3|inst1|counter|X~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~5_combout\ = ( \inst|inst3|inst1|counter|inst2|inst4~q\ & ( \inst|inst3|inst1|and~1_combout\ ) ) # ( !\inst|inst3|inst1|counter|inst2|inst4~q\ & ( \inst|inst3|inst1|and~1_combout\ ) ) # ( 
-- \inst|inst3|inst1|counter|inst2|inst4~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( ((\inst|inst3|inst1|counter|inst2|inst100~q\) # (\inst|inst3|inst1|counter|inst2|inst3~q\)) # (\inst|inst3|inst1|counter|inst2|inst2~q\) ) ) ) # ( 
-- !\inst|inst3|inst1|counter|inst2|inst4~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|counter|inst2|inst2~q\ & (!\inst|inst3|inst1|counter|inst2|inst3~q\ & !\inst|inst3|inst1|counter|inst2|inst100~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst3|inst1|counter|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|counter|X~5_combout\);

-- Location: FF_X35_Y26_N13
\inst|inst3|inst1|counter|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst4~q\);

-- Location: LABCELL_X35_Y26_N32
\inst|inst3|inst1|inst24|inst1|inst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst24|inst1|inst~0_combout\ = ( !\inst|inst3|inst1|counter|inst2|inst4~q\ & ( !\inst|inst3|inst1|counter|inst2|inst3~q\ & ( (!\inst|inst3|inst1|counter|inst2|inst2~q\ & !\inst|inst3|inst1|counter|inst2|inst100~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|counter|inst2|ALT_INV_inst2~q\,
	datad => \inst|inst3|inst1|counter|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst3|inst1|counter|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst3|inst1|inst24|inst1|inst~0_combout\);

-- Location: LABCELL_X35_Y26_N6
\inst|inst3|inst1|counter|X~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~3_combout\ = ( \inst|inst3|inst1|counter|inst2|inst16~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( !\inst|inst3|inst1|inst24|inst1|inst~0_combout\ ) ) ) # ( !\inst|inst3|inst1|counter|inst2|inst16~q\ & ( 
-- !\inst|inst3|inst1|and~1_combout\ & ( \inst|inst3|inst1|inst24|inst1|inst~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|counter|X~3_combout\);

-- Location: FF_X35_Y26_N7
\inst|inst3|inst1|counter|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst16~q\);

-- Location: LABCELL_X35_Y26_N10
\inst|inst3|inst1|counter|X~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~2_combout\ = ( \inst|inst3|inst1|counter|inst2|inst14~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|inst24|inst1|inst~0_combout\) # (\inst|inst3|inst1|counter|inst2|inst16~q\) ) ) ) # ( 
-- !\inst|inst3|inst1|counter|inst2|inst14~q\ & ( !\inst|inst3|inst1|and~1_combout\ & ( (\inst|inst3|inst1|inst24|inst1|inst~0_combout\ & !\inst|inst3|inst1|counter|inst2|inst16~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101011111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datac => \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|counter|X~2_combout\);

-- Location: FF_X35_Y26_N11
\inst|inst3|inst1|counter|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst14~q\);

-- Location: LABCELL_X35_Y26_N2
\inst|inst3|inst1|counter|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~0_combout\ = ( \inst|inst3|inst1|counter|inst2|inst12~q\ & ( \inst|inst3|inst1|counter|inst2|inst16~q\ & ( !\inst|inst3|inst1|and~1_combout\ ) ) ) # ( \inst|inst3|inst1|counter|inst2|inst12~q\ & ( 
-- !\inst|inst3|inst1|counter|inst2|inst16~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|inst24|inst1|inst~0_combout\) # (\inst|inst3|inst1|counter|inst2|inst14~q\))) ) ) ) # ( !\inst|inst3|inst1|counter|inst2|inst12~q\ & ( 
-- !\inst|inst3|inst1|counter|inst2|inst16~q\ & ( (!\inst|inst3|inst1|counter|inst2|inst14~q\ & (!\inst|inst3|inst1|and~1_combout\ & \inst|inst3|inst1|inst24|inst1|inst~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000111100000011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst3|inst1|counter|X~0_combout\);

-- Location: FF_X35_Y26_N3
\inst|inst3|inst1|counter|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst12~q\);

-- Location: LABCELL_X35_Y26_N30
\inst|inst3|inst1|counter|X~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|counter|X~1_combout\ = ( \inst|inst3|inst1|counter|inst2|inst10~q\ & ( \inst|inst3|inst1|counter|inst2|inst14~q\ & ( !\inst|inst3|inst1|and~1_combout\ ) ) ) # ( \inst|inst3|inst1|counter|inst2|inst10~q\ & ( 
-- !\inst|inst3|inst1|counter|inst2|inst14~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|inst24|inst1|inst~0_combout\) # ((\inst|inst3|inst1|counter|inst2|inst12~q\) # (\inst|inst3|inst1|counter|inst2|inst16~q\)))) ) ) ) # ( 
-- !\inst|inst3|inst1|counter|inst2|inst10~q\ & ( !\inst|inst3|inst1|counter|inst2|inst14~q\ & ( (\inst|inst3|inst1|inst24|inst1|inst~0_combout\ & (!\inst|inst3|inst1|counter|inst2|inst16~q\ & (!\inst|inst3|inst1|counter|inst2|inst12~q\ & 
-- !\inst|inst3|inst1|and~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000101111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datab => \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\,
	datac => \inst|inst3|inst1|counter|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datae => \inst|inst3|inst1|counter|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\,
	combout => \inst|inst3|inst1|counter|X~1_combout\);

-- Location: FF_X35_Y26_N31
\inst|inst3|inst1|counter|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|counter|X~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|counter|inst2|inst10~q\);

-- Location: LABCELL_X35_Y26_N22
\inst|inst3|inst1|inst24|inst1|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst24|inst1|inst~combout\ = ( \inst|inst3|inst1|counter|inst2|inst16~q\ ) # ( !\inst|inst3|inst1|counter|inst2|inst16~q\ & ( (!\inst|inst3|inst1|inst24|inst1|inst~0_combout\) # (((\inst|inst3|inst1|counter|inst2|inst10~q\) # 
-- (\inst|inst3|inst1|counter|inst2|inst12~q\)) # (\inst|inst3|inst1|counter|inst2|inst14~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~0_combout\,
	datab => \inst|inst3|inst1|counter|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst3|inst1|counter|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst3|inst1|counter|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst3|inst1|counter|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst3|inst1|inst24|inst1|inst~combout\);

-- Location: FF_X37_Y27_N9
\inst|inst3|inst1|inst28|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst2~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst2~q\);

-- Location: MLABCELL_X39_Y27_N22
\inst|inst9|7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|7~combout\ = ( \inst|inst4|inst20|inst2~q\ & ( (!\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # (\inst|inst4|inst2|inst14~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst2~q\,
	combout => \inst|inst9|7~combout\);

-- Location: MLABCELL_X39_Y27_N6
\inst|inst9|8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|8~combout\ = ( !\inst|inst5|inst28[1]~5_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[1]~4_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst2~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~0_combout\,
	datab => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datac => \inst|inst5|ALT_INV_inst28[1]~4_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst5|ALT_INV_inst28[1]~5_combout\,
	combout => \inst|inst9|8~combout\);

-- Location: MLABCELL_X37_Y27_N34
\inst|inst3|inst|inst|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|6~0_combout\ = ( \inst2|inst|inst7|inst4|5~1_combout\ & ( ((\inst|inst5|ROut1[1]~28_combout\) # (\inst|inst9|8~combout\)) # (\inst|inst9|7~combout\) ) ) # ( !\inst2|inst|inst7|inst4|5~1_combout\ & ( 
-- (\inst|inst5|ROut1[1]~28_combout\ & ((\inst|inst9|8~combout\) # (\inst|inst9|7~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9|ALT_INV_7~combout\,
	datac => \inst|inst9|ALT_INV_8~combout\,
	datad => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	combout => \inst|inst3|inst|inst|inst3|6~0_combout\);

-- Location: MLABCELL_X39_Y27_N38
\inst|inst9|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|6~0_combout\ = ( \inst4|inst1~0_combout\ & ( \inst|inst5|inst28[1]~4_combout\ & ( \inst|inst4|inst20|inst2~q\ ) ) ) # ( \inst4|inst1~0_combout\ & ( !\inst|inst5|inst28[1]~4_combout\ & ( \inst|inst4|inst20|inst2~q\ ) ) ) # ( 
-- !\inst4|inst1~0_combout\ & ( !\inst|inst5|inst28[1]~4_combout\ & ( (!\inst|inst5|inst28[1]~5_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst2~q\,
	datac => \inst|inst5|ALT_INV_inst28[1]~5_combout\,
	datad => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datae => \inst4|ALT_INV_inst1~0_combout\,
	dataf => \inst|inst5|ALT_INV_inst28[1]~4_combout\,
	combout => \inst|inst9|6~0_combout\);

-- Location: MLABCELL_X37_Y27_N6
\inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|5~0_combout\ & ( !\inst|inst5|ROut1[1]~28_combout\ $ (!\inst|inst9|6~0_combout\ $ (!\inst|inst5|ROut1[0]~24_combout\ $ 
-- (\inst2|inst|inst7|inst4|11~1_combout\))) ) ) # ( !\inst|inst9|5~0_combout\ & ( !\inst|inst5|ROut1[1]~28_combout\ $ (\inst|inst9|6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	datab => \inst|inst9|ALT_INV_6~0_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst|inst9|ALT_INV_5~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X37_Y27_N8
\inst|inst3|inst|inst7|inst3|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|6~0_combout\ = ( !\inst|inst3|inst|inst7|inst3|5~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~0_combout\ & ((((!\inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) # 
-- (\inst|inst3|inst|inst7|inst3|5~0_combout\ & (!\inst|inst5|ROut1[1]~28_combout\ $ ((!\inst|inst9|6~0_combout\)))) ) ) # ( \inst|inst3|inst|inst7|inst3|5~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~0_combout\ & 
-- (((\inst|inst3|inst1|inst28|inst2|inst2~q\)))) # (\inst|inst3|inst|inst7|inst3|5~0_combout\ & ((((\inst|inst3|inst|inst|inst3|6~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011111010111110000010100101111100010100000101000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	datac => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst2~q\,
	datad => \inst|inst3|inst|inst|inst3|ALT_INV_6~0_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datag => \inst|inst9|ALT_INV_6~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|6~0_combout\);

-- Location: FF_X34_Y28_N25
\inst|inst30|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst3~q\);

-- Location: FF_X34_Y27_N33
\inst|inst5|inst7|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst3~q\);

-- Location: FF_X35_Y27_N31
\inst|inst5|inst93|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst3~q\);

-- Location: FF_X38_Y27_N27
\inst|inst5|inst9|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst3~q\);

-- Location: MLABCELL_X34_Y27_N12
\inst|inst5|inst28[2]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[2]~12_combout\ = ( \inst|inst4|inst20|inst12~q\ & ( \inst|inst5|inst9|inst2|inst3~q\ & ( (!\inst|inst4|inst20|inst10~q\ & (\inst|inst4|inst2|inst100~q\ & !\inst|inst5|inst93|inst2|inst3~q\)) ) ) ) # ( !\inst|inst4|inst20|inst12~q\ & ( 
-- \inst|inst5|inst9|inst2|inst3~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\) # (!\inst|inst5|inst7|inst2|inst3~q\))) ) ) ) # ( \inst|inst4|inst20|inst12~q\ & ( !\inst|inst5|inst9|inst2|inst3~q\ & ( (!\inst|inst4|inst20|inst10~q\ 
-- & ((!\inst|inst4|inst2|inst100~q\) # (!\inst|inst5|inst93|inst2|inst3~q\))) ) ) ) # ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst5|inst9|inst2|inst3~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\) # 
-- (!\inst|inst5|inst7|inst2|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010101000100010101000101010000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst5|inst93|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst5|inst9|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|inst28[2]~12_combout\);

-- Location: FF_X32_Y27_N3
\inst|inst5|inst8|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst3~q\);

-- Location: FF_X34_Y28_N7
\inst|inst30|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4~q\);

-- Location: FF_X35_Y27_N21
\inst|inst5|inst7|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst4~q\);

-- Location: FF_X35_Y27_N27
\inst|inst5|inst93|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst4~q\);

-- Location: LABCELL_X27_Y27_N26
\inst|inst5|inst9|inst2|inst4~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst9|inst2|inst4~feeder_combout\ = ( \inst|inst27|12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_12~0_combout\,
	combout => \inst|inst5|inst9|inst2|inst4~feeder_combout\);

-- Location: FF_X27_Y27_N27
\inst|inst5|inst9|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst9|inst2|inst4~feeder_combout\,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst4~q\);

-- Location: LABCELL_X35_Y27_N24
\inst|inst5|inst28[3]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[3]~14_combout\ = ( !\inst|inst4|inst20|inst10~q\ & ( \inst|inst5|inst9|inst2|inst4~q\ & ( (!\inst|inst4|inst20|inst12~q\ & ((!\inst|inst5|inst7|inst2|inst4~q\) # ((!\inst|inst4|inst2|inst100~q\)))) # (\inst|inst4|inst20|inst12~q\ & 
-- (((!\inst|inst5|inst93|inst2|inst4~q\ & \inst|inst4|inst2|inst100~q\)))) ) ) ) # ( !\inst|inst4|inst20|inst10~q\ & ( !\inst|inst5|inst9|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst100~q\) # ((!\inst|inst4|inst20|inst12~q\ & 
-- (!\inst|inst5|inst7|inst2|inst4~q\)) # (\inst|inst4|inst20|inst12~q\ & ((!\inst|inst5|inst93|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101100000000000000000011110000101011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst7|inst2|ALT_INV_inst4~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst10~q\,
	dataf => \inst|inst5|inst9|inst2|ALT_INV_inst4~q\,
	combout => \inst|inst5|inst28[3]~14_combout\);

-- Location: FF_X34_Y27_N11
\inst|inst5|inst14|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst4~q\);

-- Location: FF_X32_Y27_N23
\inst|inst5|inst15|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst4~q\);

-- Location: FF_X29_Y27_N7
\inst|inst5|inst3|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst4~q\);

-- Location: MLABCELL_X34_Y27_N18
\inst|inst5|inst28[3]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[3]~15_combout\ = ( \inst|inst5|inst15|inst2|inst4~q\ & ( \inst|inst5|inst3|inst2|inst4~q\ & ( (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst14|inst2|inst4~q\ & (!\inst|inst4|inst20|inst12~q\ & \inst|inst4|inst20|inst10~q\))) ) ) ) # 
-- ( !\inst|inst5|inst15|inst2|inst4~q\ & ( \inst|inst5|inst3|inst2|inst4~q\ & ( (\inst|inst4|inst2|inst100~q\ & (\inst|inst4|inst20|inst10~q\ & ((!\inst|inst5|inst14|inst2|inst4~q\) # (\inst|inst4|inst20|inst12~q\)))) ) ) ) # ( 
-- \inst|inst5|inst15|inst2|inst4~q\ & ( !\inst|inst5|inst3|inst2|inst4~q\ & ( (\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\ & ((\inst|inst4|inst20|inst12~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst14|inst2|inst4~q\ & 
-- !\inst|inst4|inst20|inst12~q\)))) ) ) ) # ( !\inst|inst5|inst15|inst2|inst4~q\ & ( !\inst|inst5|inst3|inst2|inst4~q\ & ( (\inst|inst4|inst20|inst10~q\ & (((\inst|inst4|inst2|inst100~q\ & !\inst|inst5|inst14|inst2|inst4~q\)) # 
-- (\inst|inst4|inst20|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111000000000100101000000000010001010000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datae => \inst|inst5|inst15|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|inst3|inst2|ALT_INV_inst4~q\,
	combout => \inst|inst5|inst28[3]~15_combout\);

-- Location: FF_X37_Y27_N25
\inst|inst5|inst3|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst16~q\);

-- Location: FF_X34_Y27_N5
\inst|inst5|inst14|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst16~q\);

-- Location: FF_X32_Y27_N33
\inst|inst5|inst15|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst16~q\);

-- Location: MLABCELL_X34_Y27_N4
\inst|inst5|inst28[4]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[4]~9_combout\ = ( \inst|inst5|inst14|inst2|inst16~q\ & ( \inst|inst5|inst15|inst2|inst16~q\ & ( (\inst|inst4|inst20|inst10~q\ & (!\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst3|inst2|inst16~q\ & \inst|inst4|inst20|inst12~q\))) ) ) ) 
-- # ( !\inst|inst5|inst14|inst2|inst16~q\ & ( \inst|inst5|inst15|inst2|inst16~q\ & ( (\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst3|inst2|inst16~q\ & \inst|inst4|inst20|inst12~q\)) # (\inst|inst4|inst2|inst100~q\ & 
-- ((!\inst|inst4|inst20|inst12~q\))))) ) ) ) # ( \inst|inst5|inst14|inst2|inst16~q\ & ( !\inst|inst5|inst15|inst2|inst16~q\ & ( (\inst|inst4|inst20|inst10~q\ & (\inst|inst4|inst20|inst12~q\ & ((!\inst|inst5|inst3|inst2|inst16~q\) # 
-- (\inst|inst4|inst2|inst100~q\)))) ) ) ) # ( !\inst|inst5|inst14|inst2|inst16~q\ & ( !\inst|inst5|inst15|inst2|inst16~q\ & ( (\inst|inst4|inst20|inst10~q\ & (((!\inst|inst5|inst3|inst2|inst16~q\ & \inst|inst4|inst20|inst12~q\)) # 
-- (\inst|inst4|inst2|inst100~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001000000000101000100010001010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst5|inst3|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datae => \inst|inst5|inst14|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst5|inst28[4]~9_combout\);

-- Location: FF_X32_Y27_N39
\inst|inst5|inst93|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst16~q\);

-- Location: FF_X38_Y27_N39
\inst|inst5|inst9|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst16~q\);

-- Location: FF_X38_Y27_N25
\inst|inst5|inst7|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst16~q\);

-- Location: MLABCELL_X31_Y27_N22
\inst|inst5|inst28[4]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[4]~8_combout\ = ( !\inst|inst4|inst20|inst10~q\ & ( \inst|inst5|inst7|inst2|inst16~q\ & ( (!\inst|inst4|inst2|inst100~q\ & (((!\inst|inst4|inst20|inst12~q\) # (!\inst|inst5|inst9|inst2|inst16~q\)))) # (\inst|inst4|inst2|inst100~q\ & 
-- (!\inst|inst5|inst93|inst2|inst16~q\ & (\inst|inst4|inst20|inst12~q\))) ) ) ) # ( !\inst|inst4|inst20|inst10~q\ & ( !\inst|inst5|inst7|inst2|inst16~q\ & ( (!\inst|inst4|inst20|inst12~q\) # ((!\inst|inst4|inst2|inst100~q\ & 
-- ((!\inst|inst5|inst9|inst2|inst16~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst93|inst2|inst16~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110010000000000000000011001110110000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst93|inst2|ALT_INV_inst16~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datad => \inst|inst5|inst9|inst2|ALT_INV_inst16~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst10~q\,
	dataf => \inst|inst5|inst7|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst5|inst28[4]~8_combout\);

-- Location: LABCELL_X38_Y27_N20
\inst|inst5|ROut1[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[4]~3_combout\ = ( \inst|inst5|inst93|inst2|inst16~q\ & ( \inst|inst5|inst15|inst2|inst16~q\ & ( ((!\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst9|inst2|inst16~q\)) # (\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst3|inst2|inst16~q\)))) 
-- # (\inst|inst4|inst2|inst4~q\) ) ) ) # ( !\inst|inst5|inst93|inst2|inst16~q\ & ( \inst|inst5|inst15|inst2|inst16~q\ & ( (!\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst9|inst2|inst16~q\ & ((!\inst|inst4|inst2|inst4~q\)))) # (\inst|inst4|inst2|inst3~q\ & 
-- (((\inst|inst4|inst2|inst4~q\) # (\inst|inst5|inst3|inst2|inst16~q\)))) ) ) ) # ( \inst|inst5|inst93|inst2|inst16~q\ & ( !\inst|inst5|inst15|inst2|inst16~q\ & ( (!\inst|inst4|inst2|inst3~q\ & (((\inst|inst4|inst2|inst4~q\)) # 
-- (\inst|inst5|inst9|inst2|inst16~q\))) # (\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst3|inst2|inst16~q\ & !\inst|inst4|inst2|inst4~q\)))) ) ) ) # ( !\inst|inst5|inst93|inst2|inst16~q\ & ( !\inst|inst5|inst15|inst2|inst16~q\ & ( 
-- (!\inst|inst4|inst2|inst4~q\ & ((!\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst9|inst2|inst16~q\)) # (\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst3|inst2|inst16~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst9|inst2|ALT_INV_inst16~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst5|inst3|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst5|inst93|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst5|ROut1[4]~3_combout\);

-- Location: LABCELL_X38_Y27_N12
\inst|inst5|ROut1[4]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[4]~20_combout\ = ( !\inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst8|inst2|inst16~q\))) # (\inst|inst4|inst2|inst2~q\ & ((((\inst|inst5|ROut1[4]~3_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & ((!\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst7|inst2|inst16~q\)) # (\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst14|inst2|inst16~q\)))))) # (\inst|inst4|inst2|inst2~q\ & 
-- ((((\inst|inst5|ROut1[4]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000100000010000100110000110111001101110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst5|inst14|inst2|ALT_INV_inst16~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[4]~3_combout\,
	datag => \inst|inst5|inst8|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst5|ROut1[4]~20_combout\);

-- Location: LABCELL_X40_Y27_N14
\inst|inst5|inst8|inst2|inst14~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst8|inst2|inst14~feeder_combout\ = ( \inst|inst27|18~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_18~0_combout\,
	combout => \inst|inst5|inst8|inst2|inst14~feeder_combout\);

-- Location: FF_X40_Y27_N15
\inst|inst5|inst8|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst8|inst2|inst14~feeder_combout\,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst14~q\);

-- Location: FF_X39_Y27_N13
\inst|inst5|inst14|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|18~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst14~q\);

-- Location: FF_X32_Y27_N27
\inst|inst5|inst15|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|18~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst14~q\);

-- Location: MLABCELL_X39_Y27_N34
\inst|inst5|inst28[5]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[5]~11_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (!\inst|inst4|inst20|inst12~q\ & (!\inst|inst5|inst14|inst2|inst14~q\)) # (\inst|inst4|inst20|inst12~q\ & ((!\inst|inst5|inst15|inst2|inst14~q\))) ) ) 
-- ) # ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (!\inst|inst5|inst3|inst2|inst14~q\ & \inst|inst4|inst20|inst12~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011001010101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst14|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst5|inst3|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst5|inst15|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst10~q\,
	combout => \inst|inst5|inst28[5]~11_combout\);

-- Location: MLABCELL_X39_Y27_N10
\inst|inst9|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|18~0_combout\ = ( \inst|inst5|inst28[5]~11_combout\ & ( \inst|inst5|inst28[5]~10_combout\ & ( (\inst4|inst1~0_combout\ & \inst|inst4|inst20|inst14~q\) ) ) ) # ( !\inst|inst5|inst28[5]~11_combout\ & ( \inst|inst5|inst28[5]~10_combout\ & ( 
-- (\inst4|inst1~0_combout\ & \inst|inst4|inst20|inst14~q\) ) ) ) # ( \inst|inst5|inst28[5]~11_combout\ & ( !\inst|inst5|inst28[5]~10_combout\ & ( (\inst4|inst1~0_combout\ & \inst|inst4|inst20|inst14~q\) ) ) ) # ( !\inst|inst5|inst28[5]~11_combout\ & ( 
-- !\inst|inst5|inst28[5]~10_combout\ & ( (!\inst4|inst1~0_combout\ & (((!\inst|inst5|inst5|33~0_combout\)) # (\inst|inst5|inst8|inst2|inst14~q\))) # (\inst4|inst1~0_combout\ & (((\inst|inst4|inst20|inst14~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101000111000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst14~q\,
	datab => \inst4|ALT_INV_inst1~0_combout\,
	datac => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datad => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datae => \inst|inst5|ALT_INV_inst28[5]~11_combout\,
	dataf => \inst|inst5|ALT_INV_inst28[5]~10_combout\,
	combout => \inst|inst9|18~0_combout\);

-- Location: LABCELL_X38_Y27_N6
\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|18~0_combout\ & ( !\inst|inst5|ROut1[5]~16_combout\ $ (!\inst2|inst|inst7|inst4|11~1_combout\) ) ) # ( !\inst|inst9|18~0_combout\ & ( 
-- !\inst|inst5|ROut1[5]~16_combout\ $ (\inst2|inst|inst7|inst4|11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst|inst9|ALT_INV_18~0_combout\,
	combout => \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y27_N22
\inst|inst3|inst6|inst3|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst3|inst5~combout\ = ( \inst2|inst|inst7|inst4|11~1_combout\ & ( \inst|inst9|17~0_combout\ ) ) # ( !\inst2|inst|inst7|inst4|11~1_combout\ & ( !\inst|inst9|17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst9|ALT_INV_17~0_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	combout => \inst|inst3|inst6|inst3|inst5~combout\);

-- Location: LABCELL_X32_Y27_N6
\inst|inst3|inst|inst7|inst3|5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|5~2_combout\ = ( \inst2|inst|inst7|inst4|6~combout\ & ( (!\inst2|inst|inst7|inst4|11~1_combout\ & \inst2|inst|inst7|inst4|5~1_combout\) ) ) # ( !\inst2|inst|inst7|inst4|6~combout\ & ( (\inst2|inst|inst7|inst4|11~1_combout\ & 
-- !\inst2|inst|inst7|inst4|5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	combout => \inst|inst3|inst|inst7|inst3|5~2_combout\);

-- Location: FF_X29_Y27_N13
\inst|inst5|inst15|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst12~q\);

-- Location: FF_X30_Y27_N7
\inst|inst5|inst14|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst12~q\);

-- Location: LABCELL_X30_Y27_N12
\inst|inst5|inst28[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[6]~3_combout\ = ( \inst|inst4|inst20|inst10~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst2|inst100~q\ & ((!\inst|inst5|inst3|inst2|inst12~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst15|inst2|inst12~q\)) ) ) ) 
-- # ( \inst|inst4|inst20|inst10~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst14|inst2|inst12~q\ & \inst|inst4|inst2|inst100~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst15|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst5|inst3|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst10~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[6]~3_combout\);

-- Location: FF_X31_Y27_N5
\inst|inst5|inst93|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst12~q\);

-- Location: LABCELL_X27_Y27_N14
\inst|inst5|inst9|inst2|inst12~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst9|inst2|inst12~feeder_combout\ = ( \inst|inst27|23~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_23~0_combout\,
	combout => \inst|inst5|inst9|inst2|inst12~feeder_combout\);

-- Location: FF_X27_Y27_N15
\inst|inst5|inst9|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst9|inst2|inst12~feeder_combout\,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst12~q\);

-- Location: FF_X29_Y27_N39
\inst|inst5|inst7|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst12~q\);

-- Location: MLABCELL_X31_Y27_N6
\inst|inst5|inst28[6]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[6]~2_combout\ = ( \inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ & ( (!\inst|inst4|inst2|inst100~q\ & ((!\inst|inst5|inst9|inst2|inst12~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst93|inst2|inst12~q\)) ) ) ) 
-- # ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ & ( (!\inst|inst5|inst7|inst2|inst12~q\) # (!\inst|inst4|inst2|inst100~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst93|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst5|inst9|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst10~q\,
	combout => \inst|inst5|inst28[6]~2_combout\);

-- Location: FF_X30_Y27_N25
\inst|inst5|inst8|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst12~q\);

-- Location: MLABCELL_X31_Y27_N12
\inst|inst9|23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|23~0_combout\ = ( \inst|inst5|inst28[6]~3_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst14~q\ ) ) ) # ( !\inst|inst5|inst28[6]~3_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst14~q\ ) ) ) # ( 
-- !\inst|inst5|inst28[6]~3_combout\ & ( !\inst4|inst1~0_combout\ & ( (!\inst|inst5|inst28[6]~2_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datac => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[6]~2_combout\,
	datae => \inst|inst5|ALT_INV_inst28[6]~3_combout\,
	dataf => \inst4|ALT_INV_inst1~0_combout\,
	combout => \inst|inst9|23~0_combout\);

-- Location: MLABCELL_X31_Y27_N8
\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst5|ROut1[6]~32_combout\ & ( !\inst2|inst|inst7|inst4|11~1_combout\ $ (!\inst|inst9|23~0_combout\) ) ) # ( !\inst|inst5|ROut1[6]~32_combout\ & 
-- ( !\inst2|inst|inst7|inst4|11~1_combout\ $ (\inst|inst9|23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst|inst9|ALT_INV_23~0_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	combout => \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N32
\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|18~0_combout\ & ( (!\inst|inst5|ROut1[4]~20_combout\ & (((!\inst2|inst|inst7|inst4|11~1_combout\ & \inst|inst5|ROut1[5]~16_combout\)))) # 
-- (\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst9|17~0_combout\ & ((\inst|inst5|ROut1[5]~16_combout\))) # (\inst|inst9|17~0_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)))) ) ) # ( !\inst|inst9|18~0_combout\ & ( (!\inst|inst5|ROut1[4]~20_combout\ & 
-- (((\inst2|inst|inst7|inst4|11~1_combout\ & \inst|inst5|ROut1[5]~16_combout\)))) # (\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst9|17~0_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)) # (\inst|inst9|17~0_combout\ & 
-- ((\inst|inst5|ROut1[5]~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011111000000100001111100010000111100100001000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_17~0_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	dataf => \inst|inst9|ALT_INV_18~0_combout\,
	combout => \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N34
\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|18~0_combout\ & ( (!\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst9|17~0_combout\ & ((!\inst|inst5|ROut1[5]~16_combout\))) # 
-- (\inst|inst9|17~0_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)))) # (\inst|inst5|ROut1[4]~20_combout\ & (((\inst2|inst|inst7|inst4|11~1_combout\ & !\inst|inst5|ROut1[5]~16_combout\)))) ) ) # ( !\inst|inst9|18~0_combout\ & ( 
-- (!\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst9|17~0_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)) # (\inst|inst9|17~0_combout\ & ((!\inst|inst5|ROut1[5]~16_combout\))))) # (\inst|inst5|ROut1[4]~20_combout\ & 
-- (((!\inst2|inst|inst7|inst4|11~1_combout\ & !\inst|inst5|ROut1[5]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010010000000111101001000000010001111000001001000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_17~0_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	dataf => \inst|inst9|ALT_INV_18~0_combout\,
	combout => \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y27_N39
\inst|inst3|inst1|inst28|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst12~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst12~q\);

-- Location: MLABCELL_X39_Y27_N30
\inst|inst9|19\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|19~combout\ = ( \inst|inst4|inst2|inst12~q\ & ( (!\inst|inst4|inst2|inst10~q\ & \inst|inst4|inst20|inst14~q\) ) ) # ( !\inst|inst4|inst2|inst12~q\ & ( (!\inst|inst4|inst2|inst10~q\ & (\inst|inst4|inst20|inst14~q\ & 
-- ((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst14~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst16~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst12~q\,
	combout => \inst|inst9|19~combout\);

-- Location: LABCELL_X30_Y27_N38
\inst|inst9|21\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|21~combout\ = ( !\inst4|inst1~0_combout\ & ( (!\inst|inst5|inst28[6]~2_combout\ & (!\inst|inst5|inst28[6]~3_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst12~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst5|ALT_INV_inst28[6]~2_combout\,
	datad => \inst|inst5|ALT_INV_inst28[6]~3_combout\,
	dataf => \inst4|ALT_INV_inst1~0_combout\,
	combout => \inst|inst9|21~combout\);

-- Location: MLABCELL_X31_Y27_N2
\inst|inst3|inst|inst|inst3|23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|23~0_combout\ = ( \inst|inst5|ROut1[6]~32_combout\ & ( (!\inst|inst9|19~combout\ & (!\inst|inst9|21~combout\ & !\inst2|inst|inst7|inst4|5~1_combout\)) ) ) # ( !\inst|inst5|ROut1[6]~32_combout\ & ( 
-- (!\inst2|inst|inst7|inst4|5~1_combout\) # ((!\inst|inst9|19~combout\ & !\inst|inst9|21~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9|ALT_INV_19~combout\,
	datac => \inst|inst9|ALT_INV_21~combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	combout => \inst|inst3|inst|inst|inst3|23~0_combout\);

-- Location: MLABCELL_X31_Y27_N38
\inst|inst3|inst|inst7|inst3|23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|23~0_combout\ = ( \inst|inst3|inst1|inst28|inst2|inst12~q\ & ( \inst|inst3|inst|inst|inst3|23~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((\inst2|inst|inst7|inst4|11~1_combout\)))) # 
-- (\inst2|inst|inst7|inst4|6~combout\ & (!\inst|inst9|23~0_combout\ $ ((!\inst|inst5|ROut1[6]~32_combout\)))) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst12~q\ & ( \inst|inst3|inst|inst|inst3|23~0_combout\ & ( (\inst2|inst|inst7|inst4|6~combout\ & 
-- (!\inst|inst9|23~0_combout\ $ (!\inst|inst5|ROut1[6]~32_combout\))) ) ) ) # ( \inst|inst3|inst1|inst28|inst2|inst12~q\ & ( !\inst|inst3|inst|inst|inst3|23~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\) # (!\inst|inst9|23~0_combout\ $ 
-- (!\inst|inst5|ROut1[6]~32_combout\)) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst12~q\ & ( !\inst|inst3|inst|inst|inst3|23~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((!\inst2|inst|inst7|inst4|11~1_combout\)))) # 
-- (\inst2|inst|inst7|inst4|6~combout\ & (!\inst|inst9|23~0_combout\ $ ((!\inst|inst5|ROut1[6]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111000010010110111101101111000010010000100100001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_23~0_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datac => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datae => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst3|inst|inst|inst3|ALT_INV_23~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|23~0_combout\);

-- Location: MLABCELL_X34_Y27_N30
\inst|inst9|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|12~0_combout\ = ( \inst|inst4|inst20|inst4~q\ & ( \inst|inst5|inst28[3]~15_combout\ & ( \inst4|inst1~0_combout\ ) ) ) # ( \inst|inst4|inst20|inst4~q\ & ( !\inst|inst5|inst28[3]~15_combout\ & ( ((!\inst|inst5|inst28[3]~14_combout\ & 
-- ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst4~q\)))) # (\inst4|inst1~0_combout\) ) ) ) # ( !\inst|inst4|inst20|inst4~q\ & ( !\inst|inst5|inst28[3]~15_combout\ & ( (!\inst|inst5|inst28[3]~14_combout\ & (!\inst4|inst1~0_combout\ & 
-- ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst5|ALT_INV_inst28[3]~14_combout\,
	datad => \inst4|ALT_INV_inst1~0_combout\,
	datae => \inst|inst4|inst20|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_inst28[3]~15_combout\,
	combout => \inst|inst9|12~0_combout\);

-- Location: LABCELL_X35_Y27_N6
\inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|12~0_combout\ & ( (!\inst|inst5|ROut1[2]~12_combout\ & (((!\inst2|inst|inst7|inst4|11~1_combout\ & \inst|inst5|ROut1[3]~8_combout\)))) # 
-- (\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst9|11~0_combout\ & ((\inst|inst5|ROut1[3]~8_combout\))) # (\inst|inst9|11~0_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)))) ) ) # ( !\inst|inst9|12~0_combout\ & ( (!\inst|inst5|ROut1[2]~12_combout\ & 
-- (((\inst2|inst|inst7|inst4|11~1_combout\ & \inst|inst5|ROut1[3]~8_combout\)))) # (\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst9|11~0_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)) # (\inst|inst9|11~0_combout\ & 
-- ((\inst|inst5|ROut1[3]~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110111000000100011011100000100110011100000010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_11~0_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	dataf => \inst|inst9|ALT_INV_12~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N4
\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|12~0_combout\ & ( (!\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst9|11~0_combout\ & ((!\inst|inst5|ROut1[3]~8_combout\))) # 
-- (\inst|inst9|11~0_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)))) # (\inst|inst5|ROut1[2]~12_combout\ & (((\inst2|inst|inst7|inst4|11~1_combout\ & !\inst|inst5|ROut1[3]~8_combout\)))) ) ) # ( !\inst|inst9|12~0_combout\ & ( 
-- (!\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst9|11~0_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)) # (\inst|inst9|11~0_combout\ & ((!\inst|inst5|ROut1[3]~8_combout\))))) # (\inst|inst5|ROut1[2]~12_combout\ & 
-- (((!\inst2|inst|inst7|inst4|11~1_combout\ & !\inst|inst5|ROut1[3]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100011000000110110001100000010110001001100001011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_11~0_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	dataf => \inst|inst9|ALT_INV_12~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N14
\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst9|6~0_combout\ & ( (!\inst2|inst|inst7|inst4|11~1_combout\ & (((\inst|inst5|ROut1[0]~24_combout\ & \inst|inst9|5~0_combout\)) # 
-- (\inst|inst5|ROut1[1]~28_combout\))) # (\inst2|inst|inst7|inst4|11~1_combout\ & (\inst|inst5|ROut1[1]~28_combout\ & ((!\inst|inst9|5~0_combout\) # (\inst|inst5|ROut1[0]~24_combout\)))) ) ) # ( !\inst|inst9|6~0_combout\ & ( 
-- (!\inst2|inst|inst7|inst4|11~1_combout\ & (\inst|inst5|ROut1[0]~24_combout\ & (\inst|inst9|5~0_combout\ & \inst|inst5|ROut1[1]~28_combout\))) # (\inst2|inst|inst7|inst4|11~1_combout\ & (((!\inst|inst9|5~0_combout\) # (\inst|inst5|ROut1[1]~28_combout\)) # 
-- (\inst|inst5|ROut1[0]~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010111010100010101011100000010111110110000001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	datac => \inst|inst9|ALT_INV_5~0_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	dataf => \inst|inst9|ALT_INV_6~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N12
\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y27_N32
\inst|inst3|inst|inst7|inst3|23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|23~1_combout\ = ( \inst|inst3|inst|inst7|inst3|23~0_combout\ & ( \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~2_combout\) # 
-- (!\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|23~0_combout\ & ( \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst|inst7|inst3|5~2_combout\ & 
-- (!\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- \inst|inst3|inst|inst7|inst3|23~0_combout\ & ( !\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~2_combout\) # 
-- (!\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|23~0_combout\ & ( !\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst|inst7|inst3|5~2_combout\ & 
-- (!\inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001111011011110110100010001001000101101110111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst6|inst|inst2|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst|inst7|inst3|ALT_INV_5~2_combout\,
	datac => \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_23~0_combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|23~1_combout\);

-- Location: LABCELL_X30_Y27_N10
\inst|inst5|inst28[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[7]~0_combout\ = ( \inst|inst5|inst9|inst2|inst10~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst93|inst2|inst10~q\ & (!\inst|inst4|inst20|inst10~q\ & \inst|inst4|inst2|inst100~q\)) ) ) ) # ( !\inst|inst5|inst9|inst2|inst10~q\ 
-- & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst5|inst93|inst2|inst10~q\) # (!\inst|inst4|inst2|inst100~q\))) ) ) ) # ( \inst|inst5|inst9|inst2|inst10~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( 
-- (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\) # (!\inst|inst5|inst7|inst2|inst10~q\))) ) ) ) # ( !\inst|inst5|inst9|inst2|inst10~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ & ((!\inst|inst4|inst2|inst100~q\) 
-- # (!\inst|inst5|inst7|inst2|inst10~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001000110010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst93|inst2|ALT_INV_inst10~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst5|inst7|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst5|inst9|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[7]~0_combout\);

-- Location: MLABCELL_X31_Y27_N24
\inst|inst9|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|24~0_combout\ = ( \inst|inst5|inst5|33~0_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst14~q\ ) ) ) # ( !\inst|inst5|inst5|33~0_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst14~q\ ) ) ) # ( 
-- \inst|inst5|inst5|33~0_combout\ & ( !\inst4|inst1~0_combout\ & ( (\inst|inst5|inst8|inst2|inst10~q\ & (!\inst|inst5|inst28[7]~0_combout\ & !\inst|inst5|inst28[7]~1_combout\)) ) ) ) # ( !\inst|inst5|inst5|33~0_combout\ & ( !\inst4|inst1~0_combout\ & ( 
-- (!\inst|inst5|inst28[7]~0_combout\ & !\inst|inst5|inst28[7]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000001100000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst5|ALT_INV_inst28[7]~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[7]~1_combout\,
	datae => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	dataf => \inst4|ALT_INV_inst1~0_combout\,
	combout => \inst|inst9|24~0_combout\);

-- Location: MLABCELL_X31_Y27_N32
\inst|inst3|inst13|inst8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst13|inst8~0_combout\ = ( \inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst9|24~0_combout\ ) ) # ( !\inst|inst5|ROut1[7]~36_combout\ & ( \inst|inst9|24~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst9|ALT_INV_24~0_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst13|inst8~0_combout\);

-- Location: MLABCELL_X31_Y27_N0
\inst|inst3|inst|inst|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|24~0_combout\ = ( \inst|inst5|ROut1[7]~36_combout\ & ( (!\inst|inst9|19~combout\ & (!\inst2|inst|inst7|inst4|5~1_combout\ & ((!\inst|inst5|inst28[7]~16_combout\) # (\inst4|inst1~0_combout\)))) ) ) # ( 
-- !\inst|inst5|ROut1[7]~36_combout\ & ( (!\inst2|inst|inst7|inst4|5~1_combout\) # ((!\inst|inst9|19~combout\ & ((!\inst|inst5|inst28[7]~16_combout\) # (\inst4|inst1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110100111111001111010011000000010000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~0_combout\,
	datab => \inst|inst9|ALT_INV_19~combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datad => \inst|inst5|ALT_INV_inst28[7]~16_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst|inst|inst3|24~0_combout\);

-- Location: MLABCELL_X31_Y27_N34
\inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst9|24~0_combout\ $ (((!\inst|inst5|ROut1[6]~32_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)) # 
-- (\inst|inst5|ROut1[6]~32_combout\ & ((!\inst|inst9|23~0_combout\))))) ) ) # ( !\inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst9|24~0_combout\ $ (((!\inst|inst5|ROut1[6]~32_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)) # 
-- (\inst|inst5|ROut1[6]~32_combout\ & ((\inst|inst9|23~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101010010101100110101001010101100101011010100110010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_24~0_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	datad => \inst|inst9|ALT_INV_23~0_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y27_N10
\inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst9|24~0_combout\ $ (((!\inst|inst5|ROut1[6]~32_combout\ & ((!\inst|inst9|23~0_combout\))) # 
-- (\inst|inst5|ROut1[6]~32_combout\ & (\inst2|inst|inst7|inst4|11~1_combout\)))) ) ) # ( !\inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst9|24~0_combout\ $ (((!\inst|inst5|ROut1[6]~32_combout\ & ((\inst|inst9|23~0_combout\))) # 
-- (\inst|inst5|ROut1[6]~32_combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011001010110101001100101011001011001101010010101100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_24~0_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	datad => \inst|inst9|ALT_INV_23~0_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y26_N16
\inst|inst3|inst1|Rt1|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Rt1|X~0_combout\ = (!\inst|inst3|inst1|and~1_combout\ & \inst|inst3|inst1|Result1|inst2|inst100~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst3|inst1|Rt1|X~0_combout\);

-- Location: FF_X32_Y26_N17
\inst|inst3|inst1|Rt1|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Rt1|X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Rt1|inst2|inst100~q\);

-- Location: FF_X32_Y26_N37
\inst|inst3|inst1|inst9|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|5~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst100~q\);

-- Location: FF_X32_Y26_N29
\inst|inst3|inst1|regByte|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|inst|inst7|inst4|11~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|regByte|inst3~q\);

-- Location: FF_X32_Y26_N3
\inst|inst3|inst1|regByte|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|inst|inst7|inst4|5~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|regByte|inst100~q\);

-- Location: LABCELL_X32_Y26_N14
\inst|inst3|inst1|and~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|and~0_combout\ = ( !\inst2|inst|inst7|inst4|6~combout\ & ( (\inst2|inst|inst7|inst4|11~1_combout\ & \inst2|inst|inst7|inst4|5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	combout => \inst|inst3|inst1|and~0_combout\);

-- Location: LABCELL_X32_Y26_N30
\inst|inst3|inst1|inst20\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst20~combout\ = ( \inst|inst3|inst1|Result1|inst2|inst100~q\ & ( \inst|inst3|inst1|and~0_combout\ & ( (\inst|inst3|inst1|regByte|inst3~q\ & (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ & (\inst|inst3|inst1|regByte|inst100~q\ & 
-- !\inst|inst3|inst1|regByte|inst2~q\))) ) ) ) # ( \inst|inst3|inst1|Result1|inst2|inst100~q\ & ( !\inst|inst3|inst1|and~0_combout\ & ( !\inst|inst3|inst1|Rt1|inst2|inst100~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|regByte|ALT_INV_inst3~q\,
	datab => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|regByte|ALT_INV_inst100~q\,
	datad => \inst|inst3|inst1|regByte|ALT_INV_inst2~q\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~0_combout\,
	combout => \inst|inst3|inst1|inst20~combout\);

-- Location: LABCELL_X32_Y26_N18
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ = ( \inst|inst5|ROut1[0]~24_combout\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|inst9|inst2|inst100~q\ & ((\inst|inst3|inst1|inst20~combout\))) # 
-- (\inst|inst3|inst1|inst9|inst2|inst100~q\ & (\inst|inst3|inst1|Result1|inst2|inst24~q\)))) # (\inst|inst3|inst1|and~1_combout\ & (\inst|inst3|inst1|Result1|inst2|inst24~q\)) ) ) # ( !\inst|inst5|ROut1[0]~24_combout\ & ( (!\inst|inst3|inst1|and~1_combout\ 
-- & ((!\inst|inst3|inst1|inst9|inst2|inst100~q\ & ((\inst|inst3|inst1|inst20~combout\))) # (\inst|inst3|inst1|inst9|inst2|inst100~q\ & (\inst|inst3|inst1|Result1|inst2|inst24~q\)))) # (\inst|inst3|inst1|and~1_combout\ & 
-- (((\inst|inst3|inst1|inst20~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111000000101111011100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst24~q\,
	datac => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\);

-- Location: FF_X35_Y26_N39
\inst|inst3|inst1|inst9|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|6~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst2~q\);

-- Location: LABCELL_X35_Y26_N38
\inst|inst3|inst1|inst8|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst8|6~0_combout\ = ( \inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[1]~28_combout\ ) ) # ( !\inst|inst3|inst1|and~1_combout\ & ( \inst|inst3|inst1|inst9|inst2|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	datad => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|inst8|6~0_combout\);

-- Location: MLABCELL_X31_Y26_N30
\inst|inst3|inst1|inst19\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst19~combout\ = ( \inst|inst3|inst1|Result1|inst2|inst100~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & \inst|inst3|inst1|Rt1|inst2|inst100~q\) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst100~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & 
-- !\inst|inst3|inst1|Rt1|inst2|inst100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst3|inst1|inst19~combout\);

-- Location: FF_X32_Y26_N23
\inst|inst3|inst1|inst9|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|17~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst16~q\);

-- Location: MLABCELL_X31_Y26_N36
\inst|inst3|inst1|Result1|inst1|inst3|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ = ( \inst|inst3|inst1|inst9|inst2|inst16~q\ & ( !\inst|inst3|inst1|inst20~combout\ $ (((\inst|inst3|inst1|and~1_combout\ & !\inst|inst5|ROut1[4]~20_combout\))) ) ) # ( 
-- !\inst|inst3|inst1|inst9|inst2|inst16~q\ & ( !\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|and~1_combout\) # (!\inst|inst5|ROut1[4]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101010101111010100001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datad => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	dataf => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\);

-- Location: FF_X32_Y26_N5
\inst|inst3|inst1|inst9|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|12~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst4~q\);

-- Location: LABCELL_X32_Y26_N4
\inst|inst3|inst1|inst8|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst8|12~0_combout\ = ( \inst|inst3|inst1|inst9|inst2|inst4~q\ & ( \inst|inst5|ROut1[3]~8_combout\ ) ) # ( !\inst|inst3|inst1|inst9|inst2|inst4~q\ & ( \inst|inst5|ROut1[3]~8_combout\ & ( (\inst|inst3|inst1|and~0_combout\ & 
-- ((!\inst|inst3|inst1|regByte|inst3~q\) # ((!\inst|inst3|inst1|regByte|inst100~q\) # (\inst|inst3|inst1|regByte|inst2~q\)))) ) ) ) # ( \inst|inst3|inst1|inst9|inst2|inst4~q\ & ( !\inst|inst5|ROut1[3]~8_combout\ & ( (!\inst|inst3|inst1|and~0_combout\) # 
-- ((\inst|inst3|inst1|regByte|inst3~q\ & (\inst|inst3|inst1|regByte|inst100~q\ & !\inst|inst3|inst1|regByte|inst2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001000000000000111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|regByte|ALT_INV_inst3~q\,
	datab => \inst|inst3|inst1|regByte|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|regByte|ALT_INV_inst2~q\,
	datad => \inst|inst3|inst1|ALT_INV_and~0_combout\,
	datae => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	combout => \inst|inst3|inst1|inst8|12~0_combout\);

-- Location: FF_X32_Y26_N35
\inst|inst3|inst1|inst9|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|11~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst3~q\);

-- Location: LABCELL_X32_Y26_N32
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst28~q\ & (\inst|inst3|inst1|Result1|inst2|inst29~q\ & 
-- ((!\inst|inst3|inst1|inst20~combout\ $ (!\inst|inst3|inst1|inst8|12~0_combout\))))) # (\inst|inst3|inst1|Result1|inst2|inst28~q\ & ((!\inst|inst3|inst1|inst9|inst2|inst3~q\ & ((!\inst|inst3|inst1|inst8|12~0_combout\ & 
-- ((\inst|inst3|inst1|inst20~combout\))) # (\inst|inst3|inst1|inst8|12~0_combout\ & (\inst|inst3|inst1|Result1|inst2|inst29~q\)))) # (\inst|inst3|inst1|inst9|inst2|inst3~q\ & ((!\inst|inst3|inst1|inst8|12~0_combout\ & 
-- (\inst|inst3|inst1|Result1|inst2|inst29~q\)) # (\inst|inst3|inst1|inst8|12~0_combout\ & ((!\inst|inst3|inst1|inst20~combout\))))))) ) ) # ( \inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst28~q\ & 
-- (\inst|inst3|inst1|Result1|inst2|inst29~q\ & ((!\inst|inst3|inst1|inst20~combout\ $ (!\inst|inst3|inst1|inst8|12~0_combout\))))) # (\inst|inst3|inst1|Result1|inst2|inst28~q\ & ((!\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst3|inst1|inst8|12~0_combout\ 
-- & ((\inst|inst3|inst1|inst20~combout\))) # (\inst|inst3|inst1|inst8|12~0_combout\ & (\inst|inst3|inst1|Result1|inst2|inst29~q\)))) # (\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst3|inst1|inst8|12~0_combout\ & 
-- (\inst|inst3|inst1|Result1|inst2|inst29~q\)) # (\inst|inst3|inst1|inst8|12~0_combout\ & ((!\inst|inst3|inst1|inst20~combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000101110011000000010111001100110111000100000011011100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datad => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datae => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	dataf => \inst|inst3|inst1|inst8|ALT_INV_12~0_combout\,
	datag => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y26_N38
\inst|inst3|inst1|Result1|inst1|inst3|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ = ( \inst|inst5|ROut1[2]~12_combout\ & ( !\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|inst9|inst2|inst3~q\ & !\inst|inst3|inst1|and~1_combout\))) ) ) # ( !\inst|inst5|ROut1[2]~12_combout\ 
-- & ( !\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|inst9|inst2|inst3~q\) # (\inst|inst3|inst1|and~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111100111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datad => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\);

-- Location: LABCELL_X32_Y26_N10
\inst|inst3|inst1|Result1|inst1|inst3|inst4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ = !\inst|inst3|inst1|inst20~combout\ $ (!\inst|inst3|inst1|inst8|12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datad => \inst|inst3|inst1|inst8|ALT_INV_12~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\);

-- Location: MLABCELL_X31_Y26_N4
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst29~q\ & 
-- (!\inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ & !\inst|inst3|inst1|Result1|inst2|inst28~q\)) ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst29~q\) # 
-- ((!\inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ & !\inst|inst3|inst1|Result1|inst2|inst28~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	datad => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y26_N8
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|inst8|6~0_combout\ & ( (!\inst|inst3|inst1|inst20~combout\ & 
-- ((\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) # (\inst|inst3|inst1|Result1|inst2|inst27~q\))) # (\inst|inst3|inst1|inst20~combout\ & (\inst|inst3|inst1|Result1|inst2|inst27~q\ & 
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\)) ) ) # ( !\inst|inst3|inst1|inst8|6~0_combout\ & ( (!\inst|inst3|inst1|inst20~combout\ & (\inst|inst3|inst1|Result1|inst2|inst27~q\ & 
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\)) # (\inst|inst3|inst1|inst20~combout\ & ((\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\) # (\inst|inst3|inst1|Result1|inst2|inst27~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst27~q\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\,
	dataf => \inst|inst3|inst1|inst8|ALT_INV_6~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y26_N26
\inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y26_N35
\inst|inst3|inst1|inst9|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|23~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst12~q\);

-- Location: MLABCELL_X31_Y26_N28
\inst|inst3|inst1|Result1|inst1|inst3|inst7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\ = ( \inst|inst5|ROut1[6]~32_combout\ & ( !\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|and~1_combout\ & !\inst|inst3|inst1|inst9|inst2|inst12~q\))) ) ) # ( !\inst|inst5|ROut1[6]~32_combout\ 
-- & ( !\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|inst9|inst2|inst12~q\) # (\inst|inst3|inst1|and~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100101100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datab => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datad => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\);

-- Location: LABCELL_X32_Y26_N36
\inst|inst3|inst1|Result1|X~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|X~0_combout\ = ( \inst|inst3|inst1|Rt1|inst2|inst100~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & !\inst|inst3|inst1|Result1|inst2|inst100~q\) ) ) # ( !\inst|inst3|inst1|Rt1|inst2|inst100~q\ & ( (!\inst|inst3|inst1|and~1_combout\ 
-- & \inst|inst3|inst1|Result1|inst2|inst100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst3|inst1|Result1|X~0_combout\);

-- Location: FF_X31_Y26_N9
\inst|inst3|inst1|inst9|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|24~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst10~q\);

-- Location: MLABCELL_X31_Y26_N8
\inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst32~q\ $ (!\inst|inst3|inst1|inst20~combout\ $ 
-- (((\inst|inst3|inst1|inst9|inst2|inst10~q\) # (\inst|inst3|inst1|and~1_combout\)))) ) ) # ( !\inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst32~q\ $ (!\inst|inst3|inst1|inst20~combout\ $ (((!\inst|inst3|inst1|and~1_combout\ & 
-- \inst|inst3|inst1|inst9|inst2|inst10~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011001101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst32~q\,
	datab => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y26_N7
\inst|inst3|inst1|inst9|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst9|18~0_combout\,
	sload => VCC,
	ena => \inst|inst3|inst1|and~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst9|inst2|inst14~q\);

-- Location: LABCELL_X32_Y26_N6
\inst|inst3|inst1|inst8|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst8|18~0_combout\ = ( \inst|inst3|inst1|inst9|inst2|inst14~q\ & ( \inst|inst5|ROut1[5]~16_combout\ ) ) # ( !\inst|inst3|inst1|inst9|inst2|inst14~q\ & ( \inst|inst5|ROut1[5]~16_combout\ & ( (\inst|inst3|inst1|and~0_combout\ & 
-- ((!\inst|inst3|inst1|regByte|inst3~q\) # ((!\inst|inst3|inst1|regByte|inst100~q\) # (\inst|inst3|inst1|regByte|inst2~q\)))) ) ) ) # ( \inst|inst3|inst1|inst9|inst2|inst14~q\ & ( !\inst|inst5|ROut1[5]~16_combout\ & ( (!\inst|inst3|inst1|and~0_combout\) # 
-- ((\inst|inst3|inst1|regByte|inst3~q\ & (\inst|inst3|inst1|regByte|inst100~q\ & !\inst|inst3|inst1|regByte|inst2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100011111000000001110000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|regByte|ALT_INV_inst3~q\,
	datab => \inst|inst3|inst1|regByte|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|ALT_INV_and~0_combout\,
	datad => \inst|inst3|inst1|regByte|ALT_INV_inst2~q\,
	datae => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	combout => \inst|inst3|inst1|inst8|18~0_combout\);

-- Location: MLABCELL_X31_Y26_N0
\inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst30~q\ & (((\inst|inst3|inst1|Result1|inst2|inst31~q\ & 
-- (!\inst|inst3|inst1|inst20~combout\ $ (!\inst|inst3|inst1|inst8|18~0_combout\)))))) # (\inst|inst3|inst1|Result1|inst2|inst30~q\ & ((!\inst|inst3|inst1|inst9|inst2|inst16~q\ & ((!\inst|inst3|inst1|inst8|18~0_combout\ & (\inst|inst3|inst1|inst20~combout\)) 
-- # (\inst|inst3|inst1|inst8|18~0_combout\ & ((\inst|inst3|inst1|Result1|inst2|inst31~q\))))) # (\inst|inst3|inst1|inst9|inst2|inst16~q\ & ((!\inst|inst3|inst1|inst8|18~0_combout\ & ((\inst|inst3|inst1|Result1|inst2|inst31~q\))) # 
-- (\inst|inst3|inst1|inst8|18~0_combout\ & (!\inst|inst3|inst1|inst20~combout\)))))) ) ) # ( \inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|Result1|inst2|inst30~q\ & (((\inst|inst3|inst1|Result1|inst2|inst31~q\ & 
-- (!\inst|inst3|inst1|inst20~combout\ $ (!\inst|inst3|inst1|inst8|18~0_combout\)))))) # (\inst|inst3|inst1|Result1|inst2|inst30~q\ & ((!\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst3|inst1|inst8|18~0_combout\ & (\inst|inst3|inst1|inst20~combout\)) # 
-- (\inst|inst3|inst1|inst8|18~0_combout\ & ((\inst|inst3|inst1|Result1|inst2|inst31~q\))))) # (\inst|inst5|ROut1[4]~20_combout\ & ((!\inst|inst3|inst1|inst8|18~0_combout\ & ((\inst|inst3|inst1|Result1|inst2|inst31~q\))) # 
-- (\inst|inst3|inst1|inst8|18~0_combout\ & (!\inst|inst3|inst1|inst20~combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000000000100000100000000010000110111110111000011011111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\,
	datab => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	datac => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datad => \inst|inst3|inst1|inst8|ALT_INV_18~0_combout\,
	datae => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datag => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst16~q\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y26_N10
\inst|inst3|inst1|Result1|inst1|inst3|inst6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\ = !\inst|inst3|inst1|inst8|18~0_combout\ $ (!\inst|inst3|inst1|inst20~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst1|inst8|ALT_INV_18~0_combout\,
	datad => \inst|inst3|inst1|ALT_INV_inst20~combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\);

-- Location: MLABCELL_X31_Y26_N6
\inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst30~q\ & ( (!\inst|inst3|inst1|Result1|inst2|inst31~q\ & 
-- !\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst30~q\ & ( (!\inst|inst3|inst1|Result1|inst2|inst31~q\ & ((!\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\) # 
-- (!\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\))) # (\inst|inst3|inst1|Result1|inst2|inst31~q\ & (!\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\ & !\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datac => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y26_N24
\inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011111111011101001111111100000000100010110000000010001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y26_N22
\inst|inst3|inst1|Result1|X~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|X~3_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst32~q\ & ( \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\inst|inst3|inst1|Result1|X~0_combout\ & 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst3|inst1|inst19~combout\) ) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst32~q\ & ( 
-- \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst1|Result1|X~0_combout\ & 
-- (!\inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\))) ) ) ) # ( \inst|inst3|inst1|Result1|inst2|inst32~q\ & ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\inst|inst3|inst1|Result1|X~0_combout\ & 
-- (!\inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\)))) # (\inst|inst3|inst1|inst19~combout\) ) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst2|inst32~q\ & ( !\inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst1|Result1|X~0_combout\ & 
-- \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110111001100000101010100000111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|ALT_INV_X~0_combout\,
	datab => \inst|inst3|inst1|ALT_INV_inst19~combout\,
	datac => \inst|inst3|inst1|Result1|inst1|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst32~q\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|X~3_combout\);

-- Location: FF_X31_Y26_N23
\inst|inst3|inst1|Result1|inst2|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|X~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst32~q\);

-- Location: LABCELL_X30_Y26_N38
\inst|inst3|inst1|Result1|inst2|inst31~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst31~1_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst1|and~1_combout\ & (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\))) ) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\)) # (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # 
-- ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst1|and~1_combout\ ) ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\)) # 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010011001100110011001100110010000100110011001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst31~1_combout\);

-- Location: LABCELL_X30_Y26_N18
\inst|inst3|inst1|Result1|inst2|inst31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst1|and~1_combout\ ) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\)))) ) ) ) 
-- # ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst3|inst1|and~1_combout\ & (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\))) ) ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst1|and~1_combout\ & 
-- ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ $ (\inst|inst3|inst1|Result1|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010010000100100001001000011110000100100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst31~0_combout\);

-- Location: MLABCELL_X31_Y26_N12
\inst|inst3|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst31~1_combout\ & ( \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( \inst|inst3|inst1|Result1|inst2|inst32~q\ ) 
-- ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst31~1_combout\ & ( \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\ $ (!\inst|inst3|inst1|Result1|inst2|inst32~q\ $ 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( \inst|inst3|inst1|Result1|inst2|inst31~1_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( 
-- !\inst|inst3|inst1|Result1|inst1|inst3|inst7~combout\ $ (!\inst|inst3|inst1|Result1|inst2|inst32~q\ $ (!\inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010110011001101001011010010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst7~combout\,
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst32~q\,
	datac => \inst|inst3|inst1|Result1|inst1|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~1_combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y26_N13
\inst|inst3|inst1|Result1|inst2|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst22|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst31~q\);

-- Location: MLABCELL_X31_Y26_N32
\inst|inst3|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst30~q\ & ( \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst31~q\ $ 
-- (((!\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ $ (\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\)) # (\inst|inst3|inst1|Result1|inst2|inst31~1_combout\))) ) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst30~q\ & ( 
-- \inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst31~q\ $ (((!\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\) # (\inst|inst3|inst1|Result1|inst2|inst31~1_combout\))) ) ) ) # ( 
-- \inst|inst3|inst1|Result1|inst2|inst30~q\ & ( !\inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( (\inst|inst3|inst1|Result1|inst2|inst31~1_combout\ & (!\inst|inst3|inst1|Result1|inst2|inst31~q\ $ 
-- (\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\))) ) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst30~q\ & ( !\inst|inst3|inst1|Result1|inst2|inst31~0_combout\ & ( (\inst|inst3|inst1|Result1|inst2|inst31~1_combout\ & 
-- (!\inst|inst3|inst1|Result1|inst2|inst31~q\ $ (!\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ $ (\inst|inst3|inst1|Result1|inst1|inst3|inst6~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101001000000001010010101011010010101010110100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~q\,
	datab => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datac => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst6~combout\,
	datad => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~1_combout\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst31~0_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y26_N33
\inst|inst3|inst1|Result1|inst2|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst23|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst30~q\);

-- Location: MLABCELL_X31_Y26_N38
\inst|inst3|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst30~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ $ 
-- (\inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst3|inst1|inst19~combout\))) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst30~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & 
-- (!\inst|inst3|inst1|inst19~combout\ & (!\inst|inst3|inst1|Result1|inst1|inst3|inst5~combout\ $ (!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001010000000000010000010101010101000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datab => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst5~combout\,
	datac => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst1|ALT_INV_inst19~combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst30~q\,
	combout => \inst|inst3|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y26_N39
\inst|inst3|inst1|Result1|inst2|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst19|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst29~q\);

-- Location: MLABCELL_X31_Y26_N16
\inst|inst3|inst1|Result1|X~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|X~1_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst29~q\ $ 
-- (!\inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ $ (((\inst|inst3|inst1|Result1|inst2|inst28~q\) # (\inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\)))) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst29~q\ $ (!\inst|inst3|inst1|Result1|inst1|inst3|inst4~combout\ $ 
-- (((\inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ & \inst|inst3|inst1|Result1|inst2|inst28~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datab => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst4~combout\,
	datac => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	datad => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst1|Result1|X~1_combout\);

-- Location: MLABCELL_X31_Y26_N18
\inst|inst3|inst1|Result1|X~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|X~2_combout\ = ( \inst|inst3|inst1|Result1|X~0_combout\ & ( ((\inst|inst3|inst1|Result1|inst2|inst29~q\ & \inst|inst3|inst1|inst19~combout\)) # (\inst|inst3|inst1|Result1|X~1_combout\) ) ) # ( 
-- !\inst|inst3|inst1|Result1|X~0_combout\ & ( (\inst|inst3|inst1|Result1|inst2|inst29~q\ & \inst|inst3|inst1|inst19~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst29~q\,
	datac => \inst|inst3|inst1|Result1|ALT_INV_X~1_combout\,
	datad => \inst|inst3|inst1|ALT_INV_inst19~combout\,
	dataf => \inst|inst3|inst1|Result1|ALT_INV_X~0_combout\,
	combout => \inst|inst3|inst1|Result1|X~2_combout\);

-- Location: FF_X31_Y26_N19
\inst|inst3|inst1|Result1|inst2|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|X~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst28~q\);

-- Location: LABCELL_X32_Y26_N24
\inst|inst3|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ & ( (!\inst|inst3|inst1|and~1_combout\ & (!\inst|inst3|inst1|Result1|inst2|inst28~q\ $ 
-- (((\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst3|inst1|inst19~combout\))))) ) ) # ( !\inst|inst3|inst1|Result1|inst1|inst3|inst3~combout\ & ( 
-- (!\inst|inst3|inst1|and~1_combout\ & (!\inst|inst3|inst1|Result1|inst2|inst28~q\ $ (((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst3|inst1|inst19~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010000010000010101000001010000010000010101000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datab => \inst|inst3|inst1|ALT_INV_inst19~combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst28~q\,
	datad => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst1|Result1|inst1|inst3|ALT_INV_inst3~combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y26_N25
\inst|inst3|inst1|Result1|inst2|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst17|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst27~q\);

-- Location: LABCELL_X32_Y26_N0
\inst|inst3|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst100~q\ & ( \inst|inst3|inst1|Result1|inst2|inst27~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & 
-- ((!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ $ (!\inst|inst3|inst1|inst8|6~0_combout\)) # (\inst|inst3|inst1|Rt1|inst2|inst100~q\))) ) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst100~q\ & ( 
-- \inst|inst3|inst1|Result1|inst2|inst27~q\ & ( (!\inst|inst3|inst1|and~1_combout\ & ((!\inst|inst3|inst1|Rt1|inst2|inst100~q\) # (!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ $ (\inst|inst3|inst1|inst8|6~0_combout\)))) ) ) ) # ( 
-- \inst|inst3|inst1|Result1|inst2|inst100~q\ & ( !\inst|inst3|inst1|Result1|inst2|inst27~q\ & ( (!\inst|inst3|inst1|Rt1|inst2|inst100~q\ & (!\inst|inst3|inst1|and~1_combout\ & (!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ $ 
-- (\inst|inst3|inst1|inst8|6~0_combout\)))) ) ) ) # ( !\inst|inst3|inst1|Result1|inst2|inst100~q\ & ( !\inst|inst3|inst1|Result1|inst2|inst27~q\ & ( (\inst|inst3|inst1|Rt1|inst2|inst100~q\ & (!\inst|inst3|inst1|and~1_combout\ & 
-- (!\inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|inst4~0_combout\ $ (!\inst|inst3|inst1|inst8|6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000100000000100000011100000110100000111000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst1|inst|inst7|inst|inst|ALT_INV_inst4~0_combout\,
	datab => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|inst8|ALT_INV_6~0_combout\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst27~q\,
	combout => \inst|inst3|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y26_N1
\inst|inst3|inst1|Result1|inst2|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst9|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst24~q\);

-- Location: LABCELL_X32_Y26_N20
\inst|inst3|inst1|Result1|X~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|X~4_combout\ = ( \inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[7]~36_combout\ ) ) # ( !\inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[7]~36_combout\ & ( !\inst|inst3|inst1|Result1|inst2|inst24~q\ $ 
-- (((!\inst|inst3|inst1|inst9|inst2|inst100~q\) # (!\inst|inst3|inst1|Result1|inst2|inst100~q\ $ (\inst|inst3|inst1|Rt1|inst2|inst100~q\)))) ) ) ) # ( !\inst|inst3|inst1|and~1_combout\ & ( !\inst|inst5|ROut1[7]~36_combout\ & ( 
-- !\inst|inst3|inst1|Result1|inst2|inst24~q\ $ (((!\inst|inst3|inst1|inst9|inst2|inst100~q\) # (!\inst|inst3|inst1|Result1|inst2|inst100~q\ $ (\inst|inst3|inst1|Rt1|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101101001000000000000000000001111011010011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst3|inst1|Rt1|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst24~q\,
	datad => \inst|inst3|inst1|inst9|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	combout => \inst|inst3|inst1|Result1|X~4_combout\);

-- Location: FF_X32_Y26_N21
\inst|inst3|inst1|Result1|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst10~q\);

-- Location: FF_X35_Y27_N9
\inst|inst3|inst1|inst28|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst10~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst10~q\);

-- Location: LABCELL_X35_Y27_N16
\inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) # ( 
-- !\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (\inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((!\inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110010101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst3|inst6|inst|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst3|inst6|inst|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y27_N8
\inst|inst3|inst|inst6|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst6|inst3|24~0_combout\ = ( \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst2|inst|inst7|inst4|5~1_combout\ & 
-- (!\inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst2|inst|inst7|inst4|5~1_combout\ & ((\inst|inst3|inst1|inst28|inst2|inst10~q\))) ) ) # ( 
-- !\inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst2|inst|inst7|inst4|5~1_combout\ & (!\inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst2|inst|inst7|inst4|5~1_combout\ & ((\inst|inst3|inst1|inst28|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datad => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst|inst6|inst3|24~0_combout\);

-- Location: LABCELL_X35_Y27_N10
\inst|inst3|inst|inst|inst2|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst2|24~0_combout\ = ( \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst2|inst|inst7|inst4|5~1_combout\ & ((\inst|inst3|inst13|inst8~0_combout\))) # 
-- (\inst2|inst|inst7|inst4|5~1_combout\ & (!\inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) # ( !\inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ( (!\inst2|inst|inst7|inst4|5~1_combout\ & ((\inst|inst3|inst13|inst8~0_combout\))) # (\inst2|inst|inst7|inst4|5~1_combout\ & (!\inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst6|inst|inst1|inst1|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst6|inst|inst1|inst2|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst3|inst13|ALT_INV_inst8~0_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst|inst3|inst6|inst|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst|inst|inst2|24~0_combout\);

-- Location: LABCELL_X35_Y27_N28
\inst|inst3|inst|inst7|inst3|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|24~0_combout\ = ( \inst|inst3|inst|inst6|inst3|24~0_combout\ & ( \inst|inst3|inst|inst|inst2|24~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((!\inst|inst3|inst|inst|inst3|24~0_combout\)) # 
-- (\inst2|inst|inst7|inst4|11~1_combout\))) # (\inst2|inst|inst7|inst4|6~combout\ & ((!\inst2|inst|inst7|inst4|11~1_combout\) # ((\inst|inst3|inst13|inst8~0_combout\)))) ) ) ) # ( !\inst|inst3|inst|inst6|inst3|24~0_combout\ & ( 
-- \inst|inst3|inst|inst|inst2|24~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\ & ((!\inst|inst3|inst|inst|inst3|24~0_combout\)))) # (\inst2|inst|inst7|inst4|6~combout\ & 
-- ((!\inst2|inst|inst7|inst4|11~1_combout\) # ((\inst|inst3|inst13|inst8~0_combout\)))) ) ) ) # ( \inst|inst3|inst|inst6|inst3|24~0_combout\ & ( !\inst|inst3|inst|inst|inst2|24~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & 
-- (((!\inst|inst3|inst|inst|inst3|24~0_combout\)) # (\inst2|inst|inst7|inst4|11~1_combout\))) # (\inst2|inst|inst7|inst4|6~combout\ & (\inst2|inst|inst7|inst4|11~1_combout\ & (\inst|inst3|inst13|inst8~0_combout\))) ) ) ) # ( 
-- !\inst|inst3|inst|inst6|inst3|24~0_combout\ & ( !\inst|inst3|inst|inst|inst2|24~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\ & ((!\inst|inst3|inst|inst|inst3|24~0_combout\)))) # 
-- (\inst2|inst|inst7|inst4|6~combout\ & (\inst2|inst|inst7|inst4|11~1_combout\ & (\inst|inst3|inst13|inst8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100100000001101010110010001111001101010001011110111101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst3|inst13|ALT_INV_inst8~0_combout\,
	datad => \inst|inst3|inst|inst|inst3|ALT_INV_24~0_combout\,
	datae => \inst|inst3|inst|inst6|inst3|ALT_INV_24~0_combout\,
	dataf => \inst|inst3|inst|inst|inst2|ALT_INV_24~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|24~0_combout\);

-- Location: M9K_X36_Y27_N0
\inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0\ : arriaii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena2",
	clk0_input_clock_enable => "ena2",
	clock_duty_cycle_dependence => "on",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Datapath:inst|Data_Memory:inst2|lpm_ram_io:inst|altram:sram|altsyncram:ram_block|altsyncram_n3e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12~combout\,
	portare => VCC,
	clk0 => \ALT_INV_clk~inputclkctrl_outclk\,
	ena2 => VCC,
	portadatain => \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst2|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X40_Y27_N8
\inst|inst11[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[6]~1_combout\ = ( \inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(6) & ( (!\inst|inst5|inst28[6]~3_combout\ & (!\inst|inst5|inst28[6]~2_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst12~q\)))) ) ) ) # ( !\inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(6) ) ) # ( \inst12~combout\ & ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(6) & ( (!\inst|inst5|inst28[6]~3_combout\ & 
-- (!\inst|inst5|inst28[6]~2_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst12~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000100011111111111111111000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_inst28[6]~3_combout\,
	datab => \inst|inst5|ALT_INV_inst28[6]~2_combout\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datae => \ALT_INV_inst12~combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	combout => \inst|inst11[6]~1_combout\);

-- Location: FF_X40_Y27_N9
\inst|inst25|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[6]~1_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|23~1_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst12~q\);

-- Location: FF_X31_Y28_N3
\inst|inst30|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst12~q\);

-- Location: MLABCELL_X29_Y27_N14
\inst|inst27|23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|23~0_combout\ = ( \inst|inst4|inst2|inst14~q\ & ( \inst|inst30|inst12~q\ & ( ((\inst|inst4|inst2|inst12~q\ & \inst|inst4|inst2|inst10~q\)) # (\inst|inst25|inst12~q\) ) ) ) # ( !\inst|inst4|inst2|inst14~q\ & ( \inst|inst30|inst12~q\ & ( 
-- \inst|inst25|inst12~q\ ) ) ) # ( \inst|inst4|inst2|inst14~q\ & ( !\inst|inst30|inst12~q\ & ( (\inst|inst25|inst12~q\ & ((!\inst|inst4|inst2|inst12~q\) # (!\inst|inst4|inst2|inst10~q\))) ) ) ) # ( !\inst|inst4|inst2|inst14~q\ & ( !\inst|inst30|inst12~q\ & 
-- ( \inst|inst25|inst12~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000101000001111000011110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst25|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst30|ALT_INV_inst12~q\,
	combout => \inst|inst27|23~0_combout\);

-- Location: FF_X29_Y27_N27
\inst|inst5|inst3|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|23~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst12~q\);

-- Location: MLABCELL_X29_Y27_N10
\inst|inst5|ROut1[6]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[6]~4_combout\ = ( \inst|inst4|inst2|inst2~q\ & ( \inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst15|inst2|inst12~q\ ) ) ) # ( !\inst|inst4|inst2|inst2~q\ & ( \inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst14|inst2|inst12~q\ ) ) ) # ( 
-- \inst|inst4|inst2|inst2~q\ & ( !\inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst93|inst2|inst12~q\ ) ) ) # ( !\inst|inst4|inst2|inst2~q\ & ( !\inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst7|inst2|inst12~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst15|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst5|inst93|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst5|inst7|inst2|ALT_INV_inst12~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|ROut1[6]~4_combout\);

-- Location: MLABCELL_X29_Y27_N18
\inst|inst5|ROut1[6]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[6]~32_combout\ = ( !\inst|inst4|inst2|inst3~q\ & ( ((!\inst|inst4|inst2|inst4~q\ & (\inst|inst5|inst9|inst2|inst12~q\ & (\inst|inst4|inst2|inst2~q\))) # (\inst|inst4|inst2|inst4~q\ & (((\inst|inst5|ROut1[6]~4_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((!\inst|inst4|inst2|inst2~q\ & (((\inst|inst5|inst8|inst2|inst12~q\)))) # (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst3|inst2|inst12~q\)))) # (\inst|inst4|inst2|inst4~q\ & 
-- ((((\inst|inst5|ROut1[6]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001100000011000100010000110011001111110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst12~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[6]~4_combout\,
	datag => \inst|inst5|inst9|inst2|ALT_INV_inst12~q\,
	combout => \inst|inst5|ROut1[6]~32_combout\);

-- Location: LABCELL_X32_Y26_N26
\inst|inst3|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst10~q\ & ( (!\inst|inst3|inst1|and~1_combout\) # (\inst|inst5|ROut1[6]~32_combout\) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst2|inst10~q\ & ( (\inst|inst3|inst1|and~1_combout\ & \inst|inst5|ROut1[6]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst10~q\,
	combout => \inst|inst3|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y26_N27
\inst|inst3|inst1|Result1|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst12~q\);

-- Location: MLABCELL_X37_Y26_N30
\inst|inst3|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst5|ROut1[5]~16_combout\ & ( \inst|inst3|inst1|and~1_combout\ ) ) # ( \inst|inst5|ROut1[5]~16_combout\ & ( !\inst|inst3|inst1|and~1_combout\ & ( 
-- \inst|inst3|inst1|Result1|inst2|inst12~q\ ) ) ) # ( !\inst|inst5|ROut1[5]~16_combout\ & ( !\inst|inst3|inst1|and~1_combout\ & ( \inst|inst3|inst1|Result1|inst2|inst12~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst12~q\,
	datae => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y27_N39
\inst|inst3|inst1|Result1|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst14~q\);

-- Location: FF_X37_Y27_N31
\inst|inst3|inst1|inst28|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst14~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst14~q\);

-- Location: LABCELL_X40_Y27_N22
\inst|inst5|inst93|inst2|inst14~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst93|inst2|inst14~feeder_combout\ = ( \inst|inst27|18~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst27|ALT_INV_18~0_combout\,
	combout => \inst|inst5|inst93|inst2|inst14~feeder_combout\);

-- Location: FF_X40_Y27_N23
\inst|inst5|inst93|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5|inst93|inst2|inst14~feeder_combout\,
	ena => \inst|inst5|inst4|32~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst93|inst2|inst14~q\);

-- Location: FF_X38_Y27_N23
\inst|inst5|inst7|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|18~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst14~q\);

-- Location: LABCELL_X40_Y27_N2
\inst|inst5|inst28[5]~10DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[5]~10DUPLICATE_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst93|inst2|inst14~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ 
-- & ( (!\inst|inst5|inst9|inst2|inst14~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( \inst|inst4|inst2|inst100~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst7|inst2|inst14~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( 
-- !\inst|inst4|inst2|inst100~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100000000000010101010000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst9|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[5]~10DUPLICATE_combout\);

-- Location: MLABCELL_X39_Y27_N4
\inst|inst9|20\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|20~combout\ = ( !\inst|inst5|inst28[5]~11_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[5]~10DUPLICATE_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst14~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~0_combout\,
	datab => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datac => \inst|inst5|ALT_INV_inst28[5]~10DUPLICATE_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst5|ALT_INV_inst28[5]~11_combout\,
	combout => \inst|inst9|20~combout\);

-- Location: MLABCELL_X37_Y27_N2
\inst|inst3|inst|inst|inst3|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|18~0_combout\ = ( \inst2|inst|inst7|inst4|5~1_combout\ & ( (!\inst|inst9|19~combout\ & (!\inst|inst9|20~combout\ & !\inst|inst5|ROut1[5]~16_combout\)) ) ) # ( !\inst2|inst|inst7|inst4|5~1_combout\ & ( 
-- (!\inst|inst5|ROut1[5]~16_combout\) # ((!\inst|inst9|19~combout\ & !\inst|inst9|20~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_19~combout\,
	datac => \inst|inst9|ALT_INV_20~combout\,
	datad => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	combout => \inst|inst3|inst|inst|inst3|18~0_combout\);

-- Location: MLABCELL_X37_Y27_N30
\inst|inst3|inst|inst7|inst3|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|18~0_combout\ = ( \inst|inst3|inst1|inst28|inst2|inst14~q\ & ( \inst|inst3|inst|inst|inst3|18~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((\inst2|inst|inst7|inst4|11~1_combout\)))) # 
-- (\inst2|inst|inst7|inst4|6~combout\ & (!\inst|inst5|ROut1[5]~16_combout\ $ (((!\inst|inst9|18~0_combout\))))) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst14~q\ & ( \inst|inst3|inst|inst|inst3|18~0_combout\ & ( (\inst2|inst|inst7|inst4|6~combout\ & 
-- (!\inst|inst5|ROut1[5]~16_combout\ $ (!\inst|inst9|18~0_combout\))) ) ) ) # ( \inst|inst3|inst1|inst28|inst2|inst14~q\ & ( !\inst|inst3|inst|inst|inst3|18~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\) # (!\inst|inst5|ROut1[5]~16_combout\ $ 
-- (!\inst|inst9|18~0_combout\)) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst14~q\ & ( !\inst|inst3|inst|inst|inst3|18~0_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((!\inst2|inst|inst7|inst4|11~1_combout\)))) # (\inst2|inst|inst7|inst4|6~combout\ 
-- & (!\inst|inst5|ROut1[5]~16_combout\ $ (((!\inst|inst9|18~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001011010111111110101101000000000010110100011001101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst9|ALT_INV_18~0_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datae => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst3|inst|inst|inst3|ALT_INV_18~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|18~0_combout\);

-- Location: MLABCELL_X37_Y27_N18
\inst|inst3|inst|inst7|inst3|18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|18~1_combout\ = ( \inst|inst3|inst|inst7|inst3|18~0_combout\ & ( \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~2_combout\) # 
-- (!\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst|inst3|inst6|inst3|inst5~combout\) # (\inst|inst5|ROut1[4]~20_combout\)))) ) ) ) # ( !\inst|inst3|inst|inst7|inst3|18~0_combout\ & ( 
-- \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst|inst7|inst3|5~2_combout\ & (!\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (((!\inst|inst3|inst6|inst3|inst5~combout\) # (\inst|inst5|ROut1[4]~20_combout\))))) ) ) ) # ( \inst|inst3|inst|inst7|inst3|18~0_combout\ & ( !\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst3|inst|inst7|inst3|5~2_combout\) # (!\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst|inst5|ROut1[4]~20_combout\ & !\inst|inst3|inst6|inst3|inst5~combout\)))) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|18~0_combout\ & ( !\inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst3|inst|inst7|inst3|5~2_combout\ & 
-- (!\inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst|inst5|ROut1[4]~20_combout\ & !\inst|inst3|inst6|inst3|inst5~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011100111111111001110000000000001110011111111100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datab => \inst|inst3|inst6|inst|inst2|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst3|inst6|inst3|ALT_INV_inst5~combout\,
	datad => \inst|inst3|inst|inst7|inst3|ALT_INV_5~2_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_18~0_combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|18~1_combout\);

-- Location: LABCELL_X35_Y28_N36
\inst|inst11[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[4]~3_combout\ = ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(4) & ( \inst12~combout\ & ( (!\inst|inst5|inst28[4]~9_combout\ & (!\inst|inst5|inst28[4]~8_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst16~q\)))) ) ) ) # ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(4) & ( \inst12~combout\ & ( (!\inst|inst5|inst28[4]~9_combout\ & (!\inst|inst5|inst28[4]~8_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst16~q\)))) ) ) ) # ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(4) & ( !\inst12~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst16~q\,
	datab => \inst|inst5|ALT_INV_inst28[4]~9_combout\,
	datac => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[4]~8_combout\,
	datae => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(4),
	dataf => \ALT_INV_inst12~combout\,
	combout => \inst|inst11[4]~3_combout\);

-- Location: FF_X35_Y28_N37
\inst|inst25|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[4]~3_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|17~0_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst16~q\);

-- Location: FF_X31_Y28_N37
\inst|inst30|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst16~q\);

-- Location: LABCELL_X30_Y28_N4
\inst|inst27|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|17~0_combout\ = ( \inst|inst4|inst2|inst12~q\ & ( \inst|inst30|inst16~q\ & ( ((\inst|inst4|inst2|inst14~q\ & \inst|inst4|inst2|inst10~q\)) # (\inst|inst25|inst16~q\) ) ) ) # ( !\inst|inst4|inst2|inst12~q\ & ( \inst|inst30|inst16~q\ & ( 
-- \inst|inst25|inst16~q\ ) ) ) # ( \inst|inst4|inst2|inst12~q\ & ( !\inst|inst30|inst16~q\ & ( (\inst|inst25|inst16~q\ & ((!\inst|inst4|inst2|inst14~q\) # (!\inst|inst4|inst2|inst10~q\))) ) ) ) # ( !\inst|inst4|inst2|inst12~q\ & ( !\inst|inst30|inst16~q\ & 
-- ( \inst|inst25|inst16~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010100010001010101010101010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|ALT_INV_inst16~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst30|ALT_INV_inst16~q\,
	combout => \inst|inst27|17~0_combout\);

-- Location: FF_X32_Y27_N25
\inst|inst5|inst8|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|17~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst16~q\);

-- Location: MLABCELL_X34_Y27_N8
\inst|inst9|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|17~0_combout\ = ( \inst|inst4|inst20|inst16~q\ & ( \inst|inst5|inst28[4]~8_combout\ & ( \inst4|inst1~0_combout\ ) ) ) # ( \inst|inst4|inst20|inst16~q\ & ( !\inst|inst5|inst28[4]~8_combout\ & ( ((!\inst|inst5|inst28[4]~9_combout\ & 
-- ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst16~q\)))) # (\inst4|inst1~0_combout\) ) ) ) # ( !\inst|inst4|inst20|inst16~q\ & ( !\inst|inst5|inst28[4]~8_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[4]~9_combout\ & 
-- ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst16~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101111110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst16~q\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[4]~9_combout\,
	datae => \inst|inst4|inst20|ALT_INV_inst16~q\,
	dataf => \inst|inst5|ALT_INV_inst28[4]~8_combout\,
	combout => \inst|inst9|17~0_combout\);

-- Location: MLABCELL_X37_Y27_N32
\inst|inst3|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst14~q\ & ( (!\inst|inst3|inst1|and~1_combout\) # (\inst|inst5|ROut1[4]~20_combout\) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst2|inst14~q\ & ( (\inst|inst5|ROut1[4]~20_combout\ & \inst|inst3|inst1|and~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	dataf => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst14~q\,
	combout => \inst|inst3|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y27_N33
\inst|inst3|inst1|Result1|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst16~q\);

-- Location: FF_X37_Y27_N29
\inst|inst3|inst1|inst28|inst2|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst16~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst16~q\);

-- Location: LABCELL_X32_Y27_N30
\inst|inst9|15\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|15~combout\ = ( !\inst|inst5|inst28[4]~9_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[4]~8_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst16~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~0_combout\,
	datab => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst5|ALT_INV_inst28[4]~8_combout\,
	dataf => \inst|inst5|ALT_INV_inst28[4]~9_combout\,
	combout => \inst|inst9|15~combout\);

-- Location: LABCELL_X32_Y27_N24
\inst|inst3|inst|inst|inst3|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|17~0_combout\ = ( \inst|inst9|15~combout\ & ( \inst|inst5|ROut1[4]~20_combout\ ) ) # ( !\inst|inst9|15~combout\ & ( \inst|inst5|ROut1[4]~20_combout\ & ( ((\inst|inst4|inst20|inst16~q\ & \inst4|inst1~0_combout\)) # 
-- (\inst2|inst|inst7|inst4|5~1_combout\) ) ) ) # ( \inst|inst9|15~combout\ & ( !\inst|inst5|ROut1[4]~20_combout\ & ( \inst2|inst|inst7|inst4|5~1_combout\ ) ) ) # ( !\inst|inst9|15~combout\ & ( !\inst|inst5|ROut1[4]~20_combout\ & ( 
-- (\inst|inst4|inst20|inst16~q\ & (\inst4|inst1~0_combout\ & \inst2|inst|inst7|inst4|5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111111100000101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst16~q\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datae => \inst|inst9|ALT_INV_15~combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	combout => \inst|inst3|inst|inst|inst3|17~0_combout\);

-- Location: LABCELL_X35_Y27_N18
\inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst5|ROut1[4]~20_combout\ $ (!\inst|inst3|inst6|inst3|inst5~combout\)) ) ) # ( 
-- !\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst5|ROut1[4]~20_combout\ $ 
-- (\inst|inst3|inst6|inst3|inst5~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst6|inst|inst7|inst2|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst3|inst6|inst|inst7|inst1|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datad => \inst|inst3|inst6|inst3|ALT_INV_inst5~combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X37_Y27_N12
\inst|inst3|inst|inst7|inst3|17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|17~0_combout\ = ( !\inst|inst3|inst|inst7|inst3|5~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~0_combout\ & ((((!\inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) # 
-- (\inst|inst3|inst|inst7|inst3|5~0_combout\ & (!\inst|inst9|17~0_combout\ $ ((!\inst|inst5|ROut1[4]~20_combout\)))) ) ) # ( \inst|inst3|inst|inst7|inst3|5~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~0_combout\ & 
-- (((\inst|inst3|inst1|inst28|inst2|inst16~q\)))) # (\inst|inst3|inst|inst7|inst3|5~0_combout\ & ((((\inst|inst3|inst|inst|inst3|17~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011111010111110000010100101111100010100000101000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\,
	datab => \inst|inst9|ALT_INV_17~0_combout\,
	datac => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst3|inst|inst|inst3|ALT_INV_17~0_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\,
	dataf => \inst|inst3|inst6|inst|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datag => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	combout => \inst|inst3|inst|inst7|inst3|17~0_combout\);

-- Location: LABCELL_X35_Y28_N32
\inst|inst11[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[3]~4_combout\ = ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(3) & ( \inst12~combout\ & ( (!\inst|inst5|inst28[3]~14_combout\ & (!\inst|inst5|inst28[3]~15_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst4~q\)))) ) ) ) # ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(3) & ( \inst12~combout\ & ( (!\inst|inst5|inst28[3]~14_combout\ & (!\inst|inst5|inst28[3]~15_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst4~q\)))) ) ) ) # ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(3) & ( !\inst12~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst5|ALT_INV_inst28[3]~14_combout\,
	datac => \inst|inst5|ALT_INV_inst28[3]~15_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	dataf => \ALT_INV_inst12~combout\,
	combout => \inst|inst11[3]~4_combout\);

-- Location: FF_X35_Y28_N33
\inst|inst25|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[3]~4_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|12~0_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst4~q\);

-- Location: LABCELL_X35_Y28_N8
\inst|inst27|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|12~0_combout\ = ( \inst|inst25|inst4~q\ & ( (!\inst|inst4|inst2|inst14~q\) # ((!\inst|inst4|inst2|inst12~q\) # ((!\inst|inst4|inst2|inst10~q\) # (\inst|inst30|inst4~q\))) ) ) # ( !\inst|inst25|inst4~q\ & ( (\inst|inst4|inst2|inst14~q\ & 
-- (\inst|inst4|inst2|inst12~q\ & (\inst|inst30|inst4~q\ & \inst|inst4|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst30|ALT_INV_inst4~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst25|ALT_INV_inst4~q\,
	combout => \inst|inst27|12~0_combout\);

-- Location: FF_X32_Y27_N15
\inst|inst5|inst8|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|12~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst8|inst2|inst4~q\);

-- Location: LABCELL_X35_Y27_N22
\inst|inst5|ROut1[3]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[3]~6_combout\ = ( \inst|inst4|inst2|inst2~q\ & ( \inst|inst5|inst15|inst2|inst4~q\ & ( (\inst|inst4|inst2|inst3~q\) # (\inst|inst5|inst93|inst2|inst4~q\) ) ) ) # ( !\inst|inst4|inst2|inst2~q\ & ( \inst|inst5|inst15|inst2|inst4~q\ & ( 
-- (!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst4~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst4~q\)) ) ) ) # ( \inst|inst4|inst2|inst2~q\ & ( !\inst|inst5|inst15|inst2|inst4~q\ & ( (\inst|inst5|inst93|inst2|inst4~q\ & 
-- !\inst|inst4|inst2|inst3~q\) ) ) ) # ( !\inst|inst4|inst2|inst2~q\ & ( !\inst|inst5|inst15|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst4~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst4~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst14|inst2|ALT_INV_inst4~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst5|inst7|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst4~q\,
	combout => \inst|inst5|ROut1[3]~6_combout\);

-- Location: MLABCELL_X34_Y27_N0
\inst|inst5|ROut1[3]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[3]~8_combout\ = ( !\inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst9|inst2|inst4~q\))) # (\inst|inst4|inst2|inst4~q\ & ((((\inst|inst5|ROut1[3]~6_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((!\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst8|inst2|inst4~q\)) # (\inst|inst4|inst2|inst2~q\ & (((\inst|inst5|inst3|inst2|inst4~q\)))))) # (\inst|inst4|inst2|inst4~q\ & 
-- ((((\inst|inst5|ROut1[3]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000000010000010000010101001010111010101110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst4~q\,
	datad => \inst|inst5|inst3|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[3]~6_combout\,
	datag => \inst|inst5|inst9|inst2|ALT_INV_inst4~q\,
	combout => \inst|inst5|ROut1[3]~8_combout\);

-- Location: LABCELL_X38_Y27_N4
\inst|inst3|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[3]~8_combout\ ) ) # ( !\inst|inst3|inst1|and~1_combout\ & ( 
-- \inst|inst3|inst1|Result1|inst2|inst16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst16~q\,
	datac => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y27_N3
\inst|inst3|inst1|Result1|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst33|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst4~q\);

-- Location: FF_X37_Y27_N23
\inst|inst3|inst1|inst28|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst4~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst4~q\);

-- Location: MLABCELL_X37_Y27_N22
\inst|inst3|inst|inst7|inst3|12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|12~3_combout\ = ( \inst|inst3|inst1|inst28|inst2|inst4~q\ & ( \inst2|inst|inst7|inst4|5~1_combout\ & ( (\inst2|inst|inst7|inst4|6~combout\ & (!\inst|inst5|ROut1[3]~8_combout\ $ (\inst|inst9|12~0_combout\))) ) ) ) # ( 
-- !\inst|inst3|inst1|inst28|inst2|inst4~q\ & ( \inst2|inst|inst7|inst4|5~1_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & (((\inst2|inst|inst7|inst4|11~1_combout\)))) # (\inst2|inst|inst7|inst4|6~combout\ & (!\inst|inst5|ROut1[3]~8_combout\ $ 
-- (((\inst|inst9|12~0_combout\))))) ) ) ) # ( \inst|inst3|inst1|inst28|inst2|inst4~q\ & ( !\inst2|inst|inst7|inst4|5~1_combout\ & ( !\inst|inst5|ROut1[3]~8_combout\ $ (((\inst|inst9|12~0_combout\ & ((\inst2|inst|inst7|inst4|6~combout\) # 
-- (\inst2|inst|inst7|inst4|11~1_combout\))))) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst4~q\ & ( !\inst2|inst|inst7|inst4|5~1_combout\ & ( !\inst|inst5|ROut1[3]~8_combout\ $ (((\inst|inst9|12~0_combout\ & ((\inst2|inst|inst7|inst4|6~combout\) # 
-- (\inst2|inst|inst7|inst4|11~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110100101101010011010010100110011101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst9|ALT_INV_12~0_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datae => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst4~q\,
	dataf => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	combout => \inst|inst3|inst|inst7|inst3|12~3_combout\);

-- Location: MLABCELL_X34_Y27_N28
\inst|inst3|inst|inst7|inst3|12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|12~2_combout\ = ( \inst|inst4|inst20|inst4~q\ & ( \inst|inst5|inst28[3]~15_combout\ & ( \inst4|inst1~0_combout\ ) ) ) # ( \inst|inst4|inst20|inst4~q\ & ( !\inst|inst5|inst28[3]~15_combout\ & ( 
-- ((!\inst|inst5|inst28[3]~14_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst4~q\)))) # (\inst4|inst1~0_combout\) ) ) ) # ( !\inst|inst4|inst20|inst4~q\ & ( !\inst|inst5|inst28[3]~15_combout\ & ( (!\inst4|inst1~0_combout\ & 
-- (!\inst|inst5|inst28[3]~14_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101111110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst4~q\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[3]~14_combout\,
	datae => \inst|inst4|inst20|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_inst28[3]~15_combout\,
	combout => \inst|inst3|inst|inst7|inst3|12~2_combout\);

-- Location: LABCELL_X32_Y27_N10
\inst|inst3|inst|inst7|inst3|12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|12~4_combout\ = ( \inst|inst5|ROut1[3]~8_combout\ & ( \inst2|inst|inst7|inst4|5~1_combout\ ) ) # ( !\inst|inst5|ROut1[3]~8_combout\ & ( (\inst2|inst|inst7|inst4|11~1_combout\ & \inst2|inst|inst7|inst4|5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	combout => \inst|inst3|inst|inst7|inst3|12~4_combout\);

-- Location: LABCELL_X38_Y27_N30
\inst|inst3|inst6|inst3|inst3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst3|inst3~combout\ = ( \inst2|inst|inst7|inst4|11~1_combout\ & ( \inst|inst9|11~0_combout\ ) ) # ( !\inst2|inst|inst7|inst4|11~1_combout\ & ( !\inst|inst9|11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	dataf => \inst|inst9|ALT_INV_11~0_combout\,
	combout => \inst|inst3|inst6|inst3|inst3~combout\);

-- Location: LABCELL_X35_Y27_N38
\inst|inst3|inst|inst7|inst3|12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|12~1_combout\ = ( \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst5|ROut1[2]~12_combout\ & ((!\inst|inst3|inst6|inst3|inst3~combout\ & 
-- (\inst2|inst|inst7|inst4|5~1_combout\)) # (\inst|inst3|inst6|inst3|inst3~combout\ & ((!\inst2|inst|inst7|inst4|6~combout\))))) # (\inst|inst5|ROut1[2]~12_combout\ & (\inst2|inst|inst7|inst4|5~1_combout\)) ) ) # ( 
-- !\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst5|ROut1[2]~12_combout\ & (((!\inst2|inst|inst7|inst4|6~combout\)))) # (\inst|inst5|ROut1[2]~12_combout\ & 
-- ((!\inst|inst3|inst6|inst3|inst3~combout\ & (\inst2|inst|inst7|inst4|5~1_combout\)) # (\inst|inst3|inst6|inst3|inst3~combout\ & ((!\inst2|inst|inst7|inst4|6~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111110000110100011111000001010101110100010101010111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datad => \inst|inst3|inst6|inst3|ALT_INV_inst3~combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|12~1_combout\);

-- Location: MLABCELL_X37_Y27_N26
\inst|inst3|inst|inst7|inst3|12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|12~0_combout\ = ( \inst|inst3|inst|inst7|inst3|12~4_combout\ & ( \inst|inst3|inst|inst7|inst3|12~1_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & ((!\inst|inst3|inst|inst7|inst3|12~3_combout\) # 
-- ((!\inst2|inst|inst7|inst4|11~1_combout\ & !\inst|inst3|inst|inst7|inst3|12~2_combout\)))) # (\inst2|inst|inst7|inst4|6~combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\ $ ((!\inst|inst3|inst|inst7|inst3|12~3_combout\)))) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|12~4_combout\ & ( \inst|inst3|inst|inst7|inst3|12~1_combout\ & ( (!\inst2|inst|inst7|inst4|6~combout\ & ((!\inst2|inst|inst7|inst4|11~1_combout\ & (!\inst|inst3|inst|inst7|inst3|12~3_combout\ & 
-- \inst|inst3|inst|inst7|inst3|12~2_combout\)) # (\inst2|inst|inst7|inst4|11~1_combout\ & (\inst|inst3|inst|inst7|inst3|12~3_combout\)))) # (\inst2|inst|inst7|inst4|6~combout\ & (((\inst|inst3|inst|inst7|inst3|12~3_combout\)))) ) ) ) # ( 
-- \inst|inst3|inst|inst7|inst3|12~4_combout\ & ( !\inst|inst3|inst|inst7|inst3|12~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|12~3_combout\) # ((!\inst2|inst|inst7|inst4|6~combout\ & (!\inst2|inst|inst7|inst4|11~1_combout\ & 
-- !\inst|inst3|inst|inst7|inst3|12~2_combout\))) ) ) ) # ( !\inst|inst3|inst|inst7|inst3|12~4_combout\ & ( !\inst|inst3|inst|inst7|inst3|12~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|12~3_combout\ & (((\inst|inst3|inst|inst7|inst3|12~2_combout\) # 
-- (\inst2|inst|inst7|inst4|11~1_combout\)) # (\inst2|inst|inst7|inst4|6~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000111110001111000000000111100001111011110010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst7|inst4|ALT_INV_6~combout\,
	datab => \inst2|inst|inst7|inst4|ALT_INV_11~1_combout\,
	datac => \inst|inst3|inst|inst7|inst3|ALT_INV_12~3_combout\,
	datad => \inst|inst3|inst|inst7|inst3|ALT_INV_12~2_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_12~4_combout\,
	dataf => \inst|inst3|inst|inst7|inst3|ALT_INV_12~1_combout\,
	combout => \inst|inst3|inst|inst7|inst3|12~0_combout\);

-- Location: LABCELL_X35_Y28_N4
\inst|inst11[2]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[2]~5_combout\ = ( \inst|inst5|inst28[2]~13_combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(2) & ( !\inst12~combout\ ) ) ) # ( !\inst|inst5|inst28[2]~13_combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(2) & ( 
-- (!\inst12~combout\) # ((!\inst|inst5|inst28[2]~12_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst3~q\)))) ) ) ) # ( !\inst|inst5|inst28[2]~13_combout\ & ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(2) & ( 
-- (\inst12~combout\ & (!\inst|inst5|inst28[2]~12_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst3~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000000000000000000011101100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \ALT_INV_inst12~combout\,
	datac => \inst|inst5|ALT_INV_inst28[2]~12_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst5|ALT_INV_inst28[2]~13_combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	combout => \inst|inst11[2]~5_combout\);

-- Location: FF_X35_Y28_N5
\inst|inst25|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[2]~5_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|11~0_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst3~q\);

-- Location: LABCELL_X30_Y28_N34
\inst|inst27|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|11~0_combout\ = ( \inst|inst25|inst3~q\ & ( (!\inst|inst4|inst2|inst12~q\) # ((!\inst|inst4|inst2|inst14~q\) # ((!\inst|inst4|inst2|inst10~q\) # (\inst|inst30|inst3~q\))) ) ) # ( !\inst|inst25|inst3~q\ & ( (\inst|inst4|inst2|inst12~q\ & 
-- (\inst|inst4|inst2|inst14~q\ & (\inst|inst4|inst2|inst10~q\ & \inst|inst30|inst3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst30|ALT_INV_inst3~q\,
	dataf => \inst|inst25|ALT_INV_inst3~q\,
	combout => \inst|inst27|11~0_combout\);

-- Location: FF_X34_Y27_N15
\inst|inst5|inst14|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst14|inst2|inst3~q\);

-- Location: FF_X37_Y27_N21
\inst|inst5|inst3|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst3~q\);

-- Location: FF_X32_Y27_N1
\inst|inst5|inst15|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|11~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst3~q\);

-- Location: MLABCELL_X34_Y27_N34
\inst|inst5|inst28[2]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[2]~13_combout\ = ( \inst|inst4|inst20|inst12~q\ & ( \inst|inst5|inst15|inst2|inst3~q\ & ( (\inst|inst4|inst20|inst10~q\ & (!\inst|inst4|inst2|inst100~q\ & !\inst|inst5|inst3|inst2|inst3~q\)) ) ) ) # ( !\inst|inst4|inst20|inst12~q\ & ( 
-- \inst|inst5|inst15|inst2|inst3~q\ & ( (\inst|inst4|inst20|inst10~q\ & (!\inst|inst5|inst14|inst2|inst3~q\ & \inst|inst4|inst2|inst100~q\)) ) ) ) # ( \inst|inst4|inst20|inst12~q\ & ( !\inst|inst5|inst15|inst2|inst3~q\ & ( (\inst|inst4|inst20|inst10~q\ & 
-- ((!\inst|inst5|inst3|inst2|inst3~q\) # (\inst|inst4|inst2|inst100~q\))) ) ) ) # ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst5|inst15|inst2|inst3~q\ & ( (\inst|inst4|inst20|inst10~q\ & (!\inst|inst5|inst14|inst2|inst3~q\ & \inst|inst4|inst2|inst100~q\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010101010000010100000100000001000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst5|inst3|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|inst28[2]~13_combout\);

-- Location: MLABCELL_X34_Y27_N26
\inst|inst9|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|11~0_combout\ = ( \inst|inst5|inst28[2]~12_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst3~q\ ) ) ) # ( !\inst|inst5|inst28[2]~12_combout\ & ( \inst4|inst1~0_combout\ & ( \inst|inst4|inst20|inst3~q\ ) ) ) # ( 
-- !\inst|inst5|inst28[2]~12_combout\ & ( !\inst4|inst1~0_combout\ & ( (!\inst|inst5|inst28[2]~13_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datac => \inst|inst5|ALT_INV_inst28[2]~13_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst5|ALT_INV_inst28[2]~12_combout\,
	dataf => \inst4|ALT_INV_inst1~0_combout\,
	combout => \inst|inst9|11~0_combout\);

-- Location: MLABCELL_X37_Y27_N0
\inst|inst3|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\inst|inst3|inst1|and~1_combout\ & (\inst|inst3|inst1|Result1|inst2|inst4~q\)) # (\inst|inst3|inst1|and~1_combout\ & 
-- ((\inst|inst5|ROut1[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst4~q\,
	datac => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datad => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y27_N1
\inst|inst3|inst1|Result1|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst3~q\);

-- Location: FF_X37_Y27_N17
\inst|inst3|inst1|inst28|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst3~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst3~q\);

-- Location: LABCELL_X35_Y27_N36
\inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst5|ROut1[2]~12_combout\ $ 
-- (\inst|inst3|inst6|inst3|inst3~combout\) ) ) # ( !\inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst5|ROut1[2]~12_combout\ $ (!\inst|inst3|inst6|inst3|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datad => \inst|inst3|inst6|inst3|ALT_INV_inst3~combout\,
	dataf => \inst|inst3|inst6|inst|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y27_N4
\inst|inst9|9\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|9~combout\ = ( !\inst|inst5|inst28[2]~12_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[2]~13_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst3~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst3~q\,
	datab => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst|inst5|ALT_INV_inst28[2]~13_combout\,
	dataf => \inst|inst5|ALT_INV_inst28[2]~12_combout\,
	combout => \inst|inst9|9~combout\);

-- Location: LABCELL_X32_Y27_N8
\inst|inst3|inst|inst|inst3|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|11~0_combout\ = ( \inst|inst5|ROut1[2]~12_combout\ & ( (((\inst|inst4|inst20|inst3~q\ & \inst4|inst1~0_combout\)) # (\inst|inst9|9~combout\)) # (\inst2|inst|inst7|inst4|5~1_combout\) ) ) # ( !\inst|inst5|ROut1[2]~12_combout\ & 
-- ( (\inst2|inst|inst7|inst4|5~1_combout\ & (((\inst|inst4|inst20|inst3~q\ & \inst4|inst1~0_combout\)) # (\inst|inst9|9~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001111000000010000111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datab => \inst4|ALT_INV_inst1~0_combout\,
	datac => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	datad => \inst|inst9|ALT_INV_9~combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	combout => \inst|inst3|inst|inst|inst3|11~0_combout\);

-- Location: LABCELL_X35_Y27_N0
\inst|inst3|inst|inst7|inst3|11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|11~0_combout\ = ( !\inst|inst3|inst|inst7|inst3|5~1_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~0_combout\ & ((((!\inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) # 
-- (\inst|inst3|inst|inst7|inst3|5~0_combout\ & (!\inst|inst9|11~0_combout\ $ ((!\inst|inst5|ROut1[2]~12_combout\)))) ) ) # ( \inst|inst3|inst|inst7|inst3|5~1_combout\ & ( ((!\inst|inst3|inst|inst7|inst3|5~0_combout\ & 
-- (\inst|inst3|inst1|inst28|inst2|inst3~q\)) # (\inst|inst3|inst|inst7|inst3|5~0_combout\ & (((\inst|inst3|inst|inst|inst3|11~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101111000010010000011000000110011011110000100100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_11~0_combout\,
	datab => \inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\,
	datac => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst3|inst6|inst|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\,
	dataf => \inst|inst3|inst|inst|inst3|ALT_INV_11~0_combout\,
	datag => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	combout => \inst|inst3|inst|inst7|inst3|11~0_combout\);

-- Location: LABCELL_X40_Y27_N16
\inst|inst11[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[1]~6_combout\ = ( \inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(1) & ( (!\inst|inst5|inst28[1]~4_combout\ & (!\inst|inst5|inst28[1]~5_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst2~q\)))) ) ) ) # ( !\inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(1) ) ) # ( \inst12~combout\ & ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(1) & ( (!\inst|inst5|inst28[1]~4_combout\ & 
-- (!\inst|inst5|inst28[1]~5_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000100000011111111111111111100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst8|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst5|ALT_INV_inst28[1]~4_combout\,
	datac => \inst|inst5|ALT_INV_inst28[1]~5_combout\,
	datad => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datae => \ALT_INV_inst12~combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	combout => \inst|inst11[1]~6_combout\);

-- Location: FF_X40_Y27_N17
\inst|inst25|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[1]~6_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|6~0_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst2~q\);

-- Location: LABCELL_X32_Y28_N26
\inst|inst13|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = !\inst|inst6|inst100~q\ $ (!\inst|inst6|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst2~q\,
	combout => \inst|inst13|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y28_N27
\inst|inst30|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|inst13|inst7|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst2~q\);

-- Location: MLABCELL_X39_Y27_N20
\inst|inst27|6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|6~0_combout\ = ( \inst|inst30|inst2~q\ & ( ((\inst|inst4|inst2|inst14~q\ & (\inst|inst4|inst2|inst12~q\ & \inst|inst4|inst2|inst10~q\))) # (\inst|inst25|inst2~q\) ) ) # ( !\inst|inst30|inst2~q\ & ( (\inst|inst25|inst2~q\ & 
-- ((!\inst|inst4|inst2|inst14~q\) # ((!\inst|inst4|inst2|inst12~q\) # (!\inst|inst4|inst2|inst10~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst25|ALT_INV_inst2~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst30|ALT_INV_inst2~q\,
	combout => \inst|inst27|6~0_combout\);

-- Location: FF_X39_Y27_N21
\inst|inst5|inst3|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst27|6~0_combout\,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst2~q\);

-- Location: LABCELL_X38_Y27_N24
\inst|inst5|ROut1[1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[1]~7_combout\ = ( \inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst15|inst2|inst2~q\ & ( (\inst|inst5|inst14|inst2|inst2~q\) # (\inst|inst4|inst2|inst2~q\) ) ) ) # ( !\inst|inst4|inst2|inst3~q\ & ( \inst|inst5|inst15|inst2|inst2~q\ & ( 
-- (!\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst7|inst2|inst2~q\)) # (\inst|inst4|inst2|inst2~q\ & ((\inst|inst5|inst93|inst2|inst2~q\))) ) ) ) # ( \inst|inst4|inst2|inst3~q\ & ( !\inst|inst5|inst15|inst2|inst2~q\ & ( (!\inst|inst4|inst2|inst2~q\ & 
-- \inst|inst5|inst14|inst2|inst2~q\) ) ) ) # ( !\inst|inst4|inst2|inst3~q\ & ( !\inst|inst5|inst15|inst2|inst2~q\ & ( (!\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst7|inst2|inst2~q\)) # (\inst|inst4|inst2|inst2~q\ & ((\inst|inst5|inst93|inst2|inst2~q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst7|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst14|inst2|ALT_INV_inst2~q\,
	datad => \inst|inst5|inst93|inst2|ALT_INV_inst2~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst2~q\,
	combout => \inst|inst5|ROut1[1]~7_combout\);

-- Location: MLABCELL_X39_Y27_N16
\inst|inst5|ROut1[1]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[1]~28_combout\ = ( !\inst|inst4|inst2|inst3~q\ & ( ((!\inst|inst4|inst2|inst4~q\ & (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst9|inst2|inst2~q\))) # (\inst|inst4|inst2|inst4~q\ & (((\inst|inst5|ROut1[1]~7_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((!\inst|inst4|inst2|inst2~q\ & (((\inst|inst5|inst8|inst2|inst2~q\)))) # (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst3|inst2|inst2~q\)))) # (\inst|inst4|inst2|inst4~q\ & 
-- ((((\inst|inst5|ROut1[1]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000000000111010000000000000011111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst2~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[1]~7_combout\,
	datag => \inst|inst5|inst9|inst2|ALT_INV_inst2~q\,
	combout => \inst|inst5|ROut1[1]~28_combout\);

-- Location: MLABCELL_X37_Y27_N4
\inst|inst3|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\inst|inst3|inst1|and~1_combout\ & ((\inst|inst3|inst1|Result1|inst2|inst3~q\))) # (\inst|inst3|inst1|and~1_combout\ & 
-- (\inst|inst5|ROut1[1]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	datac => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y27_N5
\inst|inst3|inst1|Result1|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst2~q\);

-- Location: MLABCELL_X37_Y26_N16
\inst|inst3|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst3|inst1|Result1|inst2|inst2~q\ & ( \inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[0]~24_combout\ ) ) ) # ( 
-- !\inst|inst3|inst1|Result1|inst2|inst2~q\ & ( \inst|inst3|inst1|and~1_combout\ & ( \inst|inst5|ROut1[0]~24_combout\ ) ) ) # ( \inst|inst3|inst1|Result1|inst2|inst2~q\ & ( !\inst|inst3|inst1|and~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	datae => \inst|inst3|inst1|Result1|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X37_Y26_N17
\inst|inst3|inst1|Result1|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|Result1|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|Result1|inst2|inst100~q\);

-- Location: FF_X37_Y27_N37
\inst|inst3|inst1|inst28|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst3|inst1|Result1|inst2|inst100~q\,
	sload => VCC,
	ena => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst28|inst2|inst100~q\);

-- Location: MLABCELL_X29_Y27_N30
\inst|inst9|4\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|4~combout\ = ( !\inst|inst4|inst2|inst10~q\ & ( (\inst|inst4|inst20|inst100~q\ & (((\inst|inst4|inst2|inst12~q\) # (\inst|inst4|inst2|inst14~q\)) # (\inst|inst4|inst2|inst16~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datab => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst10~q\,
	combout => \inst|inst9|4~combout\);

-- Location: LABCELL_X32_Y27_N28
\inst|inst9|3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst9|3~combout\ = ( !\inst|inst5|inst28[0]~6_combout\ & ( (!\inst4|inst1~0_combout\ & (!\inst|inst5|inst28[0]~7_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst100~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst1~0_combout\,
	datab => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datac => \inst|inst5|ALT_INV_inst28[0]~7_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst5|ALT_INV_inst28[0]~6_combout\,
	combout => \inst|inst9|3~combout\);

-- Location: LABCELL_X32_Y27_N12
\inst|inst3|inst|inst|inst3|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst|inst3|5~0_combout\ = ( \inst|inst5|ROut1[0]~24_combout\ & ( (!\inst|inst9|4~combout\ & (!\inst|inst9|3~combout\ & !\inst2|inst|inst7|inst4|5~1_combout\)) ) ) # ( !\inst|inst5|ROut1[0]~24_combout\ & ( 
-- (!\inst2|inst|inst7|inst4|5~1_combout\) # ((!\inst|inst9|4~combout\ & !\inst|inst9|3~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|ALT_INV_4~combout\,
	datac => \inst|inst9|ALT_INV_3~combout\,
	datad => \inst2|inst|inst7|inst4|ALT_INV_5~1_combout\,
	dataf => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	combout => \inst|inst3|inst|inst|inst3|5~0_combout\);

-- Location: MLABCELL_X37_Y27_N36
\inst|inst3|inst|inst7|inst3|5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst7|inst3|5~3_combout\ = ( \inst|inst3|inst1|inst28|inst2|inst100~q\ & ( \inst|inst3|inst|inst|inst3|5~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~1_combout\ & (!\inst|inst5|ROut1[0]~24_combout\ $ (((!\inst|inst9|5~0_combout\))))) # 
-- (\inst|inst3|inst|inst7|inst3|5~1_combout\ & (((!\inst|inst3|inst|inst7|inst3|5~0_combout\)))) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst100~q\ & ( \inst|inst3|inst|inst|inst3|5~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~1_combout\ & 
-- (!\inst|inst5|ROut1[0]~24_combout\ $ (!\inst|inst9|5~0_combout\))) ) ) ) # ( \inst|inst3|inst1|inst28|inst2|inst100~q\ & ( !\inst|inst3|inst|inst|inst3|5~0_combout\ & ( (!\inst|inst5|ROut1[0]~24_combout\ $ (!\inst|inst9|5~0_combout\)) # 
-- (\inst|inst3|inst|inst7|inst3|5~1_combout\) ) ) ) # ( !\inst|inst3|inst1|inst28|inst2|inst100~q\ & ( !\inst|inst3|inst|inst|inst3|5~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|5~1_combout\ & (!\inst|inst5|ROut1[0]~24_combout\ $ 
-- (((!\inst|inst9|5~0_combout\))))) # (\inst|inst3|inst|inst7|inst3|5~1_combout\ & (((\inst|inst3|inst|inst7|inst3|5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101011101111101110100100010100010000111001011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst7|inst3|ALT_INV_5~1_combout\,
	datab => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	datac => \inst|inst3|inst|inst7|inst3|ALT_INV_5~0_combout\,
	datad => \inst|inst9|ALT_INV_5~0_combout\,
	datae => \inst|inst3|inst1|inst28|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst|inst|inst3|ALT_INV_5~0_combout\,
	combout => \inst|inst3|inst|inst7|inst3|5~3_combout\);

-- Location: FF_X35_Y28_N25
\inst|inst25|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[0]~7_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|5~3_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst100~q\);

-- Location: MLABCELL_X34_Y28_N0
\inst|inst30|inst100~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst30|inst100~0_combout\ = ( !\inst|inst6|inst100~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|inst6|ALT_INV_inst100~q\,
	combout => \inst|inst30|inst100~0_combout\);

-- Location: FF_X34_Y28_N1
\inst|inst30|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|inst30|inst100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst100~q\);

-- Location: LABCELL_X30_Y28_N26
\inst|inst27|5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|5~0_combout\ = ( \inst|inst25|inst100~q\ & ( \inst|inst30|inst100~q\ ) ) # ( !\inst|inst25|inst100~q\ & ( \inst|inst30|inst100~q\ & ( (\inst|inst4|inst2|inst12~q\ & (\inst|inst4|inst2|inst10~q\ & \inst|inst4|inst2|inst14~q\)) ) ) ) # ( 
-- \inst|inst25|inst100~q\ & ( !\inst|inst30|inst100~q\ & ( (!\inst|inst4|inst2|inst12~q\) # ((!\inst|inst4|inst2|inst10~q\) # (!\inst|inst4|inst2|inst14~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111000000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datae => \inst|inst25|ALT_INV_inst100~q\,
	dataf => \inst|inst30|ALT_INV_inst100~q\,
	combout => \inst|inst27|5~0_combout\);

-- Location: FF_X31_Y27_N31
\inst|inst5|inst15|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|5~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst15|inst2|inst100~q\);

-- Location: MLABCELL_X31_Y27_N28
\inst|inst5|inst28[0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[0]~7_combout\ = ( \inst|inst4|inst20|inst12~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (!\inst|inst4|inst2|inst100~q\ & ((!\inst|inst5|inst3|inst2|inst100~q\))) # (\inst|inst4|inst2|inst100~q\ & (!\inst|inst5|inst15|inst2|inst100~q\)) ) ) 
-- ) # ( !\inst|inst4|inst20|inst12~q\ & ( \inst|inst4|inst20|inst10~q\ & ( (\inst|inst4|inst2|inst100~q\ & !\inst|inst5|inst14|inst2|inst100~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datab => \inst|inst5|inst15|inst2|ALT_INV_inst100~q\,
	datac => \inst|inst5|inst3|inst2|ALT_INV_inst100~q\,
	datad => \inst|inst5|inst14|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst4|inst20|ALT_INV_inst12~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst10~q\,
	combout => \inst|inst5|inst28[0]~7_combout\);

-- Location: LABCELL_X35_Y28_N24
\inst|inst11[0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[0]~7_combout\ = ( \inst|inst5|inst28[0]~6_combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(0) & ( !\inst12~combout\ ) ) ) # ( !\inst|inst5|inst28[0]~6_combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(0) & ( 
-- (!\inst12~combout\) # ((!\inst|inst5|inst28[0]~7_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst100~q\)))) ) ) ) # ( !\inst|inst5|inst28[0]~6_combout\ & ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(0) & ( 
-- (\inst12~combout\ & (!\inst|inst5|inst28[0]~7_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst100~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000000000000000000011101100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datab => \ALT_INV_inst12~combout\,
	datac => \inst|inst5|ALT_INV_inst28[0]~7_combout\,
	datad => \inst|inst5|inst8|inst2|ALT_INV_inst100~q\,
	datae => \inst|inst5|ALT_INV_inst28[0]~6_combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|inst11[0]~7_combout\);

-- Location: LABCELL_X35_Y28_N18
\inst|inst11[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[7]~0_combout\ = ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(7) & ( (!\inst12~combout\) # (\inst|inst5|inst28[7]~16_combout\) ) ) # ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(7) & ( (\inst12~combout\ & 
-- \inst|inst5|inst28[7]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst12~combout\,
	datac => \inst|inst5|ALT_INV_inst28[7]~16_combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	combout => \inst|inst11[7]~0_combout\);

-- Location: FF_X35_Y28_N19
\inst|inst25|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[7]~0_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|24~0_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst10~q\);

-- Location: LABCELL_X32_Y28_N18
\inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst6|inst10~q\ $ (((!\inst|inst6|inst16~q\) # 
-- ((!\inst|inst6|inst14~q\) # (!\inst|inst6|inst12~q\)))) ) ) # ( !\inst|inst13|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst6|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst16~q\,
	datab => \inst|inst6|ALT_INV_inst14~q\,
	datac => \inst|inst6|ALT_INV_inst12~q\,
	datad => \inst|inst6|ALT_INV_inst10~q\,
	dataf => \inst|inst13|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X31_Y28_N11
\inst|inst30|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst10~q\);

-- Location: LABCELL_X30_Y28_N38
\inst|inst27|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|24~0_combout\ = ( \inst|inst4|inst2|inst10~q\ & ( \inst|inst30|inst10~q\ & ( ((\inst|inst4|inst2|inst14~q\ & \inst|inst4|inst2|inst12~q\)) # (\inst|inst25|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst10~q\ & ( \inst|inst30|inst10~q\ & ( 
-- \inst|inst25|inst10~q\ ) ) ) # ( \inst|inst4|inst2|inst10~q\ & ( !\inst|inst30|inst10~q\ & ( (\inst|inst25|inst10~q\ & ((!\inst|inst4|inst2|inst14~q\) # (!\inst|inst4|inst2|inst12~q\))) ) ) ) # ( !\inst|inst4|inst2|inst10~q\ & ( !\inst|inst30|inst10~q\ & 
-- ( \inst|inst25|inst10~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010100010001010101010101010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|ALT_INV_inst10~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst30|ALT_INV_inst10~q\,
	combout => \inst|inst27|24~0_combout\);

-- Location: FF_X29_Y27_N9
\inst|inst5|inst7|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|24~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst7|inst2|inst10~q\);

-- Location: MLABCELL_X29_Y27_N0
\inst|inst5|ROut1[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[7]~0_combout\ = ( \inst|inst5|inst9|inst2|inst10~q\ & ( \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((\inst|inst5|inst3|inst2|inst10~q\))) # (\inst|inst4|inst2|inst4~q\ & (\inst|inst5|inst15|inst2|inst10~q\)) ) ) ) # ( 
-- !\inst|inst5|inst9|inst2|inst10~q\ & ( \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((\inst|inst5|inst3|inst2|inst10~q\))) # (\inst|inst4|inst2|inst4~q\ & (\inst|inst5|inst15|inst2|inst10~q\)) ) ) ) # ( \inst|inst5|inst9|inst2|inst10~q\ & 
-- ( !\inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\) # (\inst|inst5|inst93|inst2|inst10~q\) ) ) ) # ( !\inst|inst5|inst9|inst2|inst10~q\ & ( !\inst|inst4|inst2|inst3~q\ & ( (\inst|inst5|inst93|inst2|inst10~q\ & \inst|inst4|inst2|inst4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst15|inst2|ALT_INV_inst10~q\,
	datab => \inst|inst5|inst3|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst5|inst93|inst2|ALT_INV_inst10~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst5|inst9|inst2|ALT_INV_inst10~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|ROut1[7]~0_combout\);

-- Location: LABCELL_X30_Y27_N2
\inst|inst5|ROut1[7]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[7]~36_combout\ = ( !\inst|inst4|inst2|inst2~q\ & ( (!\inst|inst4|inst2|inst4~q\ & (((\inst|inst5|inst8|inst2|inst10~q\ & ((\inst|inst4|inst2|inst3~q\)))))) # (\inst|inst4|inst2|inst4~q\ & (((!\inst|inst4|inst2|inst3~q\ & 
-- (\inst|inst5|inst7|inst2|inst10~q\)) # (\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst14|inst2|inst10~q\)))))) ) ) # ( \inst|inst4|inst2|inst2~q\ & ( (((\inst|inst5|ROut1[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100110011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst7|inst2|ALT_INV_inst10~q\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst10~q\,
	datac => \inst|inst5|ALT_INV_ROut1[7]~0_combout\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst2~q\,
	dataf => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datag => \inst|inst5|inst14|inst2|ALT_INV_inst10~q\,
	combout => \inst|inst5|ROut1[7]~36_combout\);

-- Location: MLABCELL_X31_Y28_N26
\inst|inst29|24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|24~2_combout\ = ( \inst6|inst2~combout\ & ( \inst|inst5|ROut1[7]~36_combout\ ) ) # ( !\inst6|inst2~combout\ & ( (\inst5|inst6~0_combout\ & \inst|inst4|inst20|inst10~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[7]~36_combout\,
	datac => \inst5|ALT_INV_inst6~0_combout\,
	datad => \inst|inst4|inst20|ALT_INV_inst10~q\,
	dataf => \inst6|ALT_INV_inst2~combout\,
	combout => \inst|inst29|24~2_combout\);

-- Location: MLABCELL_X31_Y28_N0
\inst|inst29|24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|24~0_combout\ = ( \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst20|inst14~q\ ) ) ) # 
-- ( !\inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst|inst4|inst20|inst14~q\ & 
-- ((!\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) ) # ( 
-- \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( 
-- !\inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst4|inst20|inst14~q\ & 
-- ((!\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100010111100000101010111000000010001000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datac => \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst29|24~0_combout\);

-- Location: LABCELL_X35_Y28_N12
\inst|inst3|inst3|inst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3|inst~0_combout\ = ( !\inst|inst3|inst|inst7|inst3|6~0_combout\ & ( !\inst|inst3|inst|inst7|inst3|5~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst|inst7|inst3|ALT_INV_5~3_combout\,
	dataf => \inst|inst3|inst|inst7|inst3|ALT_INV_6~0_combout\,
	combout => \inst|inst3|inst3|inst~0_combout\);

-- Location: LABCELL_X35_Y28_N2
\inst|inst3|inst3|inst~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3|inst~1_combout\ = ( !\inst|inst3|inst|inst7|inst3|17~0_combout\ & ( !\inst|inst3|inst|inst7|inst3|12~0_combout\ & ( (!\inst|inst3|inst|inst7|inst3|18~1_combout\ & (!\inst|inst3|inst|inst7|inst3|11~0_combout\ & 
-- (!\inst|inst3|inst|inst7|inst3|23~1_combout\ & \inst|inst3|inst3|inst~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst7|inst3|ALT_INV_18~1_combout\,
	datab => \inst|inst3|inst|inst7|inst3|ALT_INV_11~0_combout\,
	datac => \inst|inst3|inst|inst7|inst3|ALT_INV_23~1_combout\,
	datad => \inst|inst3|inst3|ALT_INV_inst~0_combout\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_17~0_combout\,
	dataf => \inst|inst3|inst|inst7|inst3|ALT_INV_12~0_combout\,
	combout => \inst|inst3|inst3|inst~1_combout\);

-- Location: LABCELL_X35_Y28_N30
\inst|inst18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst18~0_combout\ = ( \inst|inst3|inst|inst7|inst3|24~0_combout\ & ( \inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # (\inst|inst4|inst2|inst14~q\))) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|24~0_combout\ & ( \inst|inst3|inst3|inst~1_combout\ & ( (!\inst|inst4|inst2|inst14~q\ & (!\inst|inst4|inst2|inst12~q\ & (!\inst|inst4|inst2|inst16~q\ & \inst|inst4|inst2|inst10~q\))) ) ) ) # ( 
-- \inst|inst3|inst|inst7|inst3|24~0_combout\ & ( !\inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # (\inst|inst4|inst2|inst14~q\))) ) ) ) # ( 
-- !\inst|inst3|inst|inst7|inst3|24~0_combout\ & ( !\inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # (\inst|inst4|inst2|inst14~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000100000000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_24~0_combout\,
	dataf => \inst|inst3|inst3|ALT_INV_inst~1_combout\,
	combout => \inst|inst18~0_combout\);

-- Location: MLABCELL_X31_Y28_N18
\inst|inst29|24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|24~3_combout\ = ( \inst|inst29|24~0_combout\ & ( \inst|inst18~0_combout\ & ( (\inst|inst29|24~2_combout\) # (\inst|inst29|12~0_combout\) ) ) ) # ( !\inst|inst29|24~0_combout\ & ( \inst|inst18~0_combout\ & ( ((\inst|inst29|24~1_combout\ & 
-- (\inst|inst29|12~0_combout\ & \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst|inst29|24~2_combout\) ) ) ) # ( \inst|inst29|24~0_combout\ & ( !\inst|inst18~0_combout\ & ( ((\inst|inst29|12~0_combout\ & 
-- \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst29|24~2_combout\) ) ) ) # ( !\inst|inst29|24~0_combout\ & ( !\inst|inst18~0_combout\ & ( ((\inst|inst29|12~0_combout\ & 
-- \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst29|24~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111000111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|ALT_INV_24~1_combout\,
	datab => \inst|inst29|ALT_INV_12~0_combout\,
	datac => \inst|inst29|ALT_INV_24~2_combout\,
	datad => \inst|inst13|inst5|inst|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst29|ALT_INV_24~0_combout\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	combout => \inst|inst29|24~3_combout\);

-- Location: FF_X31_Y28_N19
\inst|inst6|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst29|24~3_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst10~q\);

-- Location: FF_X39_Y27_N9
\inst|inst4|inst20|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst14~q\);

-- Location: LABCELL_X32_Y28_N2
\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst|inst6|inst14~q\ & ( \inst|inst6|inst3~q\ & ( (!\inst|inst6|inst100~q\) # ((!\inst|inst6|inst2~q\) # (!\inst|inst6|inst4~q\)) ) ) ) # ( 
-- \inst|inst6|inst14~q\ & ( !\inst|inst6|inst3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst2~q\,
	datac => \inst|inst6|ALT_INV_inst4~q\,
	datae => \inst|inst6|ALT_INV_inst14~q\,
	dataf => \inst|inst6|ALT_INV_inst3~q\,
	combout => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X32_Y28_N22
\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (\inst|inst4|inst20|inst14~q\) # 
-- (\inst|inst17|inst1|inst|inst|inst3~combout\) ) ) # ( !\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (!\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\ & 
-- (\inst|inst17|inst1|inst|inst|inst3~combout\ & \inst|inst4|inst20|inst14~q\)) # (\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~2_combout\ & ((\inst|inst4|inst20|inst14~q\) # (\inst|inst17|inst1|inst|inst|inst3~combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\,
	datac => \inst|inst17|inst1|inst|inst|ALT_INV_inst3~combout\,
	datad => \inst|inst4|inst20|ALT_INV_inst14~q\,
	dataf => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y28_N34
\inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst5|inst6~0_combout\ & ( \inst|inst18~0_combout\ & ( \inst|inst4|inst20|inst12~q\ ) ) ) # ( !\inst5|inst6~0_combout\ & ( \inst|inst18~0_combout\ & ( 
-- !\inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst|inst4|inst20|inst14~q\ $ (!\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( \inst5|inst6~0_combout\ & 
-- ( !\inst|inst18~0_combout\ & ( \inst|inst4|inst20|inst12~q\ ) ) ) # ( !\inst5|inst6~0_combout\ & ( !\inst|inst18~0_combout\ & ( \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111110010110100101100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|inst2|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datac => \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst4|inst20|ALT_INV_inst12~q\,
	datae => \inst5|ALT_INV_inst6~0_combout\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	combout => \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y28_N36
\inst|inst6|inst12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst12~0_combout\ = ( \inst|inst18~0_combout\ & ( (!\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst5|inst6~0_combout\) ) ) # ( !\inst|inst18~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inst6~0_combout\,
	datac => \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	combout => \inst|inst6|inst12~0_combout\);

-- Location: LABCELL_X32_Y28_N10
\inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( !\inst|inst6|inst12~0_combout\ & ( (!\inst6|inst2~combout\ & (!\inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ ((\inst|inst4|inst20|inst14~q\))))) # (\inst6|inst2~combout\ & ((((\inst|inst5|ROut1[6]~32_combout\))))) ) ) # ( \inst|inst6|inst12~0_combout\ & ( 
-- (((!\inst6|inst2~combout\ & (\inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst6|inst2~combout\ & ((\inst|inst5|ROut1[6]~32_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100101101001000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|inst5|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst17|inst1|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst6|inst8|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst5|ALT_INV_ROut1[6]~32_combout\,
	datae => \inst|inst6|ALT_INV_inst12~0_combout\,
	dataf => \inst6|ALT_INV_inst2~combout\,
	datag => \inst|inst4|inst20|ALT_INV_inst14~q\,
	combout => \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X32_Y28_N11
\inst|inst6|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst8|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst12~q\);

-- Location: FF_X34_Y27_N25
\inst|inst4|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(11),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst4~q\);

-- Location: LABCELL_X30_Y27_N28
\inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst5|inst6~0_combout\ & ( \inst|inst4|inst2|inst4~q\ ) ) # ( !\inst5|inst6~0_combout\ & ( (!\inst4|inst1~0_combout\ & ((\inst|inst4|inst20|inst14~q\))) # 
-- (\inst4|inst1~0_combout\ & (\inst|inst4|inst2|inst100~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst100~q\,
	datac => \inst4|ALT_INV_inst1~0_combout\,
	datad => \inst|inst4|inst20|ALT_INV_inst14~q\,
	dataf => \inst5|ALT_INV_inst6~0_combout\,
	combout => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X29_Y27_N6
\inst|inst5|inst4|32~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4|32~2_combout\ = ( \inst|inst5|inst4|32~1_combout\ & ( !\inst|inst34|inst|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst34|inst|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst5|inst4|ALT_INV_32~1_combout\,
	combout => \inst|inst5|inst4|32~2_combout\);

-- Location: FF_X38_Y27_N13
\inst|inst5|inst9|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|18~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst9|inst2|inst14~q\);

-- Location: LABCELL_X40_Y27_N0
\inst|inst5|inst28[5]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst28[5]~10_combout\ = ( \inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( (!\inst|inst5|inst93|inst2|inst14~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ & ( \inst|inst4|inst20|inst12~q\ & ( 
-- (!\inst|inst5|inst9|inst2|inst14~q\ & !\inst|inst4|inst20|inst10~q\) ) ) ) # ( \inst|inst4|inst2|inst100~q\ & ( !\inst|inst4|inst20|inst12~q\ & ( (!\inst|inst4|inst20|inst10~q\ & !\inst|inst5|inst7|inst2|inst14~q\) ) ) ) # ( !\inst|inst4|inst2|inst100~q\ 
-- & ( !\inst|inst4|inst20|inst12~q\ & ( !\inst|inst4|inst20|inst10~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000000000010100000101000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst9|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst5|inst93|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst10~q\,
	datad => \inst|inst5|inst7|inst2|ALT_INV_inst14~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst4|inst20|ALT_INV_inst12~q\,
	combout => \inst|inst5|inst28[5]~10_combout\);

-- Location: LABCELL_X40_Y27_N36
\inst|inst11[5]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst11[5]~2_combout\ = ( \inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(5) & ( (!\inst|inst5|inst28[5]~10_combout\ & (!\inst|inst5|inst28[5]~11_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # 
-- (\inst|inst5|inst8|inst2|inst14~q\)))) ) ) ) # ( !\inst12~combout\ & ( \inst|inst2|inst|sram|ram_block|auto_generated|q_a\(5) ) ) # ( \inst12~combout\ & ( !\inst|inst2|inst|sram|ram_block|auto_generated|q_a\(5) & ( (!\inst|inst5|inst28[5]~10_combout\ & 
-- (!\inst|inst5|inst28[5]~11_combout\ & ((!\inst|inst5|inst5|33~0_combout\) # (\inst|inst5|inst8|inst2|inst14~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000010000011111111111111111010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_inst28[5]~10_combout\,
	datab => \inst|inst5|inst8|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst5|ALT_INV_inst28[5]~11_combout\,
	datad => \inst|inst5|inst5|ALT_INV_33~0_combout\,
	datae => \ALT_INV_inst12~combout\,
	dataf => \inst|inst2|inst|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	combout => \inst|inst11[5]~2_combout\);

-- Location: FF_X40_Y27_N37
\inst|inst25|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst11[5]~2_combout\,
	asdata => \inst|inst3|inst|inst7|inst3|18~1_combout\,
	sload => \inst3|ALT_INV_inst~0_combout\,
	ena => \inst|inst3|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst25|inst14~q\);

-- Location: FF_X31_Y28_N7
\inst|inst30|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst14~q\);

-- Location: LABCELL_X32_Y27_N0
\inst|inst27|18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst27|18~0_combout\ = ( \inst|inst30|inst14~q\ & ( ((\inst|inst4|inst2|inst12~q\ & (\inst|inst4|inst2|inst14~q\ & \inst|inst4|inst2|inst10~q\))) # (\inst|inst25|inst14~q\) ) ) # ( !\inst|inst30|inst14~q\ & ( (\inst|inst25|inst14~q\ & 
-- ((!\inst|inst4|inst2|inst12~q\) # ((!\inst|inst4|inst2|inst14~q\) # (!\inst|inst4|inst2|inst10~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101011101010101010101000101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst30|ALT_INV_inst14~q\,
	combout => \inst|inst27|18~0_combout\);

-- Location: FF_X39_Y27_N27
\inst|inst5|inst3|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst27|18~0_combout\,
	sload => VCC,
	ena => \inst|inst5|inst4|32~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst3|inst2|inst14~q\);

-- Location: LABCELL_X38_Y27_N2
\inst|inst5|ROut1[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[5]~5_combout\ = ( \inst|inst5|inst15|inst2|inst14~q\ & ( \inst|inst5|inst93|inst2|inst14~q\ & ( ((!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst14~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst14~q\))) 
-- # (\inst|inst4|inst2|inst2~q\) ) ) ) # ( !\inst|inst5|inst15|inst2|inst14~q\ & ( \inst|inst5|inst93|inst2|inst14~q\ & ( (!\inst|inst4|inst2|inst2~q\ & ((!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst14~q\))) # (\inst|inst4|inst2|inst3~q\ & 
-- (\inst|inst5|inst14|inst2|inst14~q\)))) # (\inst|inst4|inst2|inst2~q\ & (((!\inst|inst4|inst2|inst3~q\)))) ) ) ) # ( \inst|inst5|inst15|inst2|inst14~q\ & ( !\inst|inst5|inst93|inst2|inst14~q\ & ( (!\inst|inst4|inst2|inst2~q\ & 
-- ((!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst14~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst14~q\)))) # (\inst|inst4|inst2|inst2~q\ & (((\inst|inst4|inst2|inst3~q\)))) ) ) ) # ( !\inst|inst5|inst15|inst2|inst14~q\ 
-- & ( !\inst|inst5|inst93|inst2|inst14~q\ & ( (!\inst|inst4|inst2|inst2~q\ & ((!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst7|inst2|inst14~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst14~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst14|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst5|inst15|inst2|ALT_INV_inst14~q\,
	dataf => \inst|inst5|inst93|inst2|ALT_INV_inst14~q\,
	combout => \inst|inst5|ROut1[5]~5_combout\);

-- Location: LABCELL_X38_Y27_N16
\inst|inst5|ROut1[5]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[5]~16_combout\ = ( !\inst|inst4|inst2|inst3~q\ & ( ((!\inst|inst4|inst2|inst4~q\ & (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst9|inst2|inst14~q\))) # (\inst|inst4|inst2|inst4~q\ & (((\inst|inst5|ROut1[5]~5_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst4~q\ & ((!\inst|inst4|inst2|inst2~q\ & (((\inst|inst5|inst8|inst2|inst14~q\)))) # (\inst|inst4|inst2|inst2~q\ & (\inst|inst5|inst3|inst2|inst14~q\)))) # (\inst|inst4|inst2|inst4~q\ & 
-- ((((\inst|inst5|ROut1[5]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000000110110000000000000101111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst5|inst3|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst5|inst8|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst4~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst3~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[5]~5_combout\,
	datag => \inst|inst5|inst9|inst2|ALT_INV_inst14~q\,
	combout => \inst|inst5|ROut1[5]~16_combout\);

-- Location: LABCELL_X32_Y28_N28
\inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst17|inst1|inst|inst|inst3~combout\ & ( !\inst|inst4|inst20|inst14~q\ $ 
-- (\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) # ( !\inst|inst17|inst1|inst|inst|inst3~combout\ & ( !\inst|inst4|inst20|inst14~q\ $ 
-- (!\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datad => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst17|inst1|inst|inst|ALT_INV_inst3~combout\,
	combout => \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X31_Y28_N28
\inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst18~0_combout\ & ( !\inst|inst4|inst20|inst14~q\ $ 
-- (((\inst5|inst6~0_combout\) # (\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst18~0_combout\ & 
-- ( !\inst|inst4|inst20|inst14~q\ $ (((!\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (\inst|inst4|inst20|inst16~q\)) # (\inst5|inst6~0_combout\))) ) ) ) # ( 
-- \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst18~0_combout\ & ( (!\inst5|inst6~0_combout\ & (\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst5|inst6~0_combout\ & ((\inst|inst4|inst20|inst14~q\))) ) ) ) # ( !\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst18~0_combout\ & ( (!\inst5|inst6~0_combout\ & 
-- (\inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst5|inst6~0_combout\ & ((\inst|inst4|inst20|inst14~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101101001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|inst5|inst1|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst16~q\,
	datad => \inst5|ALT_INV_inst6~0_combout\,
	datae => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	combout => \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y28_N30
\inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst6|inst2~combout\ & 
-- (((\inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst6|inst12~0_combout\)))) # (\inst6|inst2~combout\ & (\inst|inst5|ROut1[5]~16_combout\)) ) ) # ( 
-- !\inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst6|inst2~combout\ & (((!\inst|inst6|inst12~0_combout\ & \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # 
-- (\inst6|inst2~combout\ & (\inst|inst5|ROut1[5]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_inst2~combout\,
	datab => \inst|inst5|ALT_INV_ROut1[5]~16_combout\,
	datac => \inst|inst6|ALT_INV_inst12~0_combout\,
	datad => \inst|inst17|inst1|inst|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst6|inst36|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X32_Y28_N31
\inst|inst6|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst36|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst14~q\);

-- Location: FF_X34_Y27_N9
\inst|inst4|inst20|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst16~q\);

-- Location: LABCELL_X35_Y28_N22
\inst|inst6|inst16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst16~0_combout\ = ( \inst|inst3|inst|inst7|inst3|24~0_combout\ & ( \inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # (\inst|inst4|inst2|inst14~q\))) ) ) ) 
-- # ( !\inst|inst3|inst|inst7|inst3|24~0_combout\ & ( \inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & ((!\inst|inst4|inst2|inst14~q\ & (!\inst|inst4|inst2|inst12~q\ & !\inst|inst4|inst2|inst16~q\)) # (\inst|inst4|inst2|inst14~q\ & 
-- (\inst|inst4|inst2|inst12~q\)))) ) ) ) # ( \inst|inst3|inst|inst7|inst3|24~0_combout\ & ( !\inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # 
-- (\inst|inst4|inst2|inst14~q\))) ) ) ) # ( !\inst|inst3|inst|inst7|inst3|24~0_combout\ & ( !\inst|inst3|inst3|inst~1_combout\ & ( (\inst|inst4|inst2|inst10~q\ & (((\inst|inst4|inst2|inst16~q\) # (\inst|inst4|inst2|inst12~q\)) # 
-- (\inst|inst4|inst2|inst14~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000100100010000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	datae => \inst|inst3|inst|inst7|inst3|ALT_INV_24~0_combout\,
	dataf => \inst|inst3|inst3|ALT_INV_inst~1_combout\,
	combout => \inst|inst6|inst16~0_combout\);

-- Location: LABCELL_X32_Y28_N32
\inst|inst6|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst6|inst16~0_combout\ & ( !\inst|inst4|inst20|inst16~q\ $ 
-- (((!\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst|inst29|12~0_combout\))) ) ) ) # ( !\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst|inst6|inst16~0_combout\ & ( !\inst|inst4|inst20|inst16~q\ $ (((!\inst|inst29|12~0_combout\) # (\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst6|inst16~0_combout\ & ( (!\inst|inst29|12~0_combout\ & ((\inst|inst5|ROut1[4]~20_combout\))) # (\inst|inst29|12~0_combout\ & 
-- (\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst|inst17|inst7|inst6|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst6|inst16~0_combout\ & ( 
-- (!\inst|inst29|12~0_combout\ & ((\inst|inst5|ROut1[4]~20_combout\))) # (\inst|inst29|12~0_combout\ & (\inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100101101001011010001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|inst5|inst1|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst29|ALT_INV_12~0_combout\,
	datac => \inst|inst4|inst20|ALT_INV_inst16~q\,
	datad => \inst|inst5|ALT_INV_ROut1[4]~20_combout\,
	datae => \inst|inst17|inst7|inst6|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst6|ALT_INV_inst16~0_combout\,
	combout => \inst|inst6|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X32_Y28_N33
\inst|inst6|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst16~q\);

-- Location: FF_X39_Y27_N33
\inst|inst4|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(13),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst14~q\);

-- Location: LABCELL_X30_Y28_N32
\inst6|inst2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst6|inst2~combout\ = ( \inst6|inst2~0_combout\ & ( (!\inst|inst4|inst2|inst12~q\ & (!\inst|inst4|inst2|inst14~q\ & (!\inst|inst4|inst2|inst16~q\ & !\inst|inst4|inst2|inst10~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datab => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst6|ALT_INV_inst2~0_combout\,
	combout => \inst6|inst2~combout\);

-- Location: MLABCELL_X34_Y28_N22
\inst|inst29|12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|12~1_combout\ = ( \inst|inst4|inst20|inst4~q\ & ( !\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst|inst4|inst20|inst3~q\ & 
-- (\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst4|inst20|inst3~q\ & 
-- ((\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) # ( !\inst|inst4|inst20|inst4~q\ & ( 
-- !\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst|inst4|inst20|inst3~q\ & ((!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (!\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst|inst4|inst20|inst3~q\ & (!\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- !\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datac => \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|inst20|ALT_INV_inst4~q\,
	combout => \inst|inst29|12~1_combout\);

-- Location: MLABCELL_X34_Y28_N12
\inst|inst29|12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst29|12~2_combout\ = ( !\inst5|inst6~0_combout\ & ( (!\inst6|inst2~combout\ & (((!\inst|inst18~0_combout\ & (\inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst18~0_combout\ & 
-- ((\inst|inst29|12~1_combout\)))))) # (\inst6|inst2~combout\ & (\inst|inst5|ROut1[3]~8_combout\)) ) ) # ( \inst5|inst6~0_combout\ & ( (!\inst6|inst2~combout\ & (((\inst|inst4|inst20|inst4~q\)))) # (\inst6|inst2~combout\ & (\inst|inst5|ROut1[3]~8_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000110110001101100010001101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_inst2~combout\,
	datab => \inst|inst5|ALT_INV_ROut1[3]~8_combout\,
	datac => \inst|inst4|inst20|ALT_INV_inst4~q\,
	datad => \inst|inst29|ALT_INV_12~1_combout\,
	datae => \inst5|ALT_INV_inst6~0_combout\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	datag => \inst|inst13|inst7|inst5|inst|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst29|12~2_combout\);

-- Location: FF_X34_Y28_N13
\inst|inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst29|12~2_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst4~q\);

-- Location: FF_X38_Y27_N35
\inst|inst4|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(9),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst2~q\);

-- Location: LABCELL_X38_Y27_N36
\inst|inst5|ROut1[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[2]~1_combout\ = ( \inst|inst4|inst2|inst4~q\ & ( \inst|inst5|inst15|inst2|inst3~q\ & ( (\inst|inst5|inst93|inst2|inst3~q\) # (\inst|inst4|inst2|inst3~q\) ) ) ) # ( !\inst|inst4|inst2|inst4~q\ & ( \inst|inst5|inst15|inst2|inst3~q\ & ( 
-- (!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst9|inst2|inst3~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst3|inst2|inst3~q\)) ) ) ) # ( \inst|inst4|inst2|inst4~q\ & ( !\inst|inst5|inst15|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst3~q\ & 
-- \inst|inst5|inst93|inst2|inst3~q\) ) ) ) # ( !\inst|inst4|inst2|inst4~q\ & ( !\inst|inst5|inst15|inst2|inst3~q\ & ( (!\inst|inst4|inst2|inst3~q\ & ((\inst|inst5|inst9|inst2|inst3~q\))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst3|inst2|inst3~q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst3|inst2|ALT_INV_inst3~q\,
	datab => \inst|inst5|inst9|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst5|inst93|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|inst15|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|ROut1[2]~1_combout\);

-- Location: MLABCELL_X34_Y27_N36
\inst|inst5|ROut1[2]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst5|ROut1[2]~12_combout\ = ( !\inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & (((\inst|inst5|inst8|inst2|inst3~q\ & (\inst|inst4|inst2|inst3~q\))))) # (\inst|inst4|inst2|inst2~q\ & ((((\inst|inst5|ROut1[2]~1_combout\))))) ) ) # ( 
-- \inst|inst4|inst2|inst4~q\ & ( (!\inst|inst4|inst2|inst2~q\ & ((!\inst|inst4|inst2|inst3~q\ & (((\inst|inst5|inst7|inst2|inst3~q\)))) # (\inst|inst4|inst2|inst3~q\ & (\inst|inst5|inst14|inst2|inst3~q\)))) # (\inst|inst4|inst2|inst2~q\ & 
-- ((((\inst|inst5|ROut1[2]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001010000010100010001001010101010111110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst2|ALT_INV_inst2~q\,
	datab => \inst|inst5|inst14|inst2|ALT_INV_inst3~q\,
	datac => \inst|inst5|inst7|inst2|ALT_INV_inst3~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst3~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst4~q\,
	dataf => \inst|inst5|ALT_INV_ROut1[2]~1_combout\,
	datag => \inst|inst5|inst8|inst2|ALT_INV_inst3~q\,
	combout => \inst|inst5|ROut1[2]~12_combout\);

-- Location: MLABCELL_X34_Y28_N26
\inst|inst6|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst16~0_combout\ & ( \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst20|inst3~q\ $ 
-- (((!\inst|inst29|12~0_combout\) # (\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst|inst6|inst16~0_combout\ & ( 
-- \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst29|12~0_combout\) # (\inst|inst5|ROut1[2]~12_combout\) ) ) ) # ( \inst|inst6|inst16~0_combout\ & ( 
-- !\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst20|inst3~q\ $ (((!\inst|inst29|12~0_combout\) # (!\inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) 
-- ) ) ) # ( !\inst|inst6|inst16~0_combout\ & ( !\inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst|inst5|ROut1[2]~12_combout\ & !\inst|inst29|12~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100110011110001011111010111110011110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|ALT_INV_ROut1[2]~12_combout\,
	datab => \inst|inst4|inst20|ALT_INV_inst3~q\,
	datac => \inst|inst29|ALT_INV_12~0_combout\,
	datad => \inst|inst17|inst7|inst|inst7|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst6|ALT_INV_inst16~0_combout\,
	dataf => \inst|inst13|inst7|inst5|inst1|inst3|$00000|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst|inst6|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y28_N27
\inst|inst6|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst35|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst3~q\);

-- Location: FF_X39_Y27_N25
\inst|inst4|inst20|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst2~q\);

-- Location: MLABCELL_X34_Y28_N16
\inst|inst6|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst|inst6|inst16~0_combout\ & ( (!\inst|inst29|12~0_combout\ & ((((\inst|inst5|ROut1[1]~28_combout\))))) # (\inst|inst29|12~0_combout\ & (!\inst|inst6|inst100~q\ $ 
-- ((!\inst|inst6|inst2~q\)))) ) ) # ( \inst|inst6|inst16~0_combout\ & ( !\inst|inst4|inst20|inst2~q\ $ (((!\inst|inst29|12~0_combout\) # (!\inst|inst6|inst2~q\ $ (((\inst|inst4|inst20|inst100~q\) # (\inst|inst6|inst100~q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101100110000011110110100100001111011001100000111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|ALT_INV_inst100~q\,
	datab => \inst|inst6|ALT_INV_inst2~q\,
	datac => \inst|inst4|inst20|ALT_INV_inst2~q\,
	datad => \inst|inst29|ALT_INV_12~0_combout\,
	datae => \inst|inst6|ALT_INV_inst16~0_combout\,
	dataf => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datag => \inst|inst5|ALT_INV_ROut1[1]~28_combout\,
	combout => \inst|inst6|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y28_N17
\inst|inst6|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst18|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst2~q\);

-- Location: FF_X39_Y27_N17
\inst|inst4|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(14),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst12~q\);

-- Location: LABCELL_X32_Y27_N20
\inst2|inst|inst7|inst4|6\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|inst4|6~combout\ = ( \inst|inst4|inst2|inst10~q\ & ( \inst2|inst8|inst7|inst3|6~0_combout\ ) ) # ( !\inst|inst4|inst2|inst10~q\ & ( \inst2|inst8|inst7|inst3|6~0_combout\ & ( !\inst|inst4|inst2|inst14~q\ $ (((!\inst|inst4|inst2|inst16~q\) 
-- # (\inst|inst4|inst2|inst12~q\))) ) ) ) # ( \inst|inst4|inst2|inst10~q\ & ( !\inst2|inst8|inst7|inst3|6~0_combout\ ) ) # ( !\inst|inst4|inst2|inst10~q\ & ( !\inst2|inst8|inst7|inst3|6~0_combout\ & ( (!\inst|inst4|inst2|inst12~q\ & 
-- ((!\inst|inst4|inst2|inst14~q\) # (!\inst|inst4|inst2|inst16~q\))) # (\inst|inst4|inst2|inst12~q\ & (\inst|inst4|inst2|inst14~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000011111111111111111100001111110000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst2|ALT_INV_inst12~q\,
	datac => \inst|inst4|inst2|ALT_INV_inst14~q\,
	datad => \inst|inst4|inst2|ALT_INV_inst16~q\,
	datae => \inst|inst4|inst2|ALT_INV_inst10~q\,
	dataf => \inst2|inst8|inst7|inst3|ALT_INV_6~0_combout\,
	combout => \inst2|inst|inst7|inst4|6~combout\);

-- Location: FF_X32_Y26_N33
\inst|inst3|inst1|regByte|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|inst|inst7|inst4|6~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|regByte|inst2~q\);

-- Location: LABCELL_X32_Y26_N12
\inst|inst3|inst1|and~1\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|and~1_combout\ = ( \inst|inst3|inst1|and~0_combout\ & ( ((!\inst|inst3|inst1|regByte|inst100~q\) # (!\inst|inst3|inst1|regByte|inst3~q\)) # (\inst|inst3|inst1|regByte|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1|regByte|ALT_INV_inst2~q\,
	datab => \inst|inst3|inst1|regByte|ALT_INV_inst100~q\,
	datac => \inst|inst3|inst1|regByte|ALT_INV_inst3~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~0_combout\,
	combout => \inst|inst3|inst1|and~1_combout\);

-- Location: LABCELL_X35_Y26_N20
\inst|inst3|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst|inst3|inst1|and~1_combout\ & ( (!\inst|inst3|inst1|inst24|inst1|inst~combout\) # (\inst|inst3|inst1|inst10|inst2|inst100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst1|inst24|inst1|ALT_INV_inst~combout\,
	datad => \inst|inst3|inst1|inst10|inst2|ALT_INV_inst100~q\,
	dataf => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	combout => \inst|inst3|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X35_Y26_N21
\inst|inst3|inst1|inst10|inst2|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3|inst1|inst10|inst2|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst1|inst10|inst2|inst100~q\);

-- Location: LABCELL_X35_Y26_N18
\inst|inst3|inst8\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~combout\ = ( \inst|inst3|inst1|inst10|inst2|inst100~q\ & ( (!\inst|inst3|inst1|and~1_combout\) # (!\inst|inst3|inst1|and~0_combout\) ) ) # ( !\inst|inst3|inst1|inst10|inst2|inst100~q\ & ( !\inst|inst3|inst1|and~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst1|ALT_INV_and~1_combout\,
	datad => \inst|inst3|inst1|ALT_INV_and~0_combout\,
	dataf => \inst|inst3|inst1|inst10|inst2|ALT_INV_inst100~q\,
	combout => \inst|inst3|inst8~combout\);

-- Location: MLABCELL_X37_Y28_N18
\inst9|inst\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst~combout\ = ( \inst9|inst2~q\ & ( (!\inst|inst3|inst8~combout\) # (\inst9|inst1~q\) ) ) # ( !\inst9|inst2~q\ & ( \inst9|inst1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111110101010101010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_inst1~q\,
	datad => \inst|inst3|ALT_INV_inst8~combout\,
	datae => \inst9|ALT_INV_inst2~q\,
	combout => \inst9|inst~combout\);

-- Location: FF_X37_Y28_N19
\inst9|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2~q\);

-- Location: LABCELL_X38_Y28_N2
\inst9|inst5\ : arriaii_lcell_comb
-- Equation(s):
-- \inst9|inst5~combout\ = ( !\inst9|inst1~q\ & ( !\inst9|inst2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst9|ALT_INV_inst1~q\,
	dataf => \inst9|ALT_INV_inst2~q\,
	combout => \inst9|inst5~combout\);

-- Location: FF_X38_Y28_N3
\inst9|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1~q\);

-- Location: FF_X39_Y27_N37
\inst|inst4|inst20|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst20|inst100~q\);

-- Location: MLABCELL_X34_Y28_N38
\inst|inst6|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst|inst6|inst100~q\ & ( \inst|inst18~0_combout\ & ( \inst|inst4|inst20|inst100~q\ ) ) ) # ( !\inst|inst6|inst100~q\ & ( \inst|inst18~0_combout\ & ( 
-- !\inst|inst4|inst20|inst100~q\ $ (((\inst5|inst6~0_combout\) # (\inst6|inst2~combout\))) ) ) ) # ( \inst|inst6|inst100~q\ & ( !\inst|inst18~0_combout\ & ( (!\inst5|inst6~0_combout\ & (((\inst6|inst2~combout\ & \inst|inst5|ROut1[0]~24_combout\)))) # 
-- (\inst5|inst6~0_combout\ & (\inst|inst4|inst20|inst100~q\)) ) ) ) # ( !\inst|inst6|inst100~q\ & ( !\inst|inst18~0_combout\ & ( (!\inst5|inst6~0_combout\ & (((!\inst6|inst2~combout\) # (\inst|inst5|ROut1[0]~24_combout\)))) # (\inst5|inst6~0_combout\ & 
-- (\inst|inst4|inst20|inst100~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101010101000000110101010110011001010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst20|ALT_INV_inst100~q\,
	datab => \inst6|ALT_INV_inst2~combout\,
	datac => \inst|inst5|ALT_INV_ROut1[0]~24_combout\,
	datad => \inst5|ALT_INV_inst6~0_combout\,
	datae => \inst|inst6|ALT_INV_inst100~q\,
	dataf => \inst|ALT_INV_inst18~0_combout\,
	combout => \inst|inst6|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y28_N39
\inst|inst6|inst100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst6|inst21|inst3|$00000|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst9|inst0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst100~q\);

-- Location: FF_X39_Y27_N23
\inst|inst4|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|sram|ram_block|auto_generated|q_a\(15),
	sload => VCC,
	ena => \inst9|inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2|inst10~q\);

ww_opcode(3) <= \opcode[3]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(0) <= \opcode[0]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(0) <= \R0[0]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;

ww_R4(7) <= \R4[7]~output_o\;

ww_R4(6) <= \R4[6]~output_o\;

ww_R4(5) <= \R4[5]~output_o\;

ww_R4(4) <= \R4[4]~output_o\;

ww_R4(3) <= \R4[3]~output_o\;

ww_R4(2) <= \R4[2]~output_o\;

ww_R4(1) <= \R4[1]~output_o\;

ww_R4(0) <= \R4[0]~output_o\;

ww_R5(7) <= \R5[7]~output_o\;

ww_R5(6) <= \R5[6]~output_o\;

ww_R5(5) <= \R5[5]~output_o\;

ww_R5(4) <= \R5[4]~output_o\;

ww_R5(3) <= \R5[3]~output_o\;

ww_R5(2) <= \R5[2]~output_o\;

ww_R5(1) <= \R5[1]~output_o\;

ww_R5(0) <= \R5[0]~output_o\;

ww_R6(7) <= \R6[7]~output_o\;

ww_R6(6) <= \R6[6]~output_o\;

ww_R6(5) <= \R6[5]~output_o\;

ww_R6(4) <= \R6[4]~output_o\;

ww_R6(3) <= \R6[3]~output_o\;

ww_R6(2) <= \R6[2]~output_o\;

ww_R6(1) <= \R6[1]~output_o\;

ww_R6(0) <= \R6[0]~output_o\;

ww_R7(7) <= \R7[7]~output_o\;

ww_R7(6) <= \R7[6]~output_o\;

ww_R7(5) <= \R7[5]~output_o\;

ww_R7(4) <= \R7[4]~output_o\;

ww_R7(3) <= \R7[3]~output_o\;

ww_R7(2) <= \R7[2]~output_o\;

ww_R7(1) <= \R7[1]~output_o\;

ww_R7(0) <= \R7[0]~output_o\;
END structure;


