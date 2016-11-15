----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:13 01/09/2016 
-- Design Name: 
-- Module Name:    Adder - Behavioral 
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
library ieee;

use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all; 

entity adder is 
   port ( a_in : in std_logic_vector (3 downto 0); 
         b_in :   in std_logic_vector (3 downto 0); 
         c_out : out std_logic_vector (3 downto 0)); 
end adder; 

architecture adder_arch of adder is 

begin 
   process (a_in, b_in) 
      variable carry : std_logic_vector (4 downto 0); 
      variable sum :std_logic_vector (3 downto 0); 
   begin 
      carry (0) := '0'; 
      for i in 0 to 3 loop 
        sum (i) := a_in(i) xor b_in(i) xor carry(i); 
        carry (i+1) := (a_in(i) and b_in(i)) or 
                        (b_in(i) and carry (i)) or 
                        (carry (i) and a_in(i)); 
      end loop; 
      c_out <= sum; 
   end process; 
end adder_arch;
