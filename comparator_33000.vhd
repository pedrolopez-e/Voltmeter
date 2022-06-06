library IEEE;
use IEEE.std_logic_1164.all;

entity comparator_33000 is 
    port (
        A : in std_logic_vector(15 downto 0);
        q : out std_logic
    );
    end;

architecture comparator_33000_arch of comparator_33000 is
begin
    q <= '1' when A(0) = '0' and A(1) = '0' and A(2) = '0' and A(3) = '1' and A(4) = '0' and A(5) = '1' and A(6) = '1' and A(7) = '1' and A(8) = '0' and A(9) = '0' and A(10) = '0' and A(11) = '0' and A(12) = '0' and A(13) = '0' and A(14) = '0' and A(15) = '1';
end;