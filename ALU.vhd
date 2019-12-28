----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:51 04/04/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.pachagee.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( data1 : in  STD_LOGIC_vector(31 downto 0);
           data2 : in  STD_LOGIC_vector(31 downto 0);
           aluop : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_vector(31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
			 
end ALU;

architecture Behavioral of ALU is

signal cout:std_logic_vector(32 downto 0);
signal outt:std_logic_vector(31 downto 0);
signal temp:std_logic;

signal temp3:std_logic; --for set
signal O : std_logic;

signal operation:std_logic_vector(3 downto 0);

signal set: std_logic;

signal less:std_logic;
signal adder_out1 :std_logic_vector(31 downto 0); 
begin




cout(0)<=cin;

result0: onebitalu port map(data1(0),data2(0),cout(0),adder_out1(31),aluop,cout(1),outt(0),adder_out1(0));

result1: onebitalu port map(data1(1),data2(1),cout(1),'0',aluop,cout(2),outt(1),adder_out1(1));

result2: onebitalu port map(data1(2),data2(2),cout(2),'0',aluop,cout(3),outt(2),adder_out1(2));

result3: onebitalu port map(data1(3),data2(3),cout(3),'0',aluop,cout(4),outt(3),adder_out1(3));

result4: onebitalu port map(data1(4),data2(4),cout(4),'0',aluop,cout(5),outt(4),adder_out1(4));

result5: onebitalu port map(data1(5),data2(5),cout(5),'0',aluop,cout(6),outt(5),adder_out1(5));

result6: onebitalu port map(data1(6),data2(6),cout(6),'0',aluop,cout(7),outt(6),adder_out1(6));

result7: onebitalu port map(data1(7),data2(7),cout(7),'0',aluop,cout(8),outt(7),adder_out1(7));

result8: onebitalu port map(data1(8),data2(8),cout(8),'0',aluop,cout(9),outt(8),adder_out1(8));

result9: onebitalu port map(data1(9),data2(9),cout(9),'0',aluop,cout(10),outt(9),adder_out1(9));

result10: onebitalu port map(data1(10),data2(10),cout(10),'0',aluop,cout(11),outt(10),adder_out1(10));

result11: onebitalu port map(data1(11),data2(11),cout(11),'0',aluop,cout(12),outt(11),adder_out1(11));

result12: onebitalu port map(data1(12),data2(12),cout(12),'0',aluop,cout(13),outt(12),adder_out1(12));

result13: onebitalu port map(data1(13),data2(13),cout(13),'0',aluop,cout(14),outt(13),adder_out1(13));

result14: onebitalu port map(data1(14),data2(14),cout(14),'0',aluop,cout(15),outt(14),adder_out1(14));

result15: onebitalu port map(data1(15),data2(15),cout(15),'0',aluop,cout(16),outt(15),adder_out1(15));

result16: onebitalu port map(data1(16),data2(16),cout(16),'0',aluop,cout(17),outt(16),adder_out1(16));

result17: onebitalu port map(data1(17),data2(17),cout(17),'0',aluop,cout(18),outt(17),adder_out1(17));

result18: onebitalu port map(data1(18),data2(18),cout(18),'0',aluop,cout(19),outt(18),adder_out1(18));

result19: onebitalu port map(data1(19),data2(19),cout(19),'0',aluop,cout(20),outt(19),adder_out1(19));

result20: onebitalu port map(data1(20),data2(20),cout(20),'0',aluop,cout(21),outt(20),adder_out1(20));

result21: onebitalu port map(data1(21),data2(21),cout(21),'0',aluop,cout(22),outt(21),adder_out1(21));

result22: onebitalu port map(data1(22),data2(22),cout(22),'0',aluop,cout(23),outt(22),adder_out1(22));

result23: onebitalu port map(data1(23),data2(23),cout(23),'0',aluop,cout(24),outt(23),adder_out1(23));

result24: onebitalu port map(data1(24),data2(24),cout(24),'0',aluop,cout(25),outt(24),adder_out1(24));

result25: onebitalu port map(data1(25),data2(25),cout(25),'0',aluop,cout(26),outt(25),adder_out1(25));

result26: onebitalu port map(data1(26),data2(26),cout(26),'0',aluop,cout(27),outt(26),adder_out1(26));

result27: onebitalu port map(data1(27),data2(27),cout(27),'0',aluop,cout(28),outt(27),adder_out1(27));

result28: onebitalu port map(data1(28),data2(28),cout(28),'0',aluop,cout(29),outt(28),adder_out1(28));

result29: onebitalu port map(data1(29),data2(29),cout(29),'0',aluop,cout(30),outt(29),adder_out1(29));

result30: onebitalu port map(data1(30),data2(30),cout(30),'0',aluop,cout(31),outt(30),adder_out1(30));

result31: onebitalu port map(data1(31),data2(31),cout(31),'0',aluop,cout(32),outt(31),adder_out1(31));


--bitadder31 :one_bit_adder port map(data1(31),data2(31),cout(31),O,temp3);
--set<=temp3;


cflag<=cout(32);
oflag<=cout(32) xor cout(31);

--Norrr :norr port map(outt,temp);
zflag<='1' when outt="00000000000000000000000000000000" else '0';

dataout<=outt;

end Behavioral;
