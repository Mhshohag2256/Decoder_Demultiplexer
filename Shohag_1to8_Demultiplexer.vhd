library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Shohag_1to8Demux_test is

port(	Shohag_IN:in std_logic;
		Shohag_S:in std_logic_vector(2 downto 0);
		Shohag_OUT:out std_logic_vector(7 downto 0));
end Shohag_1to8Demux_test;

architecture arch of Shohag_1to8Demux_test is

	begin

			Shohag_OUT(0)<=Shohag_IN when Shohag_S="000"else'0';
			Shohag_OUT(1)<=Shohag_IN when Shohag_S="001"else'0';
			Shohag_OUT(2)<=Shohag_IN when Shohag_S="010"else'0';
			Shohag_OUT(3)<=Shohag_IN when Shohag_S="011"else'0';
			Shohag_OUT(4)<=Shohag_IN when Shohag_S="100"else'0';
			Shohag_OUT(5)<=Shohag_IN when Shohag_S="101"else'0';
			Shohag_OUT(6)<=Shohag_IN when Shohag_S="110"else'0';
			Shohag_OUT(7)<=Shohag_IN when Shohag_S="111"else'0';
			
end arch;


