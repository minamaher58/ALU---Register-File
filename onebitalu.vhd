----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:44 04/05/2018 
-- Design Name: 
-- Module Name:    onebitalu - Behavioral 
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
use work.pachagee.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity onebitalu is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
			  less:in std_logic;
           op : in  STD_LOGIC_vector(3 downto 0);
           cout : out  STD_LOGIC;
           output : out  STD_LOGIC;
			  set:out std_logic);
end onebitalu;

architecture Behavioral of onebitalu is
signal tmp1:std_logic;
signal tmp2:std_logic;
signal tmp3:std_logic;
signal tmp4:std_logic_vector(3 downto 0);
signal tmp5:std_logic;

signal temp1:std_logic;
signal temp2:std_logic;

signal input1:std_logic;
signal input2:std_logic;
signal  q : std_logic_vector(1 downto 0); 
begin


temp2<=not b;
temp1<=not a;
multiplixer20:multiplixer21 port map(b,temp2,op(2),input2);
multiplixer22:multiplixer21 port map(a,temp1,op(3),input1);


annd: anddd port map(input1,input2,tmp1);
oorr:orr port map(input1,input2,tmp2);
bitadder :one_bit_adder port map(input1,input2,cin,cout,tmp3);

set<=tmp3;
q<=op(1 downto 0);
multiplixerr : multiplixer16 port map(tmp1,tmp2,tmp3,less,q,tmp5);
output<=tmp5;

end Behavioral;

