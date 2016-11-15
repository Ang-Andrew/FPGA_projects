----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:41 02/06/2016 
-- Design Name: 
-- Module Name:    Subtractor - Behavioral 
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

entity Subtractor is
	PORT
	(
		x: IN STD_LOGIC;
		y: IN STD_LOGIC;
		z: IN STD_LOGIC;
		d: OUT STD_LOGIC;
		b: OUT STD_LOGIC
	
	);
end Subtractor;

architecture combinational of Subtractor is
	SIGNAL j,k,l,m,n,o : STD_LOGIC;

begin
	j <= x XOR y;
	d <= j XOR z;
	
	k <= NOT j;
	m <= z AND k;
	n <= NOT x;
	o <= n AND y;
	b <= m or o;

end combinational;

