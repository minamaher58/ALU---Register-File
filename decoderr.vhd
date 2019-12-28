----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:22 03/30/2018 
-- Design Name: 
-- Module Name:    decoderr - Behavioral 
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

use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use work.pachage_mux_dec_reg_and.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoderr is
    Port ( B : in  STD_LOGIC_VECTOR (4 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0);
           e : in  STD_LOGIC
			   );
end decoderr;

architecture Behavioral of decoderr is

begin

process(e,B)
begin
if e = '1' then
if B = "00000" then outp<= "00000000000000000000000000000001"; 
 elsif B = "00001" then outp<= "00000000000000000000000000000010";
 elsif B = "00010" then outp<= "00000000000000000000000000000100"; 
 elsif B = "00011" then outp<= "00000000000000000000000000001000";
 elsif B = "00100" then outp<= "00000000000000000000000000010000"; 
 elsif B = "00101" then outp<= "00000000000000000000000000100000"; 
 elsif B = "00110" then outp<= "00000000000000000000000001000000";
 elsif B = "00111" then outp<= "00000000000000000000000010000000";
 elsif B = "01000" then outp<= "00000000000000000000000100000000";
 elsif B = "01001" then outp<= "00000000000000000000001000000000";
 elsif B = "01010" then outp<= "00000000000000000000010000000000";
 elsif B = "01011" then outp<= "00000000000000000000100000000000";
 elsif B = "01100" then outp<= "00000000000000000001000000000000"; 
 
 elsif B = "01101" then outp<= "00000000000000000010000000000000"; 
 elsif B = "01110" then outp<= "00000000000000000100000000000000";
 elsif B = "01111" then outp<= "00000000000000001000000000000000";
 elsif B = "10000" then outp<= "00000000000000010000000000000000";
 elsif B = "10001" then outp<= "00000000000000100000000000000000";
 elsif B = "10010" then outp<= "00000000000001000000000000000000"; 
 elsif B = "10011" then outp<= "00000000000010000000000000000000";
 elsif B = "10100" then outp<= "00000000000100000000000000000000"; 
 elsif B = "10101" then outp<= "00000000001000000000000000000000";
 elsif B = "10110" then outp<= "00000000010000000000000000000000";
 
 elsif B = "10111" then outp<= "00000000100000000000000000000000";
 elsif B = "11000" then outp<= "00000001000000000000000000000000";
 elsif B = "11001" then outp<= "00000010000000000000000000000000";
 elsif B = "11010" then outp<= "00000100000000000000000000000000";
 elsif B = "11011" then outp<= "00001000000000000000000000000000";
 elsif B = "11100" then outp<= "00010000000000000000000000000000"; 
 elsif B = "11101" then outp<= "00100000000000000000000000000000";
 elsif B = "11110" then outp<= "01000000000000000000000000000000"; 
 elsif B = "11111" then outp<= "10000000000000000000000000000000"; 

end if;
end if;
end process;

end Behavioral;

