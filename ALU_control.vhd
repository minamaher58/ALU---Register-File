----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:24:38 04/16/2018 
-- Design Name: 
-- Module Name:    ALU_control - Behavioral 
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

entity ALU_control is
    Port ( in1 : in  STD_LOGIC_vector(1 downto 0);
           in2 : in  STD_LOGIC_vector(5 downto 0);
           operation : out  STD_LOGIC_vector(3 downto 0));
end ALU_control;

architecture Behavioral of ALU_control is
signal operation3:std_logic;
signal operation2:std_logic;
signal operation1:std_logic;
signal operation0:std_logic;

signal operation4:std_logic;
signal operation5:std_logic;
signal operation6:std_logic;
signal operation7:std_logic;



begin

operation0<=in2(0) or in2(3);
operation1<=in2(0) and in2(1);
operation2<=in1(1) and in2(1) ;
operation3<=in1(1) and operation0 ;

operation4<=in1(1) and operation1 ;
operation5<=in1(0) or  operation2;
operation6<=(not in1(1)) or (not in2(2)) ;
operation7<=(not operation4) and operation3 ;



operation(0)<=operation7;
operation(1)<=operation6;
operation(2)<=operation5;
operation(3)<=operation4;

end Behavioral;

