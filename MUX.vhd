LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX IS
PORT ( S: IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
		 OUTMUX: OUT STD_LOGIC_VECTOR (8 DOWNTO 0);
		 R0: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R1: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R2: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R3: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R4: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R5: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R6: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 R7: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 G: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0);
		 Din: IN STD_LOGIC_VECTOR ( 8 DOWNTO 0));
END ENTITY;
		 
ARCHITECTURE BEH OF MUX IS

BEGIN
WITH S SELECT
	OUTMUX <= R0 WHEN "0000",
				 R1 WHEN "0001",
				 R2 WHEN "0010",
				 R3 WHEN "0011",
				 R4 WHEN "0100",
				 R5 WHEN "0101",
				 R6 WHEN "0110",
				 R7 WHEN "0111",
				 G WHEN "1000",
				 Din WHEN "1001",
				 "000000000" WHEN OTHERS;

END ARCHITECTURE;


 