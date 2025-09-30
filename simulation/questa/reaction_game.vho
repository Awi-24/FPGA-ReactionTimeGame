-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "09/30/2025 19:20:04"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reaction_game IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	btn_start : IN std_logic;
	btn_response : IN std_logic;
	led_ind : OUT std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	an : OUT std_logic_vector(3 DOWNTO 0)
	);
END reaction_game;

-- Design Ports Information
-- led_ind	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_response	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_start	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reaction_game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_btn_start : std_logic;
SIGNAL ww_btn_response : std_logic;
SIGNAL ww_led_ind : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_an : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputCLKENA0_outclk\ : std_logic;
SIGNAL \btn_start~input_o\ : std_logic;
SIGNAL \btn_start_prev~feeder_combout\ : std_logic;
SIGNAL \btn_start_prev~q\ : std_logic;
SIGNAL \debounce_count_start[2]~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_start[3]~0_combout\ : std_logic;
SIGNAL \debounce_count_start[2]~1_combout\ : std_logic;
SIGNAL \debounce_count_start[0]~3_combout\ : std_logic;
SIGNAL \debounce_count_start[1]~2_combout\ : std_logic;
SIGNAL \debounce_count_start[1]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_start_deb~0_combout\ : std_logic;
SIGNAL \btn_start_deb~q\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \current_state.IDLE~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \ms_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ms_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \ms_tick_s~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~46\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~54\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~50\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~50\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~46\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~58\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~54\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~58\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~62\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~61_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \btn_response~input_o\ : std_logic;
SIGNAL \btn_response_sync[0]~feeder_combout\ : std_logic;
SIGNAL \btn_response_prev~q\ : std_logic;
SIGNAL \debounce_count_response[3]~0_combout\ : std_logic;
SIGNAL \debounce_count_response[1]~2_combout\ : std_logic;
SIGNAL \debounce_count_response[0]~3_combout\ : std_logic;
SIGNAL \debounce_count_response[3]~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_response[2]~1_combout\ : std_logic;
SIGNAL \btn_response_deb~0_combout\ : std_logic;
SIGNAL \btn_response_deb~q\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \timer_ms[9]~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \timer_ms[0]~1_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Selector67~2_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \false_start_p1~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[241]~0_combout\ : std_logic;
SIGNAL \delay_counter_ms[12]~0_combout\ : std_logic;
SIGNAL \delay_counter_ms[1]~DUPLICATE_q\ : std_logic;
SIGNAL \delay_counter_ms[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector67~4_combout\ : std_logic;
SIGNAL \timer_ms[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector67~3_combout\ : std_logic;
SIGNAL \Selector67~5_combout\ : std_logic;
SIGNAL \current_state.WAIT_DELAY~q\ : std_logic;
SIGNAL \delay_counter_ms[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~54\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~50\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~46\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~58\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~54\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~50\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \delay_counter_ms[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[242]~3_combout\ : std_logic;
SIGNAL \delay_counter_ms[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \delay_counter_ms[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \current_state.MEASURE~q\ : std_logic;
SIGNAL \Selector67~6_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \current_state.SHOW_TIME~q\ : std_logic;
SIGNAL \current_state.INTERVAL~0_combout\ : std_logic;
SIGNAL \current_state.INTERVAL~q\ : std_logic;
SIGNAL \show_counter_ms[0]~0_combout\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \show_counter_ms[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \show_counter_ms[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \current_state.GEN_DELAY~q\ : std_logic;
SIGNAL \lfsr_enable~q\ : std_logic;
SIGNAL \lfsr_out_bit~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~62\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[221]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[221]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~61_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[237]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~46\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~66_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[240]~1_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[253]~7_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \current_state.MEASURE~0_combout\ : std_logic;
SIGNAL \current_state.MEASURE~1_combout\ : std_logic;
SIGNAL \current_state.MEASURE~DUPLICATE_q\ : std_logic;
SIGNAL \led_ind_s~q\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \display_mux_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \display_mux_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \display_mux_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \display_mux_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \display_mux_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \display_mux_tick~q\ : std_logic;
SIGNAL \current_digit_select[0]~1_combout\ : std_logic;
SIGNAL \current_digit_select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \current_digit_select[1]~0_combout\ : std_logic;
SIGNAL \current_digit_select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \timer_ms[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \reaction_time_p1[4]~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \timer_ms[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL delay_counter_ms : std_logic_vector(13 DOWNTO 0);
SIGNAL current_digit_select : std_logic_vector(1 DOWNTO 0);
SIGNAL reaction_time_p1 : std_logic_vector(9 DOWNTO 0);
SIGNAL an_internal : std_logic_vector(3 DOWNTO 0);
SIGNAL display_mux_counter : std_logic_vector(14 DOWNTO 0);
SIGNAL ms_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL seg_internal : std_logic_vector(6 DOWNTO 0);
SIGNAL display_digit_values : std_logic_vector(15 DOWNTO 0);
SIGNAL timer_ms : std_logic_vector(9 DOWNTO 0);
SIGNAL lfsr_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL show_counter_ms : std_logic_vector(10 DOWNTO 0);
SIGNAL btn_response_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL debounce_count_response : std_logic_vector(3 DOWNTO 0);
SIGNAL btn_start_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL debounce_count_start : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_debounce_count_start[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ms_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_show_counter_ms : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_debounce_count_start : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~62_combout\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[237]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~63_combout\ : std_logic;
SIGNAL \ALT_INV_btn_response~input_o\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ms_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_timer_ms[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_show_counter_ms[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_timer_ms[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_digit_select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_timer_ms[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_show_counter_ms[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_start[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~59_combout\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_digit_select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~60_combout\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~61_combout\ : std_logic;
SIGNAL \ALT_INV_debounce_count_response[3]~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_delay_counter_ms : std_logic_vector(13 DOWNTO 0);
SIGNAL ALT_INV_reaction_time_p1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_display_mux_counter : std_logic_vector(14 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL ALT_INV_ms_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~61_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~45_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~49_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~45_sumout\ : std_logic;
SIGNAL ALT_INV_an_internal : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~53_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~49_sumout\ : std_logic;
SIGNAL ALT_INV_seg_internal : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~57_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~61_sumout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE~q\ : std_logic;
SIGNAL ALT_INV_display_digit_values : std_logic_vector(12 DOWNTO 0);
SIGNAL ALT_INV_timer_ms : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_current_state.GEN_DELAY~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_current_state.INTERVAL~q\ : std_logic;
SIGNAL \ALT_INV_false_start_p1~q\ : std_logic;
SIGNAL \ALT_INV_display_mux_tick~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL ALT_INV_current_digit_select : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_btn_response_deb~q\ : std_logic;
SIGNAL \ALT_INV_Selector67~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SHOW_TIME~q\ : std_logic;
SIGNAL \ALT_INV_current_state.WAIT_DELAY~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector67~2_combout\ : std_logic;
SIGNAL ALT_INV_lfsr_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector67~4_combout\ : std_logic;
SIGNAL \ALT_INV_btn_start_deb~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[225]~2_combout\ : std_logic;
SIGNAL \ALT_INV_btn_response_prev~q\ : std_logic;
SIGNAL \ALT_INV_Selector67~6_combout\ : std_logic;
SIGNAL \ALT_INV_ms_tick_s~q\ : std_logic;
SIGNAL ALT_INV_btn_response_sync : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_debounce_count_response : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector69~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[233]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[249]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[250]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[248]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[245]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[253]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[252]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[231]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[229]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[227]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[244]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[243]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[247]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~14_combout\ : std_logic;
SIGNAL ALT_INV_btn_start_sync : std_logic_vector(1 DOWNTO 1);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[251]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~38_combout\ : std_logic;
SIGNAL \ALT_INV_btn_start_prev~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[235]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[246]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~54_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_btn_start <= btn_start;
ww_btn_response <= btn_response;
led_ind <= ww_led_ind;
seg <= ww_seg;
an <= ww_an;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_debounce_count_start[1]~DUPLICATE_q\ <= NOT \debounce_count_start[1]~DUPLICATE_q\;
\ALT_INV_display_mux_counter[5]~DUPLICATE_q\ <= NOT \display_mux_counter[5]~DUPLICATE_q\;
\ALT_INV_ms_counter[13]~DUPLICATE_q\ <= NOT \ms_counter[13]~DUPLICATE_q\;
ALT_INV_show_counter_ms(3) <= NOT show_counter_ms(3);
ALT_INV_debounce_count_start(0) <= NOT debounce_count_start(0);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~62_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\;
\ALT_INV_delay_counter_ms[1]~DUPLICATE_q\ <= NOT \delay_counter_ms[1]~DUPLICATE_q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[237]~64_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[237]~64_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~63_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\;
\ALT_INV_btn_response~input_o\ <= NOT \btn_response~input_o\;
\ALT_INV_delay_counter_ms[4]~DUPLICATE_q\ <= NOT \delay_counter_ms[4]~DUPLICATE_q\;
\ALT_INV_delay_counter_ms[2]~DUPLICATE_q\ <= NOT \delay_counter_ms[2]~DUPLICATE_q\;
\ALT_INV_display_mux_counter[3]~DUPLICATE_q\ <= NOT \display_mux_counter[3]~DUPLICATE_q\;
\ALT_INV_ms_counter[3]~DUPLICATE_q\ <= NOT \ms_counter[3]~DUPLICATE_q\;
\ALT_INV_timer_ms[9]~DUPLICATE_q\ <= NOT \timer_ms[9]~DUPLICATE_q\;
\ALT_INV_show_counter_ms[7]~DUPLICATE_q\ <= NOT \show_counter_ms[7]~DUPLICATE_q\;
\ALT_INV_delay_counter_ms[7]~DUPLICATE_q\ <= NOT \delay_counter_ms[7]~DUPLICATE_q\;
\ALT_INV_timer_ms[8]~DUPLICATE_q\ <= NOT \timer_ms[8]~DUPLICATE_q\;
\ALT_INV_display_mux_counter[11]~DUPLICATE_q\ <= NOT \display_mux_counter[11]~DUPLICATE_q\;
ALT_INV_show_counter_ms(1) <= NOT show_counter_ms(1);
\ALT_INV_current_digit_select[1]~DUPLICATE_q\ <= NOT \current_digit_select[1]~DUPLICATE_q\;
ALT_INV_show_counter_ms(0) <= NOT show_counter_ms(0);
\ALT_INV_delay_counter_ms[0]~DUPLICATE_q\ <= NOT \delay_counter_ms[0]~DUPLICATE_q\;
\ALT_INV_current_state.MEASURE~DUPLICATE_q\ <= NOT \current_state.MEASURE~DUPLICATE_q\;
\ALT_INV_timer_ms[2]~DUPLICATE_q\ <= NOT \timer_ms[2]~DUPLICATE_q\;
\ALT_INV_show_counter_ms[4]~DUPLICATE_q\ <= NOT \show_counter_ms[4]~DUPLICATE_q\;
ALT_INV_show_counter_ms(2) <= NOT show_counter_ms(2);
\ALT_INV_debounce_count_start[2]~DUPLICATE_q\ <= NOT \debounce_count_start[2]~DUPLICATE_q\;
\ALT_INV_current_state.IDLE~DUPLICATE_q\ <= NOT \current_state.IDLE~DUPLICATE_q\;
\ALT_INV_display_mux_counter[10]~DUPLICATE_q\ <= NOT \display_mux_counter[10]~DUPLICATE_q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~59_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\;
\ALT_INV_display_mux_counter[0]~DUPLICATE_q\ <= NOT \display_mux_counter[0]~DUPLICATE_q\;
\ALT_INV_current_digit_select[0]~DUPLICATE_q\ <= NOT \current_digit_select[0]~DUPLICATE_q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~60_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\;
\ALT_INV_delay_counter_ms[3]~DUPLICATE_q\ <= NOT \delay_counter_ms[3]~DUPLICATE_q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~61_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\;
\ALT_INV_debounce_count_response[3]~DUPLICATE_q\ <= NOT \debounce_count_response[3]~DUPLICATE_q\;
ALT_INV_delay_counter_ms(7) <= NOT delay_counter_ms(7);
ALT_INV_delay_counter_ms(0) <= NOT delay_counter_ms(0);
ALT_INV_delay_counter_ms(6) <= NOT delay_counter_ms(6);
ALT_INV_delay_counter_ms(4) <= NOT delay_counter_ms(4);
ALT_INV_delay_counter_ms(3) <= NOT delay_counter_ms(3);
ALT_INV_delay_counter_ms(2) <= NOT delay_counter_ms(2);
ALT_INV_reaction_time_p1(8) <= NOT reaction_time_p1(8);
ALT_INV_reaction_time_p1(4) <= NOT reaction_time_p1(4);
ALT_INV_reaction_time_p1(0) <= NOT reaction_time_p1(0);
ALT_INV_delay_counter_ms(11) <= NOT delay_counter_ms(11);
ALT_INV_delay_counter_ms(13) <= NOT delay_counter_ms(13);
ALT_INV_delay_counter_ms(10) <= NOT delay_counter_ms(10);
ALT_INV_delay_counter_ms(8) <= NOT delay_counter_ms(8);
ALT_INV_delay_counter_ms(1) <= NOT delay_counter_ms(1);
ALT_INV_delay_counter_ms(9) <= NOT delay_counter_ms(9);
ALT_INV_delay_counter_ms(5) <= NOT delay_counter_ms(5);
ALT_INV_delay_counter_ms(12) <= NOT delay_counter_ms(12);
ALT_INV_display_mux_counter(13) <= NOT display_mux_counter(13);
ALT_INV_display_mux_counter(9) <= NOT display_mux_counter(9);
ALT_INV_display_mux_counter(3) <= NOT display_mux_counter(3);
ALT_INV_display_mux_counter(4) <= NOT display_mux_counter(4);
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~1_sumout\;
ALT_INV_reaction_time_p1(5) <= NOT reaction_time_p1(5);
ALT_INV_display_mux_counter(5) <= NOT display_mux_counter(5);
ALT_INV_reaction_time_p1(1) <= NOT reaction_time_p1(1);
ALT_INV_display_mux_counter(6) <= NOT display_mux_counter(6);
ALT_INV_reaction_time_p1(9) <= NOT reaction_time_p1(9);
ALT_INV_display_mux_counter(10) <= NOT display_mux_counter(10);
ALT_INV_display_mux_counter(14) <= NOT display_mux_counter(14);
ALT_INV_display_mux_counter(1) <= NOT display_mux_counter(1);
ALT_INV_display_mux_counter(11) <= NOT display_mux_counter(11);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~5_sumout\;
ALT_INV_reaction_time_p1(2) <= NOT reaction_time_p1(2);
ALT_INV_display_mux_counter(8) <= NOT display_mux_counter(8);
ALT_INV_display_mux_counter(2) <= NOT display_mux_counter(2);
ALT_INV_display_mux_counter(12) <= NOT display_mux_counter(12);
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~1_sumout\;
ALT_INV_display_mux_counter(7) <= NOT display_mux_counter(7);
ALT_INV_reaction_time_p1(3) <= NOT reaction_time_p1(3);
ALT_INV_display_mux_counter(0) <= NOT display_mux_counter(0);
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~9_sumout\;
ALT_INV_reaction_time_p1(6) <= NOT reaction_time_p1(6);
ALT_INV_reaction_time_p1(7) <= NOT reaction_time_p1(7);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~5_sumout\;
ALT_INV_ms_counter(13) <= NOT ms_counter(13);
ALT_INV_ms_counter(2) <= NOT ms_counter(2);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~21_sumout\;
ALT_INV_ms_counter(3) <= NOT ms_counter(3);
ALT_INV_ms_counter(12) <= NOT ms_counter(12);
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~9_sumout\;
ALT_INV_ms_counter(0) <= NOT ms_counter(0);
ALT_INV_ms_counter(14) <= NOT ms_counter(14);
ALT_INV_ms_counter(10) <= NOT ms_counter(10);
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~21_sumout\;
ALT_INV_ms_counter(15) <= NOT ms_counter(15);
ALT_INV_ms_counter(9) <= NOT ms_counter(9);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~21_sumout\;
ALT_INV_ms_counter(5) <= NOT ms_counter(5);
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~13_sumout\;
ALT_INV_ms_counter(7) <= NOT ms_counter(7);
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~25_sumout\;
ALT_INV_ms_counter(1) <= NOT ms_counter(1);
ALT_INV_ms_counter(4) <= NOT ms_counter(4);
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~33_sumout\;
ALT_INV_ms_counter(6) <= NOT ms_counter(6);
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~17_sumout\;
ALT_INV_ms_counter(11) <= NOT ms_counter(11);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~25_sumout\;
ALT_INV_ms_counter(8) <= NOT ms_counter(8);
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~45_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~45_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~53_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~53_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~53_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~53_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~57_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~57_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~41_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~41_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~49_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~49_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~61_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~61_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~45_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~45_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~57_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~57_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~49_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~49_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~41_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~41_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~41_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~41_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~45_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~45_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~53_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~53_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~49_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~49_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~41_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~41_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~45_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~45_sumout\;
ALT_INV_an_internal(3) <= NOT an_internal(3);
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~53_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~53_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~49_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~49_sumout\;
ALT_INV_seg_internal(0) <= NOT seg_internal(0);
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~57_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~57_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~61_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~61_sumout\;
ALT_INV_seg_internal(3) <= NOT seg_internal(3);
ALT_INV_seg_internal(6) <= NOT seg_internal(6);
ALT_INV_an_internal(0) <= NOT an_internal(0);
ALT_INV_seg_internal(2) <= NOT seg_internal(2);
ALT_INV_an_internal(2) <= NOT an_internal(2);
\ALT_INV_current_state.MEASURE~q\ <= NOT \current_state.MEASURE~q\;
ALT_INV_display_digit_values(12) <= NOT display_digit_values(12);
ALT_INV_seg_internal(5) <= NOT seg_internal(5);
ALT_INV_an_internal(1) <= NOT an_internal(1);
ALT_INV_seg_internal(1) <= NOT seg_internal(1);
ALT_INV_seg_internal(4) <= NOT seg_internal(4);
ALT_INV_timer_ms(4) <= NOT timer_ms(4);
ALT_INV_timer_ms(3) <= NOT timer_ms(3);
ALT_INV_display_digit_values(8) <= NOT display_digit_values(8);
\ALT_INV_current_state.GEN_DELAY~q\ <= NOT \current_state.GEN_DELAY~q\;
ALT_INV_display_digit_values(2) <= NOT display_digit_values(2);
ALT_INV_display_digit_values(6) <= NOT display_digit_values(6);
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
ALT_INV_timer_ms(7) <= NOT timer_ms(7);
\ALT_INV_current_state.MEASURE~0_combout\ <= NOT \current_state.MEASURE~0_combout\;
\ALT_INV_current_state.IDLE~q\ <= NOT \current_state.IDLE~q\;
ALT_INV_display_digit_values(1) <= NOT display_digit_values(1);
\ALT_INV_current_state.INTERVAL~q\ <= NOT \current_state.INTERVAL~q\;
ALT_INV_display_digit_values(4) <= NOT display_digit_values(4);
ALT_INV_display_digit_values(9) <= NOT display_digit_values(9);
\ALT_INV_false_start_p1~q\ <= NOT \false_start_p1~q\;
\ALT_INV_display_mux_tick~q\ <= NOT \display_mux_tick~q\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
ALT_INV_timer_ms(9) <= NOT timer_ms(9);
ALT_INV_display_digit_values(0) <= NOT display_digit_values(0);
ALT_INV_current_digit_select(0) <= NOT current_digit_select(0);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_btn_response_deb~q\ <= NOT \btn_response_deb~q\;
ALT_INV_timer_ms(8) <= NOT timer_ms(8);
ALT_INV_timer_ms(6) <= NOT timer_ms(6);
ALT_INV_timer_ms(5) <= NOT timer_ms(5);
ALT_INV_timer_ms(2) <= NOT timer_ms(2);
ALT_INV_timer_ms(1) <= NOT timer_ms(1);
\ALT_INV_Selector67~3_combout\ <= NOT \Selector67~3_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_current_state.SHOW_TIME~q\ <= NOT \current_state.SHOW_TIME~q\;
ALT_INV_display_digit_values(7) <= NOT display_digit_values(7);
ALT_INV_current_digit_select(1) <= NOT current_digit_select(1);
ALT_INV_display_digit_values(3) <= NOT display_digit_values(3);
ALT_INV_display_digit_values(5) <= NOT display_digit_values(5);
\ALT_INV_current_state.WAIT_DELAY~q\ <= NOT \current_state.WAIT_DELAY~q\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Selector67~2_combout\ <= NOT \Selector67~2_combout\;
ALT_INV_timer_ms(0) <= NOT timer_ms(0);
ALT_INV_lfsr_reg(2) <= NOT lfsr_reg(2);
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_show_counter_ms(9) <= NOT show_counter_ms(9);
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
ALT_INV_lfsr_reg(1) <= NOT lfsr_reg(1);
ALT_INV_lfsr_reg(0) <= NOT lfsr_reg(0);
ALT_INV_show_counter_ms(7) <= NOT show_counter_ms(7);
\ALT_INV_Selector67~4_combout\ <= NOT \Selector67~4_combout\;
\ALT_INV_btn_start_deb~q\ <= NOT \btn_start_deb~q\;
ALT_INV_show_counter_ms(4) <= NOT show_counter_ms(4);
ALT_INV_show_counter_ms(8) <= NOT show_counter_ms(8);
ALT_INV_show_counter_ms(6) <= NOT show_counter_ms(6);
ALT_INV_show_counter_ms(10) <= NOT show_counter_ms(10);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[225]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\;
\ALT_INV_btn_response_prev~q\ <= NOT \btn_response_prev~q\;
\ALT_INV_Selector67~6_combout\ <= NOT \Selector67~6_combout\;
\ALT_INV_ms_tick_s~q\ <= NOT \ms_tick_s~q\;
ALT_INV_btn_response_sync(1) <= NOT btn_response_sync(1);
ALT_INV_debounce_count_response(2) <= NOT debounce_count_response(2);
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
ALT_INV_debounce_count_response(1) <= NOT debounce_count_response(1);
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
ALT_INV_show_counter_ms(5) <= NOT show_counter_ms(5);
ALT_INV_debounce_count_response(3) <= NOT debounce_count_response(3);
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_Selector69~0_combout\ <= NOT \Selector69~0_combout\;
ALT_INV_lfsr_reg(4) <= NOT lfsr_reg(4);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~22_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\;
ALT_INV_lfsr_reg(10) <= NOT lfsr_reg(10);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[233]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~29_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\;
ALT_INV_lfsr_reg(5) <= NOT lfsr_reg(5);
ALT_INV_lfsr_reg(12) <= NOT lfsr_reg(12);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[249]~23_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[250]~19_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[248]~27_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~28_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~33_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\;
ALT_INV_lfsr_reg(13) <= NOT lfsr_reg(13);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~30_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~37_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[245]~39_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[253]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[253]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~16_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~13_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\;
ALT_INV_lfsr_reg(11) <= NOT lfsr_reg(11);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~25_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[252]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[231]~26_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~32_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[229]~34_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[227]~42_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[244]~43_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\;
ALT_INV_lfsr_reg(3) <= NOT lfsr_reg(3);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~44_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[243]~45_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[247]~31_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~41_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~14_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\;
ALT_INV_lfsr_reg(8) <= NOT lfsr_reg(8);
ALT_INV_btn_start_sync(1) <= NOT btn_start_sync(1);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~40_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~20_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~36_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~12_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[251]~15_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~38_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\;
\ALT_INV_btn_start_prev~q\ <= NOT \btn_start_prev~q\;
ALT_INV_lfsr_reg(7) <= NOT lfsr_reg(7);
ALT_INV_debounce_count_start(3) <= NOT debounce_count_start(3);
ALT_INV_debounce_count_start(1) <= NOT debounce_count_start(1);
ALT_INV_debounce_count_start(2) <= NOT debounce_count_start(2);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~24_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~17_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\;
ALT_INV_lfsr_reg(9) <= NOT lfsr_reg(9);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[235]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~21_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\;
ALT_INV_lfsr_reg(6) <= NOT lfsr_reg(6);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[246]~35_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~46_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~49_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[221]~49_combout\;
ALT_INV_lfsr_reg(14) <= NOT lfsr_reg(14);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~53_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\;
ALT_INV_debounce_count_response(0) <= NOT debounce_count_response(0);
ALT_INV_lfsr_reg(15) <= NOT lfsr_reg(15);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~51_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~52_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~50_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~48_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[221]~48_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~47_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~55_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~56_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~57_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~58_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~54_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\;

-- Location: IOOBUF_X10_Y0_N76
\led_ind~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_ind_s~q\,
	devoe => ww_devoe,
	o => ww_led_ind);

-- Location: IOOBUF_X0_Y21_N39
\seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(0),
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X0_Y20_N22
\seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(1),
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X0_Y18_N62
\seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(2),
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X0_Y19_N22
\seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(3),
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X0_Y18_N45
\seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(4),
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X0_Y21_N56
\seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(5),
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X0_Y19_N56
\seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg_internal(6),
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOOBUF_X0_Y20_N56
\an[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_an_internal(0),
	devoe => ww_devoe,
	o => ww_an(0));

-- Location: IOOBUF_X0_Y21_N5
\an[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_an_internal(1),
	devoe => ww_devoe,
	o => ww_an(1));

-- Location: IOOBUF_X0_Y20_N39
\an[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_an_internal(2),
	devoe => ww_devoe,
	o => ww_an(2));

-- Location: IOOBUF_X0_Y20_N5
\an[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_an_internal(3),
	devoe => ww_devoe,
	o => ww_an(3));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X5_Y20_N0
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( delay_counter_ms(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~6\ = CARRY(( delay_counter_ms(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(0),
	cin => GND,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: IOIBUF_X22_Y0_N18
\rst_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G6
\rst_n~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~input_o\,
	outclk => \rst_n~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y21_N21
\btn_start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_start,
	o => \btn_start~input_o\);

-- Location: FF_X2_Y23_N35
\btn_start_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \btn_start~input_o\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_start_sync(0));

-- Location: FF_X2_Y23_N38
\btn_start_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_start_sync(0),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_start_sync(1));

-- Location: FF_X2_Y23_N1
\debounce_count_start[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[1]~2_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(1));

-- Location: LABCELL_X2_Y23_N9
\btn_start_prev~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_start_prev~feeder_combout\ = ( btn_start_sync(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_btn_start_sync(1),
	combout => \btn_start_prev~feeder_combout\);

-- Location: FF_X2_Y23_N11
btn_start_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_prev~feeder_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_prev~q\);

-- Location: FF_X2_Y23_N19
\debounce_count_start[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[2]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_start[2]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N24
\debounce_count_start[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[3]~0_combout\ = ( debounce_count_start(3) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( !btn_start_sync(1) $ (\btn_start_prev~q\) ) ) ) # ( !debounce_count_start(3) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( 
-- (\debounce_count_start[1]~DUPLICATE_q\ & (debounce_count_start(0) & (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) ) # ( debounce_count_start(3) & ( !\debounce_count_start[2]~DUPLICATE_q\ & ( !btn_start_sync(1) $ (\btn_start_prev~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100010000000000011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_debounce_count_start[1]~DUPLICATE_q\,
	datab => ALT_INV_debounce_count_start(0),
	datac => ALT_INV_btn_start_sync(1),
	datad => \ALT_INV_btn_start_prev~q\,
	datae => ALT_INV_debounce_count_start(3),
	dataf => \ALT_INV_debounce_count_start[2]~DUPLICATE_q\,
	combout => \debounce_count_start[3]~0_combout\);

-- Location: FF_X2_Y23_N25
\debounce_count_start[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[3]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(3));

-- Location: LABCELL_X2_Y23_N18
\debounce_count_start[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[2]~1_combout\ = ( debounce_count_start(2) & ( debounce_count_start(3) & ( !btn_start_sync(1) $ (\btn_start_prev~q\) ) ) ) # ( !debounce_count_start(2) & ( debounce_count_start(3) & ( (\debounce_count_start[1]~DUPLICATE_q\ & 
-- (debounce_count_start(0) & (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) ) # ( debounce_count_start(2) & ( !debounce_count_start(3) & ( (!\debounce_count_start[1]~DUPLICATE_q\ & ((!btn_start_sync(1) $ (\btn_start_prev~q\)))) # 
-- (\debounce_count_start[1]~DUPLICATE_q\ & (!debounce_count_start(0) & (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) ) # ( !debounce_count_start(2) & ( !debounce_count_start(3) & ( (\debounce_count_start[1]~DUPLICATE_q\ & (debounce_count_start(0) & 
-- (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001111000000000111000010000000000011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_debounce_count_start[1]~DUPLICATE_q\,
	datab => ALT_INV_debounce_count_start(0),
	datac => ALT_INV_btn_start_sync(1),
	datad => \ALT_INV_btn_start_prev~q\,
	datae => ALT_INV_debounce_count_start(2),
	dataf => ALT_INV_debounce_count_start(3),
	combout => \debounce_count_start[2]~1_combout\);

-- Location: FF_X2_Y23_N20
\debounce_count_start[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[2]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(2));

-- Location: LABCELL_X2_Y23_N12
\debounce_count_start[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[0]~3_combout\ = ( debounce_count_start(0) & ( debounce_count_start(3) & ( (debounce_count_start(1) & (debounce_count_start(2) & (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) ) # ( !debounce_count_start(0) & ( 
-- debounce_count_start(3) & ( (!debounce_count_start(1) & (!btn_start_sync(1) $ (((\btn_start_prev~q\))))) # (debounce_count_start(1) & (!debounce_count_start(2) & (!btn_start_sync(1) $ (\btn_start_prev~q\)))) ) ) ) # ( !debounce_count_start(0) & ( 
-- !debounce_count_start(3) & ( !btn_start_sync(1) $ (\btn_start_prev~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101000000000000000010101000010101000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_btn_start_sync(1),
	datab => ALT_INV_debounce_count_start(1),
	datac => ALT_INV_debounce_count_start(2),
	datad => \ALT_INV_btn_start_prev~q\,
	datae => ALT_INV_debounce_count_start(0),
	dataf => ALT_INV_debounce_count_start(3),
	combout => \debounce_count_start[0]~3_combout\);

-- Location: FF_X2_Y23_N14
\debounce_count_start[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[0]~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(0));

-- Location: LABCELL_X2_Y23_N0
\debounce_count_start[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[1]~2_combout\ = ( debounce_count_start(1) & ( debounce_count_start(3) & ( (!debounce_count_start(0) & (!btn_start_sync(1) $ (((\btn_start_prev~q\))))) # (debounce_count_start(0) & (debounce_count_start(2) & (!btn_start_sync(1) $ 
-- (\btn_start_prev~q\)))) ) ) ) # ( !debounce_count_start(1) & ( debounce_count_start(3) & ( (debounce_count_start(0) & (!btn_start_sync(1) $ (\btn_start_prev~q\))) ) ) ) # ( debounce_count_start(1) & ( !debounce_count_start(3) & ( (!debounce_count_start(0) 
-- & (!btn_start_sync(1) $ (\btn_start_prev~q\))) ) ) ) # ( !debounce_count_start(1) & ( !debounce_count_start(3) & ( (debounce_count_start(0) & (!btn_start_sync(1) $ (\btn_start_prev~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001100010000100010000100010000100011000101001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_btn_start_sync(1),
	datab => ALT_INV_debounce_count_start(0),
	datac => ALT_INV_debounce_count_start(2),
	datad => \ALT_INV_btn_start_prev~q\,
	datae => ALT_INV_debounce_count_start(1),
	dataf => ALT_INV_debounce_count_start(3),
	combout => \debounce_count_start[1]~2_combout\);

-- Location: FF_X2_Y23_N2
\debounce_count_start[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[1]~2_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_start[1]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N42
\btn_start_deb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_start_deb~0_combout\ = ( \btn_start_deb~q\ & ( debounce_count_start(3) & ( (!\debounce_count_start[1]~DUPLICATE_q\) # ((!\debounce_count_start[2]~DUPLICATE_q\) # ((\btn_start_prev~q\) # (btn_start_sync(1)))) ) ) ) # ( !\btn_start_deb~q\ & ( 
-- debounce_count_start(3) & ( (\debounce_count_start[1]~DUPLICATE_q\ & (\debounce_count_start[2]~DUPLICATE_q\ & (btn_start_sync(1) & \btn_start_prev~q\))) ) ) ) # ( \btn_start_deb~q\ & ( !debounce_count_start(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_debounce_count_start[1]~DUPLICATE_q\,
	datab => \ALT_INV_debounce_count_start[2]~DUPLICATE_q\,
	datac => ALT_INV_btn_start_sync(1),
	datad => \ALT_INV_btn_start_prev~q\,
	datae => \ALT_INV_btn_start_deb~q\,
	dataf => ALT_INV_debounce_count_start(3),
	combout => \btn_start_deb~0_combout\);

-- Location: FF_X2_Y23_N43
btn_start_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_deb~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_deb~q\);

-- Location: FF_X6_Y22_N58
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.IDLE~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LABCELL_X6_Y22_N57
\current_state.IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.IDLE~0_combout\ = ( \btn_start_deb~q\ ) # ( !\btn_start_deb~q\ & ( \current_state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.IDLE~q\,
	dataf => \ALT_INV_btn_start_deb~q\,
	combout => \current_state.IDLE~0_combout\);

-- Location: FF_X6_Y22_N59
\current_state.IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.IDLE~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~DUPLICATE_q\);

-- Location: LABCELL_X6_Y22_N0
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( show_counter_ms(0) ) + ( VCC ) + ( !VCC ))
-- \Add6~42\ = CARRY(( show_counter_ms(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_counter_ms(0),
	cin => GND,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: MLABCELL_X4_Y20_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( ms_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~42\ = CARRY(( ms_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(0),
	cin => GND,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X4_Y20_N2
\ms_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(0));

-- Location: MLABCELL_X4_Y20_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( ms_counter(1) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( ms_counter(1) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(1),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X4_Y20_N5
\ms_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(1));

-- Location: MLABCELL_X4_Y20_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( ms_counter(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( ms_counter(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(2),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X4_Y20_N8
\ms_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(2));

-- Location: MLABCELL_X4_Y20_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \ms_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( \ms_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ms_counter[3]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X4_Y20_N11
\ms_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ms_counter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y20_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( ms_counter(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( ms_counter(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(4),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X4_Y20_N14
\ms_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(4));

-- Location: MLABCELL_X4_Y20_N15
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( ms_counter(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~46\ = CARRY(( ms_counter(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(5),
	cin => \Add0~2\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X4_Y20_N17
\ms_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(5));

-- Location: MLABCELL_X4_Y20_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( ms_counter(6) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~22\ = CARRY(( ms_counter(6) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(6),
	cin => \Add0~46\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X4_Y20_N20
\ms_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(6));

-- Location: MLABCELL_X4_Y20_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( ms_counter(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( ms_counter(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(7),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X4_Y20_N23
\ms_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(7));

-- Location: MLABCELL_X4_Y20_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( ms_counter(8) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~62\ = CARRY(( ms_counter(8) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(8),
	cin => \Add0~18\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X4_Y20_N25
\ms_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(8));

-- Location: MLABCELL_X4_Y20_N27
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( ms_counter(9) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( ms_counter(9) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(9),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X4_Y20_N29
\ms_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(9));

-- Location: MLABCELL_X4_Y20_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( ms_counter(10) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( ms_counter(10) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(10),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X4_Y20_N31
\ms_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(10));

-- Location: MLABCELL_X4_Y20_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( ms_counter(11) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~26\ = CARRY(( ms_counter(11) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(11),
	cin => \Add0~54\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X4_Y20_N35
\ms_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(11));

-- Location: MLABCELL_X4_Y20_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( ms_counter(12) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~50\ = CARRY(( ms_counter(12) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(12),
	cin => \Add0~26\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X4_Y20_N37
\ms_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(12));

-- Location: MLABCELL_X4_Y20_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( ms_counter(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~6\ = CARRY(( ms_counter(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(13),
	cin => \Add0~50\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X4_Y20_N41
\ms_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(13));

-- Location: MLABCELL_X4_Y20_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( ms_counter(14) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( ms_counter(14) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(14),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X4_Y20_N44
\ms_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(14));

-- Location: MLABCELL_X4_Y20_N45
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( ms_counter(15) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(15),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X4_Y20_N47
\ms_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(15));

-- Location: MLABCELL_X4_Y20_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !ms_counter(7) & ( ms_counter(14) & ( (ms_counter(6) & (ms_counter(15) & !ms_counter(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(6),
	datab => ALT_INV_ms_counter(15),
	datac => ALT_INV_ms_counter(11),
	datae => ALT_INV_ms_counter(7),
	dataf => ALT_INV_ms_counter(14),
	combout => \Equal0~0_combout\);

-- Location: FF_X4_Y20_N40
\ms_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ms_counter[13]~DUPLICATE_q\);

-- Location: FF_X4_Y20_N10
\ms_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(3));

-- Location: MLABCELL_X4_Y20_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !ms_counter(5) & ( (ms_counter(0) & (ms_counter(2) & (ms_counter(1) & ms_counter(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(0),
	datab => ALT_INV_ms_counter(2),
	datac => ALT_INV_ms_counter(1),
	datad => ALT_INV_ms_counter(3),
	dataf => ALT_INV_ms_counter(5),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X5_Y22_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( ms_counter(8) & ( (!ms_counter(10) & (ms_counter(9) & !ms_counter(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(10),
	datab => ALT_INV_ms_counter(9),
	datac => ALT_INV_ms_counter(12),
	dataf => ALT_INV_ms_counter(8),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X4_Y22_N51
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~0_combout\ & (!ms_counter(4) & (!\ms_counter[13]~DUPLICATE_q\ & \Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_ms_counter(4),
	datac => \ALT_INV_ms_counter[13]~DUPLICATE_q\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X4_Y20_N50
ms_tick_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ms_tick_s~q\);

-- Location: LABCELL_X6_Y22_N51
\Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\current_state.SHOW_TIME~q\ & ((!\LessThan6~0_combout\) # ((!show_counter_ms(5) & !\show_counter_ms[4]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001110101000000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => ALT_INV_show_counter_ms(5),
	datac => \ALT_INV_show_counter_ms[4]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SHOW_TIME~q\,
	combout => \Selector69~0_combout\);

-- Location: FF_X4_Y21_N53
\lfsr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(12),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(11));

-- Location: FF_X4_Y21_N47
\lfsr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(11),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(10));

-- Location: FF_X4_Y21_N38
\lfsr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(10),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(9));

-- Location: FF_X4_Y21_N17
\lfsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(9),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(8));

-- Location: FF_X4_Y21_N5
\lfsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(8),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(7));

-- Location: FF_X4_Y21_N11
\lfsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(7),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(6));

-- Location: FF_X4_Y21_N29
\lfsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(6),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(5));

-- Location: FF_X4_Y21_N35
\lfsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(5),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(4));

-- Location: FF_X4_Y21_N23
\lfsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(4),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(3));

-- Location: MLABCELL_X4_Y21_N0
\Mod0|auto_generated|divider|divider|op_5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~45_sumout\ = SUM(( !lfsr_reg(3) ) + ( VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|op_5~46\ = CARRY(( !lfsr_reg(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(3),
	cin => GND,
	sumout => \Mod0|auto_generated|divider|divider|op_5~45_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~46\);

-- Location: MLABCELL_X4_Y21_N3
\Mod0|auto_generated|divider|divider|op_5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~41_sumout\ = SUM(( !lfsr_reg(4) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~46\ ))
-- \Mod0|auto_generated|divider|divider|op_5~42\ = CARRY(( !lfsr_reg(4) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(4),
	cin => \Mod0|auto_generated|divider|divider|op_5~46\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~41_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~42\);

-- Location: MLABCELL_X4_Y21_N6
\Mod0|auto_generated|divider|divider|op_5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~37_sumout\ = SUM(( !lfsr_reg(5) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~42\ ))
-- \Mod0|auto_generated|divider|divider|op_5~38\ = CARRY(( !lfsr_reg(5) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(5),
	cin => \Mod0|auto_generated|divider|divider|op_5~42\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~38\);

-- Location: MLABCELL_X4_Y21_N9
\Mod0|auto_generated|divider|divider|op_5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~33_sumout\ = SUM(( !lfsr_reg(6) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~38\ ))
-- \Mod0|auto_generated|divider|divider|op_5~34\ = CARRY(( !lfsr_reg(6) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(6),
	cin => \Mod0|auto_generated|divider|divider|op_5~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~34\);

-- Location: MLABCELL_X4_Y21_N12
\Mod0|auto_generated|divider|divider|op_5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~29_sumout\ = SUM(( !lfsr_reg(7) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~34\ ))
-- \Mod0|auto_generated|divider|divider|op_5~30\ = CARRY(( !lfsr_reg(7) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(7),
	cin => \Mod0|auto_generated|divider|divider|op_5~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~30\);

-- Location: MLABCELL_X4_Y21_N15
\Mod0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( !lfsr_reg(8) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~30\ ))
-- \Mod0|auto_generated|divider|divider|op_5~26\ = CARRY(( !lfsr_reg(8) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(8),
	cin => \Mod0|auto_generated|divider|divider|op_5~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~26\);

-- Location: MLABCELL_X4_Y21_N18
\Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( !lfsr_reg(9) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26\ ))
-- \Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( !lfsr_reg(9) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(9),
	cin => \Mod0|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X4_Y21_N21
\Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( !lfsr_reg(10) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( !lfsr_reg(10) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(10),
	cin => \Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X4_Y21_N24
\Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( !lfsr_reg(11) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( !lfsr_reg(11) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(11),
	cin => \Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X4_Y21_N27
\Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( !lfsr_reg(12) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( !lfsr_reg(12) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(12),
	cin => \Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X4_Y21_N30
\Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( !lfsr_reg(13) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \Mod0|auto_generated|divider|divider|op_5~2\ = CARRY(( !lfsr_reg(13) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(13),
	cin => \Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~1_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~2\);

-- Location: MLABCELL_X4_Y21_N33
\Mod0|auto_generated|divider|divider|op_5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~53_sumout\ = SUM(( !lfsr_reg(14) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~2\ ))
-- \Mod0|auto_generated|divider|divider|op_5~54\ = CARRY(( !lfsr_reg(14) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(14),
	cin => \Mod0|auto_generated|divider|divider|op_5~2\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~53_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~54\);

-- Location: MLABCELL_X4_Y21_N36
\Mod0|auto_generated|divider|divider|op_5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~49_sumout\ = SUM(( !lfsr_reg(15) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~54\ ))
-- \Mod0|auto_generated|divider|divider|op_5~50\ = CARRY(( !lfsr_reg(15) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lfsr_reg(15),
	cin => \Mod0|auto_generated|divider|divider|op_5~54\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~49_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~50\);

-- Location: MLABCELL_X4_Y21_N39
\Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~50\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~5_sumout\);

-- Location: LABCELL_X5_Y22_N15
\Mod0|auto_generated|divider|divider|StageOut[193]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(4),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\);

-- Location: MLABCELL_X4_Y21_N57
\Mod0|auto_generated|divider|divider|StageOut[204]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(15),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\);

-- Location: MLABCELL_X4_Y21_N45
\Mod0|auto_generated|divider|divider|StageOut[202]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\);

-- Location: LABCELL_X5_Y22_N54
\Mod0|auto_generated|divider|divider|StageOut[202]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\ = ( !lfsr_reg(13) & ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_lfsr_reg(13),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\);

-- Location: MLABCELL_X4_Y21_N48
\Mod0|auto_generated|divider|divider|StageOut[200]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\);

-- Location: LABCELL_X5_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[200]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(11),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\);

-- Location: LABCELL_X5_Y22_N9
\Mod0|auto_generated|divider|divider|StageOut[198]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\);

-- Location: LABCELL_X5_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[198]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\ = ( !lfsr_reg(9) & ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_lfsr_reg(9),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\);

-- Location: MLABCELL_X4_Y21_N54
\Mod0|auto_generated|divider|divider|StageOut[196]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\);

-- Location: LABCELL_X5_Y22_N39
\Mod0|auto_generated|divider|divider|StageOut[196]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_lfsr_reg(7),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\);

-- Location: MLABCELL_X4_Y21_N42
\Mod0|auto_generated|divider|divider|StageOut[194]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\);

-- Location: LABCELL_X5_Y22_N51
\Mod0|auto_generated|divider|divider|StageOut[194]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\ = ( !lfsr_reg(5) & ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_lfsr_reg(5),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\);

-- Location: FF_X5_Y21_N2
\lfsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(3),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(2));

-- Location: LABCELL_X5_Y21_N0
\Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( !lfsr_reg(2) ) + ( VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( !lfsr_reg(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(2),
	cin => GND,
	sumout => \Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X5_Y21_N3
\Mod0|auto_generated|divider|divider|op_6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~49_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~45_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(3))) ) + ( 
-- VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \Mod0|auto_generated|divider|divider|op_6~50\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~45_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(3))) ) + ( VCC ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datab => ALT_INV_lfsr_reg(3),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~45_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~49_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~50\);

-- Location: LABCELL_X5_Y21_N6
\Mod0|auto_generated|divider|divider|op_6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~45_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~41_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(4))) ) + ( 
-- VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~50\ ))
-- \Mod0|auto_generated|divider|divider|op_6~46\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~41_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(4))) ) + ( VCC ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(4),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~41_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~50\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~45_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~46\);

-- Location: LABCELL_X5_Y21_N9
\Mod0|auto_generated|divider|divider|op_6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~41_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~46\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~42\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~36_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~37_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~46\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~41_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~42\);

-- Location: LABCELL_X5_Y21_N12
\Mod0|auto_generated|divider|divider|op_6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~37_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(6))) ) + ( 
-- VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~42\ ))
-- \Mod0|auto_generated|divider|divider|op_6~38\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(6))) ) + ( VCC ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lfsr_reg(6),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~42\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~38\);

-- Location: LABCELL_X5_Y21_N15
\Mod0|auto_generated|divider|divider|op_6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~33_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~38\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~34\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~29_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~34\);

-- Location: LABCELL_X5_Y21_N18
\Mod0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(8))) ) + ( 
-- VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~34\ ))
-- \Mod0|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(8))) ) + ( VCC ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lfsr_reg(8),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~30\);

-- Location: LABCELL_X5_Y21_N21
\Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~30\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~21_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X5_Y21_N24
\Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(10))) ) + ( 
-- GND ) + ( \Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(10))) ) + ( GND ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(10),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X5_Y21_N27
\Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~13_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X5_Y21_N30
\Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(12))) ) + ( 
-- VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(12))) ) + ( VCC ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lfsr_reg(12),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X5_Y21_N33
\Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~5_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X5_Y21_N36
\Mod0|auto_generated|divider|divider|op_6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~57_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~53_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(14))) ) + ( 
-- GND ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Mod0|auto_generated|divider|divider|op_6~58\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~53_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(14))) ) + ( GND ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lfsr_reg(14),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~53_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~57_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~58\);

-- Location: LABCELL_X5_Y21_N39
\Mod0|auto_generated|divider|divider|op_6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~53_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~58\ 
-- ))
-- \Mod0|auto_generated|divider|divider|op_6~54\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~46_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~58\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~53_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~54\);

-- Location: LABCELL_X5_Y21_N42
\Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~54\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X5_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[193]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~41_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\);

-- Location: LABCELL_X7_Y21_N27
\Mod0|auto_generated|divider|divider|StageOut[209]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~45_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (!lfsr_reg(3))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(3),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~49_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~45_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\);

-- Location: FF_X6_Y21_N2
\lfsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(2),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(1));

-- Location: LABCELL_X6_Y21_N0
\Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( !lfsr_reg(1) ) + ( VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( !lfsr_reg(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(1),
	cin => GND,
	sumout => \Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X6_Y21_N3
\Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (!lfsr_reg(2))) ) + ( VCC 
-- ) + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (!lfsr_reg(2))) ) + ( VCC ) + 
-- ( \Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(2),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X6_Y21_N6
\Mod0|auto_generated|divider|divider|op_7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~57_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \Mod0|auto_generated|divider|divider|op_7~58\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~44_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~57_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~58\);

-- Location: LABCELL_X6_Y21_N9
\Mod0|auto_generated|divider|divider|op_7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~53_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~45_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~58\ ))
-- \Mod0|auto_generated|divider|divider|op_7~54\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~45_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~45_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~41_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~58\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~53_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~54\);

-- Location: LABCELL_X7_Y21_N12
\Mod0|auto_generated|divider|divider|StageOut[227]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~45_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~45_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ( (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[193]~40_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[193]~41_combout\))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_6~45_sumout\ 
-- & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~53_sumout\ ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~45_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_7~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010011000100111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[193]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~53_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~45_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\);

-- Location: LABCELL_X5_Y20_N51
\Mod0|auto_generated|divider|divider|StageOut[209]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\ = ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~49_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\);

-- Location: LABCELL_X7_Y21_N33
\Mod0|auto_generated|divider|divider|StageOut[209]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & !lfsr_reg(3)) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & 
-- ( (\Mod0|auto_generated|divider|divider|op_5~45_sumout\ & \Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~45_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => ALT_INV_lfsr_reg(3),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\);

-- Location: LABCELL_X7_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[225]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((!lfsr_reg(2)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => ALT_INV_lfsr_reg(2),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\);

-- Location: FF_X7_Y20_N2
\lfsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(1),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(0));

-- Location: LABCELL_X7_Y20_N0
\Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( !lfsr_reg(0) ) + ( VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( !lfsr_reg(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(0),
	cin => GND,
	sumout => \Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X7_Y20_N3
\Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!lfsr_reg(1))) ) + ( VCC 
-- ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!lfsr_reg(1))) ) + ( VCC ) + 
-- ( \Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(1),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X7_Y20_N6
\Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[225]~2_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X7_Y20_N9
\Mod0|auto_generated|divider|divider|op_8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~61_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~57_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \Mod0|auto_generated|divider|divider|op_8~62\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~57_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[209]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[209]~60_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~57_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~61_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~61_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~62\);

-- Location: LABCELL_X7_Y20_N12
\Mod0|auto_generated|divider|divider|op_8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~57_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~62\ ))
-- \Mod0|auto_generated|divider|divider|op_8~58\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[227]~42_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~62\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~57_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~58\);

-- Location: LABCELL_X7_Y21_N30
\Mod0|auto_generated|divider|divider|StageOut[244]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[227]~42_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[227]~42_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~57_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\);

-- Location: LABCELL_X7_Y20_N54
\Mod0|auto_generated|divider|divider|StageOut[243]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~61_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_7~57_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~61_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~57_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[209]~44_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[209]~44_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~57_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~61_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\);

-- Location: LABCELL_X6_Y20_N0
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\ ) + ( VCC ) + ( !VCC ))
-- \Add3~42\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[243]~45_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[243]~45_combout\,
	cin => GND,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: LABCELL_X6_Y20_N3
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\ ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[244]~43_combout\ ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[244]~43_combout\,
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: IOIBUF_X8_Y45_N75
\btn_response~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_response,
	o => \btn_response~input_o\);

-- Location: LABCELL_X5_Y41_N12
\btn_response_sync[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_response_sync[0]~feeder_combout\ = ( \btn_response~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_btn_response~input_o\,
	combout => \btn_response_sync[0]~feeder_combout\);

-- Location: FF_X5_Y41_N14
\btn_response_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_response_sync[0]~feeder_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_response_sync(0));

-- Location: FF_X5_Y39_N5
\btn_response_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_response_sync(0),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_response_sync(1));

-- Location: FF_X5_Y23_N44
btn_response_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_response_sync(1),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_response_prev~q\);

-- Location: LABCELL_X5_Y23_N24
\debounce_count_response[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[3]~0_combout\ = ( debounce_count_response(3) & ( debounce_count_response(2) & ( !btn_response_sync(1) $ (\btn_response_prev~q\) ) ) ) # ( !debounce_count_response(3) & ( debounce_count_response(2) & ( (debounce_count_response(0) & 
-- (debounce_count_response(1) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( debounce_count_response(3) & ( !debounce_count_response(2) & ( !btn_response_sync(1) $ (\btn_response_prev~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000100000000011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(0),
	datab => ALT_INV_btn_response_sync(1),
	datac => ALT_INV_debounce_count_response(1),
	datad => \ALT_INV_btn_response_prev~q\,
	datae => ALT_INV_debounce_count_response(3),
	dataf => ALT_INV_debounce_count_response(2),
	combout => \debounce_count_response[3]~0_combout\);

-- Location: FF_X5_Y23_N26
\debounce_count_response[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[3]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(3));

-- Location: LABCELL_X5_Y23_N0
\debounce_count_response[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[1]~2_combout\ = ( debounce_count_response(1) & ( debounce_count_response(2) & ( (!debounce_count_response(0) & (!btn_response_sync(1) $ (((\btn_response_prev~q\))))) # (debounce_count_response(0) & (debounce_count_response(3) & 
-- (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( !debounce_count_response(1) & ( debounce_count_response(2) & ( (debounce_count_response(0) & (!btn_response_sync(1) $ (\btn_response_prev~q\))) ) ) ) # ( debounce_count_response(1) & ( 
-- !debounce_count_response(2) & ( (!debounce_count_response(0) & (!btn_response_sync(1) $ (\btn_response_prev~q\))) ) ) ) # ( !debounce_count_response(1) & ( !debounce_count_response(2) & ( (debounce_count_response(0) & (!btn_response_sync(1) $ 
-- (\btn_response_prev~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001100010000010001001000100000100011000110000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(0),
	datab => ALT_INV_btn_response_sync(1),
	datac => ALT_INV_debounce_count_response(3),
	datad => \ALT_INV_btn_response_prev~q\,
	datae => ALT_INV_debounce_count_response(1),
	dataf => ALT_INV_debounce_count_response(2),
	combout => \debounce_count_response[1]~2_combout\);

-- Location: FF_X5_Y23_N2
\debounce_count_response[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[1]~2_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(1));

-- Location: LABCELL_X5_Y23_N54
\debounce_count_response[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[0]~3_combout\ = ( debounce_count_response(0) & ( debounce_count_response(2) & ( (debounce_count_response(1) & (debounce_count_response(3) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( !debounce_count_response(0) 
-- & ( debounce_count_response(2) & ( (!debounce_count_response(1) & (!btn_response_sync(1) $ (((\btn_response_prev~q\))))) # (debounce_count_response(1) & (!debounce_count_response(3) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( 
-- !debounce_count_response(0) & ( !debounce_count_response(2) & ( !btn_response_sync(1) $ (\btn_response_prev~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000011001000001100100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(1),
	datab => ALT_INV_btn_response_sync(1),
	datac => ALT_INV_debounce_count_response(3),
	datad => \ALT_INV_btn_response_prev~q\,
	datae => ALT_INV_debounce_count_response(0),
	dataf => ALT_INV_debounce_count_response(2),
	combout => \debounce_count_response[0]~3_combout\);

-- Location: FF_X5_Y23_N56
\debounce_count_response[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[0]~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(0));

-- Location: FF_X5_Y23_N25
\debounce_count_response[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[3]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_response[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y23_N30
\debounce_count_response[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[2]~1_combout\ = ( debounce_count_response(2) & ( \debounce_count_response[3]~DUPLICATE_q\ & ( !btn_response_sync(1) $ (\btn_response_prev~q\) ) ) ) # ( !debounce_count_response(2) & ( \debounce_count_response[3]~DUPLICATE_q\ & ( 
-- (debounce_count_response(0) & (debounce_count_response(1) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( debounce_count_response(2) & ( !\debounce_count_response[3]~DUPLICATE_q\ & ( (!debounce_count_response(0) & (!btn_response_sync(1) $ 
-- (((\btn_response_prev~q\))))) # (debounce_count_response(0) & (!debounce_count_response(1) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) ) # ( !debounce_count_response(2) & ( !\debounce_count_response[3]~DUPLICATE_q\ & ( 
-- (debounce_count_response(0) & (debounce_count_response(1) & (!btn_response_sync(1) $ (\btn_response_prev~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000001110010000011001000000100000000011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(0),
	datab => ALT_INV_btn_response_sync(1),
	datac => ALT_INV_debounce_count_response(1),
	datad => \ALT_INV_btn_response_prev~q\,
	datae => ALT_INV_debounce_count_response(2),
	dataf => \ALT_INV_debounce_count_response[3]~DUPLICATE_q\,
	combout => \debounce_count_response[2]~1_combout\);

-- Location: FF_X5_Y23_N31
\debounce_count_response[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[2]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(2));

-- Location: LABCELL_X5_Y23_N51
\btn_response_deb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_response_deb~0_combout\ = ( \btn_response_deb~q\ & ( \debounce_count_response[3]~DUPLICATE_q\ & ( (!debounce_count_response(2)) # (((!debounce_count_response(1)) # (\btn_response_prev~q\)) # (btn_response_sync(1))) ) ) ) # ( !\btn_response_deb~q\ & ( 
-- \debounce_count_response[3]~DUPLICATE_q\ & ( (debounce_count_response(2) & (btn_response_sync(1) & (\btn_response_prev~q\ & debounce_count_response(1)))) ) ) ) # ( \btn_response_deb~q\ & ( !\debounce_count_response[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(2),
	datab => ALT_INV_btn_response_sync(1),
	datac => \ALT_INV_btn_response_prev~q\,
	datad => ALT_INV_debounce_count_response(1),
	datae => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_debounce_count_response[3]~DUPLICATE_q\,
	combout => \btn_response_deb~0_combout\);

-- Location: FF_X5_Y23_N52
btn_response_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_response_deb~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_response_deb~q\);

-- Location: MLABCELL_X4_Y22_N0
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( timer_ms(1) ) + ( timer_ms(0) ) + ( !VCC ))
-- \Add5~26\ = CARRY(( timer_ms(1) ) + ( timer_ms(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer_ms(0),
	datad => ALT_INV_timer_ms(1),
	cin => GND,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: MLABCELL_X4_Y22_N36
\timer_ms[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer_ms[9]~0_combout\ = ( \Selector67~2_combout\ & ( (\LessThan3~0_combout\ & (\current_state.MEASURE~DUPLICATE_q\ & \ms_tick_s~q\)) ) ) # ( !\Selector67~2_combout\ & ( (\current_state.MEASURE~DUPLICATE_q\ & \ms_tick_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datad => \ALT_INV_ms_tick_s~q\,
	dataf => \ALT_INV_Selector67~2_combout\,
	combout => \timer_ms[9]~0_combout\);

-- Location: FF_X4_Y22_N2
\timer_ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(1));

-- Location: MLABCELL_X4_Y22_N42
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !timer_ms(4) & ( (!timer_ms(3) & ((!timer_ms(1)) # ((!timer_ms(0)) # (!timer_ms(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(1),
	datab => ALT_INV_timer_ms(0),
	datac => ALT_INV_timer_ms(2),
	datad => ALT_INV_timer_ms(3),
	dataf => ALT_INV_timer_ms(4),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X4_Y22_N39
\timer_ms[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer_ms[0]~1_combout\ = ( \Selector67~2_combout\ & ( !timer_ms(0) $ (((!\current_state.MEASURE~DUPLICATE_q\) # ((!\LessThan3~0_combout\) # (!\ms_tick_s~q\)))) ) ) # ( !\Selector67~2_combout\ & ( !timer_ms(0) $ (((!\current_state.MEASURE~DUPLICATE_q\) # 
-- (!\ms_tick_s~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_ms_tick_s~q\,
	datad => ALT_INV_timer_ms(0),
	dataf => \ALT_INV_Selector67~2_combout\,
	combout => \timer_ms[0]~1_combout\);

-- Location: FF_X4_Y22_N41
\timer_ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \timer_ms[0]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(0));

-- Location: MLABCELL_X4_Y22_N3
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( timer_ms(2) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~22\ = CARRY(( timer_ms(2) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(2),
	cin => \Add5~26\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X4_Y22_N5
\timer_ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(2));

-- Location: MLABCELL_X4_Y22_N6
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( timer_ms(3) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~34\ = CARRY(( timer_ms(3) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(3),
	cin => \Add5~22\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X4_Y22_N7
\timer_ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(3));

-- Location: MLABCELL_X4_Y22_N9
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( timer_ms(4) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~30\ = CARRY(( timer_ms(4) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(4),
	cin => \Add5~34\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X4_Y22_N10
\timer_ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(4));

-- Location: MLABCELL_X4_Y22_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( timer_ms(5) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~18\ = CARRY(( timer_ms(5) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(5),
	cin => \Add5~30\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X4_Y22_N14
\timer_ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(5));

-- Location: MLABCELL_X4_Y22_N15
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( timer_ms(6) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~14\ = CARRY(( timer_ms(6) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(6),
	cin => \Add5~18\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X4_Y22_N16
\timer_ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(6));

-- Location: MLABCELL_X4_Y22_N18
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( timer_ms(7) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~10\ = CARRY(( timer_ms(7) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(7),
	cin => \Add5~14\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X4_Y22_N20
\timer_ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(7));

-- Location: MLABCELL_X4_Y22_N21
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( timer_ms(8) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~6\ = CARRY(( timer_ms(8) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(8),
	cin => \Add5~10\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X4_Y22_N23
\timer_ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(8));

-- Location: MLABCELL_X4_Y22_N24
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( timer_ms(9) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(9),
	cin => \Add5~6\,
	sumout => \Add5~1_sumout\);

-- Location: FF_X4_Y22_N26
\timer_ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_ms(9));

-- Location: MLABCELL_X4_Y22_N30
\Selector67~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~2_combout\ = ( timer_ms(7) & ( (timer_ms(8) & (timer_ms(5) & (timer_ms(9) & timer_ms(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(8),
	datab => ALT_INV_timer_ms(5),
	datac => ALT_INV_timer_ms(9),
	datad => ALT_INV_timer_ms(6),
	dataf => ALT_INV_timer_ms(7),
	combout => \Selector67~2_combout\);

-- Location: LABCELL_X2_Y21_N21
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \current_state.WAIT_DELAY~q\ & ( (\false_start_p1~q\) # (\btn_response_deb~q\) ) ) # ( !\current_state.WAIT_DELAY~q\ & ( (\current_state.IDLE~q\ & \false_start_p1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datac => \ALT_INV_current_state.IDLE~q\,
	datad => \ALT_INV_false_start_p1~q\,
	dataf => \ALT_INV_current_state.WAIT_DELAY~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X2_Y21_N22
false_start_p1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector36~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \false_start_p1~q\);

-- Location: LABCELL_X5_Y20_N48
\Mod0|auto_generated|divider|divider|StageOut[241]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[241]~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!lfsr_reg(1))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111010001110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(1),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[241]~0_combout\);

-- Location: LABCELL_X2_Y21_N24
\delay_counter_ms[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter_ms[12]~0_combout\ = ( \Equal3~0_combout\ & ( \current_state.GEN_DELAY~q\ & ( \ms_tick_s~q\ ) ) ) # ( !\Equal3~0_combout\ & ( \current_state.GEN_DELAY~q\ & ( \ms_tick_s~q\ ) ) ) # ( \Equal3~0_combout\ & ( !\current_state.GEN_DELAY~q\ & ( 
-- (\ms_tick_s~q\ & (\current_state.WAIT_DELAY~q\ & ((!\Equal3~1_combout\) # (!\Equal3~2_combout\)))) ) ) ) # ( !\Equal3~0_combout\ & ( !\current_state.GEN_DELAY~q\ & ( (\ms_tick_s~q\ & \current_state.WAIT_DELAY~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~1_combout\,
	datab => \ALT_INV_ms_tick_s~q\,
	datac => \ALT_INV_Equal3~2_combout\,
	datad => \ALT_INV_current_state.WAIT_DELAY~q\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_current_state.GEN_DELAY~q\,
	combout => \delay_counter_ms[12]~0_combout\);

-- Location: FF_X5_Y20_N4
\delay_counter_ms[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[241]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[1]~DUPLICATE_q\);

-- Location: FF_X5_Y20_N1
\delay_counter_ms[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[240]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[0]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y20_N57
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\delay_counter_ms[0]~DUPLICATE_q\ & ( !\delay_counter_ms[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_delay_counter_ms[1]~DUPLICATE_q\,
	dataf => \ALT_INV_delay_counter_ms[0]~DUPLICATE_q\,
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X2_Y21_N30
\Selector67~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~4_combout\ = ( \Equal3~2_combout\ & ( \current_state.GEN_DELAY~q\ & ( (!\current_state.WAIT_DELAY~q\) # ((!\false_start_p1~q\ & ((!\Equal3~1_combout\) # (!\Equal3~0_combout\)))) ) ) ) # ( !\Equal3~2_combout\ & ( \current_state.GEN_DELAY~q\ & ( 
-- (!\current_state.WAIT_DELAY~q\) # (!\false_start_p1~q\) ) ) ) # ( \Equal3~2_combout\ & ( !\current_state.GEN_DELAY~q\ & ( (\current_state.WAIT_DELAY~q\ & (!\false_start_p1~q\ & ((!\Equal3~1_combout\) # (!\Equal3~0_combout\)))) ) ) ) # ( 
-- !\Equal3~2_combout\ & ( !\current_state.GEN_DELAY~q\ & ( (\current_state.WAIT_DELAY~q\ & !\false_start_p1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100000011101110111011101110111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.WAIT_DELAY~q\,
	datab => \ALT_INV_false_start_p1~q\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_Equal3~2_combout\,
	dataf => \ALT_INV_current_state.GEN_DELAY~q\,
	combout => \Selector67~4_combout\);

-- Location: FF_X4_Y22_N4
\timer_ms[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ms[2]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y22_N45
\Selector67~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~3_combout\ = ( !timer_ms(4) & ( (timer_ms(1) & (timer_ms(0) & (\timer_ms[2]~DUPLICATE_q\ & !timer_ms(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(1),
	datab => ALT_INV_timer_ms(0),
	datac => \ALT_INV_timer_ms[2]~DUPLICATE_q\,
	datad => ALT_INV_timer_ms(3),
	dataf => ALT_INV_timer_ms(4),
	combout => \Selector67~3_combout\);

-- Location: LABCELL_X2_Y21_N51
\Selector67~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~5_combout\ = ( \current_state.MEASURE~DUPLICATE_q\ & ( (!\btn_response_deb~q\ & (\Selector67~4_combout\ & ((!\Selector67~2_combout\) # (!\Selector67~3_combout\)))) ) ) # ( !\current_state.MEASURE~DUPLICATE_q\ & ( \Selector67~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010000010000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datab => \ALT_INV_Selector67~2_combout\,
	datac => \ALT_INV_Selector67~4_combout\,
	datad => \ALT_INV_Selector67~3_combout\,
	dataf => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	combout => \Selector67~5_combout\);

-- Location: FF_X2_Y21_N53
\current_state.WAIT_DELAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector67~5_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_DELAY~q\);

-- Location: FF_X5_Y20_N13
\delay_counter_ms[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~45_sumout\,
	asdata => \Add3~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[4]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y21_N51
\Mod0|auto_generated|divider|divider|StageOut[213]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~28_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~29_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\);

-- Location: LABCELL_X2_Y21_N9
\Mod0|auto_generated|divider|divider|StageOut[195]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~33_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\);

-- Location: LABCELL_X7_Y21_N57
\Mod0|auto_generated|divider|divider|StageOut[195]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\ = ( !lfsr_reg(6) & ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => ALT_INV_lfsr_reg(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\);

-- Location: LABCELL_X7_Y21_N54
\Mod0|auto_generated|divider|divider|StageOut[211]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~37_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~36_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~41_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\);

-- Location: LABCELL_X6_Y21_N12
\Mod0|auto_generated|divider|divider|op_7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~49_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~54\ ))
-- \Mod0|auto_generated|divider|divider|op_7~50\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~38_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~54\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~49_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~50\);

-- Location: LABCELL_X6_Y21_N15
\Mod0|auto_generated|divider|divider|op_7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~45_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~37_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~50\ ))
-- \Mod0|auto_generated|divider|divider|op_7~46\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~37_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~33_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~50\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~45_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~46\);

-- Location: LABCELL_X6_Y21_N18
\Mod0|auto_generated|divider|divider|op_7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~41_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~46\ ))
-- \Mod0|auto_generated|divider|divider|op_7~42\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~30_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~46\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~41_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~42\);

-- Location: LABCELL_X7_Y21_N3
\Mod0|auto_generated|divider|divider|StageOut[213]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~33_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\);

-- Location: LABCELL_X5_Y22_N12
\Mod0|auto_generated|divider|divider|StageOut[213]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\ = (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[196]~28_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[196]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~29_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[196]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\);

-- Location: LABCELL_X7_Y21_N36
\Mod0|auto_generated|divider|divider|StageOut[229]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~37_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~37_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ( (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[195]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[195]~32_combout\))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_6~37_sumout\ 
-- & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~45_sumout\ ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~37_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_7~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000111000001111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[195]~33_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~45_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\);

-- Location: LABCELL_X7_Y21_N51
\Mod0|auto_generated|divider|divider|StageOut[211]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~41_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~41_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\);

-- Location: LABCELL_X7_Y21_N9
\Mod0|auto_generated|divider|divider|StageOut[211]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[194]~36_combout\ & ( (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[194]~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~37_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[194]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\);

-- Location: LABCELL_X7_Y20_N15
\Mod0|auto_generated|divider|divider|op_8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~53_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~49_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~58\ ))
-- \Mod0|auto_generated|divider|divider|op_8~54\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~49_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[211]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[211]~58_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~49_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~59_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~58\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~53_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~54\);

-- Location: LABCELL_X7_Y20_N18
\Mod0|auto_generated|divider|divider|op_8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~49_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~54\ ))
-- \Mod0|auto_generated|divider|divider|op_8~50\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[229]~34_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~54\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~49_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~50\);

-- Location: LABCELL_X7_Y20_N21
\Mod0|auto_generated|divider|divider|op_8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~45_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~41_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_8~50\ ))
-- \Mod0|auto_generated|divider|divider|op_8~46\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~41_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[213]~57_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[213]~56_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~41_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~57_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~50\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~45_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~46\);

-- Location: LABCELL_X6_Y20_N36
\Mod0|auto_generated|divider|divider|StageOut[247]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~45_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_7~41_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~45_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~41_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[213]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[213]~30_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~41_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~45_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\);

-- Location: LABCELL_X6_Y20_N45
\Mod0|auto_generated|divider|divider|StageOut[246]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[229]~34_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[229]~34_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~49_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\);

-- Location: LABCELL_X6_Y20_N51
\Mod0|auto_generated|divider|divider|StageOut[245]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~49_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[211]~38_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~49_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[211]~38_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~53_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\);

-- Location: LABCELL_X6_Y20_N6
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\ ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~34\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[245]~39_combout\ ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[245]~39_combout\,
	cin => \Add3~38\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X6_Y20_N9
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\ ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~30\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[246]~35_combout\ ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[246]~35_combout\,
	cin => \Add3~34\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X6_Y20_N12
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\ ) + ( VCC ) + ( \Add3~30\ ))
-- \Add3~26\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[247]~31_combout\ ) + ( VCC ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[247]~31_combout\,
	cin => \Add3~30\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X5_Y20_N22
\delay_counter_ms[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	asdata => \Add3~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[7]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y20_N45
\Mod0|auto_generated|divider|divider|StageOut[242]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[242]~3_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[225]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[225]~2_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[242]~3_combout\);

-- Location: FF_X5_Y20_N7
\delay_counter_ms[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~53_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[242]~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[2]~DUPLICATE_q\);

-- Location: FF_X5_Y20_N10
\delay_counter_ms[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~49_sumout\,
	asdata => \Add3~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter_ms[3]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y20_N0
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !\delay_counter_ms[2]~DUPLICATE_q\ & ( !\delay_counter_ms[3]~DUPLICATE_q\ & ( (!\delay_counter_ms[4]~DUPLICATE_q\ & (!delay_counter_ms(5) & (!\delay_counter_ms[7]~DUPLICATE_q\ & !delay_counter_ms(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_delay_counter_ms[4]~DUPLICATE_q\,
	datab => ALT_INV_delay_counter_ms(5),
	datac => \ALT_INV_delay_counter_ms[7]~DUPLICATE_q\,
	datad => ALT_INV_delay_counter_ms(6),
	datae => \ALT_INV_delay_counter_ms[2]~DUPLICATE_q\,
	dataf => \ALT_INV_delay_counter_ms[3]~DUPLICATE_q\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X2_Y21_N57
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\Equal3~2_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_Equal3~1_combout\,
	combout => \Equal3~3_combout\);

-- Location: FF_X2_Y21_N14
\current_state.MEASURE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.MEASURE~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MEASURE~q\);

-- Location: LABCELL_X2_Y21_N54
\Selector67~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~6_combout\ = ( \Selector67~2_combout\ & ( (\current_state.MEASURE~q\ & ((\Selector67~3_combout\) # (\btn_response_deb~q\))) ) ) # ( !\Selector67~2_combout\ & ( (\current_state.MEASURE~q\ & \btn_response_deb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.MEASURE~q\,
	datac => \ALT_INV_btn_response_deb~q\,
	datad => \ALT_INV_Selector67~3_combout\,
	dataf => \ALT_INV_Selector67~2_combout\,
	combout => \Selector67~6_combout\);

-- Location: LABCELL_X2_Y21_N0
\Selector69~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = ( \false_start_p1~q\ & ( ((\Selector67~6_combout\) # (\current_state.WAIT_DELAY~q\)) # (\Selector69~0_combout\) ) ) # ( !\false_start_p1~q\ & ( ((\Selector69~0_combout\ & ((!\Equal3~3_combout\) # (!\current_state.WAIT_DELAY~q\)))) 
-- # (\Selector67~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011111111010101001111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector69~0_combout\,
	datab => \ALT_INV_Equal3~3_combout\,
	datac => \ALT_INV_current_state.WAIT_DELAY~q\,
	datad => \ALT_INV_Selector67~6_combout\,
	dataf => \ALT_INV_false_start_p1~q\,
	combout => \Selector69~1_combout\);

-- Location: FF_X2_Y21_N1
\current_state.SHOW_TIME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector69~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SHOW_TIME~q\);

-- Location: FF_X6_Y22_N13
\show_counter_ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(4));

-- Location: LABCELL_X6_Y22_N48
\current_state.INTERVAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.INTERVAL~0_combout\ = ( show_counter_ms(4) & ( (!\LessThan6~0_combout\ & ((\current_state.INTERVAL~q\))) # (\LessThan6~0_combout\ & (\current_state.SHOW_TIME~q\)) ) ) # ( !show_counter_ms(4) & ( (!\LessThan6~0_combout\ & 
-- (((\current_state.INTERVAL~q\)))) # (\LessThan6~0_combout\ & ((!show_counter_ms(5) & ((\current_state.INTERVAL~q\))) # (show_counter_ms(5) & (\current_state.SHOW_TIME~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => ALT_INV_show_counter_ms(5),
	datac => \ALT_INV_current_state.SHOW_TIME~q\,
	datad => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_show_counter_ms(4),
	combout => \current_state.INTERVAL~0_combout\);

-- Location: FF_X6_Y22_N49
\current_state.INTERVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.INTERVAL~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INTERVAL~q\);

-- Location: LABCELL_X6_Y22_N42
\show_counter_ms[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \show_counter_ms[0]~0_combout\ = ( !\LessThan6~0_combout\ & ( show_counter_ms(5) & ( (\ms_tick_s~q\ & ((\current_state.INTERVAL~q\) # (\current_state.SHOW_TIME~q\))) ) ) ) # ( \LessThan6~0_combout\ & ( !show_counter_ms(5) & ( (\ms_tick_s~q\ & 
-- (!\show_counter_ms[4]~DUPLICATE_q\ & ((\current_state.INTERVAL~q\) # (\current_state.SHOW_TIME~q\)))) ) ) ) # ( !\LessThan6~0_combout\ & ( !show_counter_ms(5) & ( (\ms_tick_s~q\ & ((\current_state.INTERVAL~q\) # (\current_state.SHOW_TIME~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001000100010000000101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_show_counter_ms[4]~DUPLICATE_q\,
	datac => \ALT_INV_current_state.SHOW_TIME~q\,
	datad => \ALT_INV_current_state.INTERVAL~q\,
	datae => \ALT_INV_LessThan6~0_combout\,
	dataf => ALT_INV_show_counter_ms(5),
	combout => \show_counter_ms[0]~0_combout\);

-- Location: FF_X6_Y22_N2
\show_counter_ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(0));

-- Location: LABCELL_X6_Y22_N3
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( show_counter_ms(1) ) + ( GND ) + ( \Add6~42\ ))
-- \Add6~38\ = CARRY(( show_counter_ms(1) ) + ( GND ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_show_counter_ms(1),
	cin => \Add6~42\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: FF_X6_Y22_N5
\show_counter_ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(1));

-- Location: LABCELL_X6_Y22_N6
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( show_counter_ms(2) ) + ( GND ) + ( \Add6~38\ ))
-- \Add6~34\ = CARRY(( show_counter_ms(2) ) + ( GND ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_show_counter_ms(2),
	cin => \Add6~38\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X6_Y22_N8
\show_counter_ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(2));

-- Location: LABCELL_X6_Y22_N9
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( show_counter_ms(3) ) + ( GND ) + ( \Add6~34\ ))
-- \Add6~30\ = CARRY(( show_counter_ms(3) ) + ( GND ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_counter_ms(3),
	cin => \Add6~34\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X6_Y22_N11
\show_counter_ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(3));

-- Location: LABCELL_X6_Y22_N12
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( \show_counter_ms[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~30\ ))
-- \Add6~6\ = CARRY(( \show_counter_ms[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_show_counter_ms[4]~DUPLICATE_q\,
	cin => \Add6~30\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X6_Y22_N14
\show_counter_ms[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_counter_ms[4]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y22_N15
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( show_counter_ms(5) ) + ( GND ) + ( \Add6~6\ ))
-- \Add6~2\ = CARRY(( show_counter_ms(5) ) + ( GND ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_counter_ms(5),
	cin => \Add6~6\,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X6_Y22_N17
\show_counter_ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(5));

-- Location: LABCELL_X6_Y22_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( show_counter_ms(6) ) + ( GND ) + ( \Add6~2\ ))
-- \Add6~26\ = CARRY(( show_counter_ms(6) ) + ( GND ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_show_counter_ms(6),
	cin => \Add6~2\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X6_Y22_N19
\show_counter_ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(6));

-- Location: LABCELL_X6_Y22_N21
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \show_counter_ms[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~26\ ))
-- \Add6~22\ = CARRY(( \show_counter_ms[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_show_counter_ms[7]~DUPLICATE_q\,
	cin => \Add6~26\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X6_Y22_N23
\show_counter_ms[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_counter_ms[7]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y22_N24
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( show_counter_ms(8) ) + ( GND ) + ( \Add6~22\ ))
-- \Add6~18\ = CARRY(( show_counter_ms(8) ) + ( GND ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_counter_ms(8),
	cin => \Add6~22\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X6_Y22_N26
\show_counter_ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(8));

-- Location: LABCELL_X6_Y22_N27
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( show_counter_ms(9) ) + ( GND ) + ( \Add6~18\ ))
-- \Add6~14\ = CARRY(( show_counter_ms(9) ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_counter_ms(9),
	cin => \Add6~18\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X6_Y22_N28
\show_counter_ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(9));

-- Location: LABCELL_X6_Y22_N30
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( show_counter_ms(10) ) + ( GND ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_show_counter_ms(10),
	cin => \Add6~14\,
	sumout => \Add6~9_sumout\);

-- Location: FF_X6_Y22_N32
\show_counter_ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(10));

-- Location: FF_X6_Y22_N22
\show_counter_ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \show_counter_ms[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => show_counter_ms(7));

-- Location: LABCELL_X5_Y22_N21
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( show_counter_ms(6) & ( (show_counter_ms(10) & (show_counter_ms(8) & (show_counter_ms(9) & show_counter_ms(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_show_counter_ms(10),
	datab => ALT_INV_show_counter_ms(8),
	datac => ALT_INV_show_counter_ms(9),
	datad => ALT_INV_show_counter_ms(7),
	dataf => ALT_INV_show_counter_ms(6),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X6_Y22_N36
\Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = ( \current_state.INTERVAL~q\ & ( show_counter_ms(4) & ( ((\btn_start_deb~q\ & !\current_state.IDLE~DUPLICATE_q\)) # (\LessThan6~0_combout\) ) ) ) # ( !\current_state.INTERVAL~q\ & ( show_counter_ms(4) & ( (\btn_start_deb~q\ & 
-- !\current_state.IDLE~DUPLICATE_q\) ) ) ) # ( \current_state.INTERVAL~q\ & ( !show_counter_ms(4) & ( (!\btn_start_deb~q\ & (((\LessThan6~0_combout\ & show_counter_ms(5))))) # (\btn_start_deb~q\ & ((!\current_state.IDLE~DUPLICATE_q\) # 
-- ((\LessThan6~0_combout\ & show_counter_ms(5))))) ) ) ) # ( !\current_state.INTERVAL~q\ & ( !show_counter_ms(4) & ( (\btn_start_deb~q\ & !\current_state.IDLE~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100111101000100010001000100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_start_deb~q\,
	datab => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => ALT_INV_show_counter_ms(5),
	datae => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_show_counter_ms(4),
	combout => \Selector66~0_combout\);

-- Location: FF_X6_Y22_N37
\current_state.GEN_DELAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector66~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.GEN_DELAY~q\);

-- Location: FF_X5_Y20_N56
lfsr_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.GEN_DELAY~q\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_enable~q\);

-- Location: FF_X4_Y21_N56
\lfsr_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(15),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(14));

-- Location: FF_X4_Y21_N59
\lfsr_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(14),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(13));

-- Location: FF_X4_Y21_N50
\lfsr_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => lfsr_reg(13),
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(12));

-- Location: LABCELL_X5_Y22_N27
\lfsr_out_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_out_bit~0_combout\ = ( lfsr_reg(15) & ( !lfsr_reg(12) $ (!lfsr_reg(10) $ (lfsr_reg(13))) ) ) # ( !lfsr_reg(15) & ( !lfsr_reg(12) $ (!lfsr_reg(10) $ (!lfsr_reg(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lfsr_reg(12),
	datab => ALT_INV_lfsr_reg(10),
	datad => ALT_INV_lfsr_reg(13),
	dataf => ALT_INV_lfsr_reg(15),
	combout => \lfsr_out_bit~0_combout\);

-- Location: FF_X4_Y21_N44
\lfsr_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lfsr_out_bit~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \lfsr_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lfsr_reg(15));

-- Location: MLABCELL_X4_Y21_N51
\Mod0|auto_generated|divider|divider|StageOut[204]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~49_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\);

-- Location: LABCELL_X7_Y21_N24
\Mod0|auto_generated|divider|divider|StageOut[203]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~53_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~53_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\);

-- Location: LABCELL_X2_Y21_N3
\Mod0|auto_generated|divider|divider|StageOut[203]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(14),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\);

-- Location: LABCELL_X5_Y21_N54
\Mod0|auto_generated|divider|divider|StageOut[219]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\) ) ) 
-- # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~5_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\);

-- Location: LABCELL_X2_Y21_N18
\Mod0|auto_generated|divider|divider|StageOut[201]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\);

-- Location: LABCELL_X5_Y22_N42
\Mod0|auto_generated|divider|divider|StageOut[201]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(12),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\);

-- Location: LABCELL_X5_Y21_N48
\Mod0|auto_generated|divider|divider|StageOut[217]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~13_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\);

-- Location: LABCELL_X2_Y21_N48
\Mod0|auto_generated|divider|divider|StageOut[199]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\);

-- Location: LABCELL_X5_Y22_N36
\Mod0|auto_generated|divider|divider|StageOut[199]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\ = (\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & !lfsr_reg(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => ALT_INV_lfsr_reg(10),
	combout => \Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\);

-- Location: LABCELL_X5_Y21_N57
\Mod0|auto_generated|divider|divider|StageOut[215]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~21_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\);

-- Location: LABCELL_X2_Y21_N39
\Mod0|auto_generated|divider|divider|StageOut[197]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~25_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\);

-- Location: LABCELL_X2_Y21_N45
\Mod0|auto_generated|divider|divider|StageOut[197]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !lfsr_reg(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lfsr_reg(8),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\);

-- Location: LABCELL_X6_Y21_N21
\Mod0|auto_generated|divider|divider|op_7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~37_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~29_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~42\ ))
-- \Mod0|auto_generated|divider|divider|op_7~38\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~29_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~25_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~42\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~38\);

-- Location: LABCELL_X6_Y21_N24
\Mod0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~38\ ))
-- \Mod0|auto_generated|divider|divider|op_7~34\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~22_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~34\);

-- Location: LABCELL_X6_Y21_N27
\Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~34\ ))
-- \Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~17_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X6_Y21_N30
\Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))
-- \Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~14_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X6_Y21_N33
\Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~9_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X6_Y21_N36
\Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~6_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X6_Y21_N39
\Mod0|auto_generated|divider|divider|op_7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~61_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~57_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \Mod0|auto_generated|divider|divider|op_7~62\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~57_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~57_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~63_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~61_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~62\);

-- Location: LABCELL_X6_Y21_N42
\Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~53_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~62\ ))
-- \Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~53_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~53_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~62\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X6_Y21_N45
\Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X7_Y21_N6
\Mod0|auto_generated|divider|divider|StageOut[221]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[221]~48_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~53_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~53_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[221]~48_combout\);

-- Location: LABCELL_X7_Y22_N48
\Mod0|auto_generated|divider|divider|StageOut[221]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[221]~49_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[204]~46_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[204]~47_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~47_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[204]~46_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[221]~49_combout\);

-- Location: LABCELL_X7_Y21_N18
\Mod0|auto_generated|divider|divider|StageOut[237]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[237]~64_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~57_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~57_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ( (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[203]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[203]~62_combout\))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_6~57_sumout\ 
-- & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~61_sumout\ ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~57_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_7~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[203]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~61_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~57_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[237]~64_combout\);

-- Location: LABCELL_X6_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[219]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\);

-- Location: LABCELL_X7_Y22_N9
\Mod0|auto_generated|divider|divider|StageOut[219]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[202]~4_combout\ 
-- & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[202]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~5_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[202]~4_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\);

-- Location: LABCELL_X6_Y21_N54
\Mod0|auto_generated|divider|divider|StageOut[235]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~21_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\))) ) ) 
-- ) # ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~21_sumout\ ) ) # ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~21_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[201]~8_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[201]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110111011111111111111111110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~9_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[201]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\);

-- Location: LABCELL_X7_Y21_N48
\Mod0|auto_generated|divider|divider|StageOut[217]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~17_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\);

-- Location: LABCELL_X5_Y22_N45
\Mod0|auto_generated|divider|divider|StageOut[217]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[200]~12_combout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[200]~13_combout\ & \Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[200]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\);

-- Location: LABCELL_X6_Y21_N48
\Mod0|auto_generated|divider|divider|StageOut[233]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\))) ) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~29_sumout\ ) ) # ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[199]~16_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[199]~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110101111111111111111111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~17_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[199]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\);

-- Location: LABCELL_X6_Y22_N54
\Mod0|auto_generated|divider|divider|StageOut[215]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\ = ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\);

-- Location: LABCELL_X5_Y22_N0
\Mod0|auto_generated|divider|divider|StageOut[215]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\ ) ) # ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[198]~20_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[198]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~21_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[198]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\);

-- Location: LABCELL_X7_Y21_N42
\Mod0|auto_generated|divider|divider|StageOut[231]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~37_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|op_6~29_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\))) ) 
-- ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~37_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~29_sumout\)))) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[197]~25_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[197]~24_combout\))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_7~37_sumout\ 
-- & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~24_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[197]~25_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\);

-- Location: LABCELL_X7_Y20_N24
\Mod0|auto_generated|divider|divider|op_8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~41_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~46\ ))
-- \Mod0|auto_generated|divider|divider|op_8~42\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[231]~26_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~46\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~41_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~42\);

-- Location: LABCELL_X7_Y20_N27
\Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~33_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~42\ ))
-- \Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~33_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[215]~55_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[215]~54_combout\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~55_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~42\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~38\);

-- Location: LABCELL_X7_Y20_N30
\Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))
-- \Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[233]~18_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X7_Y20_N33
\Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~25_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~25_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[217]~53_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[217]~52_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~52_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~53_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X7_Y20_N36
\Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\ ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[235]~10_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X7_Y20_N39
\Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[219]~51_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[219]~50_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~51_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X7_Y20_N42
\Mod0|auto_generated|divider|divider|op_8~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~66_cout\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[237]~64_combout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[237]~64_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~22\,
	cout => \Mod0|auto_generated|divider|divider|op_8~66_cout\);

-- Location: LABCELL_X7_Y20_N45
\Mod0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[221]~49_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[221]~48_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_8~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~48_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[221]~49_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~66_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X7_Y20_N48
\Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_8~18_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X5_Y20_N42
\Mod0|auto_generated|divider|divider|StageOut[240]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[240]~1_combout\ = ( lfsr_reg(0) & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|op_8~9_sumout\) ) ) # ( !lfsr_reg(0) & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~9_sumout\) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => ALT_INV_lfsr_reg(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[240]~1_combout\);

-- Location: FF_X5_Y20_N2
\delay_counter_ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[240]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(0));

-- Location: LABCELL_X5_Y20_N3
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( delay_counter_ms(1) ) + ( VCC ) + ( \Add4~6\ ))
-- \Add4~2\ = CARRY(( delay_counter_ms(1) ) + ( VCC ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(1),
	cin => \Add4~6\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X5_Y20_N5
\delay_counter_ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[241]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(1));

-- Location: LABCELL_X5_Y20_N6
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( delay_counter_ms(2) ) + ( VCC ) + ( \Add4~2\ ))
-- \Add4~54\ = CARRY(( delay_counter_ms(2) ) + ( VCC ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(2),
	cin => \Add4~2\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X5_Y20_N8
\delay_counter_ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~53_sumout\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[242]~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(2));

-- Location: LABCELL_X5_Y20_N9
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( delay_counter_ms(3) ) + ( VCC ) + ( \Add4~54\ ))
-- \Add4~50\ = CARRY(( delay_counter_ms(3) ) + ( VCC ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(3),
	cin => \Add4~54\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X5_Y20_N11
\delay_counter_ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~49_sumout\,
	asdata => \Add3~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(3));

-- Location: LABCELL_X5_Y20_N12
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( delay_counter_ms(4) ) + ( VCC ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( delay_counter_ms(4) ) + ( VCC ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(4),
	cin => \Add4~50\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X5_Y20_N14
\delay_counter_ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~45_sumout\,
	asdata => \Add3~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(4));

-- Location: LABCELL_X5_Y20_N15
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( delay_counter_ms(5) ) + ( VCC ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( delay_counter_ms(5) ) + ( VCC ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(5),
	cin => \Add4~46\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X5_Y20_N16
\delay_counter_ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~41_sumout\,
	asdata => \Add3~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(5));

-- Location: LABCELL_X5_Y20_N18
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( delay_counter_ms(6) ) + ( VCC ) + ( \Add4~42\ ))
-- \Add4~38\ = CARRY(( delay_counter_ms(6) ) + ( VCC ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(6),
	cin => \Add4~42\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X5_Y20_N19
\delay_counter_ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~37_sumout\,
	asdata => \Add3~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(6));

-- Location: LABCELL_X5_Y20_N21
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( delay_counter_ms(7) ) + ( VCC ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( delay_counter_ms(7) ) + ( VCC ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(7),
	cin => \Add4~38\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X5_Y20_N23
\delay_counter_ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	asdata => \Add3~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(7));

-- Location: LABCELL_X5_Y20_N24
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( delay_counter_ms(8) ) + ( VCC ) + ( \Add4~34\ ))
-- \Add4~30\ = CARRY(( delay_counter_ms(8) ) + ( VCC ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(8),
	cin => \Add4~34\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X6_Y20_N54
\Mod0|auto_generated|divider|divider|StageOut[248]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~41_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~41_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[231]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[231]~26_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~41_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\);

-- Location: LABCELL_X6_Y20_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\ ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~22\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[248]~27_combout\ ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[248]~27_combout\,
	cin => \Add3~26\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X5_Y20_N26
\delay_counter_ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	asdata => \Add3~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(8));

-- Location: LABCELL_X5_Y20_N27
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( delay_counter_ms(9) ) + ( VCC ) + ( \Add4~30\ ))
-- \Add4~26\ = CARRY(( delay_counter_ms(9) ) + ( VCC ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(9),
	cin => \Add4~30\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X6_Y20_N57
\Mod0|auto_generated|divider|divider|StageOut[249]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[215]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[215]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\);

-- Location: LABCELL_X6_Y20_N18
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\ ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~18\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[249]~23_combout\ ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[249]~23_combout\,
	cin => \Add3~22\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X5_Y20_N29
\delay_counter_ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	asdata => \Add3~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(9));

-- Location: LABCELL_X5_Y20_N30
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( delay_counter_ms(10) ) + ( VCC ) + ( \Add4~26\ ))
-- \Add4~22\ = CARRY(( delay_counter_ms(10) ) + ( VCC ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(10),
	cin => \Add4~26\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X6_Y20_N48
\Mod0|auto_generated|divider|divider|StageOut[250]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[233]~18_combout\ & \Mod0|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[233]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\);

-- Location: LABCELL_X6_Y20_N21
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\ ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~14\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[250]~19_combout\ ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[250]~19_combout\,
	cin => \Add3~18\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X5_Y20_N32
\delay_counter_ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	asdata => \Add3~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(10));

-- Location: LABCELL_X5_Y20_N33
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( delay_counter_ms(11) ) + ( VCC ) + ( \Add4~22\ ))
-- \Add4~18\ = CARRY(( delay_counter_ms(11) ) + ( VCC ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(11),
	cin => \Add4~22\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X6_Y20_N42
\Mod0|auto_generated|divider|divider|StageOut[251]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[217]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[217]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\);

-- Location: LABCELL_X6_Y20_N24
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\ ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~10\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[251]~15_combout\ ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[251]~15_combout\,
	cin => \Add3~14\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X5_Y20_N35
\delay_counter_ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	asdata => \Add3~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(11));

-- Location: LABCELL_X5_Y20_N36
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( delay_counter_ms(12) ) + ( VCC ) + ( \Add4~18\ ))
-- \Add4~14\ = CARRY(( delay_counter_ms(12) ) + ( VCC ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(12),
	cin => \Add4~18\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: LABCELL_X6_Y20_N39
\Mod0|auto_generated|divider|divider|StageOut[252]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~25_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~25_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[235]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[235]~10_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\);

-- Location: LABCELL_X6_Y20_N27
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\ ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~6\ = CARRY(( \Mod0|auto_generated|divider|divider|StageOut[252]~11_combout\ ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[252]~11_combout\,
	cin => \Add3~10\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X5_Y20_N38
\delay_counter_ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	asdata => \Add3~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(12));

-- Location: LABCELL_X5_Y20_N39
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( delay_counter_ms(13) ) + ( VCC ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(13),
	cin => \Add4~14\,
	sumout => \Add4~9_sumout\);

-- Location: LABCELL_X7_Y20_N57
\Mod0|auto_generated|divider|divider|StageOut[253]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[253]~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_7~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[219]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[219]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[253]~7_combout\);

-- Location: LABCELL_X6_Y20_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \Mod0|auto_generated|divider|divider|StageOut[253]~7_combout\ ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[253]~7_combout\,
	cin => \Add3~6\,
	sumout => \Add3~1_sumout\);

-- Location: FF_X5_Y20_N41
\delay_counter_ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	asdata => \Add3~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.WAIT_DELAY~q\,
	ena => \delay_counter_ms[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter_ms(13));

-- Location: LABCELL_X5_Y20_N54
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !delay_counter_ms(12) & ( !delay_counter_ms(11) & ( (!delay_counter_ms(8) & (!delay_counter_ms(10) & (!delay_counter_ms(9) & !delay_counter_ms(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(8),
	datab => ALT_INV_delay_counter_ms(10),
	datac => ALT_INV_delay_counter_ms(9),
	datad => ALT_INV_delay_counter_ms(13),
	datae => ALT_INV_delay_counter_ms(12),
	dataf => ALT_INV_delay_counter_ms(11),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X2_Y21_N42
\current_state.MEASURE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE~0_combout\ = ( \current_state.MEASURE~q\ & ( (!\btn_response_deb~q\ & (!\current_state.GEN_DELAY~q\ & ((!\Selector67~2_combout\) # (!\Selector67~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datab => \ALT_INV_Selector67~2_combout\,
	datac => \ALT_INV_current_state.GEN_DELAY~q\,
	datad => \ALT_INV_Selector67~3_combout\,
	dataf => \ALT_INV_current_state.MEASURE~q\,
	combout => \current_state.MEASURE~0_combout\);

-- Location: LABCELL_X2_Y21_N12
\current_state.MEASURE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE~1_combout\ = ( \Equal3~2_combout\ & ( \false_start_p1~q\ & ( (\current_state.MEASURE~0_combout\ & !\current_state.WAIT_DELAY~q\) ) ) ) # ( !\Equal3~2_combout\ & ( \false_start_p1~q\ & ( (\current_state.MEASURE~0_combout\ & 
-- !\current_state.WAIT_DELAY~q\) ) ) ) # ( \Equal3~2_combout\ & ( !\false_start_p1~q\ & ( ((\Equal3~1_combout\ & (\current_state.WAIT_DELAY~q\ & \Equal3~0_combout\))) # (\current_state.MEASURE~0_combout\) ) ) ) # ( !\Equal3~2_combout\ & ( 
-- !\false_start_p1~q\ & ( \current_state.MEASURE~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~1_combout\,
	datab => \ALT_INV_current_state.MEASURE~0_combout\,
	datac => \ALT_INV_current_state.WAIT_DELAY~q\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_Equal3~2_combout\,
	dataf => \ALT_INV_false_start_p1~q\,
	combout => \current_state.MEASURE~1_combout\);

-- Location: FF_X2_Y21_N13
\current_state.MEASURE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.MEASURE~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MEASURE~DUPLICATE_q\);

-- Location: FF_X4_Y20_N52
led_ind_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.MEASURE~DUPLICATE_q\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_ind_s~q\);

-- Location: LABCELL_X1_Y23_N0
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \display_mux_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add7~26\ = CARRY(( \display_mux_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_mux_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X1_Y23_N2
\display_mux_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y23_N3
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( display_mux_counter(1) ) + ( GND ) + ( \Add7~26\ ))
-- \Add7~2\ = CARRY(( display_mux_counter(1) ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(1),
	cin => \Add7~26\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X1_Y23_N5
\display_mux_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(1));

-- Location: LABCELL_X1_Y23_N6
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( display_mux_counter(2) ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~30\ = CARRY(( display_mux_counter(2) ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_mux_counter(2),
	cin => \Add7~2\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X1_Y23_N8
\display_mux_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~29_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(2));

-- Location: LABCELL_X1_Y23_N9
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \display_mux_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \display_mux_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_mux_counter[3]~DUPLICATE_q\,
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: FF_X1_Y23_N11
\display_mux_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y23_N12
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( display_mux_counter(4) ) + ( GND ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( display_mux_counter(4) ) + ( GND ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_mux_counter(4),
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: FF_X1_Y23_N13
\display_mux_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~37_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(4));

-- Location: LABCELL_X1_Y23_N15
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \display_mux_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~38\ ))
-- \Add7~42\ = CARRY(( \display_mux_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_mux_counter[5]~DUPLICATE_q\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: FF_X1_Y23_N17
\display_mux_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y23_N18
\Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( display_mux_counter(6) ) + ( GND ) + ( \Add7~42\ ))
-- \Add7~46\ = CARRY(( display_mux_counter(6) ) + ( GND ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(6),
	cin => \Add7~42\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: FF_X1_Y23_N20
\display_mux_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~45_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(6));

-- Location: FF_X1_Y23_N16
\display_mux_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~41_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(5));

-- Location: FF_X1_Y23_N10
\display_mux_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(3));

-- Location: LABCELL_X1_Y23_N54
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( display_mux_counter(2) & ( (!display_mux_counter(6) & (!display_mux_counter(4) & (display_mux_counter(5) & !display_mux_counter(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(6),
	datab => ALT_INV_display_mux_counter(4),
	datac => ALT_INV_display_mux_counter(5),
	datad => ALT_INV_display_mux_counter(3),
	dataf => ALT_INV_display_mux_counter(2),
	combout => \Equal6~1_combout\);

-- Location: FF_X1_Y23_N32
\display_mux_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y23_N21
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( display_mux_counter(7) ) + ( GND ) + ( \Add7~46\ ))
-- \Add7~6\ = CARRY(( display_mux_counter(7) ) + ( GND ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(7),
	cin => \Add7~46\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X1_Y23_N23
\display_mux_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(7));

-- Location: LABCELL_X1_Y23_N24
\Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( display_mux_counter(8) ) + ( GND ) + ( \Add7~6\ ))
-- \Add7~50\ = CARRY(( display_mux_counter(8) ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(8),
	cin => \Add7~6\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: FF_X1_Y23_N26
\display_mux_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~49_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(8));

-- Location: LABCELL_X1_Y23_N27
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( display_mux_counter(9) ) + ( GND ) + ( \Add7~50\ ))
-- \Add7~22\ = CARRY(( display_mux_counter(9) ) + ( GND ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(9),
	cin => \Add7~50\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X1_Y23_N28
\display_mux_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~21_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(9));

-- Location: LABCELL_X1_Y23_N30
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \display_mux_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~22\ ))
-- \Add7~18\ = CARRY(( \display_mux_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display_mux_counter[10]~DUPLICATE_q\,
	cin => \Add7~22\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X1_Y23_N31
\display_mux_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(10));

-- Location: FF_X1_Y23_N35
\display_mux_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(11));

-- Location: LABCELL_X1_Y23_N33
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( display_mux_counter(11) ) + ( GND ) + ( \Add7~18\ ))
-- \Add7~14\ = CARRY(( display_mux_counter(11) ) + ( GND ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(11),
	cin => \Add7~18\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X1_Y23_N34
\display_mux_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y23_N36
\Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( display_mux_counter(12) ) + ( GND ) + ( \Add7~14\ ))
-- \Add7~58\ = CARRY(( display_mux_counter(12) ) + ( GND ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(12),
	cin => \Add7~14\,
	sumout => \Add7~57_sumout\,
	cout => \Add7~58\);

-- Location: FF_X1_Y23_N38
\display_mux_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~57_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(12));

-- Location: LABCELL_X1_Y23_N39
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( display_mux_counter(13) ) + ( GND ) + ( \Add7~58\ ))
-- \Add7~10\ = CARRY(( display_mux_counter(13) ) + ( GND ) + ( \Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(13),
	cin => \Add7~58\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X1_Y23_N40
\display_mux_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(13));

-- Location: FF_X1_Y23_N1
\display_mux_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(0));

-- Location: LABCELL_X2_Y23_N48
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !display_mux_counter(9) & ( display_mux_counter(0) & ( (!display_mux_counter(10) & (!\display_mux_counter[11]~DUPLICATE_q\ & display_mux_counter(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(10),
	datab => \ALT_INV_display_mux_counter[11]~DUPLICATE_q\,
	datac => ALT_INV_display_mux_counter(13),
	datae => ALT_INV_display_mux_counter(9),
	dataf => ALT_INV_display_mux_counter(0),
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X1_Y23_N42
\Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( display_mux_counter(14) ) + ( GND ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_mux_counter(14),
	cin => \Add7~10\,
	sumout => \Add7~53_sumout\);

-- Location: FF_X1_Y23_N43
\display_mux_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~53_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(14));

-- Location: LABCELL_X1_Y23_N57
\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( display_mux_counter(8) & ( (display_mux_counter(14) & !display_mux_counter(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(14),
	datad => ALT_INV_display_mux_counter(12),
	dataf => ALT_INV_display_mux_counter(8),
	combout => \Equal6~2_combout\);

-- Location: LABCELL_X1_Y23_N51
\Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = ( display_mux_counter(1) & ( (\Equal6~1_combout\ & (\Equal6~0_combout\ & (\Equal6~2_combout\ & display_mux_counter(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~1_combout\,
	datab => \ALT_INV_Equal6~0_combout\,
	datac => \ALT_INV_Equal6~2_combout\,
	datad => ALT_INV_display_mux_counter(7),
	datae => ALT_INV_display_mux_counter(1),
	combout => \Equal6~3_combout\);

-- Location: FF_X1_Y23_N50
display_mux_tick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal6~3_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_tick~q\);

-- Location: FF_X1_Y22_N37
\current_digit_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[1]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_digit_select(1));

-- Location: FF_X1_Y22_N56
\current_digit_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[0]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_digit_select(0));

-- Location: LABCELL_X1_Y22_N54
\current_digit_select[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_digit_select[0]~1_combout\ = !current_digit_select(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_digit_select(0),
	combout => \current_digit_select[0]~1_combout\);

-- Location: FF_X1_Y22_N55
\current_digit_select[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[0]~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_digit_select[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y22_N36
\current_digit_select[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_digit_select[1]~0_combout\ = ( current_digit_select(1) & ( \current_digit_select[0]~DUPLICATE_q\ & ( !\display_mux_tick~q\ ) ) ) # ( !current_digit_select(1) & ( \current_digit_select[0]~DUPLICATE_q\ & ( \display_mux_tick~q\ ) ) ) # ( 
-- current_digit_select(1) & ( !\current_digit_select[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_mux_tick~q\,
	datae => ALT_INV_current_digit_select(1),
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \current_digit_select[1]~0_combout\);

-- Location: FF_X1_Y22_N38
\current_digit_select[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[1]~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_digit_select[1]~DUPLICATE_q\);

-- Location: FF_X4_Y22_N25
\timer_ms[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ms[9]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N9
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \timer_ms[9]~DUPLICATE_q\ ) # ( !\timer_ms[9]~DUPLICATE_q\ & ( !\current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => \ALT_INV_timer_ms[9]~DUPLICATE_q\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X2_Y22_N24
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( !\current_state.WAIT_DELAY~q\ & ( !\current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => \ALT_INV_current_state.WAIT_DELAY~q\,
	combout => \WideOr2~0_combout\);

-- Location: LABCELL_X2_Y22_N6
\reaction_time_p1[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reaction_time_p1[4]~0_combout\ = ( \current_state.IDLE~DUPLICATE_q\ & ( (\btn_response_deb~q\ & !\WideOr2~0_combout\) ) ) # ( !\current_state.IDLE~DUPLICATE_q\ & ( (\WideOr2~0_combout\) # (\btn_response_deb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_btn_response_deb~q\,
	datac => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	combout => \reaction_time_p1[4]~0_combout\);

-- Location: FF_X2_Y22_N10
\reaction_time_p1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector16~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(9));

-- Location: LABCELL_X2_Y22_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( reaction_time_p1(9) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(9),
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X2_Y22_N3
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( !\current_state.WAIT_DELAY~q\ & ( (!\current_state.MEASURE~DUPLICATE_q\ & !\current_state.GEN_DELAY~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datac => \ALT_INV_current_state.GEN_DELAY~q\,
	dataf => \ALT_INV_current_state.WAIT_DELAY~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X2_Y22_N59
\display_digit_values[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(9));

-- Location: MLABCELL_X4_Y22_N54
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( timer_ms(5) ) # ( !timer_ms(5) & ( !\current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => ALT_INV_timer_ms(5),
	combout => \Selector20~0_combout\);

-- Location: FF_X2_Y22_N25
\reaction_time_p1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector20~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	sload => VCC,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(5));

-- Location: LABCELL_X2_Y22_N54
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( reaction_time_p1(5) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(5),
	combout => \Selector10~0_combout\);

-- Location: FF_X2_Y22_N56
\display_digit_values[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(5));

-- Location: LABCELL_X2_Y22_N27
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\current_state.MEASURE~DUPLICATE_q\) # (timer_ms(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datad => ALT_INV_timer_ms(1),
	combout => \Selector24~0_combout\);

-- Location: FF_X2_Y22_N28
\reaction_time_p1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector24~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(1));

-- Location: LABCELL_X2_Y22_N12
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( reaction_time_p1(1) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(1),
	combout => \Selector14~0_combout\);

-- Location: FF_X2_Y22_N14
\display_digit_values[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(1));

-- Location: LABCELL_X1_Y22_N51
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( display_digit_values(1) & ( (!\current_digit_select[1]~DUPLICATE_q\ & (\current_digit_select[0]~DUPLICATE_q\ & (display_digit_values(9)))) # (\current_digit_select[1]~DUPLICATE_q\ & (((display_digit_values(5))) # 
-- (\current_digit_select[0]~DUPLICATE_q\))) ) ) # ( !display_digit_values(1) & ( (!\current_digit_select[1]~DUPLICATE_q\ & (\current_digit_select[0]~DUPLICATE_q\ & (display_digit_values(9)))) # (\current_digit_select[1]~DUPLICATE_q\ & 
-- (!\current_digit_select[0]~DUPLICATE_q\ & ((display_digit_values(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	datab => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	datac => ALT_INV_display_digit_values(9),
	datad => ALT_INV_display_digit_values(5),
	dataf => ALT_INV_display_digit_values(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X2_Y22_N39
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( timer_ms(7) ) # ( !timer_ms(7) & ( !\current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => ALT_INV_timer_ms(7),
	combout => \Selector18~0_combout\);

-- Location: FF_X2_Y22_N40
\reaction_time_p1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector18~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(7));

-- Location: LABCELL_X2_Y22_N33
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( reaction_time_p1(7) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(7),
	combout => \Selector8~0_combout\);

-- Location: FF_X2_Y22_N34
\display_digit_values[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(7));

-- Location: MLABCELL_X4_Y22_N33
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( timer_ms(3) & ( \current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => ALT_INV_timer_ms(3),
	combout => \Selector22~0_combout\);

-- Location: FF_X4_Y22_N34
\reaction_time_p1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(3));

-- Location: LABCELL_X2_Y22_N30
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( reaction_time_p1(3) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(3),
	combout => \Selector12~0_combout\);

-- Location: FF_X2_Y22_N31
\display_digit_values[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(3));

-- Location: LABCELL_X1_Y22_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( display_digit_values(3) & ( \current_digit_select[0]~DUPLICATE_q\ & ( \current_digit_select[1]~DUPLICATE_q\ ) ) ) # ( display_digit_values(3) & ( !\current_digit_select[0]~DUPLICATE_q\ & ( (\current_digit_select[1]~DUPLICATE_q\ & 
-- display_digit_values(7)) ) ) ) # ( !display_digit_values(3) & ( !\current_digit_select[0]~DUPLICATE_q\ & ( (\current_digit_select[1]~DUPLICATE_q\ & display_digit_values(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	datac => ALT_INV_display_digit_values(7),
	datae => ALT_INV_display_digit_values(3),
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X4_Y22_N57
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\current_state.MEASURE~DUPLICATE_q\) # (timer_ms(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datac => ALT_INV_timer_ms(0),
	combout => \Selector25~0_combout\);

-- Location: FF_X4_Y22_N58
\reaction_time_p1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector25~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(0));

-- Location: LABCELL_X2_Y22_N51
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.IDLE~DUPLICATE_q\ & (!\current_state.INTERVAL~q\ & reaction_time_p1(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	datad => ALT_INV_reaction_time_p1(0),
	combout => \Selector15~0_combout\);

-- Location: FF_X2_Y22_N53
\display_digit_values[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(0));

-- Location: FF_X4_Y22_N22
\timer_ms[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \timer_ms[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ms[8]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N36
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\current_state.MEASURE~DUPLICATE_q\) # (\timer_ms[8]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datac => \ALT_INV_timer_ms[8]~DUPLICATE_q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X2_Y22_N37
\reaction_time_p1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(8));

-- Location: LABCELL_X2_Y22_N42
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( reaction_time_p1(8) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(8),
	combout => \Selector7~0_combout\);

-- Location: FF_X2_Y22_N44
\display_digit_values[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(8));

-- Location: LABCELL_X2_Y22_N21
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( timer_ms(4) & ( \current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => ALT_INV_timer_ms(4),
	combout => \Selector21~0_combout\);

-- Location: FF_X2_Y22_N22
\reaction_time_p1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector21~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(4));

-- Location: LABCELL_X2_Y22_N48
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( reaction_time_p1(4) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(4),
	combout => \Selector11~0_combout\);

-- Location: FF_X2_Y22_N50
\display_digit_values[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(4));

-- Location: LABCELL_X2_Y22_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \current_state.SHOW_TIME~q\ ) # ( !\current_state.SHOW_TIME~q\ & ( (display_digit_values(12) & (((\current_state.WAIT_DELAY~q\) # (\current_state.GEN_DELAY~q\)) # (\current_state.MEASURE~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.GEN_DELAY~q\,
	datac => ALT_INV_display_digit_values(12),
	datad => \ALT_INV_current_state.WAIT_DELAY~q\,
	dataf => \ALT_INV_current_state.SHOW_TIME~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y22_N46
\display_digit_values[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector3~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(12));

-- Location: LABCELL_X1_Y22_N45
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( display_digit_values(12) & ( \current_digit_select[0]~DUPLICATE_q\ & ( (!\current_digit_select[1]~DUPLICATE_q\ & ((display_digit_values(8)))) # (\current_digit_select[1]~DUPLICATE_q\ & (display_digit_values(0))) ) ) ) # ( 
-- !display_digit_values(12) & ( \current_digit_select[0]~DUPLICATE_q\ & ( (!\current_digit_select[1]~DUPLICATE_q\ & ((display_digit_values(8)))) # (\current_digit_select[1]~DUPLICATE_q\ & (display_digit_values(0))) ) ) ) # ( display_digit_values(12) & ( 
-- !\current_digit_select[0]~DUPLICATE_q\ & ( (!\current_digit_select[1]~DUPLICATE_q\) # (display_digit_values(4)) ) ) ) # ( !display_digit_values(12) & ( !\current_digit_select[0]~DUPLICATE_q\ & ( (display_digit_values(4) & 
-- \current_digit_select[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_digit_values(0),
	datab => ALT_INV_display_digit_values(8),
	datac => ALT_INV_display_digit_values(4),
	datad => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	datae => ALT_INV_display_digit_values(12),
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X2_Y22_N0
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\current_state.MEASURE~DUPLICATE_q\) # (timer_ms(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	datac => ALT_INV_timer_ms(6),
	combout => \Selector19~0_combout\);

-- Location: FF_X2_Y22_N1
\reaction_time_p1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector19~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(6));

-- Location: LABCELL_X2_Y22_N45
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( reaction_time_p1(6) & ( (\current_state.IDLE~DUPLICATE_q\ & !\current_state.INTERVAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => ALT_INV_reaction_time_p1(6),
	combout => \Selector9~0_combout\);

-- Location: FF_X2_Y22_N47
\display_digit_values[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(6));

-- Location: MLABCELL_X4_Y22_N48
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \timer_ms[2]~DUPLICATE_q\ ) # ( !\timer_ms[2]~DUPLICATE_q\ & ( !\current_state.MEASURE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.MEASURE~DUPLICATE_q\,
	dataf => \ALT_INV_timer_ms[2]~DUPLICATE_q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X4_Y22_N49
\reaction_time_p1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector23~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	sclr => \WideOr2~0_combout\,
	ena => \reaction_time_p1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reaction_time_p1(2));

-- Location: LABCELL_X2_Y22_N15
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\current_state.IDLE~DUPLICATE_q\ & (!\current_state.INTERVAL~q\ & reaction_time_p1(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~DUPLICATE_q\,
	datab => \ALT_INV_current_state.INTERVAL~q\,
	datad => ALT_INV_reaction_time_p1(2),
	combout => \Selector13~0_combout\);

-- Location: FF_X2_Y22_N17
\display_digit_values[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_digit_values(2));

-- Location: LABCELL_X1_Y22_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( current_digit_select(1) & ( (!\current_digit_select[0]~DUPLICATE_q\ & (display_digit_values(6))) # (\current_digit_select[0]~DUPLICATE_q\ & ((display_digit_values(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_digit_values(6),
	datac => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	datad => ALT_INV_display_digit_values(2),
	dataf => ALT_INV_current_digit_select(1),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X1_Y22_N3
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Mux5~0_combout\ & ( (!\Mux7~0_combout\ & (\Mux6~0_combout\)) # (\Mux7~0_combout\ & ((!\Mux4~0_combout\))) ) ) # ( !\Mux5~0_combout\ & ( (!\Mux6~0_combout\ & ((!\Mux7~0_combout\) # (\Mux4~0_combout\))) # (\Mux6~0_combout\ & 
-- (!\Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001011010111110100101101001010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: FF_X1_Y22_N5
\seg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(0));

-- Location: LABCELL_X1_Y22_N18
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux5~0_combout\ & !\Mux6~0_combout\) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux5~0_combout\) # (!\Mux6~0_combout\ $ (\Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001111111111001100111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X1_Y22_N19
\seg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(1));

-- Location: LABCELL_X1_Y22_N0
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux5~0_combout\ & !\Mux6~0_combout\) ) ) # ( !\Mux4~0_combout\ & ( ((!\Mux6~0_combout\) # (\Mux7~0_combout\)) # (\Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X1_Y22_N1
\seg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(2));

-- Location: LABCELL_X1_Y22_N21
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux5~0_combout\ & (!\Mux4~0_combout\)) # (\Mux5~0_combout\ & ((!\Mux7~0_combout\))) ) ) # ( !\Mux6~0_combout\ & ( !\Mux5~0_combout\ $ (((!\Mux4~0_combout\ & \Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000111100110011000011110011110011110000001111001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X1_Y22_N22
\seg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(3));

-- Location: LABCELL_X1_Y22_N24
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux7~0_combout\ & (!\Mux5~0_combout\ $ (\Mux6~0_combout\))) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux7~0_combout\ & ((!\Mux5~0_combout\) # (\Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X1_Y22_N26
\seg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(4));

-- Location: LABCELL_X1_Y22_N27
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux6~0_combout\ & (!\Mux5~0_combout\)) # (\Mux6~0_combout\ & (\Mux5~0_combout\ & !\Mux7~0_combout\)) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux6~0_combout\ & ((!\Mux7~0_combout\) # (\Mux5~0_combout\))) # 
-- (\Mux6~0_combout\ & (\Mux5~0_combout\ & !\Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001010101011110000101010100101101000001010010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X1_Y22_N28
\seg_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(5));

-- Location: LABCELL_X1_Y22_N6
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux5~0_combout\ & (!\Mux6~0_combout\)) # (\Mux5~0_combout\ & (\Mux6~0_combout\ & !\Mux7~0_combout\)) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux5~0_combout\ & (\Mux6~0_combout\)) # (\Mux5~0_combout\ & 
-- ((!\Mux6~0_combout\) # (!\Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011000011110000001100001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X1_Y22_N8
\seg_internal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(6));

-- Location: LABCELL_X1_Y22_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( current_digit_select(1) & ( current_digit_select(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_digit_select(0),
	dataf => ALT_INV_current_digit_select(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X1_Y22_N49
\an_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(0));

-- Location: LABCELL_X1_Y22_N57
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( current_digit_select(1) & ( !current_digit_select(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_digit_select(0),
	dataf => ALT_INV_current_digit_select(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X1_Y22_N59
\an_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(1));

-- Location: LABCELL_X1_Y22_N12
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \current_digit_select[0]~DUPLICATE_q\ & ( !\current_digit_select[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X1_Y22_N14
\an_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(2));

-- Location: LABCELL_X1_Y22_N15
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !\current_digit_select[0]~DUPLICATE_q\ & ( !\current_digit_select[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux1~1_combout\);

-- Location: FF_X1_Y22_N16
\an_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~1_combout\,
	clrn => \rst_n~inputCLKENA0_outclk\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(3));

-- Location: MLABCELL_X9_Y43_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


