LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ninebitregis IS
PORT ( D: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		 CLK: IN STD_LOGIC;
		 RESET: IN STD_LOGIC;
		 Q: OUT STD_LOGIC_VECTOR (8 DOWNTO 0);
		 EN: IN STD_LOGIC);
END ENTITY;

ARCHITECTURE BEH OF ninebitregis IS

	COMPONENT DFFp 
	PORT ( CLK: IN STD_LOGIC;
			 D: IN STD_LOGIC;
			 Q: OUT STD_LOGIC;
			 RESET: IN STD_LOGIC;
			 EN: IN STD_LOGIC);
	END COMPONENT;

BEGIN

DFFS: FOR i IN 8 DOWNTO 0 GENERATE
		i0DFFp: DFFp PORT MAP(CLK,D(i),Q(i),RESET,EN);
		END GENERATE;
END BEH;