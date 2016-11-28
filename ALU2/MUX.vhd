----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:22 11/22/2016 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
Port (adder_input : in  STD_LOGIC_VECTOR (7 downto 0);
           multer_input : in  STD_LOGIC_VECTOR (7 downto 0);
			  select_input : in STD_LOGIC;
           mux_output : out  STD_LOGIC_VECTOR (7 downto 0)
);
end MUX;

architecture Behavioral of MUX is

begin

 mux_output<= multer_input WHEN select_input ='1' ELSE 
            adder_input; 


end Behavioral;

