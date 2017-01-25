--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sevensegDriver.vhf
-- /___/   /\     Timestamp : 12/04/2016 21:26:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/sevensegDriver.vhf -w C:/Users/Earth/Documents/ei/Blackjack/sevensegDriver.sch
--Design Name: sevensegDriver
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D3_8E_MXILINX_sevensegDriver is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic; 
          D4 : out   std_logic; 
          D5 : out   std_logic; 
          D6 : out   std_logic; 
          D7 : out   std_logic);
end D3_8E_MXILINX_sevensegDriver;

architecture BEHAVIORAL of D3_8E_MXILINX_sevensegDriver is
   attribute BOX_TYPE   : string ;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND4
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D7);
   
   I_36_31 : AND4B1
      port map (I0=>A0,
                I1=>A2,
                I2=>A1,
                I3=>E,
                O=>D6);
   
   I_36_32 : AND4B1
      port map (I0=>A1,
                I1=>A2,
                I2=>A0,
                I3=>E,
                O=>D5);
   
   I_36_33 : AND4B2
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>E,
                O=>D4);
   
   I_36_34 : AND4B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D3);
   
   I_36_35 : AND4B2
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D2);
   
   I_36_36 : AND4B2
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D1);
   
   I_36_37 : AND4B3
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_sevensegDriver is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_sevensegDriver;

architecture BEHAVIORAL of FTCE_MXILINX_sevensegDriver is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB2CE_MXILINX_sevensegDriver is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          TC  : out   std_logic);
end CB2CE_MXILINX_sevensegDriver;

architecture BEHAVIORAL of CB2CE_MXILINX_sevensegDriver is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_sevensegDriver
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_0";
   attribute HU_SET of I_Q1 : label is "I_Q1_1";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_36_37 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_47 : VCC
      port map (P=>XLXN_1);
   
   I_36_52 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB4CE_MXILINX_sevensegDriver is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CE_MXILINX_sevensegDriver;

architecture BEHAVIORAL of CB4CE_MXILINX_sevensegDriver is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_sevensegDriver
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_2";
   attribute HU_SET of I_Q1 : label is "I_Q1_3";
   attribute HU_SET of I_Q2 : label is "I_Q2_4";
   attribute HU_SET of I_Q3 : label is "I_Q3_5";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCE_MXILINX_sevensegDriver
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q3_DUMMY);
   
   I_36_31 : AND4
      port map (I0=>Q3_DUMMY,
                I1=>Q2_DUMMY,
                I2=>Q1_DUMMY,
                I3=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_32 : AND3
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q0_DUMMY,
                O=>T3);
   
   I_36_33 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>T2);
   
   I_36_58 : VCC
      port map (P=>XLXN_1);
   
   I_36_67 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sevensegDriver is
   port ( CLK    : in    std_logic; 
          ENB0   : out   std_logic; 
          ENB1   : out   std_logic; 
          ENB1_0 : out   std_logic; 
          ENB1_1 : out   std_logic; 
          ENB1_2 : out   std_logic; 
          ENB1_3 : out   std_logic; 
          ENB1_4 : out   std_logic; 
          ENB2_0 : out   std_logic; 
          ENB2_1 : out   std_logic; 
          ENB2_2 : out   std_logic; 
          ENB2_3 : out   std_logic; 
          ENB2_4 : out   std_logic; 
          ENB3_0 : out   std_logic; 
          ENB3_1 : out   std_logic; 
          ENB3_2 : out   std_logic; 
          ENB3_3 : out   std_logic; 
          ENB3_4 : out   std_logic; 
          Q1_0   : out   std_logic; 
          Q1_1   : out   std_logic; 
          Q1_2   : out   std_logic; 
          Q2_0   : out   std_logic; 
          Q2_1   : out   std_logic; 
          Q2_2   : out   std_logic; 
          Q3_0   : out   std_logic; 
          Q3_1   : out   std_logic; 
          Q3_2   : out   std_logic);
end sevensegDriver;

architecture BEHAVIORAL of sevensegDriver is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Q0         : std_logic;
   signal Q2         : std_logic;
   signal XLXN_1     : std_logic;
   signal XLXN_8     : std_logic;
   signal XLXN_9     : std_logic;
   signal XLXN_12    : std_logic;
   signal XLXN_13    : std_logic;
   signal XLXN_14    : std_logic;
   signal XLXN_15    : std_logic;
   signal XLXN_31    : std_logic;
   signal XLXN_79    : std_logic;
   signal XLXN_97    : std_logic;
   signal XLXN_98    : std_logic;
   signal XLXN_118   : std_logic;
   signal Q2_0_DUMMY : std_logic;
   signal Q2_1_DUMMY : std_logic;
   signal Q2_2_DUMMY : std_logic;
   signal Q1_0_DUMMY : std_logic;
   signal Q1_1_DUMMY : std_logic;
   signal Q1_2_DUMMY : std_logic;
   signal ENB0_DUMMY : std_logic;
   signal ENB1_DUMMY : std_logic;
   signal Q3_0_DUMMY : std_logic;
   signal Q3_1_DUMMY : std_logic;
   signal Q3_2_DUMMY : std_logic;
   component CB4CE_MXILINX_sevensegDriver
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component CB2CE_MXILINX_sevensegDriver
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component D3_8E_MXILINX_sevensegDriver
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_6";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_7";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_8";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_9";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_10";
begin
   ENB0 <= ENB0_DUMMY;
   ENB1 <= ENB1_DUMMY;
   Q1_0 <= Q1_0_DUMMY;
   Q1_1 <= Q1_1_DUMMY;
   Q1_2 <= Q1_2_DUMMY;
   Q2_0 <= Q2_0_DUMMY;
   Q2_1 <= Q2_1_DUMMY;
   Q2_2 <= Q2_2_DUMMY;
   Q3_0 <= Q3_0_DUMMY;
   Q3_1 <= Q3_1_DUMMY;
   Q3_2 <= Q3_2_DUMMY;
   XLXI_1 : CB4CE_MXILINX_sevensegDriver
      port map (C=>CLK,
                CE=>XLXN_1,
                CLR=>XLXN_8,
                CEO=>open,
                Q0=>Q0,
                Q1=>XLXN_13,
                Q2=>Q2,
                Q3=>open,
                TC=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_1);
   
   XLXI_4 : AND2
      port map (I0=>Q0,
                I1=>Q2,
                O=>XLXN_8);
   
   XLXI_5 : CB2CE_MXILINX_sevensegDriver
      port map (C=>XLXN_8,
                CE=>XLXN_9,
                CLR=>XLXN_12,
                CEO=>open,
                Q0=>ENB0_DUMMY,
                Q1=>ENB1_DUMMY,
                TC=>open);
   
   XLXI_6 : VCC
      port map (P=>XLXN_9);
   
   XLXI_7 : AND2
      port map (I0=>ENB1_DUMMY,
                I1=>ENB0_DUMMY,
                O=>XLXN_12);
   
   XLXI_8 : INV
      port map (I=>ENB0_DUMMY,
                O=>XLXN_14);
   
   XLXI_9 : INV
      port map (I=>ENB1_DUMMY,
                O=>XLXN_15);
   
   XLXI_10 : INV
      port map (I=>ENB1_DUMMY,
                O=>XLXN_118);
   
   XLXI_11 : INV
      port map (I=>ENB0_DUMMY,
                O=>XLXN_31);
   
   XLXI_13 : AND3
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                I2=>Q0,
                O=>Q1_0_DUMMY);
   
   XLXI_14 : AND3
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                I2=>XLXN_13,
                O=>Q1_1_DUMMY);
   
   XLXI_15 : AND3
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                I2=>Q2,
                O=>Q1_2_DUMMY);
   
   XLXI_16 : AND3
      port map (I0=>XLXN_118,
                I1=>ENB0_DUMMY,
                I2=>Q0,
                O=>Q2_0_DUMMY);
   
   XLXI_17 : AND3
      port map (I0=>XLXN_118,
                I1=>ENB0_DUMMY,
                I2=>XLXN_13,
                O=>Q2_1_DUMMY);
   
   XLXI_18 : AND3
      port map (I0=>XLXN_118,
                I1=>ENB0_DUMMY,
                I2=>Q2,
                O=>Q2_2_DUMMY);
   
   XLXI_19 : AND3
      port map (I0=>ENB1_DUMMY,
                I1=>XLXN_31,
                I2=>Q0,
                O=>Q3_0_DUMMY);
   
   XLXI_20 : AND3
      port map (I0=>ENB1_DUMMY,
                I1=>XLXN_31,
                I2=>XLXN_13,
                O=>Q3_1_DUMMY);
   
   XLXI_21 : AND3
      port map (I0=>ENB1_DUMMY,
                I1=>XLXN_31,
                I2=>Q2,
                O=>Q3_2_DUMMY);
   
   XLXI_22 : D3_8E_MXILINX_sevensegDriver
      port map (A0=>Q1_0_DUMMY,
                A1=>Q1_1_DUMMY,
                A2=>Q1_2_DUMMY,
                E=>XLXN_79,
                D0=>ENB1_0,
                D1=>ENB1_1,
                D2=>ENB1_2,
                D3=>ENB1_3,
                D4=>ENB1_4,
                D5=>open,
                D6=>open,
                D7=>open);
   
   XLXI_23 : D3_8E_MXILINX_sevensegDriver
      port map (A0=>Q2_0_DUMMY,
                A1=>Q2_1_DUMMY,
                A2=>Q2_2_DUMMY,
                E=>XLXN_97,
                D0=>ENB2_0,
                D1=>ENB2_1,
                D2=>ENB2_2,
                D3=>ENB2_3,
                D4=>ENB2_4,
                D5=>open,
                D6=>open,
                D7=>open);
   
   XLXI_24 : D3_8E_MXILINX_sevensegDriver
      port map (A0=>Q3_0_DUMMY,
                A1=>Q3_1_DUMMY,
                A2=>Q3_2_DUMMY,
                E=>XLXN_98,
                D0=>ENB3_0,
                D1=>ENB3_1,
                D2=>ENB3_2,
                D3=>ENB3_3,
                D4=>ENB3_4,
                D5=>open,
                D6=>open,
                D7=>open);
   
   XLXI_39 : AND2
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                O=>XLXN_79);
   
   XLXI_40 : AND2
      port map (I0=>XLXN_118,
                I1=>ENB0_DUMMY,
                O=>XLXN_97);
   
   XLXI_41 : AND2
      port map (I0=>ENB1_DUMMY,
                I1=>XLXN_31,
                O=>XLXN_98);
   
end BEHAVIORAL;


