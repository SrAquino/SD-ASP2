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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/21/2022 00:10:03"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	asp2 IS
    PORT (
	in1 : IN std_logic_vector(1 DOWNTO 0);
	in2 : IN std_logic_vector(1 DOWNTO 0);
	in3 : IN std_logic_vector(1 DOWNTO 0);
	in4 : IN std_logic_vector(1 DOWNTO 0);
	reset : IN std_logic;
	clock : IN std_logic;
	result : OUT std_logic_vector(1 DOWNTO 0)
	);
END asp2;

-- Design Ports Information
-- result[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF asp2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in4 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_result : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in4[1]~input_o\ : std_logic;
SIGNAL \reg4[1]~feeder_combout\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \reg3[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in4[0]~input_o\ : std_logic;
SIGNAL \reg4[0]~feeder_combout\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \reg2[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reg1[0]~feeder_combout\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \reg1[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL regout : std_logic_vector(1 DOWNTO 0);
SIGNAL reg4 : std_logic_vector(1 DOWNTO 0);
SIGNAL reg3 : std_logic_vector(1 DOWNTO 0);
SIGNAL reg2 : std_logic_vector(1 DOWNTO 0);
SIGNAL reg1 : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
ww_in4 <= in4;
ww_reset <= reset;
ww_clock <= clock;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: FF_X1_Y4_N31
\reg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg4[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg4(1));

-- Location: IOIBUF_X0_Y6_N22
\in1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\in1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\in4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(1),
	o => \in4[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N30
\reg4[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg4[1]~feeder_combout\ = \in4[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in4[1]~input_o\,
	combout => \reg4[1]~feeder_combout\);

-- Location: IOOBUF_X0_Y5_N23
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regout(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regout(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N22
\in3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\reg3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg3[0]~feeder_combout\ = \in3[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3[0]~input_o\,
	combout => \reg3[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y4_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y4_N15
\reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg3[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(0));

-- Location: IOIBUF_X0_Y7_N15
\in4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(0),
	o => \in4[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\reg4[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg4[0]~feeder_combout\ = \in4[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in4[0]~input_o\,
	combout => \reg4[0]~feeder_combout\);

-- Location: FF_X1_Y4_N9
\reg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg4[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg4(0));

-- Location: IOIBUF_X0_Y8_N1
\in2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\reg2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[0]~feeder_combout\ = \in2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[0]~input_o\,
	combout => \reg2[0]~feeder_combout\);

-- Location: FF_X1_Y4_N27
\reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg2[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(0));

-- Location: LCCOMB_X1_Y4_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = reg3(0) $ (reg4(0) $ (((reg1(0) & reg2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg1(0),
	datab => reg3(0),
	datac => reg4(0),
	datad => reg2(0),
	combout => \Add1~0_combout\);

-- Location: DDIOOUTCELL_X0_Y5_N25
\regout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regout(0));

-- Location: LCCOMB_X1_Y4_N12
\reg1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[0]~feeder_combout\ = \in1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	combout => \reg1[0]~feeder_combout\);

-- Location: FF_X1_Y4_N13
\reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(0));

-- Location: IOIBUF_X0_Y7_N1
\in2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: FF_X1_Y4_N19
\reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in2[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(1));

-- Location: LCCOMB_X1_Y4_N28
\reg1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[1]~feeder_combout\ = \in1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	combout => \reg1[1]~feeder_combout\);

-- Location: FF_X1_Y4_N29
\reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(1));

-- Location: LCCOMB_X1_Y4_N18
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (reg2(0) & (reg1(1) $ (((reg1(0) & reg2(1)))))) # (!reg2(0) & (reg1(0) & (reg2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2(0),
	datab => reg1(0),
	datac => reg2(1),
	datad => reg1(1),
	combout => \Add1~2_combout\);

-- Location: IOIBUF_X0_Y8_N15
\in3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: FF_X1_Y4_N17
\reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in3[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(1));

-- Location: LCCOMB_X1_Y4_N6
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (reg4(0) & ((reg3(0)) # ((reg2(0) & reg1(0))))) # (!reg4(0) & (((!reg1(0)) # (!reg3(0))) # (!reg2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2(0),
	datab => reg4(0),
	datac => reg3(0),
	datad => reg1(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y4_N16
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = reg4(1) $ (\Add1~2_combout\ $ (reg3(1) $ (!\Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg4(1),
	datab => \Add1~2_combout\,
	datac => reg3(1),
	datad => \Add1~1_combout\,
	combout => \Add1~3_combout\);

-- Location: DDIOOUTCELL_X0_Y4_N25
\regout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regout(1));

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;
END structure;


