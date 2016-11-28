library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
	SIGNAL j,k,m : STD_LOGIC;
begin
	j <= X XOR Y;
	k <= C_in AND j;
	m <= X AND Y;
	S <= j XOR C_in;
	C_out <= k OR m;

end Behavioral;


