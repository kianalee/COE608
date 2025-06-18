LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY add IS
PORT(
		A	:in std_logic_vector(31 downto 0);
		B	:out std_logic_vector(31 downto 0));
end add;

architecture Behavior of add is 
begin
B<= A + 4;
end Behavior;