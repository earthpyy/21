--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : playerCard.vhf
-- /___/   /\     Timestamp : 12/06/2016 05:56:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/playerCard.vhf -w C:/Users/Earth/Documents/ei/Blackjack/playerCard.sch
--Design Name: playerCard
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

entity M2_1_MXILINX_playerCard is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_playerCard;

architecture BEHAVIORAL of M2_1_MXILINX_playerCard is
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

entity COMPM4_MXILINX_playerCard is
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
end COMPM4_MXILINX_playerCard;

architecture BEHAVIORAL of COMPM4_MXILINX_playerCard is
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

entity ADD4_MXILINX_playerCard is
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
end ADD4_MXILINX_playerCard;

architecture BEHAVIORAL of ADD4_MXILINX_playerCard is
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

entity ADSU4_MXILINX_playerCard is
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
end ADSU4_MXILINX_playerCard;

architecture BEHAVIORAL of ADSU4_MXILINX_playerCard is
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

entity mod10_MUSER_playerCard is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT0 : out   std_logic; 
          OUT1 : out   std_logic; 
          OUT2 : out   std_logic; 
          OUT3 : out   std_logic);
end mod10_MUSER_playerCard;

architecture BEHAVIORAL of mod10_MUSER_playerCard is
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
   component COMPM4_MXILINX_playerCard
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
   
   component ADSU4_MXILINX_playerCard
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
   
   component M2_1_MXILINX_playerCard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_1";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_2";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_3";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_4";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_5";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_6";
begin
   XLXI_1 : COMPM4_MXILINX_playerCard
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
   
   XLXI_4 : ADSU4_MXILINX_playerCard
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
   
   XLXI_8 : ADSU4_MXILINX_playerCard
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
   
   XLXI_11 : M2_1_MXILINX_playerCard
      port map (D0=>IN0,
                D1=>XLXN_49,
                S0=>XLXN_46,
                O=>OUT0);
   
   XLXI_12 : M2_1_MXILINX_playerCard
      port map (D0=>IN1,
                D1=>XLXN_50,
                S0=>XLXN_46,
                O=>OUT1);
   
   XLXI_13 : M2_1_MXILINX_playerCard
      port map (D0=>IN2,
                D1=>XLXN_51,
                S0=>XLXN_46,
                O=>OUT2);
   
   XLXI_14 : M2_1_MXILINX_playerCard
      port map (D0=>IN3,
                D1=>XLXN_52,
                S0=>XLXN_46,
                O=>OUT3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPM8_MXILINX_playerCard is
   port ( A  : in    std_logic_vector (7 downto 0); 
          B  : in    std_logic_vector (7 downto 0); 
          GT : out   std_logic; 
          LT : out   std_logic);
end COMPM8_MXILINX_playerCard;

architecture BEHAVIORAL of COMPM8_MXILINX_playerCard is
   attribute BOX_TYPE   : string ;
   signal EQ_1  : std_logic;
   signal EQ_3  : std_logic;
   signal EQ_5  : std_logic;
   signal EQ_7  : std_logic;
   signal EQ2_3 : std_logic;
   signal EQ4_5 : std_logic;
   signal EQ6_7 : std_logic;
   signal GE0_1 : std_logic;
   signal GE2_3 : std_logic;
   signal GE4_5 : std_logic;
   signal GE6_7 : std_logic;
   signal GTA   : std_logic;
   signal GTB   : std_logic;
   signal GTC   : std_logic;
   signal GTD   : std_logic;
   signal GT_1  : std_logic;
   signal GT_3  : std_logic;
   signal GT_5  : std_logic;
   signal GT_7  : std_logic;
   signal GT0_1 : std_logic;
   signal GT2_3 : std_logic;
   signal GT4_5 : std_logic;
   signal LE0_1 : std_logic;
   signal LE2_3 : std_logic;
   signal LE4_5 : std_logic;
   signal LE6_7 : std_logic;
   signal LTA   : std_logic;
   signal LTB   : std_logic;
   signal LTC   : std_logic;
   signal LTD   : std_logic;
   signal LT_1  : std_logic;
   signal LT_3  : std_logic;
   signal LT_5  : std_logic;
   signal LT_7  : std_logic;
   signal LT0_1 : std_logic;
   signal LT2_3 : std_logic;
   signal LT4_5 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   I_36_1 : AND2B1
      port map (I0=>A(7),
                I1=>B(7),
                O=>LT_7);
   
   I_36_3 : OR4
      port map (I0=>LTD,
                I1=>LTC,
                I2=>LTB,
                I3=>LTA,
                O=>LT);
   
   I_36_4 : NOR2
      port map (I0=>GT4_5,
                I1=>LT4_5,
                O=>EQ4_5);
   
   I_36_5 : AND3
      port map (I0=>EQ6_7,
                I1=>EQ4_5,
                I2=>LT2_3,
                O=>LTB);
   
   I_36_6 : OR2
      port map (I0=>LT_3,
                I1=>LE2_3,
                O=>LT2_3);
   
   I_36_7 : OR2
      port map (I0=>GT_3,
                I1=>GE2_3,
                O=>GT2_3);
   
   I_36_8 : OR2
      port map (I0=>GT_1,
                I1=>GE0_1,
                O=>GT0_1);
   
   I_36_9 : AND3B1
      port map (I0=>A(0),
                I1=>EQ_1,
                I2=>B(0),
                O=>LE0_1);
   
   I_36_10 : AND3B1
      port map (I0=>B(0),
                I1=>EQ_1,
                I2=>A(0),
                O=>GE0_1);
   
   I_36_11 : AND3B1
      port map (I0=>A(2),
                I1=>EQ_3,
                I2=>B(2),
                O=>LE2_3);
   
   I_36_12 : AND3B1
      port map (I0=>B(2),
                I1=>EQ_3,
                I2=>A(2),
                O=>GE2_3);
   
   I_36_13 : XNOR2
      port map (I0=>A(1),
                I1=>B(1),
                O=>EQ_1);
   
   I_36_14 : AND2B1
      port map (I0=>B(1),
                I1=>A(1),
                O=>GT_1);
   
   I_36_15 : XNOR2
      port map (I0=>A(3),
                I1=>B(3),
                O=>EQ_3);
   
   I_36_16 : AND2B1
      port map (I0=>A(1),
                I1=>B(1),
                O=>LT_1);
   
   I_36_17 : AND2B1
      port map (I0=>B(3),
                I1=>A(3),
                O=>GT_3);
   
   I_36_18 : OR2
      port map (I0=>LT_1,
                I1=>LE0_1,
                O=>LT0_1);
   
   I_36_19 : AND2B1
      port map (I0=>A(3),
                I1=>B(3),
                O=>LT_3);
   
   I_36_20 : AND2
      port map (I0=>GT4_5,
                I1=>EQ6_7,
                O=>GTC);
   
   I_36_21 : AND2
      port map (I0=>EQ6_7,
                I1=>LT4_5,
                O=>LTC);
   
   I_36_22 : NOR2
      port map (I0=>GTD,
                I1=>LTD,
                O=>EQ6_7);
   
   I_36_23 : OR2
      port map (I0=>LT_5,
                I1=>LE4_5,
                O=>LT4_5);
   
   I_36_24 : AND2B1
      port map (I0=>B(7),
                I1=>A(7),
                O=>GT_7);
   
   I_36_25 : AND2B1
      port map (I0=>A(5),
                I1=>B(5),
                O=>LT_5);
   
   I_36_26 : XNOR2
      port map (I0=>A(7),
                I1=>B(7),
                O=>EQ_7);
   
   I_36_27 : AND2B1
      port map (I0=>B(5),
                I1=>A(5),
                O=>GT_5);
   
   I_36_28 : XNOR2
      port map (I0=>A(5),
                I1=>B(5),
                O=>EQ_5);
   
   I_36_29 : AND3B1
      port map (I0=>B(6),
                I1=>EQ_7,
                I2=>A(6),
                O=>GE6_7);
   
   I_36_30 : AND3B1
      port map (I0=>A(6),
                I1=>EQ_7,
                I2=>B(6),
                O=>LE6_7);
   
   I_36_31 : AND3B1
      port map (I0=>B(4),
                I1=>EQ_5,
                I2=>A(4),
                O=>GE4_5);
   
   I_36_32 : AND3B1
      port map (I0=>A(4),
                I1=>EQ_5,
                I2=>B(4),
                O=>LE4_5);
   
   I_36_33 : OR2
      port map (I0=>GT_5,
                I1=>GE4_5,
                O=>GT4_5);
   
   I_36_34 : OR2
      port map (I0=>GT_7,
                I1=>GE6_7,
                O=>GTD);
   
   I_36_35 : OR2
      port map (I0=>LT_7,
                I1=>LE6_7,
                O=>LTD);
   
   I_36_36 : AND4
      port map (I0=>EQ6_7,
                I1=>EQ4_5,
                I2=>EQ2_3,
                I3=>LT0_1,
                O=>LTA);
   
   I_36_37 : AND4
      port map (I0=>GT0_1,
                I1=>EQ2_3,
                I2=>EQ4_5,
                I3=>EQ6_7,
                O=>GTA);
   
   I_36_38 : AND3
      port map (I0=>GT2_3,
                I1=>EQ4_5,
                I2=>EQ6_7,
                O=>GTB);
   
   I_36_39 : NOR2
      port map (I0=>GT2_3,
                I1=>LT2_3,
                O=>EQ2_3);
   
   I_36_40 : OR4
      port map (I0=>GTD,
                I1=>GTC,
                I2=>GTB,
                I3=>GTA,
                O=>GT);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SR4CLE_MXILINX_playerCard is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          L   : in    std_logic; 
          SLI : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end SR4CLE_MXILINX_playerCard;

architecture BEHAVIORAL of SR4CLE_MXILINX_playerCard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal L_OR_CE  : std_logic;
   signal MD0      : std_logic;
   signal MD1      : std_logic;
   signal MD2      : std_logic;
   signal MD3      : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   component M2_1_MXILINX_playerCard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of I_MQ0 : label is "I_MQ0_7";
   attribute HU_SET of I_MQ1 : label is "I_MQ1_8";
   attribute HU_SET of I_MQ2 : label is "I_MQ2_9";
   attribute HU_SET of I_MQ3 : label is "I_MQ3_10";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   I_MQ0 : M2_1_MXILINX_playerCard
      port map (D0=>SLI,
                D1=>D0,
                S0=>L,
                O=>MD0);
   
   I_MQ1 : M2_1_MXILINX_playerCard
      port map (D0=>Q0_DUMMY,
                D1=>D1,
                S0=>L,
                O=>MD1);
   
   I_MQ2 : M2_1_MXILINX_playerCard
      port map (D0=>Q1_DUMMY,
                D1=>D2,
                S0=>L,
                O=>MD2);
   
   I_MQ3 : M2_1_MXILINX_playerCard
      port map (D0=>Q2_DUMMY,
                D1=>D3,
                S0=>L,
                O=>MD3);
   
   I_Q0 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MD0,
                Q=>Q0_DUMMY);
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MD1,
                Q=>Q1_DUMMY);
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MD2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>L_OR_CE,
                CLR=>CLR,
                D=>MD3,
                Q=>Q3);
   
   I_36_51 : OR2
      port map (I0=>L,
                I1=>CE,
                O=>L_OR_CE);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1E_MXILINX_playerCard is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_playerCard;

architecture BEHAVIORAL of M2_1E_MXILINX_playerCard is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1,
                I1=>E,
                I2=>S0,
                O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0,
                I1=>E,
                I2=>D0,
                O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M8_1E_MXILINX_playerCard is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          D2 : in    std_logic; 
          D3 : in    std_logic; 
          D4 : in    std_logic; 
          D5 : in    std_logic; 
          D6 : in    std_logic; 
          D7 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          S2 : in    std_logic; 
          O  : out   std_logic);
end M8_1E_MXILINX_playerCard;

architecture BEHAVIORAL of M8_1E_MXILINX_playerCard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal M01 : std_logic;
   signal M03 : std_logic;
   signal M23 : std_logic;
   signal M45 : std_logic;
   signal M47 : std_logic;
   signal M67 : std_logic;
   component M2_1E_MXILINX_playerCard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUXF5_L
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF5_L : component is "BLACK_BOX";
   
   component MUXF6
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF6 : component is "BLACK_BOX";
   
   attribute HU_SET of I_M01 : label is "I_M01_14";
   attribute HU_SET of I_M23 : label is "I_M23_13";
   attribute HU_SET of I_M45 : label is "I_M45_12";
   attribute HU_SET of I_M67 : label is "I_M67_11";
begin
   I_M01 : M2_1E_MXILINX_playerCard
      port map (D0=>D0,
                D1=>D1,
                E=>E,
                S0=>S0,
                O=>M01);
   
   I_M03 : MUXF5_L
      port map (I0=>M01,
                I1=>M23,
                S=>S1,
                LO=>M03);
   
   I_M23 : M2_1E_MXILINX_playerCard
      port map (D0=>D2,
                D1=>D3,
                E=>E,
                S0=>S0,
                O=>M23);
   
   I_M45 : M2_1E_MXILINX_playerCard
      port map (D0=>D4,
                D1=>D5,
                E=>E,
                S0=>S0,
                O=>M45);
   
   I_M47 : MUXF5_L
      port map (I0=>M45,
                I1=>M67,
                S=>S1,
                LO=>M47);
   
   I_M67 : M2_1E_MXILINX_playerCard
      port map (D0=>D6,
                D1=>D7,
                E=>E,
                S0=>S0,
                O=>M67);
   
   I_O : MUXF6
      port map (I0=>M03,
                I1=>M47,
                S=>S2,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity playerCard is
   port ( CLK      : in    std_logic; 
          CLR      : in    std_logic; 
          HIT0     : in    std_logic; 
          HIT1     : in    std_logic; 
          HIT2     : in    std_logic; 
          init_Q0  : in    std_logic; 
          init_Q1  : in    std_logic; 
          init_Q2  : in    std_logic; 
          init_Q3  : in    std_logic; 
          init_SW  : in    std_logic; 
          init2_Q0 : in    std_logic; 
          init2_Q1 : in    std_logic; 
          init2_Q2 : in    std_logic; 
          init2_Q3 : in    std_logic; 
          Q0       : in    std_logic; 
          Q1       : in    std_logic; 
          Q2       : in    std_logic; 
          Q3       : in    std_logic; 
          S0       : in    std_logic; 
          S1       : in    std_logic; 
          S2       : in    std_logic; 
          GREAT21  : out   std_logic; 
          LESS21   : out   std_logic; 
          Q0_out   : out   std_logic; 
          Q1_out   : out   std_logic; 
          Q2_out   : out   std_logic; 
          Q3_out   : out   std_logic; 
          SUM0     : out   std_logic; 
          SUM1     : out   std_logic; 
          SUM2     : out   std_logic; 
          SUM3     : out   std_logic; 
          SUM4     : out   std_logic);
end playerCard;

architecture BEHAVIORAL of playerCard is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_28               : std_logic;
   signal XLXN_72               : std_logic;
   signal XLXN_73               : std_logic;
   signal XLXN_74               : std_logic;
   signal XLXN_117              : std_logic;
   signal XLXN_118              : std_logic;
   signal XLXN_119              : std_logic;
   signal XLXN_120              : std_logic;
   signal XLXN_121              : std_logic;
   signal XLXN_122              : std_logic;
   signal XLXN_123              : std_logic;
   signal XLXN_124              : std_logic;
   signal XLXN_126              : std_logic;
   signal XLXN_127              : std_logic;
   signal XLXN_128              : std_logic;
   signal XLXN_129              : std_logic;
   signal XLXN_206              : std_logic_vector (7 downto 0);
   signal XLXN_218              : std_logic_vector (7 downto 0);
   signal XLXN_276              : std_logic;
   signal XLXN_277              : std_logic;
   signal XLXN_278              : std_logic;
   signal XLXN_279              : std_logic;
   signal XLXN_280              : std_logic;
   signal XLXN_281              : std_logic;
   signal XLXN_290              : std_logic;
   signal XLXN_291              : std_logic;
   signal XLXN_294              : std_logic;
   signal XLXN_295              : std_logic;
   signal XLXN_296              : std_logic;
   signal XLXN_297              : std_logic;
   signal XLXN_298              : std_logic;
   signal XLXN_299              : std_logic;
   signal XLXN_300              : std_logic;
   signal XLXN_301              : std_logic;
   signal XLXN_302              : std_logic;
   signal XLXN_303              : std_logic;
   signal XLXN_304              : std_logic;
   signal XLXN_305              : std_logic;
   signal XLXN_306              : std_logic;
   signal XLXN_307              : std_logic;
   signal XLXN_308              : std_logic;
   signal XLXN_309              : std_logic;
   signal XLXN_310              : std_logic;
   signal XLXN_311              : std_logic;
   signal XLXN_312              : std_logic;
   signal XLXN_313              : std_logic;
   signal XLXN_315              : std_logic;
   signal XLXN_316              : std_logic;
   signal XLXN_317              : std_logic;
   signal XLXN_318              : std_logic;
   signal XLXN_319              : std_logic;
   signal XLXN_321              : std_logic;
   signal XLXN_323              : std_logic;
   signal XLXN_325              : std_logic;
   signal XLXN_327              : std_logic;
   signal XLXN_329              : std_logic;
   signal XLXN_330              : std_logic;
   signal XLXN_331              : std_logic;
   signal XLXN_333              : std_logic;
   signal XLXN_335              : std_logic;
   signal XLXN_336              : std_logic;
   signal XLXN_337              : std_logic;
   signal XLXN_338              : std_logic;
   signal XLXN_339              : std_logic;
   signal XLXN_362              : std_logic;
   signal XLXN_363              : std_logic;
   signal XLXN_364              : std_logic;
   signal XLXN_365              : std_logic;
   signal XLXN_366              : std_logic;
   signal XLXN_391              : std_logic;
   signal XLXN_399              : std_logic;
   signal XLXN_407              : std_logic;
   signal XLXN_408              : std_logic;
   signal XLXN_409              : std_logic;
   signal XLXN_410              : std_logic;
   signal XLXN_415              : std_logic;
   signal XLXN_416              : std_logic;
   signal XLXN_417              : std_logic;
   signal XLXN_419              : std_logic;
   signal XLXN_420              : std_logic;
   signal XLXN_421              : std_logic;
   signal XLXN_422              : std_logic;
   signal XLXN_423              : std_logic;
   signal XLXN_424              : std_logic;
   signal XLXN_437              : std_logic;
   signal XLXN_438              : std_logic;
   signal XLXI_1_CE_openSignal  : std_logic;
   signal XLXI_1_SLI_openSignal : std_logic;
   signal XLXI_2_CE_openSignal  : std_logic;
   signal XLXI_2_SLI_openSignal : std_logic;
   signal XLXI_3_CE_openSignal  : std_logic;
   signal XLXI_3_SLI_openSignal : std_logic;
   signal XLXI_4_CE_openSignal  : std_logic;
   signal XLXI_4_SLI_openSignal : std_logic;
   signal XLXI_5_CE_openSignal  : std_logic;
   signal XLXI_5_SLI_openSignal : std_logic;
   signal XLXI_6_D5_openSignal  : std_logic;
   signal XLXI_6_D6_openSignal  : std_logic;
   signal XLXI_6_D7_openSignal  : std_logic;
   signal XLXI_7_D5_openSignal  : std_logic;
   signal XLXI_7_D6_openSignal  : std_logic;
   signal XLXI_7_D7_openSignal  : std_logic;
   signal XLXI_8_D5_openSignal  : std_logic;
   signal XLXI_8_D6_openSignal  : std_logic;
   signal XLXI_8_D7_openSignal  : std_logic;
   signal XLXI_9_D5_openSignal  : std_logic;
   signal XLXI_9_D6_openSignal  : std_logic;
   signal XLXI_9_D7_openSignal  : std_logic;
   signal XLXI_31_CI_openSignal : std_logic;
   signal XLXI_32_CI_openSignal : std_logic;
   signal XLXI_33_CI_openSignal : std_logic;
   signal XLXI_34_A1_openSignal : std_logic;
   signal XLXI_34_A2_openSignal : std_logic;
   signal XLXI_34_A3_openSignal : std_logic;
   signal XLXI_34_B1_openSignal : std_logic;
   signal XLXI_34_B2_openSignal : std_logic;
   signal XLXI_34_B3_openSignal : std_logic;
   signal XLXI_35_CI_openSignal : std_logic;
   signal XLXI_36_A1_openSignal : std_logic;
   signal XLXI_36_A2_openSignal : std_logic;
   signal XLXI_36_A3_openSignal : std_logic;
   signal XLXI_36_B0_openSignal : std_logic;
   signal XLXI_36_B1_openSignal : std_logic;
   signal XLXI_36_B2_openSignal : std_logic;
   signal XLXI_36_B3_openSignal : std_logic;
   signal XLXI_64_CI_openSignal : std_logic;
   signal XLXI_65_A1_openSignal : std_logic;
   signal XLXI_65_A2_openSignal : std_logic;
   signal XLXI_65_A3_openSignal : std_logic;
   signal XLXI_65_B0_openSignal : std_logic;
   signal XLXI_65_B1_openSignal : std_logic;
   signal XLXI_65_B2_openSignal : std_logic;
   signal XLXI_65_B3_openSignal : std_logic;
   signal XLXI_78_CI_openSignal : std_logic;
   signal XLXI_79_A1_openSignal : std_logic;
   signal XLXI_79_A2_openSignal : std_logic;
   signal XLXI_79_A3_openSignal : std_logic;
   signal XLXI_79_B0_openSignal : std_logic;
   signal XLXI_79_B1_openSignal : std_logic;
   signal XLXI_79_B2_openSignal : std_logic;
   signal XLXI_79_B3_openSignal : std_logic;
   component SR4CLE_MXILINX_playerCard
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             SLI : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component M8_1E_MXILINX_playerCard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component ADD4_MXILINX_playerCard
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
   
   component COMPM8_MXILINX_playerCard
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component mod10_MUSER_playerCard
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT0 : out   std_logic; 
             OUT1 : out   std_logic; 
             OUT2 : out   std_logic; 
             OUT3 : out   std_logic);
   end component;
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component COMPM4_MXILINX_playerCard
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
   
   component M2_1_MXILINX_playerCard
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_15";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_16";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_27";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_28";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_29";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_17";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_18";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_19";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_20";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_21";
   attribute HU_SET of XLXI_32 : label is "XLXI_32_22";
   attribute HU_SET of XLXI_33 : label is "XLXI_33_23";
   attribute HU_SET of XLXI_34 : label is "XLXI_34_24";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_25";
   attribute HU_SET of XLXI_36 : label is "XLXI_36_26";
   attribute HU_SET of XLXI_40 : label is "XLXI_40_30";
   attribute HU_SET of XLXI_64 : label is "XLXI_64_31";
   attribute HU_SET of XLXI_65 : label is "XLXI_65_32";
   attribute HU_SET of XLXI_78 : label is "XLXI_78_33";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_34";
   attribute HU_SET of XLXI_82 : label is "XLXI_82_35";
   attribute HU_SET of XLXI_84 : label is "XLXI_84_36";
   attribute HU_SET of XLXI_85 : label is "XLXI_85_37";
   attribute HU_SET of XLXI_86 : label is "XLXI_86_38";
   attribute HU_SET of XLXI_87 : label is "XLXI_87_39";
   attribute HU_SET of XLXI_88 : label is "XLXI_88_40";
begin
   XLXI_1 : SR4CLE_MXILINX_playerCard
      port map (C=>CLK,
                CE=>XLXI_1_CE_openSignal,
                CLR=>CLR,
                D0=>init_Q0,
                D1=>init_Q1,
                D2=>init_Q2,
                D3=>init_Q3,
                L=>init_SW,
                SLI=>XLXI_1_SLI_openSignal,
                Q0=>XLXN_307,
                Q1=>XLXN_308,
                Q2=>XLXN_311,
                Q3=>XLXN_290);
   
   XLXI_2 : SR4CLE_MXILINX_playerCard
      port map (C=>CLK,
                CE=>XLXI_2_CE_openSignal,
                CLR=>CLR,
                D0=>init2_Q0,
                D1=>init2_Q1,
                D2=>init2_Q2,
                D3=>init2_Q3,
                L=>init_SW,
                SLI=>XLXI_2_SLI_openSignal,
                Q0=>XLXN_291,
                Q1=>XLXN_316,
                Q2=>XLXN_318,
                Q3=>XLXN_294);
   
   XLXI_3 : SR4CLE_MXILINX_playerCard
      port map (C=>CLK,
                CE=>XLXI_3_CE_openSignal,
                CLR=>CLR,
                D0=>Q0,
                D1=>Q1,
                D2=>Q2,
                D3=>Q3,
                L=>HIT0,
                SLI=>XLXI_3_SLI_openSignal,
                Q0=>XLXN_295,
                Q1=>XLXN_296,
                Q2=>XLXN_297,
                Q3=>XLXN_298);
   
   XLXI_4 : SR4CLE_MXILINX_playerCard
      port map (C=>CLK,
                CE=>XLXI_4_CE_openSignal,
                CLR=>CLR,
                D0=>Q0,
                D1=>Q1,
                D2=>Q2,
                D3=>Q3,
                L=>HIT1,
                SLI=>XLXI_4_SLI_openSignal,
                Q0=>XLXN_299,
                Q1=>XLXN_300,
                Q2=>XLXN_301,
                Q3=>XLXN_302);
   
   XLXI_5 : SR4CLE_MXILINX_playerCard
      port map (C=>CLK,
                CE=>XLXI_5_CE_openSignal,
                CLR=>CLR,
                D0=>Q0,
                D1=>Q1,
                D2=>Q2,
                D3=>Q3,
                L=>HIT2,
                SLI=>XLXI_5_SLI_openSignal,
                Q0=>XLXN_303,
                Q1=>XLXN_304,
                Q2=>XLXN_305,
                Q3=>XLXN_306);
   
   XLXI_6 : M8_1E_MXILINX_playerCard
      port map (D0=>XLXN_307,
                D1=>XLXN_291,
                D2=>XLXN_295,
                D3=>XLXN_299,
                D4=>XLXN_303,
                D5=>XLXI_6_D5_openSignal,
                D6=>XLXI_6_D6_openSignal,
                D7=>XLXI_6_D7_openSignal,
                E=>XLXN_28,
                S0=>S0,
                S1=>S1,
                S2=>S2,
                O=>Q0_out);
   
   XLXI_7 : M8_1E_MXILINX_playerCard
      port map (D0=>XLXN_308,
                D1=>XLXN_316,
                D2=>XLXN_296,
                D3=>XLXN_300,
                D4=>XLXN_304,
                D5=>XLXI_7_D5_openSignal,
                D6=>XLXI_7_D6_openSignal,
                D7=>XLXI_7_D7_openSignal,
                E=>XLXN_72,
                S0=>S0,
                S1=>S1,
                S2=>S2,
                O=>Q1_out);
   
   XLXI_8 : M8_1E_MXILINX_playerCard
      port map (D0=>XLXN_311,
                D1=>XLXN_318,
                D2=>XLXN_297,
                D3=>XLXN_301,
                D4=>XLXN_305,
                D5=>XLXI_8_D5_openSignal,
                D6=>XLXI_8_D6_openSignal,
                D7=>XLXI_8_D7_openSignal,
                E=>XLXN_73,
                S0=>S0,
                S1=>S1,
                S2=>S2,
                O=>Q2_out);
   
   XLXI_9 : M8_1E_MXILINX_playerCard
      port map (D0=>XLXN_290,
                D1=>XLXN_294,
                D2=>XLXN_298,
                D3=>XLXN_302,
                D4=>XLXN_306,
                D5=>XLXI_9_D5_openSignal,
                D6=>XLXI_9_D6_openSignal,
                D7=>XLXI_9_D7_openSignal,
                E=>XLXN_74,
                S0=>S0,
                S1=>S1,
                S2=>S2,
                O=>Q3_out);
   
   XLXI_20 : VCC
      port map (P=>XLXN_28);
   
   XLXI_21 : VCC
      port map (P=>XLXN_72);
   
   XLXI_22 : VCC
      port map (P=>XLXN_73);
   
   XLXI_23 : VCC
      port map (P=>XLXN_74);
   
   XLXI_31 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_309,
                A1=>XLXN_310,
                A2=>XLXN_312,
                A3=>XLXN_313,
                B0=>XLXN_315,
                B1=>XLXN_317,
                B2=>XLXN_319,
                B3=>XLXN_321,
                CI=>XLXI_31_CI_openSignal,
                CO=>XLXN_122,
                OFL=>open,
                S0=>XLXN_118,
                S1=>XLXN_119,
                S2=>XLXN_120,
                S3=>XLXN_121);
   
   XLXI_32 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_323,
                A1=>XLXN_325,
                A2=>XLXN_327,
                A3=>XLXN_329,
                B0=>XLXN_330,
                B1=>XLXN_331,
                B2=>XLXN_333,
                B3=>XLXN_335,
                CI=>XLXI_32_CI_openSignal,
                CO=>XLXN_128,
                OFL=>open,
                S0=>XLXN_123,
                S1=>XLXN_124,
                S2=>XLXN_126,
                S3=>XLXN_127);
   
   XLXI_33 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_118,
                A1=>XLXN_119,
                A2=>XLXN_120,
                A3=>XLXN_121,
                B0=>XLXN_123,
                B1=>XLXN_124,
                B2=>XLXN_126,
                B3=>XLXN_127,
                CI=>XLXI_33_CI_openSignal,
                CO=>XLXN_117,
                OFL=>open,
                S0=>XLXN_277,
                S1=>XLXN_278,
                S2=>XLXN_279,
                S3=>XLXN_280);
   
   XLXI_34 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_122,
                A1=>XLXI_34_A1_openSignal,
                A2=>XLXI_34_A2_openSignal,
                A3=>XLXI_34_A3_openSignal,
                B0=>XLXN_128,
                B1=>XLXI_34_B1_openSignal,
                B2=>XLXI_34_B2_openSignal,
                B3=>XLXI_34_B3_openSignal,
                CI=>XLXN_117,
                CO=>open,
                OFL=>open,
                S0=>XLXN_281,
                S1=>open,
                S2=>open,
                S3=>open);
   
   XLXI_35 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_277,
                A1=>XLXN_278,
                A2=>XLXN_279,
                A3=>XLXN_280,
                B0=>XLXN_336,
                B1=>XLXN_337,
                B2=>XLXN_338,
                B3=>XLXN_339,
                CI=>XLXI_35_CI_openSignal,
                CO=>XLXN_129,
                OFL=>open,
                S0=>XLXN_206(0),
                S1=>XLXN_206(1),
                S2=>XLXN_206(2),
                S3=>XLXN_206(3));
   
   XLXI_36 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_281,
                A1=>XLXI_36_A1_openSignal,
                A2=>XLXI_36_A2_openSignal,
                A3=>XLXI_36_A3_openSignal,
                B0=>XLXI_36_B0_openSignal,
                B1=>XLXI_36_B1_openSignal,
                B2=>XLXI_36_B2_openSignal,
                B3=>XLXI_36_B3_openSignal,
                CI=>XLXN_129,
                CO=>open,
                OFL=>open,
                S0=>XLXN_206(4),
                S1=>open,
                S2=>open,
                S3=>open);
   
   XLXI_40 : COMPM8_MXILINX_playerCard
      port map (A(7 downto 0)=>XLXN_206(7 downto 0),
                B(7 downto 0)=>XLXN_218(7 downto 0),
                GT=>GREAT21,
                LT=>LESS21);
   
   XLXI_61 : VCC
      port map (P=>XLXN_218(0));
   
   XLXI_62 : VCC
      port map (P=>XLXN_218(2));
   
   XLXI_63 : VCC
      port map (P=>XLXN_218(4));
   
   XLXI_64 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_277,
                A1=>XLXN_278,
                A2=>XLXN_279,
                A3=>XLXN_280,
                B0=>XLXN_336,
                B1=>XLXN_337,
                B2=>XLXN_338,
                B3=>XLXN_339,
                CI=>XLXI_64_CI_openSignal,
                CO=>XLXN_276,
                OFL=>open,
                S0=>XLXN_407,
                S1=>XLXN_408,
                S2=>XLXN_409,
                S3=>XLXN_410);
   
   XLXI_65 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_281,
                A1=>XLXI_65_A1_openSignal,
                A2=>XLXI_65_A2_openSignal,
                A3=>XLXI_65_A3_openSignal,
                B0=>XLXI_65_B0_openSignal,
                B1=>XLXI_65_B1_openSignal,
                B2=>XLXI_65_B2_openSignal,
                B3=>XLXI_65_B3_openSignal,
                CI=>XLXN_276,
                CO=>open,
                OFL=>open,
                S0=>XLXN_419,
                S1=>open,
                S2=>open,
                S3=>open);
   
   XLXI_66 : mod10_MUSER_playerCard
      port map (IN0=>XLXN_307,
                IN1=>XLXN_308,
                IN2=>XLXN_311,
                IN3=>XLXN_290,
                OUT0=>XLXN_309,
                OUT1=>XLXN_310,
                OUT2=>XLXN_312,
                OUT3=>XLXN_313);
   
   XLXI_67 : mod10_MUSER_playerCard
      port map (IN0=>XLXN_291,
                IN1=>XLXN_316,
                IN2=>XLXN_318,
                IN3=>XLXN_294,
                OUT0=>XLXN_315,
                OUT1=>XLXN_317,
                OUT2=>XLXN_319,
                OUT3=>XLXN_321);
   
   XLXI_68 : mod10_MUSER_playerCard
      port map (IN0=>XLXN_295,
                IN1=>XLXN_296,
                IN2=>XLXN_297,
                IN3=>XLXN_298,
                OUT0=>XLXN_323,
                OUT1=>XLXN_325,
                OUT2=>XLXN_327,
                OUT3=>XLXN_329);
   
   XLXI_69 : mod10_MUSER_playerCard
      port map (IN0=>XLXN_299,
                IN1=>XLXN_300,
                IN2=>XLXN_301,
                IN3=>XLXN_302,
                OUT0=>XLXN_330,
                OUT1=>XLXN_331,
                OUT2=>XLXN_333,
                OUT3=>XLXN_335);
   
   XLXI_70 : mod10_MUSER_playerCard
      port map (IN0=>XLXN_303,
                IN1=>XLXN_304,
                IN2=>XLXN_305,
                IN3=>XLXN_306,
                OUT0=>XLXN_336,
                OUT1=>XLXN_337,
                OUT2=>XLXN_338,
                OUT3=>XLXN_339);
   
   XLXI_71 : AND4B3
      port map (I0=>XLXN_290,
                I1=>XLXN_311,
                I2=>XLXN_308,
                I3=>XLXN_307,
                O=>XLXN_362);
   
   XLXI_72 : AND4B3
      port map (I0=>XLXN_294,
                I1=>XLXN_318,
                I2=>XLXN_316,
                I3=>XLXN_291,
                O=>XLXN_363);
   
   XLXI_73 : AND4B3
      port map (I0=>XLXN_298,
                I1=>XLXN_297,
                I2=>XLXN_296,
                I3=>XLXN_295,
                O=>XLXN_364);
   
   XLXI_74 : AND4B3
      port map (I0=>XLXN_302,
                I1=>XLXN_301,
                I2=>XLXN_300,
                I3=>XLXN_299,
                O=>XLXN_365);
   
   XLXI_75 : AND4B3
      port map (I0=>XLXN_306,
                I1=>XLXN_305,
                I2=>XLXN_304,
                I3=>XLXN_303,
                O=>XLXN_366);
   
   XLXI_77 : OR5
      port map (I0=>XLXN_366,
                I1=>XLXN_365,
                I2=>XLXN_364,
                I3=>XLXN_363,
                I4=>XLXN_362,
                O=>XLXN_416);
   
   XLXI_78 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_407,
                A1=>XLXN_408,
                A2=>XLXN_409,
                A3=>XLXN_410,
                B0=>XLXN_438,
                B1=>XLXN_399,
                B2=>XLXN_438,
                B3=>XLXN_399,
                CI=>XLXI_78_CI_openSignal,
                CO=>XLXN_391,
                OFL=>open,
                S0=>XLXN_420,
                S1=>XLXN_421,
                S2=>XLXN_422,
                S3=>XLXN_423);
   
   XLXI_79 : ADD4_MXILINX_playerCard
      port map (A0=>XLXN_419,
                A1=>XLXI_79_A1_openSignal,
                A2=>XLXI_79_A2_openSignal,
                A3=>XLXI_79_A3_openSignal,
                B0=>XLXI_79_B0_openSignal,
                B1=>XLXI_79_B1_openSignal,
                B2=>XLXI_79_B2_openSignal,
                B3=>XLXI_79_B3_openSignal,
                CI=>XLXN_391,
                CO=>open,
                OFL=>open,
                S0=>XLXN_424,
                S1=>open,
                S2=>open,
                S3=>open);
   
   XLXI_80 : VCC
      port map (P=>XLXN_399);
   
   XLXI_82 : COMPM4_MXILINX_playerCard
      port map (A0=>XLXN_437,
                A1=>XLXN_437,
                A2=>XLXN_399,
                A3=>XLXN_399,
                B0=>XLXN_407,
                B1=>XLXN_408,
                B2=>XLXN_409,
                B3=>XLXN_410,
                GT=>XLXN_415,
                LT=>open);
   
   XLXI_84 : M2_1_MXILINX_playerCard
      port map (D0=>XLXN_407,
                D1=>XLXN_420,
                S0=>XLXN_417,
                O=>SUM0);
   
   XLXI_85 : M2_1_MXILINX_playerCard
      port map (D0=>XLXN_408,
                D1=>XLXN_421,
                S0=>XLXN_417,
                O=>SUM1);
   
   XLXI_86 : M2_1_MXILINX_playerCard
      port map (D0=>XLXN_409,
                D1=>XLXN_422,
                S0=>XLXN_417,
                O=>SUM2);
   
   XLXI_87 : M2_1_MXILINX_playerCard
      port map (D0=>XLXN_410,
                D1=>XLXN_423,
                S0=>XLXN_417,
                O=>SUM3);
   
   XLXI_88 : M2_1_MXILINX_playerCard
      port map (D0=>XLXN_419,
                D1=>XLXN_424,
                S0=>XLXN_417,
                O=>SUM4);
   
   XLXI_90 : AND3B1
      port map (I0=>XLXN_419,
                I1=>XLXN_415,
                I2=>XLXN_416,
                O=>XLXN_417);
   
   XLXI_91 : GND
      port map (G=>XLXN_437);
   
   XLXI_92 : GND
      port map (G=>XLXN_438);
   
end BEHAVIORAL;


