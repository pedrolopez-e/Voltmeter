library IEEE;
use IEEE.std_logic_1164.all;

--Este es un contador binario genérico. Despues el especifico hay que acoplarlo al comparador.

entity binary_counter is
    port (
        clk   : in std_logic;
        ena   : in std_logic; 
        rst   : in std_logic;
        q     : out std_logic_vector(15 downto 0)
    );
    end;

architecture binary_counter_generic_arch of binary_counter is
    component ffd 
        port (
            d   : in std_logic;
            clk : in std_logic;
            ena : in std_logic;
            rst : in std_logic;
            q   : out std_logic
        );
    end component;
    signal d: std_logic_vector(14 downto 0);
    signal s: std_logic_vector(14 downto 0);
    -- Aca deberia asignar la señal ese al puerto q de salida osea s a q  
begin 
    ffd_0: ffd port map (d => d(0), clk => clk, ena => ena, rst => rst, q => s(0));
    ffd_1: ffd port map (d => d(1), clk => clk, ena => ena, rst => rst, q => s(1)); 
    ffd_2: ffd port map (d => d(2), clk => clk, ena => ena, rst => rst, q => s(2)); 
    ffd_3: ffd port map (d => d(3), clk => clk, ena => ena, rst => rst, q => s(3)); 
    ffd_4: ffd port map (d => d(4), clk => clk, ena => ena, rst => rst, q => s(4)); 
    ffd_5: ffd port map (d => d(5), clk => clk, ena => ena, rst => rst, q => s(5)); 
    ffd_6: ffd port map (d => d(6), clk => clk, ena => ena, rst => rst, q => s(6)); 
    ffd_7: ffd port map (d => d(7), clk => clk, ena => ena, rst => rst, q => s(7)); 
    ffd_8: ffd port map (d => d(8), clk => clk, ena => ena, rst => rst, q => s(8)); 
    ffd_9: ffd port map (d => d(9), clk => clk, ena => ena, rst => rst, q => s(9)); 
    ffd_10: ffd port map (d => d(10), clk => clk, ena => ena, rst => rst, q => s(10)); 
    ffd_11: ffd port map (d => d(11), clk => clk, ena => ena, rst => rst, q => s(11)); 
    ffd_12: ffd port map (d => d(12), clk => clk, ena => ena, rst => rst, q => s(12)); 
    ffd_13: ffd port map (d => d(13), clk => clk, ena => ena, rst => rst, q => s(13)); 
    ffd_14: ffd port map (d => d(14), clk => clk, ena => ena, rst => rst, q => s(14)); 
    ffd_15: ffd port map (d => d(15), clk => clk, ena => ena, rst => rst, q => s(15)); 

    d(0) <= s(0) xor ena; 
    d(1) <= s(1) xor (s(0) and ena);
    d(2) <= s(2) xor (s(1) and ena);
    d(3) <= s(3) xor (s(2) and ena);
    d(4) <= s(4) xor (s(3) and ena);
    d(5) <= s(5) xor (s(4) and ena);
    d(6) <= s(6) xor (s(5) and ena);
    d(7) <= s(7) xor (s(6) and ena);
    d(8) <= s(8) xor (s(7) and ena);
    d(9) <= s(9) xor (s(8) and ena);
    d(10) <= s(10) xor (s(9) and ena);
    d(11) <= s(11) xor (s(10) and ena);
    d(12) <= s(12) xor (s(11) and ena);
    d(13) <= s(13) xor (s(12) and ena);
    d(14) <= s(14) xor (s(13) and ena);
    d(15) <= s(15) xor (s(14) and ena);
end;