----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:43 03/30/2018 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_1164.all;

use work.pachage_mux_dec_reg_and.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port (read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
		     clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal temp1 :std_logic_vector(31 downto 0);
signal temp2 :std_logic_vector(31 downto 0);
signal Dec: std_logic_vector(31 downto 0);
signal regg,regg0,regg1,regg2,regg3,regg4,regg5,regg6,regg7,regg8,regg9,regg10,regg11,regg12,regg13,regg14,regg15,
regg16,regg17,regg18,regg19,regg20,regg21,regg22,regg23,regg24,regg25,regg26,regg27,regg28,regg29,regg30,
regg31: std_logic_vector(31 downto 0);
signal and_output : std_logic_vector(31 downto 0);
begin

decoder : decoderr port map(write_sel,Dec,'1');
--GEN_REG:  for I in 0 to 31 generate
annd0 : andd port map(write_ena,Dec(0),and_output(0));     
Reeg0 : reg port map(write_data,clk,and_output(0),'0','0',regg0);


annd1 : andd port map(write_ena,Dec(1),and_output(1));     
Reeg1 : reg port map(write_data,clk,and_output(1),'0','0',regg1);



annd2 : andd port map(write_ena,Dec(2),and_output(2));     
Reeg2 : reg port map(write_data,clk,and_output(2),'0','0',regg2);



annd3 : andd port map(write_ena,Dec(3),and_output(3));     
Reeg3 : reg port map(write_data,clk,and_output(3),'0','0',regg3);

annd4 : andd port map(write_ena,Dec(4),and_output(4));     
Reeg4 : reg port map(write_data,clk,and_output(4),'0','0',regg4);


annd5: andd port map(write_ena,Dec(5),and_output(5));     
Reeg5 : reg port map(write_data,clk,and_output(5),'0','0',regg5);


annd6 : andd port map(write_ena,Dec(6),and_output(6));     
Reeg6 : reg port map(write_data,clk,and_output(6),'0','0',regg6);

annd7 : andd port map(write_ena,Dec(7),and_output(7));     
Reeg7 : reg port map(write_data,clk,and_output(7),'0','0',regg7);


annd8 : andd port map(write_ena,Dec(8),and_output(8));     
Reeg8 : reg port map(write_data,clk,and_output(8),'0','0',regg8);

annd9 : andd port map(write_ena,Dec(9),and_output(9));     
Reeg9 : reg port map(write_data,clk,and_output(9),'0','0',regg9);

annd10 : andd port map(write_ena,Dec(10),and_output(10));     
Reeg10 : reg port map(write_data,clk,and_output(10),'0','0',regg10);

annd11 : andd port map(write_ena,Dec(11),and_output(11));     
Reeg11 : reg port map(write_data,clk,and_output(11),'0','0',regg11);


annd12 : andd port map(write_ena,Dec(12),and_output(12));     
Reeg12 : reg port map(write_data,clk,and_output(12),'0','0',regg12);


annd13 : andd port map(write_ena,Dec(13),and_output(13));     
Reeg13 : reg port map(write_data,clk,and_output(13),'0','0',regg13);

annd14 : andd port map(write_ena,Dec(14),and_output(14));     
Reeg14 : reg port map(write_data,clk,and_output(14),'0','0',regg14);

annd15 : andd port map(write_ena,Dec(15),and_output(15));     
Reeg15 : reg port map(write_data,clk,and_output(15),'0','0',regg15);


annd16 : andd port map(write_ena,Dec(16),and_output(16));     
Reeg16 : reg port map(write_data,clk,and_output(16),'0','0',regg16);

annd17 : andd port map(write_ena,Dec(17),and_output(17));     
Reeg17 : reg port map(write_data,clk,and_output(17),'0','0',regg17);


annd18 : andd port map(write_ena,Dec(18),and_output(18));     
Reeg18 : reg port map(write_data,clk,and_output(18),'0','0',regg18);

annd19 : andd port map(write_ena,Dec(19),and_output(19));     
Reeg19 : reg port map(write_data,clk,and_output(19),'0','0',regg19);

annd20 : andd port map(write_ena,Dec(20),and_output(20));     
Reeg20 : reg port map(write_data,clk,and_output(20),'0','0',regg20);

annd21 : andd port map(write_ena,Dec(21),and_output(21));     
Reeg21 : reg port map(write_data,clk,and_output(21),'0','0',regg21);


annd22 : andd port map(write_ena,Dec(22),and_output(22));     
Reeg22 : reg port map(write_data,clk,and_output(22),'0','0',regg22);

annd23 : andd port map(write_ena,Dec(23),and_output(23));     
Reeg23 : reg port map(write_data,clk,and_output(23),'0','0',regg23);

annd24 : andd port map(write_ena,Dec(24),and_output(24));     
Reeg24 : reg port map(write_data,clk,and_output(24),'0','0',regg24);


annd25 : andd port map(write_ena,Dec(25),and_output(25));     
Reeg25 : reg port map(write_data,clk,and_output(25),'0','0',regg25);

annd26 : andd port map(write_ena,Dec(26),and_output(26));     
Reeg26 : reg port map(write_data,clk,and_output(26),'0','0',regg26);

annd27 : andd port map(write_ena,Dec(27),and_output(27));     
Reeg27 : reg port map(write_data,clk,and_output(27),'0','0',regg27);


annd28 : andd port map(write_ena,Dec(28),and_output(28));     
Reeg28 : reg port map(write_data,clk,and_output(28),'0','0',regg28);


annd29 : andd port map(write_ena,Dec(29),and_output(29));     
Reeg29 : reg port map(write_data,clk,and_output(29),'0','0',regg29);


annd30 : andd port map(write_ena,Dec(30),and_output(30));     
Reeg30 : reg port map(write_data,clk,and_output(30),'0','0',regg30);


annd31 : andd port map(write_ena,Dec(31),and_output(31));     
Reeg31 : reg port map(write_data,clk,and_output(31),'0','0',regg31);

 --end generate;
Multiplixer1: multiplixer port map(regg0,regg1,regg2,regg3,regg4,regg5,regg6,regg7,regg8,regg9,regg10,regg11,regg12,regg13,
regg14,regg15,regg16,regg17,regg18,regg19,regg20,regg21,regg22,regg23,regg24,regg25,regg26,regg27,regg28,regg29,regg30,regg31,read_sel1,temp1);
Multiplixer2: multiplixer port map(regg0,regg1,regg2,regg3,regg4,regg5,regg6,regg7,regg8,regg9,regg10,regg11,regg12,regg13,
regg14,regg15,regg16,regg17,regg18,regg19,regg20,regg21,regg22,regg23,regg24,regg25,regg26,regg27,regg28,regg29,regg30,regg31,read_sel2,temp2);

data1<=temp1;
data2<=temp2;

end Behavioral;

