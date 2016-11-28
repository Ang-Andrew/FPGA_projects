----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:24 11/22/2016 
-- Design Name: 
-- Module Name:    Multer4bit - Behavioral 
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
use IEEE.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multer4bit is
    Port ( multer_x : in  STD_LOGIC_VECTOR (3 downto 0);
           multer_y : in  STD_LOGIC_VECTOR (3 downto 0);
           multer_output : out  STD_LOGIC_VECTOR (7 downto 0));
end Multer4bit;

architecture Behavioral of Multer4bit is

--signal x,y,z : unsigned(3 downto 0); 

begin

multer_output <= std_logic_vector(unsigned(multer_x)*unsigned(multer_y));

end Behavioral;

