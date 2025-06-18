LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register32 IS
PORT(
		d	:in std_logic_vector(31 downto 0);
		ld	:in std_logic;
		clr: in std_logic;
		clk: in std_logic;
		q	:out std_logic_vector(31 downto 0));
END register32;

ARCHITECTURE description OF register32 IS  
BEGIN 
	process(ld,clr,clk)
	begin
		if clr = '1' then
			Q <= (others =>'0');
		elsif ((clk'event and clk = '1') and (ld='1')) then
			Q <= d;
		end if;
	end process;
END description;