LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE adder_package IS
	COMPONENT wong_half_adder IS
		PORT (X, Y			   : IN STD_LOGIC;
				Sum, Carry		: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_full_adder IS
		PORT (X, Y, Cin		: IN STD_LOGIC;
				Sum, Cout		: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_4bit_adder IS
		PORT (X, Y			: IN STD_LOGIC_VECTOR(3 downto 0);
				Cin			: IN STD_LOGIC;
				S				: OUT STD_LOGIC_VECTOR(3 downto 0);
				Cout			: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_4bit_add_sub IS
	PORT (X, Y			           				: IN STD_LOGIC_VECTOR(3 downto 0);
			Opcode, Cin       					: IN STD_LOGIC;
			S				            			: OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout, Zero, Overflow, Negative	: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_8bit_add_sub IS
	PORT (X, Y			           				: IN STD_LOGIC_VECTOR(7 downto 0);
			Opcode, Cin       					: IN STD_LOGIC;
			S				            			: OUT STD_LOGIC_VECTOR(7 downto 0);
			Cout, Zero, Overflow, Negative	: OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT wong_16bit_add_sub IS
	PORT (X, Y			           				: IN STD_LOGIC_VECTOR(15 downto 0);
			Opcode, Cin       					: IN STD_LOGIC;
			S				            			: OUT STD_LOGIC_VECTOR(15 downto 0);
			Cout, Zero, Overflow, Negative	: OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT wong_32bit_add_sub IS
	PORT (X, Y			           				: IN STD_LOGIC_VECTOR(31 downto 0);
			Opcode, Cin       					: IN STD_LOGIC;
			S				            			: OUT STD_LOGIC_VECTOR(31 downto 0);
			Cout, Zero, Overflow, Negative	: OUT STD_LOGIC);
  END COMPONENT;
	
	COMPONENT wong_seven_segment_A IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT wong_seven_segment_B IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_C IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_D IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0); 
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_E IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_F IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_G IS
		PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
			  Segment				: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_seven_segment_final IS
	PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
		  Segment				: OUT STD_LOGIC_VECTOR(6 downto 0));
	END COMPONENT;
	
	COMPONENT wong_unsigned_seven_segment_final IS
	PORT(Sum						: IN STD_LOGIC_VECTOR(3 downto 0);
		  D0						: OUT STD_LOGIC_VECTOR(6 downto 0);
		  D1						: OUT STD_LOGIC_VECTOR(6 downto 0));
	END COMPONENT;
	
	COMPONENT wong_2to1_MUX is
    Port ( SEL 		: in  STD_LOGIC;
           A   		: in  STD_LOGIC;
           B   		: in  STD_LOGIC;
           OUTPUT		: out STD_LOGIC);
	END COMPONENT;
	
	COMPONENT wong_comparator is
  PORT (X, Y                    : IN STD_LOGIC_VECTOR(3 downto 0);
      OUTPUT 		: out STD_LOGIC
   );
  END COMPONENT; 
  
  COMPONENT wong_8bit_comparator is
  PORT (X, Y                    : IN STD_LOGIC_VECTOR(7 downto 0);
      OUTPUT 		: out STD_LOGIC
   );
  END COMPONENT;
  
  COMPONENT wong_16bit_comparator is
  PORT (X, Y                    : IN STD_LOGIC_VECTOR(15 downto 0);
      OUTPUT 		: out STD_LOGIC
   );
  END COMPONENT;
  
  COMPONENT wong_32bit_comparator is
  PORT (X, Y                    : IN STD_LOGIC_VECTOR(31 downto 0);
      OUTPUT 		: out STD_LOGIC
   );
  END COMPONENT;
END adder_package;