-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
-- CREATED		"Thu Jul 01 12:44:45 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Shohag_2to4_Decoder_blockDiagram_VHDL IS 
	PORT
	(
		Shohag_IN_1 :  IN  STD_LOGIC;
		Shohag_IN_2 :  IN  STD_LOGIC;
		Shohag_OUT_1 :  OUT  STD_LOGIC;
		Shohag_OUT_2 :  OUT  STD_LOGIC;
		Shohag_OUT_3 :  OUT  STD_LOGIC;
		Shohag_OUT_4 :  OUT  STD_LOGIC
	);
END Shohag_2to4_Decoder_blockDiagram_VHDL;

ARCHITECTURE bdf_type OF Shohag_2to4_Decoder_blockDiagram_VHDL IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



Shohag_OUT_1 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


Shohag_OUT_2 <= Shohag_IN_1 AND SYNTHESIZED_WIRE_5;


Shohag_OUT_3 <= Shohag_IN_2 AND SYNTHESIZED_WIRE_4;


Shohag_OUT_4 <= Shohag_IN_2 AND Shohag_IN_1;


SYNTHESIZED_WIRE_4 <= NOT(Shohag_IN_1);



SYNTHESIZED_WIRE_5 <= NOT(Shohag_IN_2);



END bdf_type;