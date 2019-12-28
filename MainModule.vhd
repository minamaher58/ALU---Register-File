----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:43:55 04/14/2018 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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

use work.pachageee.all;
use work.registerfile_alu_pachage.all;
use work.pachagee.all;
use work.pachage_mux_dec_reg_and.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port ( start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
           pcout : out  STD_LOGIC_VECTOR (31 downto 0);
           dataMemout : out  STD_LOGIC_VECTOR (31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal x: STD_LOGIC_VECTOR (31 DOWNTO 0);
	
signal resultplus4: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal resultplus4_2: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal opcode:STD_LOGIC_vector(5 downto 0);
signal rs:STD_LOGIC_vector(4 downto 0);
signal rt:STD_LOGIC_vector(4 downto 0);
signal rd:STD_LOGIC_vector(4 downto 0);
--signal shamt:std_logic_vector(4 downto 0);
signal funct:STD_LOGIC_vector(5 downto 0);
signal jump:STD_LOGIC_vector(25 downto 0);
signal const_address:STD_LOGIC_vector(15 downto 0);--15 0

signal mux_output5: STD_LOGIC_VECTOR (31 DOWNTO 0);

signal outt:std_logic_vector(31 downto 0);
signal SLL1:STD_LOGIC_VECTOR (31 DOWNTO 0);
signal SLL2:STD_LOGIC_VECTOR (27 DOWNTO 0);
signal extendedout:std_logic_vector(31 downto 0 );
SIGNAL address :STD_LOGIC_VECTOR (31 downto 0);
signal selectormux1:STD_LOGIC;
signal Brunch:STD_LOGIC;
signal zflagalu:STD_LOGIC;
signal outmux1: STD_LOGIC_VECTOR (31 DOWNTO 0);

signal Regdest:STD_LOGIC;
signal Jumpmax2:STD_LOGIC;
signal MemoryRead:STD_LOGIC;
signal MemoryReg:STD_LOGIC;
signal aluoperation:STD_LOGIC_vector(1 downto 0);

signal MemoryWrite:STD_LOGIC;
signal brenchnot:STD_LOGIC;
signal src:STD_LOGIC;
signal RegisterWrite:STD_LOGIC;

signal y1: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal y2: STD_LOGIC_VECTOR (31 DOWNTO 0);

signal outmux15: STD_LOGIC_VECTOR (4 DOWNTO 0);--31 0
signal wrtdata: STD_LOGIC_VECTOR (31 DOWNTO 0);

signal outmux3 :STD_LOGIC_VECTOR (31 downto 0);

signal outcontrol :  std_logic_vector(3 downto 0);

signal outalu : STD_LOGIC_VECTOR (31 downto 0);
signal cflagalu:STD_LOGIC;
signal oflagalu:STD_LOGIC;

signal notstart:STD_LOGIC;
signal Read_data :STD_LOGIC_VECTOR (31 downto 0);
begin

notstart<=not (start);
pc: generic_reg port map(mux_output5,clk,notstart,'0',start,x);

adderr:adder port map(x,"00000000000000000000000000000100",resultplus4);

instruction:INSTRMEMORY  port map(notstart,outt,x,clk);

control:control_unit port map (outt(31 downto 26),Regdest,src,MemoryReg,RegisterWrite,MemoryRead,MemoryWrite,Brunch,aluoperation,Jumpmax2,brenchnot);


const_address<=outt(15 downto 0);
sign_extendd:sign_extend port map(const_address,extendedout);
--notstart<=not(start);
--opcode<=outt(31 downto 26);

rs<=outt(25 downto 21);
rt<=outt(20 downto 16);
rd<=outt(15 downto 11);
mux3:muxx4 port map (rt,rd,Regdest,outmux15); 
Reg1:RegisterFile port map (rs,rt,outmux15,RegisterWrite,clk,wrtdata,y1,y2);


funct<=outt(5 downto 0);
controll : ALU_control port map (aluoperation,funct,outcontrol);

mux4:mux32 port map (y2,extendedout,src,outmux3); 
alu1:ALU port map (y1,outmux3,outcontrol,outcontrol(2),outalu,cflagalu,zflagalu,oflagalu);




data:DATAMEMORY port map (notstart,y2,Read_data,MemoryRead,MemoryWrite,outalu,clk);  
mux5:mux32 port map (outalu,Read_data,MemoryReg,wrtdata);




jump<=outt(25 downto 0);
SLL2<=jump &"00";
address <= resultplus4(31 downto 28) & SLL2;


SLL1<=extendedout(29 downto 0)&"00";
adderr2:adder port map(resultplus4,SLL1,resultplus4_2);



selectormux1<=(Brunch AND zflagalu) or (brenchnot AND (not zflagalu)); 
mux1:mux32 port map (resultplus4,resultplus4_2,selectormux1,outmux1);  
mux2:mux32 port map (outmux1,address,Jumpmax2,mux_output5); 







RegFileOut1 <= y1;	
	
RegFileOut2 <=y2;

ALUOut <= outalu;

pcout<=x;

dataMemOut<=Read_data;


end Behavioral;

