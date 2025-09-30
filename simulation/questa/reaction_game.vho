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

-- DATE "09/30/2025 18:30:58"

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
-- led_ind	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_response	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_start	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \btn_start~input_o\ : std_logic;
SIGNAL \btn_start_sync[0]~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \btn_start_prev~feeder_combout\ : std_logic;
SIGNAL \btn_start_prev~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_start[2]~1_combout\ : std_logic;
SIGNAL \debounce_count_start[2]~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_start[3]~0_combout\ : std_logic;
SIGNAL \debounce_count_start[3]~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_start[0]~3_combout\ : std_logic;
SIGNAL \debounce_count_start[1]~2_combout\ : std_logic;
SIGNAL \btn_start_deb~q\ : std_logic;
SIGNAL \btn_start_prev~q\ : std_logic;
SIGNAL \btn_start_deb~0_combout\ : std_logic;
SIGNAL \btn_start_deb~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \ms_tick_s~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \debounce_count_response[3]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_response~input_o\ : std_logic;
SIGNAL \debounce_count_response[1]~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_response[2]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_response_prev~DUPLICATE_q\ : std_logic;
SIGNAL \debounce_count_response[0]~3_combout\ : std_logic;
SIGNAL \btn_response_prev~q\ : std_logic;
SIGNAL \debounce_count_response[2]~1_combout\ : std_logic;
SIGNAL \debounce_count_response[1]~2_combout\ : std_logic;
SIGNAL \debounce_count_response[3]~0_combout\ : std_logic;
SIGNAL \btn_response_deb~0_combout\ : std_logic;
SIGNAL \btn_response_deb~q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \current_state.GEN_DELAY_P2~q\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \current_state.WAIT_P2~q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \delay_counter_ms[0]~0_combout\ : std_logic;
SIGNAL \Add3~54_cout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~1_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~3_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~0_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~2_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~4_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P2~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector64~6_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector64~7_combout\ : std_logic;
SIGNAL \current_state.SHOW_P1~q\ : std_logic;
SIGNAL \current_state.INTERVAL~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \show_interval_counter_ms[0]~0_combout\ : std_logic;
SIGNAL \Add5~50_cout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \current_state.SHOW_P2~q\ : std_logic;
SIGNAL \current_state.RESULT~q\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \current_state.GEN_DELAY_P1~q\ : std_logic;
SIGNAL \Selector62~9_combout\ : std_logic;
SIGNAL \current_state.WAIT_P1~q\ : std_logic;
SIGNAL \Selector63~3_combout\ : std_logic;
SIGNAL \Selector63~4_combout\ : std_logic;
SIGNAL \current_state.MEASURE_P1~q\ : std_logic;
SIGNAL \led_ind_s~0_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \display_digit_values~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \display_mux_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \display_mux_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \display_mux_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \display_mux_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \display_mux_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \display_mux_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \display_mux_tick~q\ : std_logic;
SIGNAL \current_digit_select[0]~1_combout\ : std_logic;
SIGNAL \current_digit_select[1]~0_combout\ : std_logic;
SIGNAL \current_digit_select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \current_digit_select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
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
SIGNAL btn_response_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL ms_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL an_internal : std_logic_vector(3 DOWNTO 0);
SIGNAL display_mux_counter : std_logic_vector(14 DOWNTO 0);
SIGNAL debounce_count_response : std_logic_vector(3 DOWNTO 0);
SIGNAL seg_internal : std_logic_vector(6 DOWNTO 0);
SIGNAL current_digit_select : std_logic_vector(1 DOWNTO 0);
SIGNAL btn_start_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL debounce_count_start : std_logic_vector(3 DOWNTO 0);
SIGNAL delay_counter_ms : std_logic_vector(13 DOWNTO 0);
SIGNAL timer_ms : std_logic_vector(9 DOWNTO 0);
SIGNAL show_interval_counter_ms : std_logic_vector(12 DOWNTO 0);
SIGNAL display_digit_values : std_logic_vector(15 DOWNTO 0);
SIGNAL reaction_time_p2 : std_logic_vector(9 DOWNTO 0);
SIGNAL reaction_time_p1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_ms_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL ALT_INV_display_mux_counter : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P2~q\ : std_logic;
SIGNAL ALT_INV_seg_internal : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_an_internal : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_current_state.WAIT_P2~q\ : std_logic;
SIGNAL \ALT_INV_ms_tick_s~q\ : std_logic;
SIGNAL \ALT_INV_btn_response_deb~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.WAIT_P1~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P1~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P2~1_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SHOW_P2~q\ : std_logic;
SIGNAL \ALT_INV_Selector73~0_combout\ : std_logic;
SIGNAL \ALT_INV_display_mux_tick~q\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL ALT_INV_current_digit_select : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.RESULT~q\ : std_logic;
SIGNAL ALT_INV_btn_response_sync : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_debounce_count_response : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector73~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~11_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SHOW_P1~q\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P2~0_combout\ : std_logic;
SIGNAL \ALT_INV_btn_start_deb~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P2~2_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.GEN_DELAY_P2~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_btn_response_prev~q\ : std_logic;
SIGNAL \ALT_INV_Selector63~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.MEASURE_P2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_current_state.INTERVAL~q\ : std_logic;
SIGNAL \ALT_INV_delay_counter_ms[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.GEN_DELAY_P1~q\ : std_logic;
SIGNAL \ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector74~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector79~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector80~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector77~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector81~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector78~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector76~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector82~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector85~0_combout\ : std_logic;
SIGNAL \ALT_INV_show_interval_counter_ms[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_debounce_count_start : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL ALT_INV_btn_start_sync : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector83~0_combout\ : std_logic;
SIGNAL \ALT_INV_btn_start_prev~q\ : std_logic;
SIGNAL \ALT_INV_Selector84~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector80~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_display_digit_values~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL ALT_INV_delay_counter_ms : std_logic_vector(13 DOWNTO 1);
SIGNAL \ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL ALT_INV_timer_ms : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL ALT_INV_show_interval_counter_ms : std_logic_vector(12 DOWNTO 1);
SIGNAL \ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL ALT_INV_display_digit_values : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_Selector72~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_btn_response_prev~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_reaction_time_p2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_display_mux_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_btn_start_prev~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_reaction_time_p1 : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_display_mux_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_btn_start_deb~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_digit_select[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_start[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_response[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_digit_select[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_response[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_response[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_debounce_count_start[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_btn_start~input_o\ : std_logic;
SIGNAL \ALT_INV_display_mux_counter[2]~DUPLICATE_q\ : std_logic;

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
ALT_INV_ms_counter(0) <= NOT ms_counter(0);
ALT_INV_ms_counter(1) <= NOT ms_counter(1);
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
ALT_INV_ms_counter(10) <= NOT ms_counter(10);
ALT_INV_ms_counter(11) <= NOT ms_counter(11);
ALT_INV_ms_counter(12) <= NOT ms_counter(12);
ALT_INV_ms_counter(5) <= NOT ms_counter(5);
ALT_INV_ms_counter(7) <= NOT ms_counter(7);
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
ALT_INV_ms_counter(3) <= NOT ms_counter(3);
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
ALT_INV_ms_counter(9) <= NOT ms_counter(9);
ALT_INV_ms_counter(6) <= NOT ms_counter(6);
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
ALT_INV_ms_counter(2) <= NOT ms_counter(2);
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
ALT_INV_ms_counter(13) <= NOT ms_counter(13);
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
ALT_INV_ms_counter(15) <= NOT ms_counter(15);
ALT_INV_ms_counter(14) <= NOT ms_counter(14);
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
ALT_INV_ms_counter(4) <= NOT ms_counter(4);
ALT_INV_ms_counter(8) <= NOT ms_counter(8);
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
ALT_INV_display_mux_counter(5) <= NOT display_mux_counter(5);
ALT_INV_display_mux_counter(6) <= NOT display_mux_counter(6);
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
ALT_INV_display_mux_counter(2) <= NOT display_mux_counter(2);
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
ALT_INV_display_mux_counter(12) <= NOT display_mux_counter(12);
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
ALT_INV_display_mux_counter(13) <= NOT display_mux_counter(13);
ALT_INV_display_mux_counter(10) <= NOT display_mux_counter(10);
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
ALT_INV_display_mux_counter(1) <= NOT display_mux_counter(1);
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
ALT_INV_display_mux_counter(0) <= NOT display_mux_counter(0);
ALT_INV_display_mux_counter(3) <= NOT display_mux_counter(3);
ALT_INV_display_mux_counter(11) <= NOT display_mux_counter(11);
ALT_INV_display_mux_counter(9) <= NOT display_mux_counter(9);
ALT_INV_display_mux_counter(7) <= NOT display_mux_counter(7);
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
ALT_INV_display_mux_counter(4) <= NOT display_mux_counter(4);
ALT_INV_display_mux_counter(14) <= NOT display_mux_counter(14);
ALT_INV_display_mux_counter(8) <= NOT display_mux_counter(8);
\ALT_INV_current_state.MEASURE_P2~q\ <= NOT \current_state.MEASURE_P2~q\;
ALT_INV_seg_internal(0) <= NOT seg_internal(0);
ALT_INV_seg_internal(2) <= NOT seg_internal(2);
ALT_INV_seg_internal(3) <= NOT seg_internal(3);
ALT_INV_seg_internal(4) <= NOT seg_internal(4);
ALT_INV_seg_internal(5) <= NOT seg_internal(5);
ALT_INV_seg_internal(6) <= NOT seg_internal(6);
ALT_INV_an_internal(0) <= NOT an_internal(0);
ALT_INV_an_internal(1) <= NOT an_internal(1);
ALT_INV_an_internal(2) <= NOT an_internal(2);
ALT_INV_an_internal(3) <= NOT an_internal(3);
ALT_INV_seg_internal(1) <= NOT seg_internal(1);
\ALT_INV_current_state.WAIT_P2~q\ <= NOT \current_state.WAIT_P2~q\;
\ALT_INV_ms_tick_s~q\ <= NOT \ms_tick_s~q\;
\ALT_INV_btn_response_deb~q\ <= NOT \btn_response_deb~q\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_current_state.WAIT_P1~q\ <= NOT \current_state.WAIT_P1~q\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_current_state.MEASURE_P1~q\ <= NOT \current_state.MEASURE_P1~q\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_current_state.MEASURE_P2~1_combout\ <= NOT \current_state.MEASURE_P2~1_combout\;
\ALT_INV_current_state.SHOW_P2~q\ <= NOT \current_state.SHOW_P2~q\;
\ALT_INV_Selector73~0_combout\ <= NOT \Selector73~0_combout\;
\ALT_INV_display_mux_tick~q\ <= NOT \display_mux_tick~q\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
ALT_INV_current_digit_select(0) <= NOT current_digit_select(0);
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_current_state.RESULT~q\ <= NOT \current_state.RESULT~q\;
ALT_INV_btn_response_sync(1) <= NOT btn_response_sync(1);
ALT_INV_debounce_count_response(2) <= NOT debounce_count_response(2);
\ALT_INV_Selector73~1_combout\ <= NOT \Selector73~1_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_next_state~11_combout\ <= NOT \next_state~11_combout\;
\ALT_INV_current_state.SHOW_P1~q\ <= NOT \current_state.SHOW_P1~q\;
\ALT_INV_current_state.MEASURE_P2~0_combout\ <= NOT \current_state.MEASURE_P2~0_combout\;
\ALT_INV_btn_start_deb~q\ <= NOT \btn_start_deb~q\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_current_state.MEASURE_P2~2_combout\ <= NOT \current_state.MEASURE_P2~2_combout\;
\ALT_INV_current_state.GEN_DELAY_P2~q\ <= NOT \current_state.GEN_DELAY_P2~q\;
ALT_INV_current_digit_select(1) <= NOT current_digit_select(1);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_btn_response_prev~q\ <= NOT \btn_response_prev~q\;
\ALT_INV_Selector63~3_combout\ <= NOT \Selector63~3_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_debounce_count_response(3) <= NOT debounce_count_response(3);
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_current_state.MEASURE_P2~3_combout\ <= NOT \current_state.MEASURE_P2~3_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_current_state.IDLE~q\ <= NOT \current_state.IDLE~q\;
ALT_INV_debounce_count_response(1) <= NOT debounce_count_response(1);
\ALT_INV_current_state.INTERVAL~q\ <= NOT \current_state.INTERVAL~q\;
\ALT_INV_delay_counter_ms[0]~0_combout\ <= NOT \delay_counter_ms[0]~0_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_current_state.GEN_DELAY_P1~q\ <= NOT \current_state.GEN_DELAY_P1~q\;
\ALT_INV_Selector74~0_combout\ <= NOT \Selector74~0_combout\;
\ALT_INV_Selector74~1_combout\ <= NOT \Selector74~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_Selector79~0_combout\ <= NOT \Selector79~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector64~6_combout\ <= NOT \Selector64~6_combout\;
\ALT_INV_Selector80~1_combout\ <= NOT \Selector80~1_combout\;
\ALT_INV_Selector77~0_combout\ <= NOT \Selector77~0_combout\;
\ALT_INV_Selector81~0_combout\ <= NOT \Selector81~0_combout\;
\ALT_INV_Selector78~0_combout\ <= NOT \Selector78~0_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Selector76~0_combout\ <= NOT \Selector76~0_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Selector82~0_combout\ <= NOT \Selector82~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector85~0_combout\ <= NOT \Selector85~0_combout\;
\ALT_INV_show_interval_counter_ms[0]~0_combout\ <= NOT \show_interval_counter_ms[0]~0_combout\;
ALT_INV_debounce_count_start(2) <= NOT debounce_count_start(2);
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
ALT_INV_btn_start_sync(1) <= NOT btn_start_sync(1);
\ALT_INV_Selector75~0_combout\ <= NOT \Selector75~0_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
ALT_INV_debounce_count_response(0) <= NOT debounce_count_response(0);
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
ALT_INV_debounce_count_start(0) <= NOT debounce_count_start(0);
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
ALT_INV_debounce_count_start(1) <= NOT debounce_count_start(1);
\ALT_INV_Selector83~0_combout\ <= NOT \Selector83~0_combout\;
\ALT_INV_btn_start_prev~q\ <= NOT \btn_start_prev~q\;
\ALT_INV_Selector84~0_combout\ <= NOT \Selector84~0_combout\;
\ALT_INV_Selector40~0_combout\ <= NOT \Selector40~0_combout\;
\ALT_INV_Selector80~0_combout\ <= NOT \Selector80~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
ALT_INV_debounce_count_start(3) <= NOT debounce_count_start(3);
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_WideOr3~1_combout\ <= NOT \WideOr3~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_display_digit_values~0_combout\ <= NOT \display_digit_values~0_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
ALT_INV_delay_counter_ms(6) <= NOT delay_counter_ms(6);
\ALT_INV_Selector45~0_combout\ <= NOT \Selector45~0_combout\;
ALT_INV_delay_counter_ms(3) <= NOT delay_counter_ms(3);
ALT_INV_timer_ms(5) <= NOT timer_ms(5);
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
ALT_INV_timer_ms(2) <= NOT timer_ms(2);
ALT_INV_timer_ms(8) <= NOT timer_ms(8);
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
ALT_INV_delay_counter_ms(12) <= NOT delay_counter_ms(12);
ALT_INV_delay_counter_ms(4) <= NOT delay_counter_ms(4);
ALT_INV_delay_counter_ms(8) <= NOT delay_counter_ms(8);
ALT_INV_timer_ms(1) <= NOT timer_ms(1);
ALT_INV_show_interval_counter_ms(1) <= NOT show_interval_counter_ms(1);
ALT_INV_delay_counter_ms(11) <= NOT delay_counter_ms(11);
\ALT_INV_Selector43~0_combout\ <= NOT \Selector43~0_combout\;
ALT_INV_delay_counter_ms(9) <= NOT delay_counter_ms(9);
ALT_INV_show_interval_counter_ms(4) <= NOT show_interval_counter_ms(4);
ALT_INV_show_interval_counter_ms(7) <= NOT show_interval_counter_ms(7);
ALT_INV_timer_ms(4) <= NOT timer_ms(4);
ALT_INV_show_interval_counter_ms(8) <= NOT show_interval_counter_ms(8);
ALT_INV_show_interval_counter_ms(9) <= NOT show_interval_counter_ms(9);
ALT_INV_show_interval_counter_ms(11) <= NOT show_interval_counter_ms(11);
ALT_INV_show_interval_counter_ms(10) <= NOT show_interval_counter_ms(10);
\ALT_INV_Selector38~0_combout\ <= NOT \Selector38~0_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
ALT_INV_show_interval_counter_ms(3) <= NOT show_interval_counter_ms(3);
ALT_INV_timer_ms(6) <= NOT timer_ms(6);
ALT_INV_timer_ms(7) <= NOT timer_ms(7);
ALT_INV_show_interval_counter_ms(5) <= NOT show_interval_counter_ms(5);
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
ALT_INV_delay_counter_ms(7) <= NOT delay_counter_ms(7);
ALT_INV_show_interval_counter_ms(6) <= NOT show_interval_counter_ms(6);
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
ALT_INV_timer_ms(0) <= NOT timer_ms(0);
ALT_INV_timer_ms(3) <= NOT timer_ms(3);
ALT_INV_delay_counter_ms(13) <= NOT delay_counter_ms(13);
\ALT_INV_Selector41~0_combout\ <= NOT \Selector41~0_combout\;
\ALT_INV_Selector42~0_combout\ <= NOT \Selector42~0_combout\;
\ALT_INV_Selector39~0_combout\ <= NOT \Selector39~0_combout\;
ALT_INV_show_interval_counter_ms(12) <= NOT show_interval_counter_ms(12);
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector44~0_combout\ <= NOT \Selector44~0_combout\;
ALT_INV_show_interval_counter_ms(2) <= NOT show_interval_counter_ms(2);
\ALT_INV_Selector46~0_combout\ <= NOT \Selector46~0_combout\;
ALT_INV_timer_ms(9) <= NOT timer_ms(9);
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
ALT_INV_delay_counter_ms(2) <= NOT delay_counter_ms(2);
ALT_INV_display_digit_values(12) <= NOT display_digit_values(12);
ALT_INV_display_digit_values(8) <= NOT display_digit_values(8);
ALT_INV_display_digit_values(4) <= NOT display_digit_values(4);
ALT_INV_display_digit_values(0) <= NOT display_digit_values(0);
ALT_INV_delay_counter_ms(1) <= NOT delay_counter_ms(1);
ALT_INV_delay_counter_ms(10) <= NOT delay_counter_ms(10);
\ALT_INV_Selector72~0_combout\ <= NOT \Selector72~0_combout\;
ALT_INV_delay_counter_ms(5) <= NOT delay_counter_ms(5);
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_btn_response_prev~DUPLICATE_q\ <= NOT \btn_response_prev~DUPLICATE_q\;
ALT_INV_reaction_time_p2(7) <= NOT reaction_time_p2(7);
ALT_INV_reaction_time_p2(2) <= NOT reaction_time_p2(2);
\ALT_INV_display_mux_counter[9]~DUPLICATE_q\ <= NOT \display_mux_counter[9]~DUPLICATE_q\;
ALT_INV_reaction_time_p2(1) <= NOT reaction_time_p2(1);
\ALT_INV_display_mux_counter[3]~DUPLICATE_q\ <= NOT \display_mux_counter[3]~DUPLICATE_q\;
\ALT_INV_btn_start_prev~DUPLICATE_q\ <= NOT \btn_start_prev~DUPLICATE_q\;
ALT_INV_reaction_time_p2(6) <= NOT reaction_time_p2(6);
ALT_INV_reaction_time_p1(6) <= NOT reaction_time_p1(6);
\ALT_INV_display_mux_counter[0]~DUPLICATE_q\ <= NOT \display_mux_counter[0]~DUPLICATE_q\;
\ALT_INV_btn_start_deb~DUPLICATE_q\ <= NOT \btn_start_deb~DUPLICATE_q\;
\ALT_INV_current_digit_select[1]~DUPLICATE_q\ <= NOT \current_digit_select[1]~DUPLICATE_q\;
\ALT_INV_debounce_count_start[3]~DUPLICATE_q\ <= NOT \debounce_count_start[3]~DUPLICATE_q\;
ALT_INV_reaction_time_p1(7) <= NOT reaction_time_p1(7);
\ALT_INV_debounce_count_response[2]~DUPLICATE_q\ <= NOT \debounce_count_response[2]~DUPLICATE_q\;
ALT_INV_display_digit_values(13) <= NOT display_digit_values(13);
ALT_INV_display_digit_values(1) <= NOT display_digit_values(1);
ALT_INV_reaction_time_p2(9) <= NOT reaction_time_p2(9);
ALT_INV_reaction_time_p1(2) <= NOT reaction_time_p1(2);
ALT_INV_display_digit_values(2) <= NOT display_digit_values(2);
ALT_INV_reaction_time_p2(5) <= NOT reaction_time_p2(5);
ALT_INV_reaction_time_p1(9) <= NOT reaction_time_p1(9);
ALT_INV_reaction_time_p1(8) <= NOT reaction_time_p1(8);
\ALT_INV_display_mux_counter[4]~DUPLICATE_q\ <= NOT \display_mux_counter[4]~DUPLICATE_q\;
\ALT_INV_display_mux_counter[11]~DUPLICATE_q\ <= NOT \display_mux_counter[11]~DUPLICATE_q\;
\ALT_INV_current_digit_select[0]~DUPLICATE_q\ <= NOT \current_digit_select[0]~DUPLICATE_q\;
\ALT_INV_debounce_count_response[1]~DUPLICATE_q\ <= NOT \debounce_count_response[1]~DUPLICATE_q\;
ALT_INV_display_digit_values(7) <= NOT display_digit_values(7);
ALT_INV_reaction_time_p2(8) <= NOT reaction_time_p2(8);
\ALT_INV_debounce_count_response[3]~DUPLICATE_q\ <= NOT \debounce_count_response[3]~DUPLICATE_q\;
\ALT_INV_debounce_count_start[2]~DUPLICATE_q\ <= NOT \debounce_count_start[2]~DUPLICATE_q\;
ALT_INV_display_digit_values(9) <= NOT display_digit_values(9);
ALT_INV_display_digit_values(3) <= NOT display_digit_values(3);
ALT_INV_display_digit_values(6) <= NOT display_digit_values(6);
ALT_INV_reaction_time_p1(5) <= NOT reaction_time_p1(5);
ALT_INV_reaction_time_p1(4) <= NOT reaction_time_p1(4);
ALT_INV_reaction_time_p1(0) <= NOT reaction_time_p1(0);
ALT_INV_reaction_time_p1(3) <= NOT reaction_time_p1(3);
\ALT_INV_btn_start~input_o\ <= NOT \btn_start~input_o\;
ALT_INV_reaction_time_p1(1) <= NOT reaction_time_p1(1);
ALT_INV_reaction_time_p2(3) <= NOT reaction_time_p2(3);
ALT_INV_display_digit_values(5) <= NOT display_digit_values(5);
ALT_INV_reaction_time_p2(4) <= NOT reaction_time_p2(4);
ALT_INV_reaction_time_p2(0) <= NOT reaction_time_p2(0);
\ALT_INV_display_mux_counter[2]~DUPLICATE_q\ <= NOT \display_mux_counter[2]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y20_N22
\led_ind~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_ind_s~0_combout\,
	devoe => ww_devoe,
	o => ww_led_ind);

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOIBUF_X0_Y18_N61
\btn_start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_start,
	o => \btn_start~input_o\);

-- Location: LABCELL_X5_Y22_N3
\btn_start_sync[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_start_sync[0]~feeder_combout\ = ( \btn_start~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_btn_start~input_o\,
	combout => \btn_start_sync[0]~feeder_combout\);

-- Location: IOIBUF_X8_Y45_N75
\rst_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X5_Y22_N5
\btn_start_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_sync[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_start_sync(0));

-- Location: FF_X5_Y22_N14
\btn_start_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_start_sync(0),
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_start_sync(1));

-- Location: LABCELL_X5_Y22_N57
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

-- Location: FF_X5_Y22_N59
\btn_start_prev~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_prev~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_prev~DUPLICATE_q\);

-- Location: FF_X5_Y22_N25
\debounce_count_start[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[3]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(3));

-- Location: FF_X5_Y22_N32
\debounce_count_start[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[2]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(2));

-- Location: LABCELL_X5_Y22_N30
\debounce_count_start[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[2]~1_combout\ = ( debounce_count_start(2) & ( debounce_count_start(3) & ( !btn_start_sync(1) $ (\btn_start_prev~DUPLICATE_q\) ) ) ) # ( !debounce_count_start(2) & ( debounce_count_start(3) & ( (debounce_count_start(0) & 
-- (debounce_count_start(1) & (!btn_start_sync(1) $ (\btn_start_prev~DUPLICATE_q\)))) ) ) ) # ( debounce_count_start(2) & ( !debounce_count_start(3) & ( (!debounce_count_start(0) & (!btn_start_sync(1) $ (((\btn_start_prev~DUPLICATE_q\))))) # 
-- (debounce_count_start(0) & (!debounce_count_start(1) & (!btn_start_sync(1) $ (\btn_start_prev~DUPLICATE_q\)))) ) ) ) # ( !debounce_count_start(2) & ( !debounce_count_start(3) & ( (debounce_count_start(0) & (debounce_count_start(1) & (!btn_start_sync(1) $ 
-- (\btn_start_prev~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000001110010000011001000000100000000011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_start(0),
	datab => ALT_INV_btn_start_sync(1),
	datac => ALT_INV_debounce_count_start(1),
	datad => \ALT_INV_btn_start_prev~DUPLICATE_q\,
	datae => ALT_INV_debounce_count_start(2),
	dataf => ALT_INV_debounce_count_start(3),
	combout => \debounce_count_start[2]~1_combout\);

-- Location: FF_X5_Y22_N31
\debounce_count_start[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[2]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_start[2]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N24
\debounce_count_start[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[3]~0_combout\ = ( debounce_count_start(3) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( !\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1)) ) ) ) # ( !debounce_count_start(3) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( 
-- (debounce_count_start(0) & (debounce_count_start(1) & (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1))))) ) ) ) # ( debounce_count_start(3) & ( !\debounce_count_start[2]~DUPLICATE_q\ & ( !\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000100000000011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_start(0),
	datab => \ALT_INV_btn_start_prev~DUPLICATE_q\,
	datac => ALT_INV_debounce_count_start(1),
	datad => ALT_INV_btn_start_sync(1),
	datae => ALT_INV_debounce_count_start(3),
	dataf => \ALT_INV_debounce_count_start[2]~DUPLICATE_q\,
	combout => \debounce_count_start[3]~0_combout\);

-- Location: FF_X5_Y22_N26
\debounce_count_start[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[3]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_start[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N18
\debounce_count_start[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[0]~3_combout\ = ( debounce_count_start(0) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( (debounce_count_start(1) & (\debounce_count_start[3]~DUPLICATE_q\ & (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1))))) ) ) ) # ( 
-- !debounce_count_start(0) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( (!debounce_count_start(1) & (!\btn_start_prev~DUPLICATE_q\ $ (((btn_start_sync(1)))))) # (debounce_count_start(1) & (!\debounce_count_start[3]~DUPLICATE_q\ & 
-- (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1))))) ) ) ) # ( !debounce_count_start(0) & ( !\debounce_count_start[2]~DUPLICATE_q\ & ( !\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000011001000001100100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_start(1),
	datab => \ALT_INV_btn_start_prev~DUPLICATE_q\,
	datac => \ALT_INV_debounce_count_start[3]~DUPLICATE_q\,
	datad => ALT_INV_btn_start_sync(1),
	datae => ALT_INV_debounce_count_start(0),
	dataf => \ALT_INV_debounce_count_start[2]~DUPLICATE_q\,
	combout => \debounce_count_start[0]~3_combout\);

-- Location: FF_X5_Y22_N20
\debounce_count_start[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(0));

-- Location: LABCELL_X5_Y22_N36
\debounce_count_start[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_start[1]~2_combout\ = ( debounce_count_start(1) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( (!debounce_count_start(0) & (!\btn_start_prev~DUPLICATE_q\ $ (((btn_start_sync(1)))))) # (debounce_count_start(0) & 
-- (\debounce_count_start[3]~DUPLICATE_q\ & (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1))))) ) ) ) # ( !debounce_count_start(1) & ( \debounce_count_start[2]~DUPLICATE_q\ & ( (debounce_count_start(0) & (!\btn_start_prev~DUPLICATE_q\ $ 
-- (btn_start_sync(1)))) ) ) ) # ( debounce_count_start(1) & ( !\debounce_count_start[2]~DUPLICATE_q\ & ( (!debounce_count_start(0) & (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1)))) ) ) ) # ( !debounce_count_start(1) & ( 
-- !\debounce_count_start[2]~DUPLICATE_q\ & ( (debounce_count_start(0) & (!\btn_start_prev~DUPLICATE_q\ $ (btn_start_sync(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001100010000010001001000100000100011000110000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_start(0),
	datab => \ALT_INV_btn_start_prev~DUPLICATE_q\,
	datac => \ALT_INV_debounce_count_start[3]~DUPLICATE_q\,
	datad => ALT_INV_btn_start_sync(1),
	datae => ALT_INV_debounce_count_start(1),
	dataf => \ALT_INV_debounce_count_start[2]~DUPLICATE_q\,
	combout => \debounce_count_start[1]~2_combout\);

-- Location: FF_X5_Y22_N38
\debounce_count_start[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_start[1]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_start(1));

-- Location: FF_X5_Y22_N50
btn_start_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_deb~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_deb~q\);

-- Location: FF_X5_Y22_N58
btn_start_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_prev~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_prev~q\);

-- Location: LABCELL_X5_Y22_N48
\btn_start_deb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_start_deb~0_combout\ = ( \btn_start_deb~q\ & ( \btn_start_prev~q\ ) ) # ( !\btn_start_deb~q\ & ( \btn_start_prev~q\ & ( (debounce_count_start(1) & (debounce_count_start(2) & (\debounce_count_start[3]~DUPLICATE_q\ & btn_start_sync(1)))) ) ) ) # ( 
-- \btn_start_deb~q\ & ( !\btn_start_prev~q\ & ( (!debounce_count_start(1)) # ((!debounce_count_start(2)) # ((!\debounce_count_start[3]~DUPLICATE_q\) # (btn_start_sync(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_start(1),
	datab => ALT_INV_debounce_count_start(2),
	datac => \ALT_INV_debounce_count_start[3]~DUPLICATE_q\,
	datad => ALT_INV_btn_start_sync(1),
	datae => \ALT_INV_btn_start_deb~q\,
	dataf => \ALT_INV_btn_start_prev~q\,
	combout => \btn_start_deb~0_combout\);

-- Location: FF_X5_Y22_N49
\btn_start_deb~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \btn_start_deb~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_start_deb~DUPLICATE_q\);

-- Location: LABCELL_X5_Y20_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( ms_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( ms_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ms_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X5_Y20_N2
\ms_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(0));

-- Location: LABCELL_X5_Y20_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( ms_counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~38\ = CARRY(( ms_counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ms_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X5_Y20_N5
\ms_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(1));

-- Location: LABCELL_X5_Y20_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( ms_counter(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( ms_counter(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ms_counter(2),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X5_Y20_N7
\ms_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(2));

-- Location: LABCELL_X5_Y20_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( ms_counter(3) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( ms_counter(3) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(3),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X5_Y20_N11
\ms_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(3));

-- Location: LABCELL_X5_Y20_N12
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( ms_counter(4) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~6\ = CARRY(( ms_counter(4) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(4),
	cin => \Add0~46\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X5_Y20_N14
\ms_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(4));

-- Location: LABCELL_X5_Y20_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( ms_counter(5) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~50\ = CARRY(( ms_counter(5) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(5),
	cin => \Add0~6\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X5_Y20_N17
\ms_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(5));

-- Location: LABCELL_X5_Y20_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( ms_counter(6) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( ms_counter(6) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(6),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X5_Y20_N20
\ms_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(6));

-- Location: LABCELL_X5_Y20_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( ms_counter(7) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( ms_counter(7) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ms_counter(7),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X5_Y20_N23
\ms_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(7));

-- Location: LABCELL_X5_Y20_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( ms_counter(8) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( ms_counter(8) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(8),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X5_Y20_N26
\ms_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(8));

-- Location: LABCELL_X5_Y20_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( ms_counter(9) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~26\ = CARRY(( ms_counter(9) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ms_counter(9),
	cin => \Add0~62\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X5_Y20_N29
\ms_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(9));

-- Location: LABCELL_X5_Y20_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( ms_counter(10) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~10\ = CARRY(( ms_counter(10) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(10),
	cin => \Add0~26\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X5_Y20_N31
\ms_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(10));

-- Location: LABCELL_X5_Y20_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( ms_counter(11) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( ms_counter(11) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(11),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X5_Y20_N35
\ms_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(11));

-- Location: LABCELL_X5_Y20_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( ms_counter(12) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( ms_counter(12) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(12),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X5_Y20_N38
\ms_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(12));

-- Location: LABCELL_X5_Y20_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( ms_counter(13) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( ms_counter(13) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(13),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X5_Y20_N41
\ms_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(13));

-- Location: LABCELL_X5_Y20_N42
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( ms_counter(14) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~34\ = CARRY(( ms_counter(14) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ms_counter(14),
	cin => \Add0~22\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X5_Y20_N44
\ms_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(14));

-- Location: LABCELL_X5_Y20_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( ms_counter(15) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(15),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X5_Y20_N47
\ms_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms_counter(15));

-- Location: LABCELL_X5_Y20_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( ms_counter(14) & ( (ms_counter(2) & (ms_counter(3) & (ms_counter(1) & ms_counter(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(2),
	datab => ALT_INV_ms_counter(3),
	datac => ALT_INV_ms_counter(1),
	datad => ALT_INV_ms_counter(15),
	dataf => ALT_INV_ms_counter(14),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X5_Y20_N57
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !ms_counter(12) & ( !ms_counter(10) & ( (ms_counter(9) & (!ms_counter(13) & !ms_counter(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(9),
	datac => ALT_INV_ms_counter(13),
	datad => ALT_INV_ms_counter(11),
	datae => ALT_INV_ms_counter(12),
	dataf => ALT_INV_ms_counter(10),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X4_Y20_N15
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !ms_counter(5) & ( ms_counter(6) & ( (ms_counter(8) & !ms_counter(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ms_counter(8),
	datad => ALT_INV_ms_counter(7),
	datae => ALT_INV_ms_counter(5),
	dataf => ALT_INV_ms_counter(6),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X4_Y20_N45
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~0_combout\ & ( \Equal0~2_combout\ & ( (ms_counter(0) & (!ms_counter(4) & \Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ms_counter(0),
	datab => ALT_INV_ms_counter(4),
	datac => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X5_Y21_N50
ms_tick_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal0~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ms_tick_s~q\);

-- Location: LABCELL_X7_Y22_N12
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( delay_counter_ms(4) ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( delay_counter_ms(4) ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(4),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X7_Y22_N15
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( delay_counter_ms(5) ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( delay_counter_ms(5) ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(5),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X6_Y22_N9
\delay_counter_ms[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(5) = ( \Selector73~1_combout\ & ( \Add3~25_sumout\ ) ) # ( !\Selector73~1_combout\ & ( delay_counter_ms(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~25_sumout\,
	datad => ALT_INV_delay_counter_ms(5),
	dataf => \ALT_INV_Selector73~1_combout\,
	combout => delay_counter_ms(5));

-- Location: LABCELL_X7_Y22_N18
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( delay_counter_ms(6) ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( delay_counter_ms(6) ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(6),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X6_Y22_N24
\delay_counter_ms[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(6) = ( \Add3~29_sumout\ & ( (delay_counter_ms(6)) # (\Selector73~1_combout\) ) ) # ( !\Add3~29_sumout\ & ( (!\Selector73~1_combout\ & delay_counter_ms(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector73~1_combout\,
	datac => ALT_INV_delay_counter_ms(6),
	dataf => \ALT_INV_Add3~29_sumout\,
	combout => delay_counter_ms(6));

-- Location: LABCELL_X7_Y22_N21
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( delay_counter_ms(7) ) + ( VCC ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( delay_counter_ms(7) ) + ( VCC ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(7),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X6_Y22_N45
\delay_counter_ms[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(7) = ( delay_counter_ms(7) & ( \Selector73~1_combout\ & ( \Add3~33_sumout\ ) ) ) # ( !delay_counter_ms(7) & ( \Selector73~1_combout\ & ( \Add3~33_sumout\ ) ) ) # ( delay_counter_ms(7) & ( !\Selector73~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~33_sumout\,
	datae => ALT_INV_delay_counter_ms(7),
	dataf => \ALT_INV_Selector73~1_combout\,
	combout => delay_counter_ms(7));

-- Location: LABCELL_X7_Y22_N24
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( delay_counter_ms(8) ) + ( VCC ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( delay_counter_ms(8) ) + ( VCC ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(8),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X6_Y22_N12
\delay_counter_ms[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(8) = ( \Add3~37_sumout\ & ( (delay_counter_ms(8)) # (\Selector73~1_combout\) ) ) # ( !\Add3~37_sumout\ & ( (!\Selector73~1_combout\ & delay_counter_ms(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector73~1_combout\,
	datad => ALT_INV_delay_counter_ms(8),
	dataf => \ALT_INV_Add3~37_sumout\,
	combout => delay_counter_ms(8));

-- Location: LABCELL_X7_Y22_N27
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( delay_counter_ms(9) ) + ( VCC ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( delay_counter_ms(9) ) + ( VCC ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(9),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: LABCELL_X6_Y22_N15
\delay_counter_ms[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(9) = ( delay_counter_ms(9) & ( (!\Selector73~1_combout\) # (\Add3~41_sumout\) ) ) # ( !delay_counter_ms(9) & ( (\Add3~41_sumout\ & \Selector73~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~41_sumout\,
	datab => \ALT_INV_Selector73~1_combout\,
	dataf => ALT_INV_delay_counter_ms(9),
	combout => delay_counter_ms(9));

-- Location: LABCELL_X7_Y22_N30
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( delay_counter_ms(10) ) + ( VCC ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( delay_counter_ms(10) ) + ( VCC ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(10),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X6_Y22_N48
\delay_counter_ms[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(10) = ( \Selector73~1_combout\ & ( \Add3~45_sumout\ ) ) # ( !\Selector73~1_combout\ & ( delay_counter_ms(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~45_sumout\,
	datac => ALT_INV_delay_counter_ms(10),
	dataf => \ALT_INV_Selector73~1_combout\,
	combout => delay_counter_ms(10));

-- Location: LABCELL_X7_Y22_N33
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( delay_counter_ms(11) ) + ( VCC ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( delay_counter_ms(11) ) + ( VCC ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(11),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X6_Y22_N36
\delay_counter_ms[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(11) = ( delay_counter_ms(11) & ( \Selector73~1_combout\ & ( \Add3~49_sumout\ ) ) ) # ( !delay_counter_ms(11) & ( \Selector73~1_combout\ & ( \Add3~49_sumout\ ) ) ) # ( delay_counter_ms(11) & ( !\Selector73~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~49_sumout\,
	datae => ALT_INV_delay_counter_ms(11),
	dataf => \ALT_INV_Selector73~1_combout\,
	combout => delay_counter_ms(11));

-- Location: LABCELL_X6_Y22_N6
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !delay_counter_ms(9) & ( (!delay_counter_ms(10) & (!delay_counter_ms(8) & (!delay_counter_ms(11) & !delay_counter_ms(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(10),
	datab => ALT_INV_delay_counter_ms(8),
	datac => ALT_INV_delay_counter_ms(11),
	datad => ALT_INV_delay_counter_ms(7),
	dataf => ALT_INV_delay_counter_ms(9),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X7_Y22_N36
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( delay_counter_ms(12) ) + ( VCC ) + ( \Add3~50\ ))
-- \Add3~2\ = CARRY(( delay_counter_ms(12) ) + ( VCC ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(12),
	cin => \Add3~50\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X7_Y22_N39
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( delay_counter_ms(13) ) + ( VCC ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(13),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\);

-- Location: LABCELL_X7_Y22_N45
\delay_counter_ms[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(13) = ( delay_counter_ms(13) & ( \Add3~5_sumout\ ) ) # ( !delay_counter_ms(13) & ( \Add3~5_sumout\ & ( \Selector73~1_combout\ ) ) ) # ( delay_counter_ms(13) & ( !\Add3~5_sumout\ & ( !\Selector73~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector73~1_combout\,
	datae => ALT_INV_delay_counter_ms(13),
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => delay_counter_ms(13));

-- Location: FF_X5_Y21_N31
\debounce_count_response[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[3]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_response[3]~DUPLICATE_q\);

-- Location: IOIBUF_X10_Y0_N41
\btn_response~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_response,
	o => \btn_response~input_o\);

-- Location: FF_X5_Y21_N5
\btn_response_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \btn_response~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_response_sync(0));

-- Location: FF_X5_Y21_N41
\btn_response_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_response_sync(0),
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => btn_response_sync(1));

-- Location: FF_X5_Y21_N8
\debounce_count_response[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[1]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_response[1]~DUPLICATE_q\);

-- Location: FF_X5_Y21_N13
\debounce_count_response[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[2]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_count_response[2]~DUPLICATE_q\);

-- Location: FF_X5_Y21_N35
\btn_response_prev~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_response_sync(1),
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_response_prev~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N9
\debounce_count_response[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[0]~3_combout\ = ( debounce_count_response(0) & ( \btn_response_prev~DUPLICATE_q\ & ( (\debounce_count_response[3]~DUPLICATE_q\ & (btn_response_sync(1) & (\debounce_count_response[1]~DUPLICATE_q\ & 
-- \debounce_count_response[2]~DUPLICATE_q\))) ) ) ) # ( !debounce_count_response(0) & ( \btn_response_prev~DUPLICATE_q\ & ( (btn_response_sync(1) & ((!\debounce_count_response[3]~DUPLICATE_q\) # ((!\debounce_count_response[1]~DUPLICATE_q\) # 
-- (!\debounce_count_response[2]~DUPLICATE_q\)))) ) ) ) # ( debounce_count_response(0) & ( !\btn_response_prev~DUPLICATE_q\ & ( (\debounce_count_response[3]~DUPLICATE_q\ & (!btn_response_sync(1) & (\debounce_count_response[1]~DUPLICATE_q\ & 
-- \debounce_count_response[2]~DUPLICATE_q\))) ) ) ) # ( !debounce_count_response(0) & ( !\btn_response_prev~DUPLICATE_q\ & ( (!btn_response_sync(1) & ((!\debounce_count_response[3]~DUPLICATE_q\) # ((!\debounce_count_response[1]~DUPLICATE_q\) # 
-- (!\debounce_count_response[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000000000000000010000110011001100100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_debounce_count_response[3]~DUPLICATE_q\,
	datab => ALT_INV_btn_response_sync(1),
	datac => \ALT_INV_debounce_count_response[1]~DUPLICATE_q\,
	datad => \ALT_INV_debounce_count_response[2]~DUPLICATE_q\,
	datae => ALT_INV_debounce_count_response(0),
	dataf => \ALT_INV_btn_response_prev~DUPLICATE_q\,
	combout => \debounce_count_response[0]~3_combout\);

-- Location: FF_X5_Y22_N11
\debounce_count_response[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(0));

-- Location: FF_X5_Y21_N34
btn_response_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => btn_response_sync(1),
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_response_prev~q\);

-- Location: LABCELL_X5_Y21_N12
\debounce_count_response[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[2]~1_combout\ = ( debounce_count_response(2) & ( debounce_count_response(3) & ( !\btn_response_prev~q\ $ (btn_response_sync(1)) ) ) ) # ( !debounce_count_response(2) & ( debounce_count_response(3) & ( (debounce_count_response(0) & 
-- (\debounce_count_response[1]~DUPLICATE_q\ & (!\btn_response_prev~q\ $ (btn_response_sync(1))))) ) ) ) # ( debounce_count_response(2) & ( !debounce_count_response(3) & ( (!debounce_count_response(0) & ((!\btn_response_prev~q\ $ (btn_response_sync(1))))) # 
-- (debounce_count_response(0) & (!\debounce_count_response[1]~DUPLICATE_q\ & (!\btn_response_prev~q\ $ (btn_response_sync(1))))) ) ) ) # ( !debounce_count_response(2) & ( !debounce_count_response(3) & ( (debounce_count_response(0) & 
-- (\debounce_count_response[1]~DUPLICATE_q\ & (!\btn_response_prev~q\ $ (btn_response_sync(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001111000000000111000010000000000011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(0),
	datab => \ALT_INV_debounce_count_response[1]~DUPLICATE_q\,
	datac => \ALT_INV_btn_response_prev~q\,
	datad => ALT_INV_btn_response_sync(1),
	datae => ALT_INV_debounce_count_response(2),
	dataf => ALT_INV_debounce_count_response(3),
	combout => \debounce_count_response[2]~1_combout\);

-- Location: FF_X5_Y21_N14
\debounce_count_response[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[2]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(2));

-- Location: LABCELL_X5_Y21_N6
\debounce_count_response[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[1]~2_combout\ = ( debounce_count_response(1) & ( debounce_count_response(3) & ( (!debounce_count_response(2) & (!debounce_count_response(0) & (!\btn_response_prev~q\ $ (btn_response_sync(1))))) # (debounce_count_response(2) & 
-- ((!\btn_response_prev~q\ $ (btn_response_sync(1))))) ) ) ) # ( !debounce_count_response(1) & ( debounce_count_response(3) & ( (debounce_count_response(0) & (!\btn_response_prev~q\ $ (btn_response_sync(1)))) ) ) ) # ( debounce_count_response(1) & ( 
-- !debounce_count_response(3) & ( (!debounce_count_response(0) & (!\btn_response_prev~q\ $ (btn_response_sync(1)))) ) ) ) # ( !debounce_count_response(1) & ( !debounce_count_response(3) & ( (debounce_count_response(0) & (!\btn_response_prev~q\ $ 
-- (btn_response_sync(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011110000000000110000110000000000111101000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(2),
	datab => ALT_INV_debounce_count_response(0),
	datac => \ALT_INV_btn_response_prev~q\,
	datad => ALT_INV_btn_response_sync(1),
	datae => ALT_INV_debounce_count_response(1),
	dataf => ALT_INV_debounce_count_response(3),
	combout => \debounce_count_response[1]~2_combout\);

-- Location: FF_X5_Y21_N7
\debounce_count_response[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[1]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(1));

-- Location: LABCELL_X5_Y21_N30
\debounce_count_response[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debounce_count_response[3]~0_combout\ = ( debounce_count_response(3) & ( btn_response_sync(1) & ( \btn_response_prev~q\ ) ) ) # ( !debounce_count_response(3) & ( btn_response_sync(1) & ( (debounce_count_response(1) & (debounce_count_response(0) & 
-- (debounce_count_response(2) & \btn_response_prev~q\))) ) ) ) # ( debounce_count_response(3) & ( !btn_response_sync(1) & ( !\btn_response_prev~q\ ) ) ) # ( !debounce_count_response(3) & ( !btn_response_sync(1) & ( (debounce_count_response(1) & 
-- (debounce_count_response(0) & (debounce_count_response(2) & !\btn_response_prev~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111110000000000000000000000010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_debounce_count_response(1),
	datab => ALT_INV_debounce_count_response(0),
	datac => ALT_INV_debounce_count_response(2),
	datad => \ALT_INV_btn_response_prev~q\,
	datae => ALT_INV_debounce_count_response(3),
	dataf => ALT_INV_btn_response_sync(1),
	combout => \debounce_count_response[3]~0_combout\);

-- Location: FF_X5_Y21_N32
\debounce_count_response[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debounce_count_response[3]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_count_response(3));

-- Location: LABCELL_X5_Y21_N45
\btn_response_deb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_response_deb~0_combout\ = ( debounce_count_response(1) & ( btn_response_sync(1) & ( ((debounce_count_response(3) & (debounce_count_response(2) & \btn_response_prev~DUPLICATE_q\))) # (\btn_response_deb~q\) ) ) ) # ( !debounce_count_response(1) & ( 
-- btn_response_sync(1) & ( \btn_response_deb~q\ ) ) ) # ( debounce_count_response(1) & ( !btn_response_sync(1) & ( (\btn_response_deb~q\ & ((!debounce_count_response(3)) # ((!debounce_count_response(2)) # (\btn_response_prev~DUPLICATE_q\)))) ) ) ) # ( 
-- !debounce_count_response(1) & ( !btn_response_sync(1) & ( \btn_response_deb~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datab => ALT_INV_debounce_count_response(3),
	datac => ALT_INV_debounce_count_response(2),
	datad => \ALT_INV_btn_response_prev~DUPLICATE_q\,
	datae => ALT_INV_debounce_count_response(1),
	dataf => ALT_INV_btn_response_sync(1),
	combout => \btn_response_deb~0_combout\);

-- Location: FF_X5_Y21_N29
btn_response_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \btn_response_deb~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_response_deb~q\);

-- Location: LABCELL_X6_Y18_N15
\Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = ( \current_state.GEN_DELAY_P2~q\ & ( \Equal2~0_combout\ & ( (!\ms_tick_s~q\) # ((!\show_interval_counter_ms[0]~0_combout\ & (\Equal2~1_combout\ & \current_state.INTERVAL~q\))) ) ) ) # ( !\current_state.GEN_DELAY_P2~q\ & ( 
-- \Equal2~0_combout\ & ( (!\show_interval_counter_ms[0]~0_combout\ & (\Equal2~1_combout\ & (\ms_tick_s~q\ & \current_state.INTERVAL~q\))) ) ) ) # ( \current_state.GEN_DELAY_P2~q\ & ( !\Equal2~0_combout\ & ( !\ms_tick_s~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000101111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_ms_tick_s~q\,
	datad => \ALT_INV_current_state.INTERVAL~q\,
	datae => \ALT_INV_current_state.GEN_DELAY_P2~q\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X6_Y18_N17
\current_state.GEN_DELAY_P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector66~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.GEN_DELAY_P2~q\);

-- Location: LABCELL_X5_Y21_N18
\Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = ( \Equal1~2_combout\ & ( (!\ms_tick_s~q\ & ((\current_state.WAIT_P2~q\))) # (\ms_tick_s~q\ & (\current_state.GEN_DELAY_P2~q\)) ) ) # ( !\Equal1~2_combout\ & ( (!\ms_tick_s~q\ & (((\current_state.WAIT_P2~q\)))) # (\ms_tick_s~q\ & 
-- (((!\btn_response_deb~q\ & \current_state.WAIT_P2~q\)) # (\current_state.GEN_DELAY_P2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111011000100011111101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_current_state.GEN_DELAY_P2~q\,
	datac => \ALT_INV_btn_response_deb~q\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X5_Y21_N20
\current_state.WAIT_P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector67~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_P2~q\);

-- Location: LABCELL_X5_Y21_N57
\Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = ( \current_state.WAIT_P2~q\ & ( (\ms_tick_s~q\ & !\btn_response_deb~q\) ) ) # ( !\current_state.WAIT_P2~q\ & ( (\ms_tick_s~q\ & (\current_state.WAIT_P1~q\ & !\btn_response_deb~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datac => \ALT_INV_current_state.WAIT_P1~q\,
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.WAIT_P2~q\,
	combout => \Selector73~0_combout\);

-- Location: LABCELL_X6_Y22_N21
\delay_counter_ms[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter_ms[0]~0_combout\ = ( \Equal1~0_combout\ & ( \Selector73~0_combout\ & ( (!\delay_counter_ms[0]~0_combout\ & ((!\Equal1~1_combout\) # ((delay_counter_ms(13)) # (delay_counter_ms(12))))) ) ) ) # ( !\Equal1~0_combout\ & ( \Selector73~0_combout\ 
-- & ( !\delay_counter_ms[0]~0_combout\ ) ) ) # ( \Equal1~0_combout\ & ( !\Selector73~0_combout\ & ( \delay_counter_ms[0]~0_combout\ ) ) ) # ( !\Equal1~0_combout\ & ( !\Selector73~0_combout\ & ( \delay_counter_ms[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_delay_counter_ms[0]~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => ALT_INV_delay_counter_ms(12),
	datad => ALT_INV_delay_counter_ms(13),
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Selector73~0_combout\,
	combout => \delay_counter_ms[0]~0_combout\);

-- Location: LABCELL_X7_Y22_N0
\Add3~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~54_cout\ = CARRY(( \delay_counter_ms[0]~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_delay_counter_ms[0]~0_combout\,
	cin => GND,
	cout => \Add3~54_cout\);

-- Location: LABCELL_X7_Y22_N3
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( delay_counter_ms(1) ) + ( VCC ) + ( \Add3~54_cout\ ))
-- \Add3~10\ = CARRY(( delay_counter_ms(1) ) + ( VCC ) + ( \Add3~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay_counter_ms(1),
	cin => \Add3~54_cout\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X7_Y22_N48
\delay_counter_ms[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(1) = ( delay_counter_ms(1) & ( \Add3~9_sumout\ ) ) # ( !delay_counter_ms(1) & ( \Add3~9_sumout\ & ( \Selector73~1_combout\ ) ) ) # ( delay_counter_ms(1) & ( !\Add3~9_sumout\ & ( !\Selector73~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector73~1_combout\,
	datae => ALT_INV_delay_counter_ms(1),
	dataf => \ALT_INV_Add3~9_sumout\,
	combout => delay_counter_ms(1));

-- Location: LABCELL_X7_Y22_N6
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( delay_counter_ms(2) ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( delay_counter_ms(2) ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay_counter_ms(2),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X6_Y22_N57
\delay_counter_ms[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(2) = ( delay_counter_ms(2) & ( (!\Selector73~1_combout\) # (\Add3~13_sumout\) ) ) # ( !delay_counter_ms(2) & ( (\Selector73~1_combout\ & \Add3~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector73~1_combout\,
	datac => \ALT_INV_Add3~13_sumout\,
	dataf => ALT_INV_delay_counter_ms(2),
	combout => delay_counter_ms(2));

-- Location: LABCELL_X7_Y22_N9
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( delay_counter_ms(3) ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( delay_counter_ms(3) ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(3),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X6_Y22_N27
\delay_counter_ms[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(3) = ( \Selector73~1_combout\ & ( \Add3~17_sumout\ ) ) # ( !\Selector73~1_combout\ & ( delay_counter_ms(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~17_sumout\,
	datad => ALT_INV_delay_counter_ms(3),
	dataf => \ALT_INV_Selector73~1_combout\,
	combout => delay_counter_ms(3));

-- Location: LABCELL_X6_Y22_N54
\delay_counter_ms[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(4) = ( \Add3~21_sumout\ & ( (delay_counter_ms(4)) # (\Selector73~1_combout\) ) ) # ( !\Add3~21_sumout\ & ( (!\Selector73~1_combout\ & delay_counter_ms(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector73~1_combout\,
	datad => ALT_INV_delay_counter_ms(4),
	dataf => \ALT_INV_Add3~21_sumout\,
	combout => delay_counter_ms(4));

-- Location: LABCELL_X6_Y22_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !delay_counter_ms(1) & ( !delay_counter_ms(5) & ( (!delay_counter_ms(4) & (!delay_counter_ms(6) & (!delay_counter_ms(3) & !delay_counter_ms(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(4),
	datab => ALT_INV_delay_counter_ms(6),
	datac => ALT_INV_delay_counter_ms(3),
	datad => ALT_INV_delay_counter_ms(2),
	datae => ALT_INV_delay_counter_ms(1),
	dataf => ALT_INV_delay_counter_ms(5),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X6_Y22_N30
\Selector73~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = ( \delay_counter_ms[0]~0_combout\ & ( \Selector73~0_combout\ ) ) # ( !\delay_counter_ms[0]~0_combout\ & ( \Selector73~0_combout\ & ( (!\Equal1~0_combout\) # ((!\Equal1~1_combout\) # ((delay_counter_ms(12)) # 
-- (delay_counter_ms(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => ALT_INV_delay_counter_ms(13),
	datad => ALT_INV_delay_counter_ms(12),
	datae => \ALT_INV_delay_counter_ms[0]~0_combout\,
	dataf => \ALT_INV_Selector73~0_combout\,
	combout => \Selector73~1_combout\);

-- Location: LABCELL_X7_Y22_N57
\delay_counter_ms[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- delay_counter_ms(12) = ( delay_counter_ms(12) & ( \Add3~1_sumout\ ) ) # ( !delay_counter_ms(12) & ( \Add3~1_sumout\ & ( \Selector73~1_combout\ ) ) ) # ( delay_counter_ms(12) & ( !\Add3~1_sumout\ & ( !\Selector73~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector73~1_combout\,
	datae => ALT_INV_delay_counter_ms(12),
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => delay_counter_ms(12));

-- Location: LABCELL_X6_Y21_N54
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\delay_counter_ms[0]~0_combout\ & ( (!delay_counter_ms(12) & (!delay_counter_ms(13) & (\Equal1~1_combout\ & \Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter_ms(12),
	datab => ALT_INV_delay_counter_ms(13),
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_delay_counter_ms[0]~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: MLABCELL_X4_Y21_N30
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( timer_ms(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( timer_ms(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(0),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X7_Y21_N51
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~1_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector23~0_combout\);

-- Location: LABCELL_X7_Y21_N18
\timer_ms[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(0) = ( \Selector74~1_combout\ & ( \Selector23~0_combout\ ) ) # ( !\Selector74~1_combout\ & ( timer_ms(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector23~0_combout\,
	datac => ALT_INV_timer_ms(0),
	dataf => \ALT_INV_Selector74~1_combout\,
	combout => timer_ms(0));

-- Location: MLABCELL_X4_Y21_N33
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( timer_ms(1) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( timer_ms(1) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: LABCELL_X5_Y21_N21
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~5_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~5_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X5_Y21_N54
\timer_ms[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(1) = (!\Selector74~1_combout\ & ((timer_ms(1)))) # (\Selector74~1_combout\ & (\Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector11~0_combout\,
	datac => ALT_INV_timer_ms(1),
	datad => \ALT_INV_Selector74~1_combout\,
	combout => timer_ms(1));

-- Location: MLABCELL_X4_Y21_N36
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( timer_ms(2) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( timer_ms(2) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: MLABCELL_X4_Y21_N3
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~9_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~9_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector10~0_combout\);

-- Location: MLABCELL_X4_Y21_N0
\timer_ms[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(2) = ( \Selector10~0_combout\ & ( (\Selector74~1_combout\) # (timer_ms(2)) ) ) # ( !\Selector10~0_combout\ & ( (timer_ms(2) & !\Selector74~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(2),
	datad => \ALT_INV_Selector74~1_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => timer_ms(2));

-- Location: MLABCELL_X4_Y21_N39
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( timer_ms(3) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( timer_ms(3) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X4_Y21_N15
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \Add4~13_sumout\ & ( (!\current_state.WAIT_P1~q\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.WAIT_P1~q\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_Add4~13_sumout\,
	combout => \Selector9~0_combout\);

-- Location: MLABCELL_X4_Y21_N12
\timer_ms[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(3) = ( \Selector9~0_combout\ & ( (\Selector74~1_combout\) # (timer_ms(3)) ) ) # ( !\Selector9~0_combout\ & ( (timer_ms(3) & !\Selector74~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer_ms(3),
	datad => \ALT_INV_Selector74~1_combout\,
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => timer_ms(3));

-- Location: MLABCELL_X4_Y21_N42
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( timer_ms(4) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( timer_ms(4) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(4),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: MLABCELL_X4_Y21_N45
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( timer_ms(5) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( timer_ms(5) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(5),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X5_Y21_N3
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (!\current_state.WAIT_P2~q\ & \Add4~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.WAIT_P2~q\,
	datac => \ALT_INV_Add4~21_sumout\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X5_Y21_N0
\timer_ms[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(5) = ( \Selector7~0_combout\ & ( (timer_ms(5)) # (\Selector74~1_combout\) ) ) # ( !\Selector7~0_combout\ & ( (!\Selector74~1_combout\ & timer_ms(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector74~1_combout\,
	datac => ALT_INV_timer_ms(5),
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => timer_ms(5));

-- Location: MLABCELL_X4_Y21_N48
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( timer_ms(6) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( timer_ms(6) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(6),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: MLABCELL_X4_Y21_N18
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Add4~25_sumout\ & ( (!\current_state.WAIT_P1~q\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.WAIT_P1~q\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_Add4~25_sumout\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X4_Y21_N21
\timer_ms[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(6) = ( \Selector6~0_combout\ & ( (timer_ms(6)) # (\Selector74~1_combout\) ) ) # ( !\Selector6~0_combout\ & ( (!\Selector74~1_combout\ & timer_ms(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector74~1_combout\,
	datad => ALT_INV_timer_ms(6),
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => timer_ms(6));

-- Location: MLABCELL_X4_Y21_N51
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( timer_ms(7) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( timer_ms(7) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer_ms(7),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X7_Y21_N42
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~29_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~29_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X7_Y21_N3
\timer_ms[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(7) = ( \Selector5~0_combout\ & ( (timer_ms(7)) # (\Selector74~1_combout\) ) ) # ( !\Selector5~0_combout\ & ( (!\Selector74~1_combout\ & timer_ms(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector74~1_combout\,
	datad => ALT_INV_timer_ms(7),
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => timer_ms(7));

-- Location: MLABCELL_X4_Y21_N54
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( timer_ms(8) ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( timer_ms(8) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(8),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: LABCELL_X7_Y21_N30
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~33_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~33_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X7_Y21_N33
\timer_ms[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(8) = ( \Selector74~1_combout\ & ( \Selector4~0_combout\ ) ) # ( !\Selector74~1_combout\ & ( timer_ms(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(8),
	datab => \ALT_INV_Selector4~0_combout\,
	dataf => \ALT_INV_Selector74~1_combout\,
	combout => timer_ms(8));

-- Location: MLABCELL_X4_Y21_N57
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( timer_ms(9) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(9),
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\);

-- Location: MLABCELL_X4_Y21_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~37_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~37_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X4_Y21_N9
\timer_ms[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(9) = ( timer_ms(9) & ( (!\Selector74~1_combout\) # (\Selector3~0_combout\) ) ) # ( !timer_ms(9) & ( (\Selector3~0_combout\ & \Selector74~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Selector74~1_combout\,
	dataf => ALT_INV_timer_ms(9),
	combout => timer_ms(9));

-- Location: LABCELL_X6_Y21_N9
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( timer_ms(8) & ( (timer_ms(6) & (timer_ms(9) & timer_ms(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer_ms(6),
	datac => ALT_INV_timer_ms(9),
	datad => ALT_INV_timer_ms(7),
	dataf => ALT_INV_timer_ms(8),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X6_Y20_N24
\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ( !\current_state.SHOW_P1~q\ & ( (!\current_state.INTERVAL~q\ & (!\current_state.SHOW_P2~q\ & !\current_state.RESULT~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.INTERVAL~q\,
	datab => \ALT_INV_current_state.SHOW_P2~q\,
	datad => \ALT_INV_current_state.RESULT~q\,
	dataf => \ALT_INV_current_state.SHOW_P1~q\,
	combout => \WideOr3~0_combout\);

-- Location: LABCELL_X5_Y22_N45
\current_state.MEASURE_P2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE_P2~1_combout\ = ( !\current_state.WAIT_P2~q\ & ( !\current_state.WAIT_P1~q\ & ( (\btn_start_deb~q\) # (\current_state.IDLE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.IDLE~q\,
	datad => \ALT_INV_btn_start_deb~q\,
	datae => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \current_state.MEASURE_P2~1_combout\);

-- Location: LABCELL_X6_Y21_N3
\current_state.MEASURE_P2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE_P2~3_combout\ = ( \Equal1~2_combout\ & ( (!\ms_tick_s~q\ & (((\current_state.MEASURE_P2~q\)))) # (\ms_tick_s~q\ & (\current_state.WAIT_P2~q\ & ((!\btn_response_deb~q\)))) ) ) # ( !\Equal1~2_combout\ & ( (\current_state.MEASURE_P2~q\ 
-- & !\ms_tick_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011010100000011001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.WAIT_P2~q\,
	datab => \ALT_INV_current_state.MEASURE_P2~q\,
	datac => \ALT_INV_btn_response_deb~q\,
	datad => \ALT_INV_ms_tick_s~q\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \current_state.MEASURE_P2~3_combout\);

-- Location: LABCELL_X6_Y21_N36
\current_state.MEASURE_P2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE_P2~0_combout\ = ( \Equal3~0_combout\ & ( (!\current_state.GEN_DELAY_P2~q\ & (!\Equal3~1_combout\ & (\current_state.IDLE~q\ & !\current_state.GEN_DELAY_P1~q\))) ) ) # ( !\Equal3~0_combout\ & ( (!\current_state.GEN_DELAY_P2~q\ & 
-- (\current_state.IDLE~q\ & !\current_state.GEN_DELAY_P1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.GEN_DELAY_P2~q\,
	datab => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_current_state.IDLE~q\,
	datad => \ALT_INV_current_state.GEN_DELAY_P1~q\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \current_state.MEASURE_P2~0_combout\);

-- Location: LABCELL_X6_Y21_N42
\current_state.MEASURE_P2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE_P2~2_combout\ = ( \Equal1~2_combout\ & ( (!\btn_response_deb~q\ & (\current_state.MEASURE_P2~q\ & ((!\ms_tick_s~q\) # (!\current_state.WAIT_P1~q\)))) ) ) # ( !\Equal1~2_combout\ & ( (!\btn_response_deb~q\ & 
-- \current_state.MEASURE_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_btn_response_deb~q\,
	datac => \ALT_INV_current_state.WAIT_P1~q\,
	datad => \ALT_INV_current_state.MEASURE_P2~q\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \current_state.MEASURE_P2~2_combout\);

-- Location: LABCELL_X6_Y21_N30
\current_state.MEASURE_P2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.MEASURE_P2~4_combout\ = ( \current_state.MEASURE_P2~0_combout\ & ( \current_state.MEASURE_P2~2_combout\ & ( (!\next_state~11_combout\) # (((!\current_state.MEASURE_P2~1_combout\) # (\current_state.MEASURE_P2~3_combout\)) # 
-- (\WideOr3~0_combout\)) ) ) ) # ( !\current_state.MEASURE_P2~0_combout\ & ( \current_state.MEASURE_P2~2_combout\ & ( (!\current_state.MEASURE_P2~1_combout\) # (\current_state.MEASURE_P2~3_combout\) ) ) ) # ( \current_state.MEASURE_P2~0_combout\ & ( 
-- !\current_state.MEASURE_P2~2_combout\ & ( \current_state.MEASURE_P2~3_combout\ ) ) ) # ( !\current_state.MEASURE_P2~0_combout\ & ( !\current_state.MEASURE_P2~2_combout\ & ( \current_state.MEASURE_P2~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state~11_combout\,
	datab => \ALT_INV_WideOr3~0_combout\,
	datac => \ALT_INV_current_state.MEASURE_P2~1_combout\,
	datad => \ALT_INV_current_state.MEASURE_P2~3_combout\,
	datae => \ALT_INV_current_state.MEASURE_P2~0_combout\,
	dataf => \ALT_INV_current_state.MEASURE_P2~2_combout\,
	combout => \current_state.MEASURE_P2~4_combout\);

-- Location: FF_X6_Y21_N32
\current_state.MEASURE_P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.MEASURE_P2~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MEASURE_P2~q\);

-- Location: LABCELL_X5_Y21_N51
\Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (\Equal3~0_combout\ & \Equal3~1_combout\) ) ) # ( !\current_state.MEASURE_P1~q\ & ( (!\current_state.MEASURE_P2~q\) # ((\Equal3~0_combout\ & \Equal3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000101111111110000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_current_state.MEASURE_P2~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector74~0_combout\);

-- Location: LABCELL_X5_Y21_N36
\Selector74~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = ( !\btn_response_deb~q\ & ( \Selector74~0_combout\ & ( (\ms_tick_s~q\ & (\Equal1~2_combout\ & ((\current_state.WAIT_P1~q\) # (\current_state.WAIT_P2~q\)))) ) ) ) # ( !\btn_response_deb~q\ & ( !\Selector74~0_combout\ & ( 
-- \ms_tick_s~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_current_state.WAIT_P2~q\,
	datad => \ALT_INV_current_state.WAIT_P1~q\,
	datae => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_Selector74~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: MLABCELL_X4_Y21_N24
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( !\current_state.WAIT_P1~q\ & ( (\Add4~17_sumout\ & !\current_state.WAIT_P2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~17_sumout\,
	datad => \ALT_INV_current_state.WAIT_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector8~0_combout\);

-- Location: MLABCELL_X4_Y21_N27
\timer_ms[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- timer_ms(4) = ( \Selector8~0_combout\ & ( (timer_ms(4)) # (\Selector74~1_combout\) ) ) # ( !\Selector8~0_combout\ & ( (!\Selector74~1_combout\ & timer_ms(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector74~1_combout\,
	datad => ALT_INV_timer_ms(4),
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => timer_ms(4));

-- Location: LABCELL_X6_Y21_N12
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( timer_ms(1) & ( timer_ms(0) & ( (!timer_ms(4) & (timer_ms(2) & (timer_ms(5) & !timer_ms(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(4),
	datab => ALT_INV_timer_ms(2),
	datac => ALT_INV_timer_ms(5),
	datad => ALT_INV_timer_ms(3),
	datae => ALT_INV_timer_ms(1),
	dataf => ALT_INV_timer_ms(0),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X6_Y21_N27
\Selector64~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~6_combout\ = ( \current_state.MEASURE_P2~q\ & ( \current_state.WAIT_P2~q\ & ( (!\ms_tick_s~q\) # ((!\btn_response_deb~q\ & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\)))) ) ) ) # ( !\current_state.MEASURE_P2~q\ & ( \current_state.WAIT_P2~q\ 
-- & ( (!\ms_tick_s~q\) # (!\btn_response_deb~q\) ) ) ) # ( \current_state.MEASURE_P2~q\ & ( !\current_state.WAIT_P2~q\ & ( (!\ms_tick_s~q\) # ((!\btn_response_deb~q\ & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\)))) ) ) ) # ( !\current_state.MEASURE_P2~q\ 
-- & ( !\current_state.WAIT_P2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111101010101011111111101010101111111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_btn_response_deb~q\,
	datae => \ALT_INV_current_state.MEASURE_P2~q\,
	dataf => \ALT_INV_current_state.WAIT_P2~q\,
	combout => \Selector64~6_combout\);

-- Location: LABCELL_X6_Y21_N24
\Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( \current_state.WAIT_P1~q\ & ( (!\ms_tick_s~q\) # ((!\btn_response_deb~q\ & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\)))) ) ) ) # ( !\current_state.MEASURE_P1~q\ & ( \current_state.WAIT_P1~q\ 
-- & ( (!\ms_tick_s~q\) # (!\btn_response_deb~q\) ) ) ) # ( \current_state.MEASURE_P1~q\ & ( !\current_state.WAIT_P1~q\ & ( (!\ms_tick_s~q\) # ((!\btn_response_deb~q\ & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\)))) ) ) ) # ( !\current_state.MEASURE_P1~q\ 
-- & ( !\current_state.WAIT_P1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101110101011111010111110101111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_btn_response_deb~q\,
	datad => \ALT_INV_Equal3~1_combout\,
	datae => \ALT_INV_current_state.MEASURE_P1~q\,
	dataf => \ALT_INV_current_state.WAIT_P1~q\,
	combout => \Selector75~0_combout\);

-- Location: LABCELL_X6_Y21_N6
\Selector64~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~7_combout\ = ( \Selector75~0_combout\ & ( (!\next_state~11_combout\ & (\Selector64~6_combout\ & \current_state.SHOW_P1~q\)) ) ) # ( !\Selector75~0_combout\ & ( \Selector64~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state~11_combout\,
	datac => \ALT_INV_Selector64~6_combout\,
	datad => \ALT_INV_current_state.SHOW_P1~q\,
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => \Selector64~7_combout\);

-- Location: FF_X6_Y21_N8
\current_state.SHOW_P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector64~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SHOW_P1~q\);

-- Location: FF_X5_Y18_N47
\current_state.INTERVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.SHOW_P1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INTERVAL~q\);

-- Location: LABCELL_X5_Y18_N51
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \current_state.SHOW_P1~q\ & ( \ms_tick_s~q\ ) ) # ( !\current_state.SHOW_P1~q\ & ( (\ms_tick_s~q\ & (((\current_state.INTERVAL~q\) # (\current_state.SHOW_P2~q\)) # (\current_state.RESULT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_current_state.RESULT~q\,
	datac => \ALT_INV_current_state.SHOW_P2~q\,
	datad => \ALT_INV_current_state.INTERVAL~q\,
	dataf => \ALT_INV_current_state.SHOW_P1~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X5_Y18_N54
\show_interval_counter_ms[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \show_interval_counter_ms[0]~0_combout\ = ( \Equal2~1_combout\ & ( (!\show_interval_counter_ms[0]~0_combout\ & (\Selector0~0_combout\ & !\Equal2~0_combout\)) # (\show_interval_counter_ms[0]~0_combout\ & (!\Selector0~0_combout\)) ) ) # ( 
-- !\Equal2~1_combout\ & ( !\show_interval_counter_ms[0]~0_combout\ $ (!\Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010100000101101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \show_interval_counter_ms[0]~0_combout\);

-- Location: LABCELL_X5_Y18_N0
\Add5~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~50_cout\ = CARRY(( \show_interval_counter_ms[0]~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	cin => GND,
	cout => \Add5~50_cout\);

-- Location: LABCELL_X5_Y18_N3
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( show_interval_counter_ms(1) ) + ( VCC ) + ( \Add5~50_cout\ ))
-- \Add5~2\ = CARRY(( show_interval_counter_ms(1) ) + ( VCC ) + ( \Add5~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(1),
	cin => \Add5~50_cout\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X6_Y18_N18
\show_interval_counter_ms[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(1) = ( \Add5~1_sumout\ & ( (show_interval_counter_ms(1)) # (\Selector0~1_combout\) ) ) # ( !\Add5~1_sumout\ & ( (!\Selector0~1_combout\ & show_interval_counter_ms(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~1_combout\,
	datac => ALT_INV_show_interval_counter_ms(1),
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => show_interval_counter_ms(1));

-- Location: LABCELL_X5_Y18_N6
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( show_interval_counter_ms(2) ) + ( VCC ) + ( \Add5~2\ ))
-- \Add5~46\ = CARRY(( show_interval_counter_ms(2) ) + ( VCC ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(2),
	cin => \Add5~2\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: MLABCELL_X4_Y18_N39
\show_interval_counter_ms[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(2) = ( \Selector0~1_combout\ & ( \Add5~45_sumout\ ) ) # ( !\Selector0~1_combout\ & ( show_interval_counter_ms(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~45_sumout\,
	datac => ALT_INV_show_interval_counter_ms(2),
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => show_interval_counter_ms(2));

-- Location: LABCELL_X5_Y18_N9
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( show_interval_counter_ms(3) ) + ( VCC ) + ( \Add5~46\ ))
-- \Add5~6\ = CARRY(( show_interval_counter_ms(3) ) + ( VCC ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_show_interval_counter_ms(3),
	cin => \Add5~46\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X6_Y18_N6
\show_interval_counter_ms[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(3) = ( \Add5~5_sumout\ & ( (show_interval_counter_ms(3)) # (\Selector0~1_combout\) ) ) # ( !\Add5~5_sumout\ & ( (!\Selector0~1_combout\ & show_interval_counter_ms(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~1_combout\,
	datad => ALT_INV_show_interval_counter_ms(3),
	dataf => \ALT_INV_Add5~5_sumout\,
	combout => show_interval_counter_ms(3));

-- Location: LABCELL_X5_Y18_N12
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( show_interval_counter_ms(4) ) + ( VCC ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( show_interval_counter_ms(4) ) + ( VCC ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(4),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X6_Y18_N45
\show_interval_counter_ms[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(4) = ( \Selector0~1_combout\ & ( \Add5~9_sumout\ ) ) # ( !\Selector0~1_combout\ & ( show_interval_counter_ms(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~9_sumout\,
	datad => ALT_INV_show_interval_counter_ms(4),
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => show_interval_counter_ms(4));

-- Location: LABCELL_X5_Y18_N15
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( show_interval_counter_ms(5) ) + ( VCC ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( show_interval_counter_ms(5) ) + ( VCC ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_show_interval_counter_ms(5),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X6_Y18_N3
\show_interval_counter_ms[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(5) = ( show_interval_counter_ms(5) & ( \Add5~13_sumout\ ) ) # ( !show_interval_counter_ms(5) & ( \Add5~13_sumout\ & ( \Selector0~1_combout\ ) ) ) # ( show_interval_counter_ms(5) & ( !\Add5~13_sumout\ & ( !\Selector0~1_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector0~1_combout\,
	datae => ALT_INV_show_interval_counter_ms(5),
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => show_interval_counter_ms(5));

-- Location: LABCELL_X5_Y18_N18
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( show_interval_counter_ms(6) ) + ( VCC ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( show_interval_counter_ms(6) ) + ( VCC ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(6),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X6_Y18_N48
\show_interval_counter_ms[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(6) = ( \Selector0~1_combout\ & ( \Add5~17_sumout\ ) ) # ( !\Selector0~1_combout\ & ( show_interval_counter_ms(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~17_sumout\,
	datad => ALT_INV_show_interval_counter_ms(6),
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => show_interval_counter_ms(6));

-- Location: LABCELL_X5_Y18_N21
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( show_interval_counter_ms(7) ) + ( VCC ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( show_interval_counter_ms(7) ) + ( VCC ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(7),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X6_Y18_N39
\show_interval_counter_ms[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(7) = ( show_interval_counter_ms(7) & ( (!\Selector0~1_combout\) # (\Add5~21_sumout\) ) ) # ( !show_interval_counter_ms(7) & ( (\Add5~21_sumout\ & \Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~21_sumout\,
	datac => \ALT_INV_Selector0~1_combout\,
	dataf => ALT_INV_show_interval_counter_ms(7),
	combout => show_interval_counter_ms(7));

-- Location: LABCELL_X6_Y18_N54
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !show_interval_counter_ms(6) & ( !show_interval_counter_ms(1) & ( (!show_interval_counter_ms(5) & (!show_interval_counter_ms(4) & (!show_interval_counter_ms(7) & !show_interval_counter_ms(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_show_interval_counter_ms(5),
	datab => ALT_INV_show_interval_counter_ms(4),
	datac => ALT_INV_show_interval_counter_ms(7),
	datad => ALT_INV_show_interval_counter_ms(3),
	datae => ALT_INV_show_interval_counter_ms(6),
	dataf => ALT_INV_show_interval_counter_ms(1),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X6_Y18_N9
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \show_interval_counter_ms[0]~0_combout\ & ( \Selector0~0_combout\ ) ) # ( !\show_interval_counter_ms[0]~0_combout\ & ( (\Selector0~0_combout\ & ((!\Equal2~0_combout\) # (!\Equal2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X5_Y18_N24
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( show_interval_counter_ms(8) ) + ( VCC ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( show_interval_counter_ms(8) ) + ( VCC ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(8),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X6_Y18_N27
\show_interval_counter_ms[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(8) = ( \Add5~25_sumout\ & ( (show_interval_counter_ms(8)) # (\Selector0~1_combout\) ) ) # ( !\Add5~25_sumout\ & ( (!\Selector0~1_combout\ & show_interval_counter_ms(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector0~1_combout\,
	datad => ALT_INV_show_interval_counter_ms(8),
	dataf => \ALT_INV_Add5~25_sumout\,
	combout => show_interval_counter_ms(8));

-- Location: LABCELL_X5_Y18_N27
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( show_interval_counter_ms(9) ) + ( VCC ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( show_interval_counter_ms(9) ) + ( VCC ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_show_interval_counter_ms(9),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: MLABCELL_X4_Y18_N42
\show_interval_counter_ms[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(9) = ( show_interval_counter_ms(9) & ( \Add5~29_sumout\ ) ) # ( !show_interval_counter_ms(9) & ( \Add5~29_sumout\ & ( \Selector0~1_combout\ ) ) ) # ( show_interval_counter_ms(9) & ( !\Add5~29_sumout\ & ( !\Selector0~1_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector0~1_combout\,
	datae => ALT_INV_show_interval_counter_ms(9),
	dataf => \ALT_INV_Add5~29_sumout\,
	combout => show_interval_counter_ms(9));

-- Location: LABCELL_X5_Y18_N30
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( show_interval_counter_ms(10) ) + ( VCC ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( show_interval_counter_ms(10) ) + ( VCC ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_show_interval_counter_ms(10),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: LABCELL_X6_Y18_N42
\show_interval_counter_ms[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(10) = ( \Add5~33_sumout\ & ( (show_interval_counter_ms(10)) # (\Selector0~1_combout\) ) ) # ( !\Add5~33_sumout\ & ( (!\Selector0~1_combout\ & show_interval_counter_ms(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector0~1_combout\,
	datad => ALT_INV_show_interval_counter_ms(10),
	dataf => \ALT_INV_Add5~33_sumout\,
	combout => show_interval_counter_ms(10));

-- Location: LABCELL_X5_Y18_N33
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( show_interval_counter_ms(11) ) + ( VCC ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( show_interval_counter_ms(11) ) + ( VCC ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_show_interval_counter_ms(11),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: LABCELL_X5_Y18_N48
\show_interval_counter_ms[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(11) = ( \Selector0~1_combout\ & ( \Add5~37_sumout\ ) ) # ( !\Selector0~1_combout\ & ( show_interval_counter_ms(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~37_sumout\,
	datad => ALT_INV_show_interval_counter_ms(11),
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => show_interval_counter_ms(11));

-- Location: LABCELL_X5_Y18_N36
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( show_interval_counter_ms(12) ) + ( VCC ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_show_interval_counter_ms(12),
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\);

-- Location: LABCELL_X6_Y18_N30
\show_interval_counter_ms[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- show_interval_counter_ms(12) = ( \Selector0~1_combout\ & ( \Add5~41_sumout\ ) ) # ( !\Selector0~1_combout\ & ( show_interval_counter_ms(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~41_sumout\,
	datac => ALT_INV_show_interval_counter_ms(12),
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => show_interval_counter_ms(12));

-- Location: LABCELL_X5_Y18_N42
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !show_interval_counter_ms(11) & ( !show_interval_counter_ms(8) & ( (!show_interval_counter_ms(10) & (!show_interval_counter_ms(9) & (!show_interval_counter_ms(2) & !show_interval_counter_ms(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_show_interval_counter_ms(10),
	datab => ALT_INV_show_interval_counter_ms(9),
	datac => ALT_INV_show_interval_counter_ms(2),
	datad => ALT_INV_show_interval_counter_ms(12),
	datae => ALT_INV_show_interval_counter_ms(11),
	dataf => ALT_INV_show_interval_counter_ms(8),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X5_Y18_N57
\next_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = ( !\show_interval_counter_ms[0]~0_combout\ & ( (\Equal2~1_combout\ & (\ms_tick_s~q\ & \Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_ms_tick_s~q\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	combout => \next_state~11_combout\);

-- Location: LABCELL_X6_Y21_N0
\Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = ( \Selector64~6_combout\ & ( (!\next_state~11_combout\ & \current_state.SHOW_P2~q\) ) ) # ( !\Selector64~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state~11_combout\,
	datad => \ALT_INV_current_state.SHOW_P2~q\,
	dataf => \ALT_INV_Selector64~6_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X6_Y21_N2
\current_state.SHOW_P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector69~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SHOW_P2~q\);

-- Location: FF_X6_Y19_N14
\current_state.RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \current_state.SHOW_P2~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RESULT~q\);

-- Location: LABCELL_X6_Y18_N36
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !\show_interval_counter_ms[0]~0_combout\ & ( (\Equal2~0_combout\ & \Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_show_interval_counter_ms[0]~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X6_Y18_N51
\Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = ( \Equal2~2_combout\ & ( (!\btn_start_deb~DUPLICATE_q\ & (\current_state.IDLE~q\ & ((!\ms_tick_s~q\) # (!\current_state.RESULT~q\)))) # (\btn_start_deb~DUPLICATE_q\ & (((!\ms_tick_s~q\) # (!\current_state.RESULT~q\)))) ) ) # ( 
-- !\Equal2~2_combout\ & ( (\current_state.IDLE~q\) # (\btn_start_deb~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011100000111011101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_start_deb~DUPLICATE_q\,
	datab => \ALT_INV_current_state.IDLE~q\,
	datac => \ALT_INV_ms_tick_s~q\,
	datad => \ALT_INV_current_state.RESULT~q\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X6_Y18_N14
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector60~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LABCELL_X5_Y21_N48
\Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = ( \btn_start_deb~DUPLICATE_q\ & ( (!\current_state.IDLE~q\) # ((\current_state.GEN_DELAY_P1~q\ & !\ms_tick_s~q\)) ) ) # ( !\btn_start_deb~DUPLICATE_q\ & ( (\current_state.GEN_DELAY_P1~q\ & !\ms_tick_s~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.IDLE~q\,
	datac => \ALT_INV_current_state.GEN_DELAY_P1~q\,
	datad => \ALT_INV_ms_tick_s~q\,
	dataf => \ALT_INV_btn_start_deb~DUPLICATE_q\,
	combout => \Selector61~0_combout\);

-- Location: FF_X5_Y21_N2
\current_state.GEN_DELAY_P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector61~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.GEN_DELAY_P1~q\);

-- Location: LABCELL_X5_Y21_N24
\Selector62~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~9_combout\ = ( \current_state.WAIT_P1~q\ & ( \Equal1~2_combout\ & ( (!\ms_tick_s~q\) # ((\current_state.GEN_DELAY_P1~q\ & !\current_state.GEN_DELAY_P2~q\)) ) ) ) # ( !\current_state.WAIT_P1~q\ & ( \Equal1~2_combout\ & ( 
-- (\current_state.GEN_DELAY_P1~q\ & (\ms_tick_s~q\ & !\current_state.GEN_DELAY_P2~q\)) ) ) ) # ( \current_state.WAIT_P1~q\ & ( !\Equal1~2_combout\ & ( (!\ms_tick_s~q\) # ((!\current_state.GEN_DELAY_P2~q\ & ((!\btn_response_deb~q\) # 
-- (\current_state.GEN_DELAY_P1~q\)))) ) ) ) # ( !\current_state.WAIT_P1~q\ & ( !\Equal1~2_combout\ & ( (\current_state.GEN_DELAY_P1~q\ & (\ms_tick_s~q\ & !\current_state.GEN_DELAY_P2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111111011111000000000101000000001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.GEN_DELAY_P1~q\,
	datab => \ALT_INV_btn_response_deb~q\,
	datac => \ALT_INV_ms_tick_s~q\,
	datad => \ALT_INV_current_state.GEN_DELAY_P2~q\,
	datae => \ALT_INV_current_state.WAIT_P1~q\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Selector62~9_combout\);

-- Location: FF_X5_Y21_N26
\current_state.WAIT_P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector62~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WAIT_P1~q\);

-- Location: LABCELL_X6_Y21_N45
\Selector63~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~3_combout\ = ( \Equal3~0_combout\ & ( (\current_state.MEASURE_P1~q\ & ((!\ms_tick_s~q\) # ((!\btn_response_deb~q\ & !\Equal3~1_combout\)))) ) ) # ( !\Equal3~0_combout\ & ( (\current_state.MEASURE_P1~q\ & ((!\ms_tick_s~q\) # 
-- (!\btn_response_deb~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ms_tick_s~q\,
	datab => \ALT_INV_btn_response_deb~q\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_current_state.MEASURE_P1~q\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector63~3_combout\);

-- Location: LABCELL_X6_Y21_N18
\Selector63~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~4_combout\ = ( \ms_tick_s~q\ & ( \Equal1~2_combout\ & ( (!\current_state.WAIT_P2~q\ & ((!\current_state.WAIT_P1~q\ & (\Selector63~3_combout\)) # (\current_state.WAIT_P1~q\ & ((!\btn_response_deb~q\))))) ) ) ) # ( !\ms_tick_s~q\ & ( 
-- \Equal1~2_combout\ & ( \Selector63~3_combout\ ) ) ) # ( \ms_tick_s~q\ & ( !\Equal1~2_combout\ & ( (\Selector63~3_combout\ & ((!\btn_response_deb~q\) # ((!\current_state.WAIT_P1~q\ & !\current_state.WAIT_P2~q\)))) ) ) ) # ( !\ms_tick_s~q\ & ( 
-- !\Equal1~2_combout\ & ( \Selector63~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010000000110011001100110111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.WAIT_P1~q\,
	datab => \ALT_INV_Selector63~3_combout\,
	datac => \ALT_INV_current_state.WAIT_P2~q\,
	datad => \ALT_INV_btn_response_deb~q\,
	datae => \ALT_INV_ms_tick_s~q\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Selector63~4_combout\);

-- Location: FF_X6_Y21_N20
\current_state.MEASURE_P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector63~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MEASURE_P1~q\);

-- Location: LABCELL_X5_Y20_N51
\led_ind_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_ind_s~0_combout\ = ( \current_state.MEASURE_P2~q\ ) # ( !\current_state.MEASURE_P2~q\ & ( \current_state.MEASURE_P1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.MEASURE_P1~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \led_ind_s~0_combout\);

-- Location: LABCELL_X5_Y19_N3
\WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = ( \current_state.INTERVAL~q\ ) # ( !\current_state.INTERVAL~q\ & ( (((!\current_state.IDLE~q\) # (\current_state.SHOW_P2~q\)) # (\current_state.RESULT~q\)) # (\current_state.SHOW_P1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SHOW_P1~q\,
	datab => \ALT_INV_current_state.RESULT~q\,
	datac => \ALT_INV_current_state.SHOW_P2~q\,
	datad => \ALT_INV_current_state.IDLE~q\,
	dataf => \ALT_INV_current_state.INTERVAL~q\,
	combout => \WideOr3~1_combout\);

-- Location: LABCELL_X7_Y19_N42
\Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(6)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_btn_response_deb~q\,
	datad => ALT_INV_timer_ms(6),
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector41~0_combout\);

-- Location: LABCELL_X7_Y19_N39
\reaction_time_p2[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(6) = ( \Selector64~6_combout\ & ( reaction_time_p2(6) ) ) # ( !\Selector64~6_combout\ & ( \Selector41~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector41~0_combout\,
	datab => ALT_INV_reaction_time_p2(6),
	dataf => \ALT_INV_Selector64~6_combout\,
	combout => reaction_time_p2(6));

-- Location: LABCELL_X6_Y21_N57
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(6)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(6),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X7_Y19_N24
\reaction_time_p1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(6) = ( reaction_time_p1(6) & ( (\Selector75~0_combout\) # (\Selector16~0_combout\) ) ) # ( !reaction_time_p1(6) & ( (\Selector16~0_combout\ & !\Selector75~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => ALT_INV_reaction_time_p1(6),
	combout => reaction_time_p1(6));

-- Location: LABCELL_X7_Y21_N54
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(9)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(9),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X7_Y21_N57
\reaction_time_p1[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(9) = ( \Selector75~0_combout\ & ( reaction_time_p1(9) ) ) # ( !\Selector75~0_combout\ & ( \Selector13~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector13~0_combout\,
	datad => ALT_INV_reaction_time_p1(9),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(9));

-- Location: LABCELL_X7_Y19_N0
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(9)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(9),
	datab => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector38~0_combout\);

-- Location: LABCELL_X7_Y19_N51
\reaction_time_p2[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(9) = ( \Selector64~6_combout\ & ( reaction_time_p2(9) ) ) # ( !\Selector64~6_combout\ & ( \Selector38~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector38~0_combout\,
	datad => ALT_INV_reaction_time_p2(9),
	dataf => \ALT_INV_Selector64~6_combout\,
	combout => reaction_time_p2(9));

-- Location: LABCELL_X7_Y19_N54
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(8)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer_ms(8),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector39~0_combout\);

-- Location: LABCELL_X7_Y19_N3
\reaction_time_p2[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(8) = ( \Selector64~6_combout\ & ( reaction_time_p2(8) ) ) # ( !\Selector64~6_combout\ & ( \Selector39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector39~0_combout\,
	datad => ALT_INV_reaction_time_p2(8),
	dataf => \ALT_INV_Selector64~6_combout\,
	combout => reaction_time_p2(8));

-- Location: LABCELL_X6_Y21_N51
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(8)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datab => ALT_INV_timer_ms(8),
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector14~0_combout\);

-- Location: LABCELL_X7_Y19_N57
\reaction_time_p1[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(8) = ( \Selector75~0_combout\ & ( reaction_time_p1(8) ) ) # ( !\Selector75~0_combout\ & ( \Selector14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector14~0_combout\,
	datad => ALT_INV_reaction_time_p1(8),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(8));

-- Location: LABCELL_X7_Y19_N48
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( reaction_time_p1(8) & ( (!reaction_time_p1(9) & (!reaction_time_p2(9) & !reaction_time_p2(8))) # (reaction_time_p1(9) & ((!reaction_time_p2(9)) # (!reaction_time_p2(8)))) ) ) # ( !reaction_time_p1(8) & ( (reaction_time_p1(9) & 
-- !reaction_time_p2(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(9),
	datac => ALT_INV_reaction_time_p2(9),
	datad => ALT_INV_reaction_time_p2(8),
	dataf => ALT_INV_reaction_time_p1(8),
	combout => \LessThan2~10_combout\);

-- Location: LABCELL_X6_Y19_N33
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(5)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(5),
	datac => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X6_Y19_N30
\reaction_time_p1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(5) = (!\Selector75~0_combout\ & (\Selector17~0_combout\)) # (\Selector75~0_combout\ & ((reaction_time_p1(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector17~0_combout\,
	datac => ALT_INV_reaction_time_p1(5),
	datad => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(5));

-- Location: LABCELL_X6_Y19_N27
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(5)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(5),
	datac => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector42~0_combout\);

-- Location: LABCELL_X6_Y19_N24
\reaction_time_p2[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(5) = ( reaction_time_p2(5) & ( (\Selector64~6_combout\) # (\Selector42~0_combout\) ) ) # ( !reaction_time_p2(5) & ( (\Selector42~0_combout\ & !\Selector64~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector42~0_combout\,
	datad => \ALT_INV_Selector64~6_combout\,
	dataf => ALT_INV_reaction_time_p2(5),
	combout => reaction_time_p2(5));

-- Location: LABCELL_X7_Y19_N33
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (\btn_response_deb~q\ & timer_ms(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btn_response_deb~q\,
	datad => ALT_INV_timer_ms(4),
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X7_Y19_N30
\reaction_time_p1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(4) = ( reaction_time_p1(4) & ( (\Selector75~0_combout\) # (\Selector18~0_combout\) ) ) # ( !reaction_time_p1(4) & ( (\Selector18~0_combout\ & !\Selector75~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector18~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => ALT_INV_reaction_time_p1(4),
	combout => reaction_time_p1(4));

-- Location: LABCELL_X7_Y19_N45
\Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (\btn_response_deb~q\ & timer_ms(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_btn_response_deb~q\,
	datac => ALT_INV_timer_ms(4),
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector43~0_combout\);

-- Location: LABCELL_X7_Y19_N18
\reaction_time_p2[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(4) = ( \Selector64~6_combout\ & ( reaction_time_p2(4) ) ) # ( !\Selector64~6_combout\ & ( \Selector43~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector43~0_combout\,
	datac => ALT_INV_reaction_time_p2(4),
	dataf => \ALT_INV_Selector64~6_combout\,
	combout => reaction_time_p2(4));

-- Location: LABCELL_X6_Y21_N39
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(7)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(7),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X7_Y19_N27
\reaction_time_p1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(7) = ( reaction_time_p1(7) & ( (\Selector75~0_combout\) # (\Selector15~0_combout\) ) ) # ( !reaction_time_p1(7) & ( (\Selector15~0_combout\ & !\Selector75~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => ALT_INV_reaction_time_p1(7),
	combout => reaction_time_p1(7));

-- Location: LABCELL_X7_Y21_N15
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(7)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer_ms(7),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector40~0_combout\);

-- Location: LABCELL_X7_Y21_N12
\reaction_time_p2[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(7) = ( reaction_time_p2(7) & ( (\Selector64~6_combout\) # (\Selector40~0_combout\) ) ) # ( !reaction_time_p2(7) & ( (\Selector40~0_combout\ & !\Selector64~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector40~0_combout\,
	datad => \ALT_INV_Selector64~6_combout\,
	dataf => ALT_INV_reaction_time_p2(7),
	combout => reaction_time_p2(7));

-- Location: LABCELL_X7_Y19_N36
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( reaction_time_p1(6) & ( (!reaction_time_p2(6) & ((!reaction_time_p2(7)) # (reaction_time_p1(7)))) # (reaction_time_p2(6) & (reaction_time_p1(7) & !reaction_time_p2(7))) ) ) # ( !reaction_time_p1(6) & ( (reaction_time_p1(7) & 
-- !reaction_time_p2(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p2(6),
	datac => ALT_INV_reaction_time_p1(7),
	datad => ALT_INV_reaction_time_p2(7),
	dataf => ALT_INV_reaction_time_p1(6),
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X7_Y19_N9
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( reaction_time_p1(7) & ( (reaction_time_p2(7) & (!reaction_time_p1(6) $ (reaction_time_p2(6)))) ) ) # ( !reaction_time_p1(7) & ( (!reaction_time_p2(7) & (!reaction_time_p1(6) $ (reaction_time_p2(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(6),
	datac => ALT_INV_reaction_time_p2(6),
	datad => ALT_INV_reaction_time_p2(7),
	dataf => ALT_INV_reaction_time_p1(7),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X7_Y19_N12
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( !\LessThan2~7_combout\ & ( \LessThan2~0_combout\ & ( (!reaction_time_p1(5) & (((!reaction_time_p1(4)) # (reaction_time_p2(4))) # (reaction_time_p2(5)))) # (reaction_time_p1(5) & (reaction_time_p2(5) & ((!reaction_time_p1(4)) # 
-- (reaction_time_p2(4))))) ) ) ) # ( !\LessThan2~7_combout\ & ( !\LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010110010101110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(5),
	datab => ALT_INV_reaction_time_p2(5),
	datac => ALT_INV_reaction_time_p1(4),
	datad => ALT_INV_reaction_time_p2(4),
	datae => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LABCELL_X7_Y19_N6
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( reaction_time_p2(9) & ( (reaction_time_p1(9) & (!reaction_time_p2(8) $ (reaction_time_p1(8)))) ) ) # ( !reaction_time_p2(9) & ( (!reaction_time_p1(9) & (!reaction_time_p2(8) $ (reaction_time_p1(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p1(9),
	datac => ALT_INV_reaction_time_p2(8),
	datad => ALT_INV_reaction_time_p1(8),
	dataf => ALT_INV_reaction_time_p2(9),
	combout => \LessThan2~9_combout\);

-- Location: LABCELL_X7_Y19_N21
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( reaction_time_p1(4) & ( !reaction_time_p2(4) ) ) # ( !reaction_time_p1(4) & ( reaction_time_p2(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p2(4),
	dataf => ALT_INV_reaction_time_p1(4),
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X6_Y21_N48
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (\btn_response_deb~q\ & timer_ms(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datad => ALT_INV_timer_ms(3),
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X6_Y19_N51
\reaction_time_p1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(3) = ( reaction_time_p1(3) & ( (\Selector75~0_combout\) # (\Selector19~0_combout\) ) ) # ( !reaction_time_p1(3) & ( (\Selector19~0_combout\ & !\Selector75~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~0_combout\,
	datad => \ALT_INV_Selector75~0_combout\,
	dataf => ALT_INV_reaction_time_p1(3),
	combout => reaction_time_p1(3));

-- Location: LABCELL_X7_Y21_N36
\Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(2)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_btn_response_deb~q\,
	datad => ALT_INV_timer_ms(2),
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector45~0_combout\);

-- Location: LABCELL_X7_Y21_N39
\reaction_time_p2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(2) = ( reaction_time_p2(2) & ( (\Selector64~6_combout\) # (\Selector45~0_combout\) ) ) # ( !reaction_time_p2(2) & ( (\Selector45~0_combout\ & !\Selector64~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector45~0_combout\,
	datad => \ALT_INV_Selector64~6_combout\,
	dataf => ALT_INV_reaction_time_p2(2),
	combout => reaction_time_p2(2));

-- Location: LABCELL_X7_Y21_N27
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(2)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(2),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X7_Y21_N48
\reaction_time_p1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(2) = ( \Selector75~0_combout\ & ( reaction_time_p1(2) ) ) # ( !\Selector75~0_combout\ & ( \Selector20~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector20~0_combout\,
	datac => ALT_INV_reaction_time_p1(2),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(2));

-- Location: LABCELL_X6_Y19_N39
\Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (\btn_response_deb~q\ & timer_ms(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datac => ALT_INV_timer_ms(3),
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector44~0_combout\);

-- Location: LABCELL_X6_Y19_N18
\reaction_time_p2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(3) = ( reaction_time_p2(3) & ( (\Selector64~6_combout\) # (\Selector44~0_combout\) ) ) # ( !reaction_time_p2(3) & ( (\Selector44~0_combout\ & !\Selector64~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector44~0_combout\,
	datad => \ALT_INV_Selector64~6_combout\,
	dataf => ALT_INV_reaction_time_p2(3),
	combout => reaction_time_p2(3));

-- Location: LABCELL_X6_Y19_N45
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( reaction_time_p2(3) & ( (reaction_time_p1(3) & (!reaction_time_p2(2) & reaction_time_p1(2))) ) ) # ( !reaction_time_p2(3) & ( ((!reaction_time_p2(2) & reaction_time_p1(2))) # (reaction_time_p1(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(3),
	datac => ALT_INV_reaction_time_p2(2),
	datad => ALT_INV_reaction_time_p1(2),
	dataf => ALT_INV_reaction_time_p2(3),
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X6_Y19_N21
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( reaction_time_p2(5) & ( !reaction_time_p1(5) ) ) # ( !reaction_time_p2(5) & ( reaction_time_p1(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_reaction_time_p1(5),
	dataf => ALT_INV_reaction_time_p2(5),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X6_Y19_N0
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( reaction_time_p2(2) & ( (reaction_time_p1(2) & (!reaction_time_p1(3) $ (reaction_time_p2(3)))) ) ) # ( !reaction_time_p2(2) & ( (!reaction_time_p1(2) & (!reaction_time_p1(3) $ (reaction_time_p2(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(3),
	datac => ALT_INV_reaction_time_p2(3),
	datad => ALT_INV_reaction_time_p1(2),
	dataf => ALT_INV_reaction_time_p2(2),
	combout => \LessThan2~4_combout\);

-- Location: LABCELL_X7_Y21_N6
\Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(0)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer_ms(0),
	datac => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector72~0_combout\);

-- Location: LABCELL_X7_Y21_N9
\reaction_time_p2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(0) = ( reaction_time_p2(0) & ( (\Selector64~6_combout\) # (\Selector72~0_combout\) ) ) # ( !reaction_time_p2(0) & ( (\Selector72~0_combout\ & !\Selector64~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector72~0_combout\,
	datad => \ALT_INV_Selector64~6_combout\,
	dataf => ALT_INV_reaction_time_p2(0),
	combout => reaction_time_p2(0));

-- Location: LABCELL_X6_Y19_N36
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(0)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_btn_response_deb~q\,
	datac => ALT_INV_timer_ms(0),
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X6_Y19_N3
\reaction_time_p1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(0) = ( \Selector75~0_combout\ & ( reaction_time_p1(0) ) ) # ( !\Selector75~0_combout\ & ( \Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector2~0_combout\,
	datad => ALT_INV_reaction_time_p1(0),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(0));

-- Location: LABCELL_X7_Y21_N45
\Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ( \current_state.MEASURE_P2~q\ & ( (!\btn_response_deb~q\) # (timer_ms(1)) ) ) # ( !\current_state.MEASURE_P2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(1),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P2~q\,
	combout => \Selector46~0_combout\);

-- Location: LABCELL_X7_Y21_N0
\reaction_time_p2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p2(1) = (!\Selector64~6_combout\ & (\Selector46~0_combout\)) # (\Selector64~6_combout\ & ((reaction_time_p2(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector46~0_combout\,
	datac => ALT_INV_reaction_time_p2(1),
	datad => \ALT_INV_Selector64~6_combout\,
	combout => reaction_time_p2(1));

-- Location: LABCELL_X7_Y21_N21
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \current_state.MEASURE_P1~q\ & ( (!\btn_response_deb~q\) # (timer_ms(1)) ) ) # ( !\current_state.MEASURE_P1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer_ms(1),
	datad => \ALT_INV_btn_response_deb~q\,
	dataf => \ALT_INV_current_state.MEASURE_P1~q\,
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X7_Y21_N24
\reaction_time_p1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- reaction_time_p1(1) = ( \Selector75~0_combout\ & ( reaction_time_p1(1) ) ) # ( !\Selector75~0_combout\ & ( \Selector21~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector21~0_combout\,
	datac => ALT_INV_reaction_time_p1(1),
	dataf => \ALT_INV_Selector75~0_combout\,
	combout => reaction_time_p1(1));

-- Location: LABCELL_X6_Y19_N42
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( reaction_time_p1(1) & ( (!reaction_time_p2(1)) # ((!reaction_time_p2(0) & reaction_time_p1(0))) ) ) # ( !reaction_time_p1(1) & ( (!reaction_time_p2(0) & (reaction_time_p1(0) & !reaction_time_p2(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p2(0),
	datac => ALT_INV_reaction_time_p1(0),
	datad => ALT_INV_reaction_time_p2(1),
	dataf => ALT_INV_reaction_time_p1(1),
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X6_Y19_N54
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( \LessThan2~4_combout\ & ( \LessThan2~3_combout\ & ( (!\LessThan2~2_combout\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\)) ) ) ) # ( !\LessThan2~4_combout\ & ( \LessThan2~3_combout\ & ( (!\LessThan2~2_combout\ & 
-- (\LessThan2~5_combout\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\))) ) ) ) # ( \LessThan2~4_combout\ & ( !\LessThan2~3_combout\ & ( (!\LessThan2~2_combout\ & (\LessThan2~5_combout\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\))) ) ) ) # ( 
-- !\LessThan2~4_combout\ & ( !\LessThan2~3_combout\ & ( (!\LessThan2~2_combout\ & (\LessThan2~5_combout\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~2_combout\,
	datab => \ALT_INV_LessThan2~5_combout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_LessThan2~4_combout\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X6_Y19_N15
\Selector80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = ( \LessThan2~6_combout\ & ( \current_state.SHOW_P2~q\ ) ) # ( !\LessThan2~6_combout\ & ( \current_state.SHOW_P2~q\ ) ) # ( \LessThan2~6_combout\ & ( !\current_state.SHOW_P2~q\ & ( (\current_state.RESULT~q\ & 
-- ((\LessThan2~9_combout\) # (\LessThan2~10_combout\))) ) ) ) # ( !\LessThan2~6_combout\ & ( !\current_state.SHOW_P2~q\ & ( (\current_state.RESULT~q\ & (((!\LessThan2~8_combout\ & \LessThan2~9_combout\)) # (\LessThan2~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110001000100010011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~10_combout\,
	datab => \ALT_INV_current_state.RESULT~q\,
	datac => \ALT_INV_LessThan2~8_combout\,
	datad => \ALT_INV_LessThan2~9_combout\,
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_current_state.SHOW_P2~q\,
	combout => \Selector80~0_combout\);

-- Location: LABCELL_X6_Y18_N33
\display_digit_values~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_digit_values~0_combout\ = ( \current_state.IDLE~q\ & ( !\current_state.INTERVAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.INTERVAL~q\,
	dataf => \ALT_INV_current_state.IDLE~q\,
	combout => \display_digit_values~0_combout\);

-- Location: LABCELL_X5_Y19_N48
\Selector81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & ((reaction_time_p1(6)))) # (\Selector80~0_combout\ & (reaction_time_p2(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p2(6),
	datac => ALT_INV_reaction_time_p1(6),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector81~0_combout\);

-- Location: LABCELL_X5_Y19_N27
\display_digit_values[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(6) = ( \Selector81~0_combout\ & ( (display_digit_values(6)) # (\WideOr3~1_combout\) ) ) # ( !\Selector81~0_combout\ & ( (!\WideOr3~1_combout\ & display_digit_values(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~1_combout\,
	datad => ALT_INV_display_digit_values(6),
	dataf => \ALT_INV_Selector81~0_combout\,
	combout => display_digit_values(6));

-- Location: LABCELL_X5_Y19_N18
\Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & ((reaction_time_p1(2)))) # (\Selector80~0_combout\ & (reaction_time_p2(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p2(2),
	datac => ALT_INV_reaction_time_p1(2),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector77~0_combout\);

-- Location: LABCELL_X5_Y19_N21
\display_digit_values[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(2) = ( \Selector77~0_combout\ & ( (display_digit_values(2)) # (\WideOr3~1_combout\) ) ) # ( !\Selector77~0_combout\ & ( (!\WideOr3~1_combout\ & display_digit_values(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~1_combout\,
	datad => ALT_INV_display_digit_values(2),
	dataf => \ALT_INV_Selector77~0_combout\,
	combout => display_digit_values(2));

-- Location: LABCELL_X2_Y22_N0
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( \display_mux_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add6~10\ = CARRY(( \display_mux_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_display_mux_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X2_Y22_N2
\display_mux_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N3
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( display_mux_counter(1) ) + ( GND ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( display_mux_counter(1) ) + ( GND ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_display_mux_counter(1),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X2_Y22_N5
\display_mux_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(1));

-- Location: LABCELL_X2_Y22_N6
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( display_mux_counter(2) ) + ( GND ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( display_mux_counter(2) ) + ( GND ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_display_mux_counter(2),
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X2_Y22_N7
\display_mux_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(2));

-- Location: LABCELL_X2_Y22_N9
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \display_mux_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( \display_mux_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_display_mux_counter[3]~DUPLICATE_q\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X2_Y22_N11
\display_mux_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N12
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( \display_mux_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( \display_mux_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display_mux_counter[4]~DUPLICATE_q\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X2_Y22_N14
\display_mux_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N15
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( display_mux_counter(5) ) + ( GND ) + ( \Add6~26\ ))
-- \Add6~2\ = CARRY(( display_mux_counter(5) ) + ( GND ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(5),
	cin => \Add6~26\,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X2_Y22_N17
\display_mux_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(5));

-- Location: LABCELL_X2_Y22_N18
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( display_mux_counter(6) ) + ( GND ) + ( \Add6~2\ ))
-- \Add6~30\ = CARRY(( display_mux_counter(6) ) + ( GND ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(6),
	cin => \Add6~2\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X2_Y22_N20
\display_mux_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~29_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(6));

-- Location: LABCELL_X2_Y22_N21
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( display_mux_counter(7) ) + ( GND ) + ( \Add6~30\ ))
-- \Add6~58\ = CARRY(( display_mux_counter(7) ) + ( GND ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_display_mux_counter(7),
	cin => \Add6~30\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: FF_X2_Y22_N23
\display_mux_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~57_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(7));

-- Location: LABCELL_X2_Y22_N24
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( display_mux_counter(8) ) + ( GND ) + ( \Add6~58\ ))
-- \Add6~6\ = CARRY(( display_mux_counter(8) ) + ( GND ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(8),
	cin => \Add6~58\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X2_Y22_N26
\display_mux_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(8));

-- Location: LABCELL_X2_Y22_N27
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( \display_mux_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~6\ ))
-- \Add6~50\ = CARRY(( \display_mux_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_display_mux_counter[9]~DUPLICATE_q\,
	cin => \Add6~6\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: FF_X2_Y22_N29
\display_mux_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~49_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N30
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( display_mux_counter(10) ) + ( GND ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( display_mux_counter(10) ) + ( GND ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(10),
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: FF_X2_Y22_N31
\display_mux_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~53_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(10));

-- Location: LABCELL_X2_Y22_N33
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( \display_mux_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~54\ ))
-- \Add6~34\ = CARRY(( \display_mux_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_display_mux_counter[11]~DUPLICATE_q\,
	cin => \Add6~54\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X2_Y22_N34
\display_mux_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y22_N36
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( display_mux_counter(12) ) + ( GND ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( display_mux_counter(12) ) + ( GND ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_display_mux_counter(12),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: FF_X2_Y22_N38
\display_mux_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~37_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(12));

-- Location: LABCELL_X2_Y22_N39
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( display_mux_counter(13) ) + ( GND ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( display_mux_counter(13) ) + ( GND ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(13),
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: FF_X2_Y22_N41
\display_mux_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(13));

-- Location: FF_X2_Y22_N35
\display_mux_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(11));

-- Location: LABCELL_X2_Y22_N42
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( display_mux_counter(14) ) + ( GND ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_display_mux_counter(14),
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\);

-- Location: FF_X2_Y22_N43
\display_mux_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~45_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(14));

-- Location: LABCELL_X1_Y22_N12
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( !display_mux_counter(12) & ( display_mux_counter(14) & ( (display_mux_counter(13) & (!display_mux_counter(11) & !display_mux_counter(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(13),
	datac => ALT_INV_display_mux_counter(11),
	datad => ALT_INV_display_mux_counter(6),
	datae => ALT_INV_display_mux_counter(12),
	dataf => ALT_INV_display_mux_counter(14),
	combout => \Equal4~1_combout\);

-- Location: FF_X2_Y22_N28
\display_mux_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~49_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(9));

-- Location: LABCELL_X2_Y22_N57
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( !display_mux_counter(10) & ( (!display_mux_counter(9) & display_mux_counter(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_mux_counter(9),
	datad => ALT_INV_display_mux_counter(7),
	dataf => ALT_INV_display_mux_counter(10),
	combout => \Equal4~2_combout\);

-- Location: FF_X2_Y22_N8
\display_mux_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_counter[2]~DUPLICATE_q\);

-- Location: FF_X2_Y22_N10
\display_mux_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(3));

-- Location: FF_X2_Y22_N13
\display_mux_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(4));

-- Location: FF_X2_Y22_N1
\display_mux_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	clrn => \rst_n~input_o\,
	sclr => \Equal4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_mux_counter(0));

-- Location: LABCELL_X2_Y22_N48
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( display_mux_counter(1) & ( display_mux_counter(0) & ( (\display_mux_counter[2]~DUPLICATE_q\ & (!display_mux_counter(3) & !display_mux_counter(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display_mux_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_display_mux_counter(3),
	datad => ALT_INV_display_mux_counter(4),
	datae => ALT_INV_display_mux_counter(1),
	dataf => ALT_INV_display_mux_counter(0),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X2_Y22_N54
\Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = ( \Equal4~0_combout\ & ( (display_mux_counter(8) & (display_mux_counter(5) & (\Equal4~1_combout\ & \Equal4~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_mux_counter(8),
	datab => ALT_INV_display_mux_counter(5),
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~2_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Equal4~3_combout\);

-- Location: FF_X2_Y22_N53
display_mux_tick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Equal4~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_mux_tick~q\);

-- Location: FF_X4_Y19_N53
\current_digit_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[1]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_digit_select(1));

-- Location: MLABCELL_X4_Y19_N18
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

-- Location: FF_X4_Y19_N20
\current_digit_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[0]~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_digit_select(0));

-- Location: MLABCELL_X4_Y19_N51
\current_digit_select[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_digit_select[1]~0_combout\ = ( current_digit_select(1) & ( current_digit_select(0) & ( !\display_mux_tick~q\ ) ) ) # ( !current_digit_select(1) & ( current_digit_select(0) & ( \display_mux_tick~q\ ) ) ) # ( current_digit_select(1) & ( 
-- !current_digit_select(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display_mux_tick~q\,
	datae => ALT_INV_current_digit_select(1),
	dataf => ALT_INV_current_digit_select(0),
	combout => \current_digit_select[1]~0_combout\);

-- Location: FF_X4_Y19_N52
\current_digit_select[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[1]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_digit_select[1]~DUPLICATE_q\);

-- Location: FF_X4_Y19_N19
\current_digit_select[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_digit_select[0]~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_digit_select[0]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y19_N51
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \current_digit_select[0]~DUPLICATE_q\ & ( (display_digit_values(2) & \current_digit_select[1]~DUPLICATE_q\) ) ) # ( !\current_digit_select[0]~DUPLICATE_q\ & ( (display_digit_values(6) & \current_digit_select[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_digit_values(6),
	datac => ALT_INV_display_digit_values(2),
	datad => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X5_Y19_N33
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & (reaction_time_p1(0))) # (\Selector80~0_combout\ & ((reaction_time_p2(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p1(0),
	datac => ALT_INV_reaction_time_p2(0),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X5_Y19_N30
\display_digit_values[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(0) = ( \Selector12~0_combout\ & ( (\WideOr3~1_combout\) # (display_digit_values(0)) ) ) # ( !\Selector12~0_combout\ & ( (display_digit_values(0) & !\WideOr3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_digit_values(0),
	datac => \ALT_INV_WideOr3~1_combout\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => display_digit_values(0));

-- Location: LABCELL_X6_Y18_N21
\Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = ( \Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p2(4)) ) ) # ( !\Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p1(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display_digit_values~0_combout\,
	datac => ALT_INV_reaction_time_p2(4),
	datad => ALT_INV_reaction_time_p1(4),
	dataf => \ALT_INV_Selector80~0_combout\,
	combout => \Selector79~0_combout\);

-- Location: LABCELL_X6_Y18_N24
\display_digit_values[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(4) = ( display_digit_values(4) & ( (!\WideOr3~1_combout\) # (\Selector79~0_combout\) ) ) # ( !display_digit_values(4) & ( (\Selector79~0_combout\ & \WideOr3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector79~0_combout\,
	datad => \ALT_INV_WideOr3~1_combout\,
	dataf => ALT_INV_display_digit_values(4),
	combout => display_digit_values(4));

-- Location: LABCELL_X6_Y19_N6
\Selector85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = ( \LessThan2~6_combout\ & ( \LessThan2~8_combout\ & ( ((!\LessThan2~9_combout\ & (!\LessThan2~10_combout\ & \current_state.RESULT~q\))) # (\current_state.SHOW_P1~q\) ) ) ) # ( !\LessThan2~6_combout\ & ( \LessThan2~8_combout\ & ( 
-- ((!\LessThan2~10_combout\ & \current_state.RESULT~q\)) # (\current_state.SHOW_P1~q\) ) ) ) # ( \LessThan2~6_combout\ & ( !\LessThan2~8_combout\ & ( ((!\LessThan2~9_combout\ & (!\LessThan2~10_combout\ & \current_state.RESULT~q\))) # 
-- (\current_state.SHOW_P1~q\) ) ) ) # ( !\LessThan2~6_combout\ & ( !\LessThan2~8_combout\ & ( ((!\LessThan2~9_combout\ & (!\LessThan2~10_combout\ & \current_state.RESULT~q\))) # (\current_state.SHOW_P1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011001100111011001100110011111100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~9_combout\,
	datab => \ALT_INV_current_state.SHOW_P1~q\,
	datac => \ALT_INV_LessThan2~10_combout\,
	datad => \ALT_INV_current_state.RESULT~q\,
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_LessThan2~8_combout\,
	combout => \Selector85~0_combout\);

-- Location: LABCELL_X5_Y19_N9
\display_digit_values[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(12) = ( display_digit_values(12) & ( (!\WideOr3~1_combout\) # (\Selector85~0_combout\) ) ) # ( !display_digit_values(12) & ( (\WideOr3~1_combout\ & \Selector85~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~1_combout\,
	datad => \ALT_INV_Selector85~0_combout\,
	dataf => ALT_INV_display_digit_values(12),
	combout => display_digit_values(12));

-- Location: LABCELL_X5_Y19_N15
\Selector83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & (reaction_time_p1(8))) # (\Selector80~0_combout\ & ((reaction_time_p2(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p1(8),
	datac => ALT_INV_reaction_time_p2(8),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector83~0_combout\);

-- Location: LABCELL_X5_Y19_N12
\display_digit_values[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(8) = ( \Selector83~0_combout\ & ( (display_digit_values(8)) # (\WideOr3~1_combout\) ) ) # ( !\Selector83~0_combout\ & ( (!\WideOr3~1_combout\ & display_digit_values(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr3~1_combout\,
	datad => ALT_INV_display_digit_values(8),
	dataf => \ALT_INV_Selector83~0_combout\,
	combout => display_digit_values(8));

-- Location: LABCELL_X5_Y19_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( display_digit_values(12) & ( display_digit_values(8) & ( (!\current_digit_select[1]~DUPLICATE_q\) # ((!current_digit_select(0) & ((display_digit_values(4)))) # (current_digit_select(0) & (display_digit_values(0)))) ) ) ) # ( 
-- !display_digit_values(12) & ( display_digit_values(8) & ( (!\current_digit_select[1]~DUPLICATE_q\ & (((current_digit_select(0))))) # (\current_digit_select[1]~DUPLICATE_q\ & ((!current_digit_select(0) & ((display_digit_values(4)))) # 
-- (current_digit_select(0) & (display_digit_values(0))))) ) ) ) # ( display_digit_values(12) & ( !display_digit_values(8) & ( (!\current_digit_select[1]~DUPLICATE_q\ & (((!current_digit_select(0))))) # (\current_digit_select[1]~DUPLICATE_q\ & 
-- ((!current_digit_select(0) & ((display_digit_values(4)))) # (current_digit_select(0) & (display_digit_values(0))))) ) ) ) # ( !display_digit_values(12) & ( !display_digit_values(8) & ( (\current_digit_select[1]~DUPLICATE_q\ & ((!current_digit_select(0) & 
-- ((display_digit_values(4)))) # (current_digit_select(0) & (display_digit_values(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_digit_values(0),
	datab => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	datac => ALT_INV_current_digit_select(0),
	datad => ALT_INV_display_digit_values(4),
	datae => ALT_INV_display_digit_values(12),
	dataf => ALT_INV_display_digit_values(8),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X6_Y19_N48
\Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = ( \Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p2(7)) ) ) # ( !\Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p1(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_display_digit_values~0_combout\,
	datac => ALT_INV_reaction_time_p2(7),
	datad => ALT_INV_reaction_time_p1(7),
	dataf => \ALT_INV_Selector80~0_combout\,
	combout => \Selector82~0_combout\);

-- Location: LABCELL_X5_Y19_N24
\display_digit_values[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(7) = ( display_digit_values(7) & ( (!\WideOr3~1_combout\) # (\Selector82~0_combout\) ) ) # ( !display_digit_values(7) & ( (\WideOr3~1_combout\ & \Selector82~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~1_combout\,
	datab => \ALT_INV_Selector82~0_combout\,
	dataf => ALT_INV_display_digit_values(7),
	combout => display_digit_values(7));

-- Location: LABCELL_X5_Y19_N54
\Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & (reaction_time_p1(3))) # (\Selector80~0_combout\ & ((reaction_time_p2(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p1(3),
	datac => ALT_INV_reaction_time_p2(3),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector78~0_combout\);

-- Location: LABCELL_X5_Y19_N57
\display_digit_values[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(3) = ( \Selector78~0_combout\ & ( (display_digit_values(3)) # (\WideOr3~1_combout\) ) ) # ( !\Selector78~0_combout\ & ( (!\WideOr3~1_combout\ & display_digit_values(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr3~1_combout\,
	datad => ALT_INV_display_digit_values(3),
	dataf => \ALT_INV_Selector78~0_combout\,
	combout => display_digit_values(3));

-- Location: MLABCELL_X4_Y19_N57
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( display_digit_values(3) & ( (current_digit_select(1) & ((\current_digit_select[0]~DUPLICATE_q\) # (display_digit_values(7)))) ) ) # ( !display_digit_values(3) & ( (current_digit_select(1) & (display_digit_values(7) & 
-- !\current_digit_select[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_digit_select(1),
	datac => ALT_INV_display_digit_values(7),
	datad => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	dataf => ALT_INV_display_digit_values(3),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X5_Y19_N6
\Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & ((reaction_time_p1(1)))) # (\Selector80~0_combout\ & (reaction_time_p2(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_reaction_time_p2(1),
	datac => ALT_INV_reaction_time_p1(1),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector76~0_combout\);

-- Location: LABCELL_X5_Y19_N0
\display_digit_values[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(1) = ( \Selector76~0_combout\ & ( (display_digit_values(1)) # (\WideOr3~1_combout\) ) ) # ( !\Selector76~0_combout\ & ( (!\WideOr3~1_combout\ & display_digit_values(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr3~1_combout\,
	datad => ALT_INV_display_digit_values(1),
	dataf => \ALT_INV_Selector76~0_combout\,
	combout => display_digit_values(1));

-- Location: MLABCELL_X4_Y19_N27
\Selector80~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = ( \Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p2(5)) ) ) # ( !\Selector80~0_combout\ & ( (\display_digit_values~0_combout\ & reaction_time_p1(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_display_digit_values~0_combout\,
	datac => ALT_INV_reaction_time_p1(5),
	datad => ALT_INV_reaction_time_p2(5),
	dataf => \ALT_INV_Selector80~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: MLABCELL_X4_Y19_N15
\display_digit_values[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(5) = ( \Selector80~1_combout\ & ( (\WideOr3~1_combout\) # (display_digit_values(5)) ) ) # ( !\Selector80~1_combout\ & ( (display_digit_values(5) & !\WideOr3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display_digit_values(5),
	datad => \ALT_INV_WideOr3~1_combout\,
	dataf => \ALT_INV_Selector80~1_combout\,
	combout => display_digit_values(5));

-- Location: MLABCELL_X4_Y19_N9
\display_digit_values[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(13) = ( display_digit_values(13) & ( (!\WideOr3~1_combout\) # (\Selector80~0_combout\) ) ) # ( !display_digit_values(13) & ( (\Selector80~0_combout\ & \WideOr3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector80~0_combout\,
	datad => \ALT_INV_WideOr3~1_combout\,
	dataf => ALT_INV_display_digit_values(13),
	combout => display_digit_values(13));

-- Location: LABCELL_X5_Y19_N45
\Selector84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = ( \display_digit_values~0_combout\ & ( (!\Selector80~0_combout\ & ((reaction_time_p1(9)))) # (\Selector80~0_combout\ & (reaction_time_p2(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_reaction_time_p2(9),
	datac => ALT_INV_reaction_time_p1(9),
	datad => \ALT_INV_Selector80~0_combout\,
	dataf => \ALT_INV_display_digit_values~0_combout\,
	combout => \Selector84~0_combout\);

-- Location: LABCELL_X5_Y19_N42
\display_digit_values[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- display_digit_values(9) = ( \Selector84~0_combout\ & ( (\WideOr3~1_combout\) # (display_digit_values(9)) ) ) # ( !\Selector84~0_combout\ & ( (display_digit_values(9) & !\WideOr3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_digit_values(9),
	datac => \ALT_INV_WideOr3~1_combout\,
	dataf => \ALT_INV_Selector84~0_combout\,
	combout => display_digit_values(9));

-- Location: MLABCELL_X4_Y19_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( display_digit_values(13) & ( display_digit_values(9) & ( (!current_digit_select(1)) # ((!current_digit_select(0) & ((display_digit_values(5)))) # (current_digit_select(0) & (display_digit_values(1)))) ) ) ) # ( 
-- !display_digit_values(13) & ( display_digit_values(9) & ( (!current_digit_select(1) & (((current_digit_select(0))))) # (current_digit_select(1) & ((!current_digit_select(0) & ((display_digit_values(5)))) # (current_digit_select(0) & 
-- (display_digit_values(1))))) ) ) ) # ( display_digit_values(13) & ( !display_digit_values(9) & ( (!current_digit_select(1) & (((!current_digit_select(0))))) # (current_digit_select(1) & ((!current_digit_select(0) & ((display_digit_values(5)))) # 
-- (current_digit_select(0) & (display_digit_values(1))))) ) ) ) # ( !display_digit_values(13) & ( !display_digit_values(9) & ( (current_digit_select(1) & ((!current_digit_select(0) & ((display_digit_values(5)))) # (current_digit_select(0) & 
-- (display_digit_values(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_digit_values(1),
	datab => ALT_INV_display_digit_values(5),
	datac => ALT_INV_current_digit_select(1),
	datad => ALT_INV_current_digit_select(0),
	datae => ALT_INV_display_digit_values(13),
	dataf => ALT_INV_display_digit_values(9),
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X4_Y19_N54
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Mux6~0_combout\ & ( !\Mux4~0_combout\ ) ) # ( !\Mux6~0_combout\ & ( !\Mux5~0_combout\ $ (((\Mux7~0_combout\ & !\Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111001100110000111100110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: FF_X4_Y19_N55
\seg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(0));

-- Location: MLABCELL_X4_Y19_N24
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & ((!\Mux5~0_combout\) # (\Mux7~0_combout\))) ) ) # ( !\Mux6~0_combout\ & ( (!\Mux5~0_combout\) # ((!\Mux7~0_combout\ & !\Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X4_Y19_N26
\seg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(1));

-- Location: MLABCELL_X4_Y19_N33
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & ((\Mux5~0_combout\) # (\Mux7~0_combout\))) ) ) # ( !\Mux6~0_combout\ & ( (!\Mux4~0_combout\) # (!\Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X4_Y19_N34
\seg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(2));

-- Location: MLABCELL_X4_Y19_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & ((!\Mux7~0_combout\) # (!\Mux5~0_combout\))) ) ) # ( !\Mux6~0_combout\ & ( !\Mux5~0_combout\ $ (((!\Mux4~0_combout\ & \Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010010110100101101001010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X4_Y19_N13
\seg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(3));

-- Location: MLABCELL_X4_Y19_N6
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & !\Mux7~0_combout\) ) ) # ( !\Mux6~0_combout\ & ( (!\Mux7~0_combout\ & !\Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X4_Y19_N7
\seg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(4));

-- Location: MLABCELL_X4_Y19_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & (!\Mux7~0_combout\ & \Mux5~0_combout\)) ) ) # ( !\Mux6~0_combout\ & ( (!\Mux4~0_combout\ & ((!\Mux7~0_combout\) # (\Mux5~0_combout\))) # (\Mux4~0_combout\ & ((!\Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101011011010110110101101101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X4_Y19_N31
\seg_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(5));

-- Location: MLABCELL_X4_Y19_N21
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mux6~0_combout\ & ( (!\Mux4~0_combout\ & ((!\Mux7~0_combout\) # (!\Mux5~0_combout\))) ) ) # ( !\Mux6~0_combout\ & ( !\Mux4~0_combout\ $ (!\Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X4_Y19_N22
\seg_internal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_internal(6));

-- Location: LABCELL_X2_Y21_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \current_digit_select[1]~DUPLICATE_q\ & ( \current_digit_select[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X2_Y21_N1
\an_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(0));

-- Location: LABCELL_X2_Y21_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \current_digit_select[1]~DUPLICATE_q\ & ( !\current_digit_select[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X2_Y21_N31
\an_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(1));

-- Location: LABCELL_X2_Y21_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\current_digit_select[1]~DUPLICATE_q\ & ( \current_digit_select[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X2_Y21_N16
\an_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(2));

-- Location: LABCELL_X2_Y21_N6
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !\current_digit_select[1]~DUPLICATE_q\ & ( !\current_digit_select[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_digit_select[1]~DUPLICATE_q\,
	dataf => \ALT_INV_current_digit_select[0]~DUPLICATE_q\,
	combout => \Mux1~1_combout\);

-- Location: FF_X2_Y21_N7
\an_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \display_mux_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => an_internal(3));

-- Location: LABCELL_X12_Y7_N0
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


