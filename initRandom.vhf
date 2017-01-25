--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : initRandom.vhf
-- /___/   /\     Timestamp : 12/04/2016 06:02:00
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/initRandom.vhf -w C:/Users/Earth/Documents/ei/Blackjack/initRandom.sch
--Design Name: initRandom
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

entity ADD4_MXILINX_initRandom is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic; 
          S2  : out   std_logic; 
          S3  : out   std_logic);
end ADD4_MXILINX_initRandom;

architecture BEHAVIORAL of ADD4_MXILINX_initRandom is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal C0       : std_logic;
   signal C1       : std_logic;
   signal C2       : std_logic;
   signal C2O      : std_logic;
   signal dummy    : std_logic;
   signal I0       : std_logic;
   signal I1       : std_logic;
   signal I2       : std_logic;
   signal I3       : std_logic;
   signal CO_DUMMY : std_logic;
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component MUXCY_D
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_D : component is "BLACK_BOX";
   
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_55 : label is "X0Y0";
   attribute RLOC of I_36_58 : label is "X0Y1";
   attribute RLOC of I_36_62 : label is "X0Y1";
   attribute RLOC of I_36_111 : label is "X0Y0";
   attribute RLOC of I_36_175 : label is "X0Y0";
   attribute RLOC of I_36_178 : label is "X0Y0";
   attribute RLOC of I_36_182 : label is "X0Y1";
   attribute RLOC of I_36_206 : label is "X0Y1";
begin
   CO <= CO_DUMMY;
   I_36_55 : MUXCY_L
      port map (CI=>C0,
                DI=>A1,
                S=>I1,
                LO=>C1);
   
   I_36_58 : MUXCY
      port map (CI=>C2,
                DI=>A3,
                S=>I3,
                O=>CO_DUMMY);
   
   I_36_62 : MUXCY_D
      port map (CI=>C1,
                DI=>A2,
                S=>I2,
                LO=>C2,
                O=>C2O);
   
   I_36_73 : XORCY
      port map (CI=>CI,
                LI=>I0,
                O=>S0);
   
   I_36_74 : XORCY
      port map (CI=>C0,
                LI=>I1,
                O=>S1);
   
   I_36_75 : XORCY
      port map (CI=>C2,
                LI=>I3,
                O=>S3);
   
   I_36_76 : XORCY
      port map (CI=>C1,
                LI=>I2,
                O=>S2);
   
   I_36_111 : MUXCY_L
      port map (CI=>CI,
                DI=>A0,
                S=>I0,
                LO=>C0);
   
   I_36_175 : FMAP
      port map (I1=>A1,
                I2=>B1,
                I3=>dummy,
                I4=>dummy,
                O=>I1);
   
   I_36_178 : FMAP
      port map (I1=>A0,
                I2=>B0,
                I3=>dummy,
                I4=>dummy,
                O=>I0);
   
   I_36_182 : FMAP
      port map (I1=>A2,
                I2=>B2,
                I3=>dummy,
                I4=>dummy,
                O=>I2);
   
   I_36_206 : FMAP
      port map (I1=>A3,
                I2=>B3,
                I3=>dummy,
                I4=>dummy,
                O=>I3);
   
   I_36_239 : XOR2
      port map (I0=>A0,
                I1=>B0,
                O=>I0);
   
   I_36_240 : XOR2
      port map (I0=>A1,
                I1=>B1,
                O=>I1);
   
   I_36_241 : XOR2
      port map (I0=>A2,
                I1=>B2,
                O=>I2);
   
   I_36_242 : XOR2
      port map (I0=>A3,
                I1=>B3,
                O=>I3);
   
   I_36_259 : XOR2
      port map (I0=>C2O,
                I1=>CO_DUMMY,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_initRandom is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_initRandom;

architecture BEHAVIORAL of FTCE_MXILINX_initRandom is
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

entity CB4CE_MXILINX_initRandom is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CE_MXILINX_initRandom;

architecture BEHAVIORAL of CB4CE_MXILINX_initRandom is
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
   component FTCE_MXILINX_initRandom
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
   
   attribute HU_SET of I_Q0 : label is "I_Q0_36";
   attribute HU_SET of I_Q1 : label is "I_Q1_37";
   attribute HU_SET of I_Q2 : label is "I_Q2_38";
   attribute HU_SET of I_Q3 : label is "I_Q3_39";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_initRandom
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_initRandom
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCE_MXILINX_initRandom
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCE_MXILINX_initRandom
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

entity initRandom is
   port ( CLK  : in    std_logic; 
          Q1_0 : out   std_logic; 
          Q1_1 : out   std_logic; 
          Q1_2 : out   std_logic; 
          Q1_3 : out   std_logic; 
          Q2_0 : out   std_logic; 
          Q2_1 : out   std_logic; 
          Q2_2 : out   std_logic; 
          Q2_3 : out   std_logic; 
          Q3_0 : out   std_logic; 
          Q3_1 : out   std_logic; 
          Q3_2 : out   std_logic; 
          Q3_3 : out   std_logic; 
          Q4_0 : out   std_logic; 
          Q4_1 : out   std_logic; 
          Q4_2 : out   std_logic; 
          Q4_3 : out   std_logic; 
          Q5_0 : out   std_logic; 
          Q5_1 : out   std_logic; 
          Q5_2 : out   std_logic; 
          Q5_3 : out   std_logic; 
          Q6_0 : out   std_logic; 
          Q6_1 : out   std_logic; 
          Q6_2 : out   std_logic; 
          Q6_3 : out   std_logic);
end initRandom;

architecture BEHAVIORAL of initRandom is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                : std_logic;
   signal XLXN_2                : std_logic;
   signal XLXN_13               : std_logic;
   signal XLXN_14               : std_logic;
   signal XLXN_30               : std_logic;
   signal XLXN_31               : std_logic;
   signal XLXN_35               : std_logic;
   signal XLXN_36               : std_logic;
   signal XLXN_37               : std_logic;
   signal XLXN_38               : std_logic;
   signal XLXN_39               : std_logic;
   signal XLXN_40               : std_logic;
   signal XLXN_41               : std_logic;
   signal XLXN_42               : std_logic;
   signal XLXN_48               : std_logic;
   signal XLXN_49               : std_logic;
   signal XLXN_50               : std_logic;
   signal XLXN_51               : std_logic;
   signal XLXN_52               : std_logic;
   signal XLXN_53               : std_logic;
   signal XLXN_54               : std_logic;
   signal XLXN_60               : std_logic;
   signal XLXN_61               : std_logic;
   signal XLXN_62               : std_logic;
   signal XLXN_63               : std_logic;
   signal XLXN_64               : std_logic;
   signal XLXN_65               : std_logic;
   signal XLXN_66               : std_logic;
   signal XLXN_72               : std_logic;
   signal XLXN_73               : std_logic;
   signal XLXN_74               : std_logic;
   signal XLXN_75               : std_logic;
   signal XLXN_77               : std_logic;
   signal XLXN_78               : std_logic;
   signal XLXN_84               : std_logic;
   signal XLXN_85               : std_logic;
   signal XLXN_86               : std_logic;
   signal XLXN_87               : std_logic;
   signal XLXN_89               : std_logic;
   signal XLXN_90               : std_logic;
   signal XLXN_98               : std_logic;
   signal XLXN_99               : std_logic;
   signal XLXI_18_B1_openSignal : std_logic;
   signal XLXI_18_B2_openSignal : std_logic;
   signal XLXI_18_B3_openSignal : std_logic;
   signal XLXI_18_CI_openSignal : std_logic;
   signal XLXI_24_B1_openSignal : std_logic;
   signal XLXI_24_B2_openSignal : std_logic;
   signal XLXI_24_B3_openSignal : std_logic;
   signal XLXI_24_CI_openSignal : std_logic;
   signal XLXI_29_B1_openSignal : std_logic;
   signal XLXI_29_B2_openSignal : std_logic;
   signal XLXI_29_B3_openSignal : std_logic;
   signal XLXI_29_CI_openSignal : std_logic;
   signal XLXI_34_B1_openSignal : std_logic;
   signal XLXI_34_B2_openSignal : std_logic;
   signal XLXI_34_B3_openSignal : std_logic;
   signal XLXI_34_CI_openSignal : std_logic;
   signal XLXI_39_B1_openSignal : std_logic;
   signal XLXI_39_B2_openSignal : std_logic;
   signal XLXI_39_B3_openSignal : std_logic;
   signal XLXI_39_CI_openSignal : std_logic;
   signal XLXI_44_B1_openSignal : std_logic;
   signal XLXI_44_B2_openSignal : std_logic;
   signal XLXI_44_B3_openSignal : std_logic;
   signal XLXI_44_CI_openSignal : std_logic;
   component CB4CE_MXILINX_initRandom
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
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component ADD4_MXILINX_initRandom
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_40";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_41";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_42";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_43";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_44";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_45";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_46";
   attribute HU_SET of XLXI_34 : label is "XLXI_34_47";
   attribute HU_SET of XLXI_36 : label is "XLXI_36_48";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_49";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_50";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_51";
begin
   XLXI_1 : CB4CE_MXILINX_initRandom
      port map (C=>CLK,
                CE=>XLXN_1,
                CLR=>XLXN_30,
                CEO=>open,
                Q0=>XLXN_2,
                Q1=>XLXN_31,
                Q2=>XLXN_13,
                Q3=>XLXN_14,
                TC=>open);
   
   XLXI_11 : VCC
      port map (P=>XLXN_1);
   
   XLXI_16 : AND3
      port map (I0=>XLXN_14,
                I1=>XLXN_13,
                I2=>XLXN_2,
                O=>XLXN_30);
   
   XLXI_18 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_2,
                A1=>XLXN_31,
                A2=>XLXN_13,
                A3=>XLXN_14,
                B0=>XLXN_35,
                B1=>XLXI_18_B1_openSignal,
                B2=>XLXI_18_B2_openSignal,
                B3=>XLXI_18_B3_openSignal,
                CI=>XLXI_18_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q1_0,
                S1=>Q1_1,
                S2=>Q1_2,
                S3=>Q1_3);
   
   XLXI_20 : VCC
      port map (P=>XLXN_35);
   
   XLXI_21 : CB4CE_MXILINX_initRandom
      port map (C=>XLXN_30,
                CE=>XLXN_36,
                CLR=>XLXN_40,
                CEO=>open,
                Q0=>XLXN_37,
                Q1=>XLXN_41,
                Q2=>XLXN_38,
                Q3=>XLXN_39,
                TC=>open);
   
   XLXI_22 : VCC
      port map (P=>XLXN_36);
   
   XLXI_23 : AND3
      port map (I0=>XLXN_39,
                I1=>XLXN_38,
                I2=>XLXN_37,
                O=>XLXN_40);
   
   XLXI_24 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_37,
                A1=>XLXN_41,
                A2=>XLXN_38,
                A3=>XLXN_39,
                B0=>XLXN_42,
                B1=>XLXI_24_B1_openSignal,
                B2=>XLXI_24_B2_openSignal,
                B3=>XLXI_24_B3_openSignal,
                CI=>XLXI_24_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q2_0,
                S1=>Q2_1,
                S2=>Q2_2,
                S3=>Q2_3);
   
   XLXI_25 : VCC
      port map (P=>XLXN_42);
   
   XLXI_26 : CB4CE_MXILINX_initRandom
      port map (C=>XLXN_40,
                CE=>XLXN_48,
                CLR=>XLXN_52,
                CEO=>open,
                Q0=>XLXN_49,
                Q1=>XLXN_53,
                Q2=>XLXN_50,
                Q3=>XLXN_51,
                TC=>open);
   
   XLXI_27 : VCC
      port map (P=>XLXN_48);
   
   XLXI_28 : AND3
      port map (I0=>XLXN_51,
                I1=>XLXN_50,
                I2=>XLXN_49,
                O=>XLXN_52);
   
   XLXI_29 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_49,
                A1=>XLXN_53,
                A2=>XLXN_50,
                A3=>XLXN_51,
                B0=>XLXN_54,
                B1=>XLXI_29_B1_openSignal,
                B2=>XLXI_29_B2_openSignal,
                B3=>XLXI_29_B3_openSignal,
                CI=>XLXI_29_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q3_0,
                S1=>Q3_1,
                S2=>Q3_2,
                S3=>Q3_3);
   
   XLXI_30 : VCC
      port map (P=>XLXN_54);
   
   XLXI_31 : CB4CE_MXILINX_initRandom
      port map (C=>XLXN_99,
                CE=>XLXN_60,
                CLR=>XLXN_64,
                CEO=>open,
                Q0=>XLXN_61,
                Q1=>XLXN_65,
                Q2=>XLXN_62,
                Q3=>XLXN_63,
                TC=>open);
   
   XLXI_32 : VCC
      port map (P=>XLXN_60);
   
   XLXI_33 : AND3
      port map (I0=>XLXN_63,
                I1=>XLXN_62,
                I2=>XLXN_61,
                O=>XLXN_64);
   
   XLXI_34 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_61,
                A1=>XLXN_65,
                A2=>XLXN_62,
                A3=>XLXN_63,
                B0=>XLXN_66,
                B1=>XLXI_34_B1_openSignal,
                B2=>XLXI_34_B2_openSignal,
                B3=>XLXI_34_B3_openSignal,
                CI=>XLXI_34_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q6_0,
                S1=>Q6_1,
                S2=>Q6_2,
                S3=>Q6_3);
   
   XLXI_35 : VCC
      port map (P=>XLXN_66);
   
   XLXI_36 : CB4CE_MXILINX_initRandom
      port map (C=>XLXN_98,
                CE=>XLXN_72,
                CLR=>XLXN_99,
                CEO=>open,
                Q0=>XLXN_73,
                Q1=>XLXN_77,
                Q2=>XLXN_74,
                Q3=>XLXN_75,
                TC=>open);
   
   XLXI_37 : VCC
      port map (P=>XLXN_72);
   
   XLXI_38 : AND3
      port map (I0=>XLXN_75,
                I1=>XLXN_74,
                I2=>XLXN_73,
                O=>XLXN_99);
   
   XLXI_39 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_73,
                A1=>XLXN_77,
                A2=>XLXN_74,
                A3=>XLXN_75,
                B0=>XLXN_78,
                B1=>XLXI_39_B1_openSignal,
                B2=>XLXI_39_B2_openSignal,
                B3=>XLXI_39_B3_openSignal,
                CI=>XLXI_39_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q5_0,
                S1=>Q5_1,
                S2=>Q5_2,
                S3=>Q5_3);
   
   XLXI_40 : VCC
      port map (P=>XLXN_78);
   
   XLXI_41 : CB4CE_MXILINX_initRandom
      port map (C=>XLXN_52,
                CE=>XLXN_84,
                CLR=>XLXN_98,
                CEO=>open,
                Q0=>XLXN_85,
                Q1=>XLXN_89,
                Q2=>XLXN_86,
                Q3=>XLXN_87,
                TC=>open);
   
   XLXI_42 : VCC
      port map (P=>XLXN_84);
   
   XLXI_43 : AND3
      port map (I0=>XLXN_87,
                I1=>XLXN_86,
                I2=>XLXN_85,
                O=>XLXN_98);
   
   XLXI_44 : ADD4_MXILINX_initRandom
      port map (A0=>XLXN_85,
                A1=>XLXN_89,
                A2=>XLXN_86,
                A3=>XLXN_87,
                B0=>XLXN_90,
                B1=>XLXI_44_B1_openSignal,
                B2=>XLXI_44_B2_openSignal,
                B3=>XLXI_44_B3_openSignal,
                CI=>XLXI_44_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>Q4_0,
                S1=>Q4_1,
                S2=>Q4_2,
                S3=>Q4_3);
   
   XLXI_45 : VCC
      port map (P=>XLXN_90);
   
end BEHAVIORAL;


