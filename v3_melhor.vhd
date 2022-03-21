library ieee;                 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity v3_melhor is
    port (
        in1     : in std_logic_vector(1 downto 0);
        in2     : in std_logic_vector(1 downto 0);
        in3     : in std_logic_vector(1 downto 0);
        in4     : in std_logic_vector(1 downto 0);
        
        reset   : in std_logic;
        clock   : in std_logic;

        result  : out std_logic_vector(1 downto 0)
        );
end v3_melhor;

architecture portras of v3_melhor is
    signal reg1, reg2, reg3, reg4, regout: std_logic_vector(1 downto 0);
    signal regA, regB: std_logic_vector(1 downto 0);
    signal plus, minus: std_logic_vector(1 downto 0);
    signal mul: std_logic_vector(3 downto 0);
    
    begin
        process(clock, reset)
            begin
                if (reset = '1') then
                    reg1 <= "00";
                    reg2 <= "00";
                    reg3 <= "00";
                    reg4 <= "00";
                    regA <= "00";
                    regB <= "00";
                    regout <= "00";
                elsif (clock'event and clock='1') then
                    regout <= minus;

                    regA <= plus;
                    regB <= reg4;

                    reg1 <= in1;
                    reg2 <= in2;
                    reg3 <= in3;
                    reg4 <= in4;
                    
                end if;
        end process;
    
    minus <= regA - regB;
    plus <= mul(1 downto 0) + reg3;
    mul <= reg1 * reg2;
    result <= regout;

end portras;