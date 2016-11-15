----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:43 11/12/2016 
-- Design Name: 
-- Module Name:    Adder4Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder4Bit is
    Port ( X_4_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Y_4_in : in  STD_LOGIC_VECTOR (3 downto 0);
           S_4_out : out  STD_LOGIC_VECTOR (3 downto 0);
           C_4_out : out  STD_LOGIC
			  );
end Adder4Bit;

architecture Behavioral of Adder4Bit is
	SIGNAL c_int1,c_int2,c_int3 : STD_LOGIC;
	
	component FullAdder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
	end component;
begin
	Adder1: FullAdder port map(
		X => X_4_in(0),
		Y => Y_4_in(0),
		C_in => '0',
		S => S_4_out(0),
		C_out => c_int1
	);
	Adder2: FullAdder port map(
		X => X_4_in(1),
		Y => Y_4_in(1),
		C_in => c_int1,
		S => S_4_out(1),
		C_out => c_int2
	);
	Adder3: FullAdder port map(		
		X => X_4_in(2),
		Y => Y_4_in(2),
		C_in => c_int2,
		S => S_4_out(2),
		C_out => c_int3
	);
	Adder4: FullAdder port map(		
		X => X_4_in(3),
		Y => Y_4_in(3),
		C_in => c_int3,
		S => S_4_out(3),
		C_out => C_4_out
	);
	
end Behavioral;

