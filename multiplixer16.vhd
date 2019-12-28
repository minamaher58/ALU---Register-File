----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:27:42 04/05/2018 
-- Design Name: 
-- Module Name:    multiplixer16 - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplixer16 is
    Port ( input1 : in  STD_LOGIC;
	        input2 : in  STD_LOGIC;
	        input3 : in  STD_LOGIC;
	        input4 : in  STD_LOGIC;
           sel : in  STD_LOGIC_vector(1 downto 0);
           output : out  STD_LOGIC);
end multiplixer16;

architecture Behavioral of multiplixer16 is

begin
process(sel,input1,input2,input3,input4)
begin
if sel="00" then
output<=input1;
elsif sel="01" then
output<=input2;
elsif sel="10" then
output<=input3;
elsif sel="11" then
output<=input4;
end if;
end process;
end Behavioral;

