----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:29 03/30/2018 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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
use iEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;


use work.pachage_mux_dec_reg_and.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           clk,l,inc,clr : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end reg;

architecture Behavioral of reg is
signal tmp : STD_LOGIC_VECTOR (31 DOWNTO 0):= (OTHERS => '0');
begin
process(clk,inc,clr,l)
  
begin
    
if(clk' EVENT and clk = '1') 
then 
	   
if(l = '1') 
then tmp <= input;
	  
 elsif(inc = '1') 
then tmp <= tmp +1 ;
	  
 elsif (CLR = '1') 
then tmp <=(others =>'0');
	   
end if;	 
end if;
end process;
 
output<= tmp;
end Behavioral;

