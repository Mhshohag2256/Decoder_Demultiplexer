LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.all;
USE work.adder_package.all;

ENTITY testbench_wong_16bit_add_sub IS
END testbench_wong_16bit_add_sub;

ARCHITECTURE arch_test of testbench_wong_16bit_add_sub IS
  
  SIGNAL Xin, Yin, Sum            : STD_LOGIC_VECTOR(15 downto 0);
  SIGNAL Sub, Ci, Over, Neg, Zero : STD_LOGIC;
  
BEGIN
  uut: wong_16bit_add_sub port map (X => Xin, Y => Yin, Opcode => Sub, Cin => Ci, S => Sum, Zero => Zero, Negative => Neg, Overflow => Over);
  PROCESS
  BEGIN
    Xin <= "0000000000000000";
    Yin <= "0000000000000000";
    Sub <= '0';
    Ci <= '0';
    
    for i in 0 to 150 loop
      for j in 0 to 150 loop
        wait for 200 ns;
        assert (Sum = Xin + Yin) report "The sum from 16 bit adder is  S= " & integer'image(to_integer(signed(Sum))) & " while the expected result of " & integer'image(to_integer(signed(Xin))) & " + " & integer'image(to_integer(signed(Yin)))& "= " & integer'image(to_integer(signed(Xin+Yin))) severity ERROR;
        assert (((Xin = -(Yin)) AND (Zero = '1')) OR ((Xin /= -(Yin)) AND (Zero = '0'))) report "The 16 bit adder incorrectly reported zero for " & integer'image(to_integer(signed(Xin))) & " + " & integer'image(to_integer(signed(Yin))) severity ERROR;
        assert (((Sum < 0) AND (Neg = '1')) OR ((Sum >= 0) AND (Neg = '0'))) report "The 16 bit adder incorrectly reported a negative answer for " & integer'image(to_integer(signed(Xin))) & " + " & integer'image(to_integer(signed(Yin))) severity ERROR;
        assert ((((Xin >= 0 AND Yin >= 0 AND Sum >= 0) OR (Xin < 0 AND Yin < 0 AND Sum < 0)) AND Over = '0') OR (((Xin >= 0 AND Yin >= 0 AND Sum < 0) OR (Xin < 0 AND Yin <0 AND Sum >= 0)) AND Over = '1') OR ((Xin(15) /= Yin(15)) AND Over = '0')) report "The 16 bit adder incorrectly reported overflow for " & integer'image(to_integer(signed(Xin))) & " + " & integer'image(to_integer(signed(Yin))) severity ERROR;
        Yin <= Yin + "0000000000000001";
      END loop;
      Xin <= Xin + "0000000000000001";
    END loop;
    
    Xin <= "0000000000000000";
    Yin <= "0000000000000000";
    Sub <= '1';
    Ci <= '1';
    
    for i in 0 to 150 loop
      for j in 0 to 150 loop
        wait for 200 ns;
        assert (Sum = Xin - Yin) report "The sum from 16 bit adder is  S= " & integer'image(to_integer(signed(Sum))) & " while the expected result of " & integer'image(to_integer(signed(Xin))) & " - " & integer'image(to_integer(signed(Yin)))& "= " & integer'image(to_integer(signed(Xin-Yin))) severity ERROR;
        assert (((Xin = Yin) AND (Zero = '1')) OR ((Xin /= Yin) AND (Zero = '0'))) report "The 16 bit adder incorrectly reported zero for " & integer'image(to_integer(signed(Xin))) & " - " & integer'image(to_integer(signed(Yin))) severity ERROR;
        assert (((Sum < 0) AND (Neg = '1')) OR ((Sum >= 0) AND (Neg = '0'))) report "The 16 bit adder incorrectly reported a negative answer for " & integer'image(to_integer(signed(Xin))) & " - " & integer'image(to_integer(signed(Yin))) severity ERROR;
        assert (((Xin(15) = Yin(15)) AND Over = '0') OR (((Xin >= 0 AND Yin < 0 AND Sum >= 0) OR (Xin < 0 AND Yin >= 0 AND Sum < 0)) AND Over = '0') OR (((Xin >= 0 AND Yin < 0 AND Sum < 0) OR (Xin < 0 AND Yin >= 0 AND Sum >= 0)) AND Over = '1')) report "The 16 bit adder incorrectly reported overflow for " & integer'image(to_integer(signed(Xin))) & " - " & integer'image(to_integer(signed(Yin))) severity ERROR;
        Yin <= Yin + "0000000000000001";
      END loop;
      Xin <= Xin + "0000000000000001";
    END loop;
    
    report "Test completed";
    wait;
  END PROCESS;
END arch_test;