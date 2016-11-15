----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:02 02/06/2016 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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

entity Counter is
    Port ( clk : in  STD_LOGIC;
           direction : in  STD_LOGIC;
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  Seg_Out : out  STD_LOGIC_VECTOR (6 downto 0));
end Counter;

architecture Behavioral of Counter is
	
	component ssd_decoder is
    Port ( Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Seg_Out : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	signal count_int : unsigned(27 downto 0) := (others => '0');
	signal seg_out_int: STD_LOGIC_VECTOR(6 downto 0);

begin
	decoder1: ssd_decoder port map(Bin => std_logic_vector(count_int(27 downto 24)), Seg_Out => seg_out_int);

process (clk) 
begin
   if clk='1' and clk'event then
      if direction='1' then   
         count_int <= count_int + 1;
      else
         count_int <= count_int - 1;
      end if;
   end if;
end process;
 
count_out <= std_logic_vector(count_int(27 downto 24));
Seg_Out <= seg_out_int;

end Behavioral;

