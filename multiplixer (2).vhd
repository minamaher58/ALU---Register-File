----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:08 03/30/2018 
-- Design Name: 
-- Module Name:    multiplixer - sel2ehavioral 
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

use work.pachage_mux_dec_reg_and.all;

-- Uncomment the following lisel2rary declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following lisel2rary declaration if instantiating
-- any Xilinx primitives in this code.
--lisel2rary UNISIM;
--use UNISIM.VComponents.all;

entity multiplixer is
    Port (input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,
          input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,
          input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31  : in  STD_LOGIC_VECTOR  (31 downto 0);
			  sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
			 
			  
end multiplixer;

architecture Behavioral of multiplixer is

signal tmp : STD_LOGIC_VECTOR (31 downto 0);
begin
process(sel2,input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,
          input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,
          input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31) is
begin
     if sel2 = "00000" then tmp<= input0; 
     elsif sel2 = "00001" then tmp<= input1;
     
	  elsif sel2 = "00010" then tmp<= input2; 
     elsif sel2 = "00011" then tmp<= input3;
     
	  elsif sel2 = "00100" then tmp<= input4; 
     elsif sel2 = "00101" then tmp<= input5; 
     elsif sel2 = "00110" then tmp<= input6;
     elsif sel2 = "00111" then tmp<= input7;
 
 
     elsif sel2 = "01000" then tmp<= input8; 
     elsif sel2 = "01001" then tmp<= input9;
     elsif sel2 = "01010" then tmp<= input10;
     elsif sel2 = "01011" then tmp<= input11;
     elsif sel2 = "01100" then tmp<= input12;
     elsif sel2 = "01101" then tmp<= input13; 
     elsif sel2 = "01110" then tmp<= input14;
     elsif sel2 = "01111" then tmp<= input15;
 
 
     elsif sel2 = "10000" then tmp<= input16;
     elsif sel2 = "10001" then tmp<= input17;
     elsif sel2 = "10010" then tmp<= input18;
     elsif sel2 = "10011" then tmp<= input19;
     elsif sel2 = "10100" then tmp<= input20;
     elsif sel2 = "10101" then tmp<= input21;
     elsif sel2 = "10110" then tmp<= input22; 
     elsif sel2 = "10111" then tmp<= input23;
     elsif sel2 = "11000" then tmp<= input24;
     elsif sel2 = "11001" then tmp<= input25;
     elsif sel2 = "11010" then tmp<= input26;
     elsif sel2 = "11011" then tmp<= input27;
     elsif sel2 = "11100" then tmp<= input28; 
     elsif sel2 = "11101" then tmp<= input29;
     elsif sel2 = "11110" then tmp<= input30; 
     else tmp<= input31;
     end if;
	


 end process;
 output<=tmp;
end Behavioral;

