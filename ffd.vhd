library IEEE;
use IEEE.std_logic_1164.all;

entity ffd is
    port (
        d   : in std_logic;
        clk : in std_logic;
        ena : in std_logic;
        q   : out std_logic;
        rst : in std_logic;
    );
end;

architecture ffd_arch of ffd is 
begin 
    process(clk, ena)
        if rising_edge(clk) then
            if rst = '1' then
                q <= '0';
            elsif ena = '1' then 
               q <= d; 
            end if;
        end if;
    end process;
end;




