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

-- DATE "03/21/2022 00:24:57"

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

ENTITY 	v_melhor IS
    PORT (
	in1 : IN std_logic_vector(1 DOWNTO 0);
	in2 : IN std_logic_vector(1 DOWNTO 0);
	in3 : IN std_logic_vector(1 DOWNTO 0);
	in4 : IN std_logic_vector(1 DOWNTO 0);
	reset : IN std_logic;
	clock : IN std_logic;
	result : OUT std_logic_vector(1 DOWNTO 0)
	);
END v_melhor;

-- Design Ports Information
-- result[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF v_melhor IS
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
SIGNAL \in4[0]~input_o\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \in4[1]~input_o\ : std_logic;
SIGNAL \regC[0]~feeder_combout\ : std_logic;
SIGNAL \regC[1]~feeder_combout\ : std_logic;
SIGNAL \reg4[0]~feeder_combout\ : std_logic;
SIGNAL \reg2[1]~feeder_combout\ : std_logic;
SIGNAL \reg4[1]~feeder_combout\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg3[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \regB[0]~feeder_combout\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \reg2[0]~feeder_combout\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \reg1[0]~feeder_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reg3[1]~feeder_combout\ : std_logic;
SIGNAL \reg1[1]~feeder_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL regout : std_logic_vector(1 DOWNTO 0);
SIGNAL regC : std_logic_vector(1 DOWNTO 0);
SIGNAL regB : std_logic_vector(1 DOWNTO 0);
SIGNAL regA : std_logic_vector(1 DOWNTO 0);
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

-- Location: FF_X1_Y21_N13
\regC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regC[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regC(0));

-- Location: FF_X1_Y21_N27
\regC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regC[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regC(1));

-- Location: FF_X1_Y23_N29
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

-- Location: FF_X1_Y19_N13
\reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg2[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(1));

-- Location: FF_X1_Y19_N7
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

-- Location: IOIBUF_X0_Y23_N15
\in4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(0),
	o => \in4[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\in3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\in1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\in2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\in3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\in4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(1),
	o => \in4[1]~input_o\);

-- Location: LCCOMB_X1_Y21_N12
\regC[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regC[0]~feeder_combout\ = reg4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg4(0),
	combout => \regC[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y21_N26
\regC[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regC[1]~feeder_combout\ = reg4(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg4(1),
	combout => \regC[1]~feeder_combout\);

-- Location: LCCOMB_X1_Y23_N28
\reg4[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg4[0]~feeder_combout\ = \in4[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in4[0]~input_o\,
	combout => \reg4[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y19_N12
\reg2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[1]~feeder_combout\ = \in2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	combout => \reg2[1]~feeder_combout\);

-- Location: LCCOMB_X1_Y19_N6
\reg4[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg4[1]~feeder_combout\ = \in4[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in4[1]~input_o\,
	combout => \reg4[1]~feeder_combout\);

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: LCCOMB_X1_Y23_N4
\reg3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg3[0]~feeder_combout\ = \in3[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[0]~input_o\,
	combout => \reg3[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y23_N5
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

-- Location: LCCOMB_X1_Y21_N4
\regB[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regB[0]~feeder_combout\ = reg3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg3(0),
	combout => \regB[0]~feeder_combout\);

-- Location: FF_X1_Y21_N5
\regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regB[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(0));

-- Location: IOIBUF_X0_Y18_N15
\in2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X1_Y18_N4
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

-- Location: FF_X1_Y18_N5
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

-- Location: IOIBUF_X0_Y23_N1
\in1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: LCCOMB_X1_Y23_N26
\reg1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[0]~feeder_combout\ = \in1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[0]~input_o\,
	combout => \reg1[0]~feeder_combout\);

-- Location: FF_X1_Y23_N27
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

-- Location: LCCOMB_X1_Y21_N6
\Mult0|mult_core|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (reg2(0) & reg1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg2(0),
	datad => reg1(0),
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: FF_X1_Y21_N7
\regA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mult0|mult_core|result[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(0));

-- Location: LCCOMB_X1_Y21_N22
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = regC(0) $ (regB(0) $ (regA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regC(0),
	datac => regB(0),
	datad => regA(0),
	combout => \Add1~0_combout\);

-- Location: DDIOOUTCELL_X0_Y19_N18
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

-- Location: LCCOMB_X1_Y22_N30
\reg3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg3[1]~feeder_combout\ = \in3[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[1]~input_o\,
	combout => \reg3[1]~feeder_combout\);

-- Location: FF_X1_Y22_N31
\reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg3[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(1));

-- Location: FF_X1_Y21_N29
\regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => reg3(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(1));

-- Location: LCCOMB_X1_Y22_N24
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

-- Location: FF_X1_Y22_N25
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

-- Location: LCCOMB_X1_Y21_N8
\Mult0|mult_core|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (reg2(1) & (reg1(0) $ (((reg2(0) & reg1(1)))))) # (!reg2(1) & (reg2(0) & (reg1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2(1),
	datab => reg2(0),
	datac => reg1(1),
	datad => reg1(0),
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: FF_X1_Y21_N9
\regA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mult0|mult_core|result[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(1));

-- Location: LCCOMB_X1_Y21_N10
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = regA(1) $ (((regC(0) & ((regB(0)) # (regA(0)))) # (!regC(0) & ((!regA(0)) # (!regB(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regC(0),
	datab => regB(0),
	datac => regA(1),
	datad => regA(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y21_N28
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = regC(1) $ (regB(1) $ (!\Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regC(1),
	datac => regB(1),
	datad => \Add1~1_combout\,
	combout => \Add1~2_combout\);

-- Location: DDIOOUTCELL_X0_Y21_N25
\regout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regout(1));

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;
END structure;


