----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:27:54 01/26/2017 
-- Design Name: 
-- Module Name:    Switches_LEDs - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Switches_LEDs is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           LEDs : out  STD_LOGIC_VECTOR (7 downto 0));
end Switches_LEDs;

architecture Behavioral of Switches_LEDs is
	signal x : STD_LOGIC_VECTOR(3 downto 0);
	signal y : STD_LOGIC_VECTOR(3 downto 0);
	signal result : STD_LOGIC_VECTOR(4 downto 0);
begin
	LEDs <= "000" & result;
	x <= switches(3 downto 0);
	y <= switches(7 downto 4);
	
	result <= '0'&(x + y);
	

end Behavioral;

