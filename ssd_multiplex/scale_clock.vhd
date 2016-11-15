----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:18 11/14/2016 
-- Design Name: 
-- Module Name:    scale_clk - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scale_clk is
    Port ( clk : in  STD_LOGIC;
           clk_slow : out  STD_LOGIC);
end scale_clk;

architecture Behavioral of scale_clk is
	signal prescaler : unsigned(23 downto 0);
	signal clk_1khz_i : std_logic;
begin

gen_clk : process (clk)
  begin  -- process gen_clk
    if rising_edge(clk) then   -- rising clock edge
      if prescaler = X"61A8" then     -- 25000 in hex
        prescaler   <= (others => '0');
        clk_1khz_i   <= not clk_1khz_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_slow <= clk_1khz_i;



end Behavioral;

