----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:15 04/19/2018 
-- Design Name: 
-- Module Name:    mux32 - Behavioral 
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

entity mux32 is
    Port ( in1 : in  STD_LOGIC_vector(31 downto 0);
           in2 : in  STD_LOGIC_vector(31 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_vector(31 downto 0));
end mux32;

architecture Behavioral of mux32 is

begin
process(sel,in1,in2)
begin
if sel='0' then
outt<=in1;
elsif sel='1' then
outt<=in2;


end if;
end process;
end Behavioral;

