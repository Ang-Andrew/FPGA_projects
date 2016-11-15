----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:25 11/14/2016 
-- Design Name: 
-- Module Name:    ssd_output - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd_output is
    Port ( clk : in  STD_LOGIC;
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0);
			  anode_out : out STD_LOGIC_VECTOR(3 downto 0));
end ssd_output;

architecture Behavioral of ssd_output is
	COMPONENT clk_gen
	PORT(
		Clk : IN std_logic;          
		Clk_mod : OUT std_logic
		);
	END COMPONENT;
	signal anode_count : unsigned(1 downto 0) := (others => '0');
	signal clk_mod: std_logic;
begin

	clk_gen1: clk_gen port map(Clk => clk, Clk_mod => clk_mod);

process (clk_mod) 
begin
   if clk_mod='1' and clk_mod'event then  
			anode_count <= anode_count+1;
			if anode_count = "00" then
				anode_out <= "0111";
				seg_out <="1111001"; --1
			elsif anode_count = "01" then
				anode_out <= "1011";
				seg_out <="0100100"; --2
			elsif anode_count = "10" then
				anode_out <= "1101";
				seg_out <="0110000"; --3
			elsif anode_count = "11" then
				anode_out <= "1110";
				seg_out <="0011001"; --4
			end if;
   end if;
end process;
end Behavioral;

