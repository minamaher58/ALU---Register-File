----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:18:02 04/17/2018 
-- Design Name: 
-- Module Name:    muxx4 - Behavioral 
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

entity muxx4 is
    Port ( i1 : in  STD_LOGIC_vector(4 downto 0);
           i2 : in  STD_LOGIC_vector(4 downto 0);
           sel : in  STD_LOGIC;
           o : out  STD_LOGIC_vector(4 downto 0));
end muxx4;

architecture Behavioral of muxx4 is

begin
process(i1,i2,sel)
begin
if sel='0' then
o<=i1;
elsif sel='1' then
o<=i2;
end if;
end process;
end Behavioral;

