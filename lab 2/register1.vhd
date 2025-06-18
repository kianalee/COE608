LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register1 IS
PORT(
		d	:in std_logic;
		ld	:in std_logic;
		clr: in std_logic;
		clk: in std_logic;
		q	:inout std_logic);
END register1;

ARCHITECTURE Behavior OF register1 IS 
BEGIN 
	process(ld,clr,clk)
	begin
		if clr = '1' then
			Q <= '0';
		elsif ((clk'event and clk = '1') and (ld='1')) then
			Q <= d;
		end if;
	end process;
END Behavior;