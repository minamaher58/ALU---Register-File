----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:49:39 04/04/2018 
-- Design Name: 
-- Module Name:    norr - Behavioral 
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

entity norr is
    Port ( A : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC);
end norr;

architecture Behavioral of norr is
shared variable res :std_logic;
begin
process(A)

begin
res:='0';
for i in 0 to 31 loop
      res := res or A(i);
end loop;
end process;
O<=not(res);
 
end Behavioral;

