library IEEE;
use IEEE.std_logic_1164.all;

entity ffd is
    port (
        d   : in std_logic;
        clk : in std_logic;
        ena : in std_logic;
        q   : out std_logic;
    );
end;

architecture ffd_arch of ffd is 
begin 
    process(clk, ena)
        if (clk = "1") & (ena = '1') then
            q <= d 
        end if;
    end process;
end;




