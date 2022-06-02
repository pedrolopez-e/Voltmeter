library IEEE;
use IEEE.std_logic_1164.all;

entity voltmeter is 
    port (
        q   : in std_logic;
        clk : in std_logic;
        hs  : out std_logic;
        vs  : out std_logic;
        r   : out std_logic;
        g   : out std_logic;
        b   : out std_logic;
    );
    end;

architecture voltmeter_arch of voltmeter is

end;