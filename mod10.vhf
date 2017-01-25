--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : mod10.vhf
-- /___/   /\     Timestamp : 12/05/2016 09:13:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/mod10.vhf -w C:/Users/Earth/Documents/ei/Blackjack/mod10.sch
--Design Name: mod10
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

entity M2_1_MXILINX_mod10 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_mod10;

architecture BEHAVIORAL of M2_1_MXILINX_mod10 is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADSU4_MXILINX_mod10 is
   port ( ADD : in    std_logic; 
          A0  : in    std_logic; 
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
end ADSU4_MXILINX_mod10;

architecture BEHAVIORAL of ADSU4_MXILINX_mod10 is
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
   signal SUB0     : std_logic;
   signal SUB1     : std_logic;
   signal SUB2     : std_logic;
   signal SUB3     : std_logic;
   signal CO_DUMMY : std_logic;
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
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
   
   attribute RLOC of I_36_55 : label is "X1Y0";
   attribute RLOC of I_36_58 : label is "X1Y1";
   attribute RLOC of I_36_62 : label is "X1Y1";
   attribute RLOC of I_36_111 : label is "X1Y0";
   attribute RLOC of I_36_175 : label is "X1Y0";
   attribute RLOC of I_36_178 : label is "X1Y0";
   attribute RLOC of I_36_182 : label is "X1Y1";
   attribute RLOC of I_36_206 : label is "X1Y1";
begin
   CO <= CO_DUMMY;
   I_36_50 : XOR3
      port map (I0=>A0,
                I1=>B0,
                I2=>SUB0,
                O=>I0);
   
   I_36_55 : MUXCY_L
      port map (CI=>C0,
                DI=>A1,
                S=>I1,
                LO=>C1);
   
   I_36_56 : XOR3
      port map (I0=>A2,
                I1=>B2,
                I2=>SUB2,
                O=>I2);
   
   I_36_57 : XOR3
      port map (I0=>A3,
                I1=>B3,
                I2=>SUB3,
                O=>I3);
   
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
   
   I_36_100 : XOR3
      port map (I0=>A1,
                I1=>B1,
                I2=>SUB1,
                O=>I1);
   
   I_36_111 : MUXCY_L
      port map (CI=>CI,
                DI=>A0,
                S=>I0,
                LO=>C0);
   
   I_36_112 : INV
      port map (I=>ADD,
                O=>SUB0);
   
   I_36_175 : FMAP
      port map (I1=>A1,
                I2=>B1,
                I3=>ADD,
                I4=>dummy,
                O=>I1);
   
   I_36_178 : FMAP
      port map (I1=>A0,
                I2=>B0,
                I3=>ADD,
                I4=>dummy,
                O=>I0);
   
   I_36_182 : FMAP
      port map (I1=>A2,
                I2=>B2,
                I3=>ADD,
                I4=>dummy,
                O=>I2);
   
   I_36_206 : FMAP
      port map (I1=>A3,
                I2=>B3,
                I3=>ADD,
                I4=>dummy,
                O=>I3);
   
   I_36_241 : XOR2
      port map (I0=>C2O,
                I1=>CO_DUMMY,
                O=>OFL);
   
   I_36_244 : INV
      port map (I=>ADD,
                O=>SUB1);
   
   I_36_245 : INV
      port map (I=>ADD,
                O=>SUB2);
   
   I_36_246 : INV
      port map (I=>ADD,
                O=>SUB3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPM4_MXILINX_mod10 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          GT : out   std_logic; 
          LT : out   std_logic);
end COMPM4_MXILINX_mod10;

architecture BEHAVIORAL of COMPM4_MXILINX_mod10 is
   attribute BOX_TYPE   : string ;
   signal EQ_1  : std_logic;
   signal EQ_3  : std_logic;
   signal EQ2_3 : std_logic;
   signal GE0_1 : std_logic;
   signal GE2_3 : std_logic;
   signal GTA   : std_logic;
   signal GTB   : std_logic;
   signal GT_1  : std_logic;
   signal GT_3  : std_logic;
   signal GT0_1 : std_logic;
   signal LE0_1 : std_logic;
   signal LE2_3 : std_logic;
   signal LTA   : std_logic;
   signal LTB   : std_logic;
   signal LT_1  : std_logic;
   signal LT_3  : std_logic;
   signal LT0_1 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
begin
   I_36_1 : AND2
      port map (I0=>GT0_1,
                I1=>EQ2_3,
                O=>GTA);
   
   I_36_2 : AND2
      port map (I0=>EQ2_3,
                I1=>LT0_1,
                O=>LTA);
   
   I_36_3 : NOR2
      port map (I0=>GTB,
                I1=>LTB,
                O=>EQ2_3);
   
   I_36_4 : AND2B1
      port map (I0=>A3,
                I1=>B3,
                O=>LT_3);
   
   I_36_5 : OR2
      port map (I0=>LT_1,
                I1=>LE0_1,
                O=>LT0_1);
   
   I_36_6 : AND2B1
      port map (I0=>B3,
                I1=>A3,
                O=>GT_3);
   
   I_36_7 : AND2B1
      port map (I0=>A1,
                I1=>B1,
                O=>LT_1);
   
   I_36_8 : XNOR2
      port map (I0=>A3,
                I1=>B3,
                O=>EQ_3);
   
   I_36_9 : AND2B1
      port map (I0=>B1,
                I1=>A1,
                O=>GT_1);
   
   I_36_11 : OR2
      port map (I0=>LTB,
                I1=>LTA,
                O=>LT);
   
   I_36_12 : OR2
      port map (I0=>GTB,
                I1=>GTA,
                O=>GT);
   
   I_36_13 : XNOR2
      port map (I0=>A1,
                I1=>B1,
                O=>EQ_1);
   
   I_36_14 : AND3B1
      port map (I0=>B2,
                I1=>EQ_3,
                I2=>A2,
                O=>GE2_3);
   
   I_36_15 : AND3B1
      port map (I0=>A2,
                I1=>EQ_3,
                I2=>B2,
                O=>LE2_3);
   
   I_36_16 : AND3B1
      port map (I0=>B0,
                I1=>EQ_1,
                I2=>A0,
                O=>GE0_1);
   
   I_36_17 : AND3B1
      port map (I0=>A0,
                I1=>EQ_1,
                I2=>B0,
                O=>LE0_1);
   
   I_36_18 : OR2
      port map (I0=>GT_1,
                I1=>GE0_1,
                O=>GT0_1);
   
   I_36_19 : OR2
      port map (I0=>GT_3,
                I1=>GE2_3,
                O=>GTB);
   
   I_36_20 : OR2
      port map (I0=>LT_3,
                I1=>LE2_3,
                O=>LTB);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mod10 is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT0 : out   std_logic; 
          OUT1 : out   std_logic; 
          OUT2 : out   std_logic; 
          OUT3 : out   std_logic);
end mod10;

architecture BEHAVIORAL of mod10 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_9               : std_logic;
   signal XLXN_11              : std_logic;
   signal XLXN_27              : std_logic;
   signal XLXN_38              : std_logic;
   signal XLXN_39              : std_logic;
   signal XLXN_40              : std_logic;
   signal XLXN_41              : std_logic;
   signal XLXN_42              : std_logic;
   signal XLXN_44              : std_logic;
   signal XLXN_46              : std_logic;
   signal XLXN_49              : std_logic;
   signal XLXN_50              : std_logic;
   signal XLXN_51              : std_logic;
   signal XLXN_52              : std_logic;
   signal XLXI_4_CI_openSignal : std_logic;
   signal XLXI_8_CI_openSignal : std_logic;
   component COMPM4_MXILINX_mod10
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component ADSU4_MXILINX_mod10
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             ADD : in    std_logic; 
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
   
   component M2_1_MXILINX_mod10
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_66";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_67";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_68";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_69";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_70";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_71";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_72";
begin
   XLXI_1 : COMPM4_MXILINX_mod10
      port map (A0=>IN0,
                A1=>IN1,
                A2=>IN2,
                A3=>IN3,
                B0=>XLXN_11,
                B1=>XLXN_9,
                B2=>XLXN_11,
                B3=>XLXN_9,
                GT=>XLXN_46,
                LT=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_9);
   
   XLXI_3 : GND
      port map (G=>XLXN_11);
   
   XLXI_4 : ADSU4_MXILINX_mod10
      port map (ADD=>XLXN_27,
                A0=>IN0,
                A1=>IN1,
                A2=>IN2,
                A3=>IN3,
                B0=>XLXN_38,
                B1=>XLXN_39,
                B2=>XLXN_40,
                B3=>XLXN_41,
                CI=>XLXI_4_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>XLXN_49,
                S1=>XLXN_50,
                S2=>XLXN_51,
                S3=>XLXN_52);
   
   XLXI_7 : GND
      port map (G=>XLXN_27);
   
   XLXI_8 : ADSU4_MXILINX_mod10
      port map (ADD=>XLXN_44,
                A0=>IN0,
                A1=>IN1,
                A2=>IN2,
                A3=>IN3,
                B0=>XLXN_44,
                B1=>XLXN_42,
                B2=>XLXN_44,
                B3=>XLXN_42,
                CI=>XLXI_8_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>XLXN_38,
                S1=>XLXN_39,
                S2=>XLXN_40,
                S3=>XLXN_41);
   
   XLXI_9 : GND
      port map (G=>XLXN_44);
   
   XLXI_10 : VCC
      port map (P=>XLXN_42);
   
   XLXI_11 : M2_1_MXILINX_mod10
      port map (D0=>IN0,
                D1=>XLXN_49,
                S0=>XLXN_46,
                O=>OUT0);
   
   XLXI_12 : M2_1_MXILINX_mod10
      port map (D0=>IN1,
                D1=>XLXN_50,
                S0=>XLXN_46,
                O=>OUT1);
   
   XLXI_13 : M2_1_MXILINX_mod10
      port map (D0=>IN2,
                D1=>XLXN_51,
                S0=>XLXN_46,
                O=>OUT2);
   
   XLXI_14 : M2_1_MXILINX_mod10
      port map (D0=>IN3,
                D1=>XLXN_52,
                S0=>XLXN_46,
                O=>OUT3);
   
end BEHAVIORAL;


