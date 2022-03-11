library ieee;                 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity v_lut is
    port (
        in1     : in std_logic_vector(1 downto 0);
        in2     : in std_logic_vector(1 downto 0);
        in3     : in std_logic_vector(1 downto 0);
        in4     : in std_logic_vector(1 downto 0);
        
        reset   : in std_logic;
        clock   : in std_logic;

        result  : out std_logic_vector(1 downto 0)
        );
end v_lut;

architecture portras of v_lut is
    type lut is array (integer range 0 to 15) of std_logic_vector(3 downto 0);
    signal lut_mul, lut_add, lut_sub : lut;

    signal reg1, reg2, reg3, reg4, regout: std_logic_vector(1 downto 0);
    signal plus, minus: std_logic_vector(1 downto 0);
    signal mul: std_logic_vector(3 downto 0);
    
    begin

        lut_mul (0)   <= "0000";-- 00 x 00
        lut_mul (1)   <= "0000";-- 00 x 01
        lut_mul (2)   <= "0000";-- 00 x 10
        lut_mul (3)   <= "0000";-- 00 x 11
        lut_mul (4)   <= "0000";-- 01 x 00
        lut_mul (5)   <= "0001";-- 01 x 01 
        lut_mul (6)   <= "0010";-- 01 x 10
        lut_mul (7)   <= "0011";-- 01 x 11
        lut_mul (8)   <= "0000";-- 10 x 00
        lut_mul (9)   <= "0010";-- 10 x 01
        lut_mul (10)  <= "0100";-- 10 x 10
        lut_mul (11)  <= "0110";-- 10 x 11
        lut_mul (12)  <= "0000";-- 11 x 00
        lut_mul (13)  <= "0011";-- 11 x 01
        lut_mul (14)  <= "0110";-- 11 x 10
        lut_mul (15)  <= "1001";-- 11 x 11

        lut_add (0)   <= "0000";-- 00 + 00
        lut_add (1)   <= "0001";-- 00 + 01
        lut_add (2)   <= "0010";-- 00 + 10
        lut_add (3)   <= "0011";-- 00 + 11
        lut_add (4)   <= "0001";-- 01 + 00
        lut_add (5)   <= "0010";-- 01 + 01 
        lut_add (6)   <= "0011";-- 01 + 10
        lut_add (7)   <= "0100";-- 01 + 11
        lut_add (8)   <= "0010";-- 10 + 00
        lut_add (9)   <= "0011";-- 10 + 01
        lut_add (10)  <= "0100";-- 10 + 10
        lut_add (11)  <= "0101";-- 10 + 11
        lut_add (12)  <= "0011";-- 11 + 00
        lut_add (13)  <= "0100";-- 11 + 01
        lut_add (14)  <= "0101";-- 11 + 10
        lut_add (15)  <= "0110";-- 11 + 11

        lut_sub (0)   <= "0000";-- 00 - 00
        lut_sub (1)   <= "0000";-- 00 - 01
        lut_sub (2)   <= "0000";-- 00 - 10
        lut_sub (3)   <= "0000";-- 00 - 11
        lut_sub (4)   <= "0001";-- 01 - 00
        lut_sub (5)   <= "0000";-- 01 - 01 
        lut_sub (6)   <= "0000";-- 01 - 10
        lut_sub (7)   <= "0000";-- 01 - 11
        lut_sub (8)   <= "0010";-- 10 - 00
        lut_sub (9)   <= "0001";-- 10 - 01
        lut_sub (10)  <= "0000";-- 10 - 10
        lut_sub (11)  <= "0000";-- 10 - 11
        lut_sub (12)  <= "0011";-- 11 - 00
        lut_sub (13)  <= "0010";-- 11 - 01
        lut_sub (14)  <= "0001";-- 11 - 10
        lut_sub (15)  <= "0000";-- 11 - 11

        mul <= lut_mul(conv_integer(reg1 & reg2));
        plus <= lut_add(conv_integer(mul(1 downto 0) & reg3))(1 downto 0);
        minus <= lut_sub(conv_integer(plus & reg4))(1 downto 0);

        process(clock, reset)
            begin
                if (reset = '1') then
                    reg1 <= "00";
                    reg2 <= "00";
                    reg3 <= "00";
                    reg4 <= "00";
                    regout <= "00";
                elsif (clock'event and clock='1') then
                    reg1 <= in1;
                    reg2 <= in2;
                    reg3 <= in3;
                    reg4 <= in4;
                    regout <= minus;
                end if;
        end process;

        result <= regout;

end portras;