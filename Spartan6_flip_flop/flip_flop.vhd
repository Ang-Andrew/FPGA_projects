----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:13 01/22/2017 
-- Design Name: 
-- Module Name:    flip_flop - Behavioral 
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

entity flip_flop is
    Port ( clk : in  STD_LOGIC;
			  d : in STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q1 : out  STD_LOGIC;
			  q2 : out STD_LOGIC);
end flip_flop;

architecture Behavioral of flip_flop is
	
begin

FLIP_FLOP : process(clk,reset,d)
begin
	if reset = '1' then 
		q1 <= '0';
	elsif clk = '1' and clk'event then
		if enable = '1' then
			q1 <= d;
		end if;
	end if;
end process;

LATCH : process (d, enable, reset)
begin
	if reset = '1' then
		q2 <= '0';
	elsif enable = '1' then
		q2 <= d;
	end if;
end process;


end Behavioral;

