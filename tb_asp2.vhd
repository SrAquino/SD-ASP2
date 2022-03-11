library ieee;                 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity tb_asp2 is
end tb_asp2;

architecture portras of tb_asp2 is
    component asp2 port(
        in1     : in std_logic_vector(1 downto 0):="00";
        in2     : in std_logic_vector(1 downto 0):="00";
        in3     : in std_logic_vector(1 downto 0):="00";
        in4     : in std_logic_vector(1 downto 0):="00";
        
        reset   : in std_logic;
        clock   : in std_logic;

        result  : out std_logic_vector(1 downto 0):="00"
    );
    end component;

    component v_lut port(
        in1     : in std_logic_vector(1 downto 0):="00";
        in2     : in std_logic_vector(1 downto 0):="00";
        in3     : in std_logic_vector(1 downto 0):="00";
        in4     : in std_logic_vector(1 downto 0):="00";
        
        reset   : in std_logic;
        clock   : in std_logic;

        result  : out std_logic_vector(1 downto 0):="00"
    );
    end component;

    signal clock, reset : std_logic := '0';
    signal inp1,inp2,inp3,inp4,result,resultlut : std_logic_vector(1 downto 0):="10";


    begin
        tb_asp2 : asp2 port map(
            in1 => inp1,
            in2 => inp2,
            in3 => inp3,
            in4 => inp4,
            reset => reset,
            clock => clock,
            result => result
        );

        tb_v_lut : v_lut port map(
            in1 => inp1,
            in2 => inp2,
            in3 => inp3,
            in4 => inp4,
            reset => reset,
            clock => clock,
            result => resultlut
        );

        clock <= not clock after 3 ns;
        reset <= not reset after 22 ns;

        inp1 <= inp1 + 1 after 10 ns;
        inp2 <= inp2 + 1 after 10 ns;
        inp3 <= inp3 + 1 after 10 ns;
        inp4 <= inp4 + 1 after 10 ns;

end portras;