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

-- DATE "03/21/2022 00:22:05"

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

ENTITY 	v2_melhor IS
    PORT (
	in1 : IN std_logic_vector(1 DOWNTO 0);
	in2 : IN std_logic_vector(1 DOWNTO 0);
	in3 : IN std_logic_vector(1 DOWNTO 0);
	in4 : IN std_logic_vector(1 DOWNTO 0);
	reset : IN std_logic;
	clock : IN std_logic;
	result : OUT std_logic_vector(1 DOWNTO 0)
	);
END v2_melhor;

-- Design Ports Information
-- result[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in4[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF v2_melhor IS
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
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \in4[1]~input_o\ : std_logic;
SIGNAL \regB[1]~feeder_combout\ : std_logic;
SIGNAL \reg1[0]~feeder_combout\ : std_logic;
SIGNAL \reg1[1]~feeder_combout\ : std_logic;
SIGNAL \reg2[1]~feeder_combout\ : std_logic;
SIGNAL \reg3[1]~feeder_combout\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \in4[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \regC[0]~feeder_combout\ : std_logic;
SIGNAL \regE[0]~feeder_combout\ : std_logic;
SIGNAL \reg2[0]~feeder_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \reg3[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg4[1]~feeder_combout\ : std_logic;
SIGNAL \regC[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL regout : std_logic_vector(1 DOWNTO 0);
SIGNAL regE : std_logic_vector(1 DOWNTO 0);
SIGNAL regD : std_logic_vector(1 DOWNTO 0);
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

-- Location: FF_X1_Y23_N11
\regD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regD(1));

-- Location: FF_X1_Y23_N23
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

-- Location: FF_X1_Y23_N13
\regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regB[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(1));

-- Location: LCCOMB_X1_Y23_N10
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = regB(1) $ (regA(1) $ (((regB(0) & regA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(1),
	datab => regB(0),
	datac => regA(0),
	datad => regA(1),
	combout => \Add1~1_combout\);

-- Location: FF_X2_Y23_N5
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

-- Location: FF_X1_Y22_N1
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

-- Location: FF_X1_Y23_N15
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

-- Location: LCCOMB_X1_Y23_N22
\Mult0|mult_core|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (reg1(0) & (reg2(1) $ (((reg1(1) & reg2(0)))))) # (!reg1(0) & (reg1(1) & ((reg2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg1(0),
	datab => reg1(1),
	datac => reg2(1),
	datad => reg2(0),
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: FF_X2_Y23_N29
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

-- Location: IOIBUF_X3_Y24_N8
\in1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\in2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

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

-- Location: IOIBUF_X1_Y24_N1
\in2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\in3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\in4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(1),
	o => \in4[1]~input_o\);

-- Location: LCCOMB_X1_Y23_N12
\regB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regB[1]~feeder_combout\ = reg3(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg3(1),
	combout => \regB[1]~feeder_combout\);

-- Location: LCCOMB_X2_Y23_N4
\reg1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[0]~feeder_combout\ = \in1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in1[0]~input_o\,
	combout => \reg1[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y22_N0
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

-- Location: LCCOMB_X1_Y23_N14
\reg2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[1]~feeder_combout\ = \in2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2[1]~input_o\,
	combout => \reg2[1]~feeder_combout\);

-- Location: LCCOMB_X2_Y23_N28
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOIBUF_X1_Y24_N8
\in4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in4(0),
	o => \in4[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y23_N25
\reg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in4[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg4(0));

-- Location: LCCOMB_X1_Y23_N26
\regC[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regC[0]~feeder_combout\ = reg4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg4(0),
	combout => \regC[0]~feeder_combout\);

-- Location: FF_X1_Y23_N27
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

-- Location: LCCOMB_X1_Y23_N20
\regE[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regE[0]~feeder_combout\ = regC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => regC(0),
	combout => \regE[0]~feeder_combout\);

-- Location: FF_X1_Y23_N21
\regE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regE[0]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regE(0));

-- Location: LCCOMB_X1_Y21_N0
\reg2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[0]~feeder_combout\ = \in2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[0]~input_o\,
	combout => \reg2[0]~feeder_combout\);

-- Location: FF_X1_Y21_N1
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

-- Location: LCCOMB_X1_Y23_N8
\Mult0|mult_core|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (reg1(0) & reg2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg1(0),
	datad => reg2(0),
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: FF_X1_Y23_N9
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

-- Location: IOIBUF_X3_Y24_N1
\in3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: LCCOMB_X2_Y23_N10
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

-- Location: FF_X2_Y23_N11
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

-- Location: FF_X1_Y23_N29
\regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => reg3(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(0));

-- Location: LCCOMB_X1_Y23_N18
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = regA(0) $ (regB(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => regA(0),
	datad => regB(0),
	combout => \Add1~0_combout\);

-- Location: FF_X1_Y23_N19
\regD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regD(0));

-- Location: LCCOMB_X1_Y23_N28
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = regE(0) $ (regD(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regE(0),
	datad => regD(0),
	combout => \Add0~0_combout\);

-- Location: DDIOOUTCELL_X0_Y23_N4
\regout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regout(0));

-- Location: LCCOMB_X1_Y22_N2
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

-- Location: FF_X1_Y22_N3
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

-- Location: LCCOMB_X1_Y23_N30
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

-- Location: FF_X1_Y23_N31
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

-- Location: FF_X1_Y23_N17
\regE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regC(1),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regE(1));

-- Location: LCCOMB_X1_Y23_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = regD(1) $ (regE(1) $ (((regE(0) & !regD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regD(1),
	datab => regE(0),
	datac => regE(1),
	datad => regD(0),
	combout => \Add0~1_combout\);

-- Location: DDIOOUTCELL_X0_Y23_N11
\regout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regout(1));

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;
END structure;


