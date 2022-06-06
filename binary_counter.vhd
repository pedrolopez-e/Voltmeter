library IEEE;
use IEEE.std_logic_1164.all;

entity binary_counter is 
    port (
        clk   : in std_logic;
        ena   : in std_logic;
        rst   : in std_logic;
        q_reg : out std_logic;
        q_BCD : out std_logic
    );
    end;

architecture binary_counter_arch of binary_counter is
    component binary_counter_generic 
        port (
            clk   : in std_logic;
            ena   : in std_logic; 
            rst   : in std_logic;
            q     : out std_logic_vector(15 downto 0)
        );
        end component;
    
    component comparator_33000
        port (
            A : in std_logic_vector(15 downto 0);
            q : out std_logic
        );
        end component;
    signal s1: std_logic_vector(15 downto 0);
    signal s2: std_logic_vector(15 downto 0);  
begin
    generic_binary_counter_inst: binary_counter_generic port map (clk => clk, ena => ena, rst => rst, q => s1 and s2);
     -- DUDA: No sé como conectar la salida "q" del contador binario generico a dos señales 


