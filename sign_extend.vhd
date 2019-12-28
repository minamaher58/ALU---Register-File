----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:01 04/15/2018 
-- Design Name: 
-- Module Name:    sign_extend - Behavioral 
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

entity sign_extend is
    Port ( input : in  STD_LOGIC_vector(15 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end sign_extend;

architecture Behavioral of sign_extend is
begin
output(15 downto 0)<=input;
output(31 downto 16)<="0000000000000000" when input(15)='0' else 
"1111111111111111";


--process(input)
--begin
--if input(15)='0' then
--for i in 15 to 31 loop
--      output(i)<='0';
--end loop;

--elsif input(15)='1' then
--for i in 15 to 31 loop
     --output(i)<='1';
--end loop;

--end if;
--end process;

end Behavioral;

