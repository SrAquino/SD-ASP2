library ieee;                 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity asp2 is
    port (
        in1     : in std_logic_vector(1 downto 0);
        in2     : in std_logic_vector(1 downto 0);
        in3     : in std_logic_vector(1 downto 0);
        in4     : in std_logic_vector(1 downto 0);
        
        reset   : in std_logic;
        clock   : in std_logic;

        result  : out std_logic_vector(1 downto 0)
        );
end asp2;

architecture portras of asp2 is
    signal reg1, reg2, reg3, reg4, regout: std_logic_vector(1 downto 0);
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
                    regout <= "00";
                elsif (clock'event and clock='1') then
                    reg1 <= in1;
                    reg2 <= in2;
                    reg3 <= in3;
                    reg4 <= in4;
                    regout <= minus;
                end if;
        end process;

    mul <= reg1 * reg2;
    plus <= mul(1 downto 0) + reg3;
    minus <= plus - reg4;
    result <= regout;

end portras;