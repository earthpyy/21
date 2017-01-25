--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Main.vhf
-- /___/   /\     Timestamp : 12/06/2016 05:56:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/Main.vhf -w C:/Users/Earth/Documents/ei/Blackjack/Main.sch
--Design Name: Main
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

entity ADD4_MXILINX_Main is
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
end ADD4_MXILINX_Main;

architecture BEHAVIORAL of ADD4_MXILINX_Main is
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

entity M2_1_MXILINX_Main is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_Main;

architecture BEHAVIORAL of M2_1_MXILINX_Main is
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

entity FTCLEX_MXILINX_Main is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          L   : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCLEX_MXILINX_Main;

architecture BEHAVIORAL of FTCLEX_MXILINX_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal MD      : std_logic;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component M2_1_MXILINX_Main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
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
   
   attribute HU_SET of I_36_30 : label is "I_36_30_135";
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_30 : M2_1_MXILINX_Main
      port map (D0=>TQ,
                D1=>D,
                S0=>L,
                O=>MD);
   
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>MD,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB4CLE_MXILINX_Main is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          L   : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CLE_MXILINX_Main;

architecture BEHAVIORAL of CB4CLE_MXILINX_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal OR_CE_L  : std_logic;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCLEX_MXILINX_Main
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             L   : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of I_Q0 : label is "I_Q0_136";
   attribute HU_SET of I_Q1 : label is "I_Q1_137";
   attribute HU_SET of I_Q2 : label is "I_Q2_138";
   attribute HU_SET of I_Q3 : label is "I_Q3_139";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCLEX_MXILINX_Main
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D0,
                L=>L,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCLEX_MXILINX_Main
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D1,
                L=>L,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCLEX_MXILINX_Main
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D2,
                L=>L,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCLEX_MXILINX_Main
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D3,
                L=>L,
                T=>T3,
                Q=>Q3_DUMMY);
   
   I_36_59 : VCC
      port map (P=>XLXN_1);
   
   I_36_87 : AND4
      port map (I0=>Q0_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q2_DUMMY,
                I3=>Q3_DUMMY,
                O=>TC_DUMMY);
   
   I_36_98 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>T2);
   
   I_36_99 : AND3
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q0_DUMMY,
                O=>T3);
   
   I_36_107 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   I_36_120 : OR2
      port map (I0=>CE,
                I1=>L,
                O=>OR_CE_L);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_Main is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_Main;

architecture BEHAVIORAL of FTCE_MXILINX_Main is
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

entity CB4CE_MXILINX_Main is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CE_MXILINX_Main;

architecture BEHAVIORAL of CB4CE_MXILINX_Main is
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
   component FTCE_MXILINX_Main
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
   
   attribute HU_SET of I_Q0 : label is "I_Q0_140";
   attribute HU_SET of I_Q1 : label is "I_Q1_141";
   attribute HU_SET of I_Q2 : label is "I_Q2_142";
   attribute HU_SET of I_Q3 : label is "I_Q3_143";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_Main
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_Main
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCE_MXILINX_Main
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCE_MXILINX_Main
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

entity D2_4E_MXILINX_Main is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic);
end D2_4E_MXILINX_Main;

architecture BEHAVIORAL of D2_4E_MXILINX_Main is
   attribute BOX_TYPE   : string ;
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
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D3);
   
   I_36_31 : AND3B1
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D2);
   
   I_36_32 : AND3B1
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D1);
   
   I_36_33 : AND3B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB2CE_MXILINX_Main is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          TC  : out   std_logic);
end CB2CE_MXILINX_Main;

architecture BEHAVIORAL of CB2CE_MXILINX_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_Main
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
   
   attribute HU_SET of I_Q0 : label is "I_Q0_144";
   attribute HU_SET of I_Q1 : label is "I_Q1_145";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_Main
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_Main
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

entity M2_1E_MXILINX_Main is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_Main;

architecture BEHAVIORAL of M2_1E_MXILINX_Main is
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

entity M4_1E_MXILINX_Main is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          D2 : in    std_logic; 
          D3 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          O  : out   std_logic);
end M4_1E_MXILINX_Main;

architecture BEHAVIORAL of M4_1E_MXILINX_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal M01 : std_logic;
   signal M23 : std_logic;
   component M2_1E_MXILINX_Main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUXF5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF5 : component is "BLACK_BOX";
   
   attribute HU_SET of I_M01 : label is "I_M01_147";
   attribute HU_SET of I_M23 : label is "I_M23_146";
begin
   I_M01 : M2_1E_MXILINX_Main
      port map (D0=>D0,
                D1=>D1,
                E=>E,
                S0=>S0,
                O=>M01);
   
   I_M23 : M2_1E_MXILINX_Main
      port map (D0=>D2,
                D1=>D3,
                E=>E,
                S0=>S0,
                O=>M23);
   
   I_O : MUXF5
      port map (I0=>M01,
                I1=>M23,
                S=>S1,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity score_MUSER_Main is
   port ( CLK   : in    std_logic; 
          CLR   : in    std_logic; 
          INCDB : in    std_logic; 
          INC0  : in    std_logic; 
          INC1  : in    std_logic; 
          INC2  : in    std_logic; 
          a     : out   std_logic; 
          b     : out   std_logic; 
          c     : out   std_logic; 
          d     : out   std_logic; 
          e     : out   std_logic; 
          E0    : out   std_logic; 
          E1    : out   std_logic; 
          E2    : out   std_logic; 
          E3    : out   std_logic; 
          f     : out   std_logic; 
          g     : out   std_logic; 
          WIN   : out   std_logic);
end score_MUSER_Main;

architecture BEHAVIORAL of score_MUSER_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_4                 : std_logic;
   signal XLXN_16                : std_logic;
   signal XLXN_17                : std_logic;
   signal XLXN_26                : std_logic;
   signal XLXN_28                : std_logic;
   signal XLXN_29                : std_logic;
   signal XLXN_30                : std_logic;
   signal XLXN_32                : std_logic;
   signal XLXN_34                : std_logic;
   signal XLXN_35                : std_logic;
   signal XLXN_36                : std_logic;
   signal XLXN_54                : std_logic;
   signal XLXN_55                : std_logic;
   signal XLXN_56                : std_logic;
   signal XLXN_57                : std_logic;
   signal XLXN_58                : std_logic;
   signal XLXN_70                : std_logic;
   signal XLXN_71                : std_logic;
   signal XLXN_72                : std_logic;
   signal XLXN_73                : std_logic;
   signal XLXN_74                : std_logic;
   signal XLXN_75                : std_logic;
   signal XLXN_76                : std_logic;
   signal XLXN_77                : std_logic;
   signal XLXN_78                : std_logic;
   signal XLXN_79                : std_logic;
   signal XLXN_108               : std_logic;
   signal XLXN_115               : std_logic;
   signal XLXN_116               : std_logic;
   signal XLXN_117               : std_logic;
   signal XLXN_118               : std_logic;
   signal XLXN_119               : std_logic;
   signal XLXN_121               : std_logic;
   signal XLXN_122               : std_logic;
   signal XLXN_123               : std_logic;
   signal XLXN_135               : std_logic;
   signal XLXN_136               : std_logic;
   signal XLXN_137               : std_logic;
   signal XLXN_138               : std_logic;
   signal XLXN_151               : std_logic;
   signal XLXI_23_CLR_openSignal : std_logic;
   signal XLXI_39_B0_openSignal  : std_logic;
   signal XLXI_39_B2_openSignal  : std_logic;
   signal XLXI_39_B3_openSignal  : std_logic;
   signal XLXI_39_CI_openSignal  : std_logic;
   component CB4CE_MXILINX_Main
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
   
   component M4_1E_MXILINX_Main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component CB2CE_MXILINX_Main
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component BCD_7SEG
      port ( A3 : in    std_logic; 
             A2 : in    std_logic; 
             A0 : in    std_logic; 
             A1 : in    std_logic; 
             a  : out   std_logic; 
             b  : out   std_logic; 
             c  : out   std_logic; 
             d  : out   std_logic; 
             e  : out   std_logic; 
             f  : out   std_logic; 
             g  : out   std_logic);
   end component;
   
   component D2_4E_MXILINX_Main
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component CB4CLE_MXILINX_Main
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component ADD4_MXILINX_Main
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_148";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_149";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_150";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_151";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_152";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_153";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_154";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_155";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_156";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_157";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_158";
begin
   XLXI_2 : CB4CE_MXILINX_Main
      port map (C=>INC0,
                CE=>XLXN_4,
                CLR=>CLR,
                CEO=>open,
                Q0=>XLXN_77,
                Q1=>XLXN_26,
                Q2=>XLXN_76,
                Q3=>XLXN_28,
                TC=>open);
   
   XLXI_3 : CB4CE_MXILINX_Main
      port map (C=>INC1,
                CE=>XLXN_4,
                CLR=>CLR,
                CEO=>open,
                Q0=>XLXN_29,
                Q1=>XLXN_30,
                Q2=>XLXN_75,
                Q3=>XLXN_32,
                TC=>open);
   
   XLXI_6 : VCC
      port map (P=>XLXN_4);
   
   XLXI_7 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_77,
                D1=>XLXN_29,
                D2=>XLXN_115,
                D3=>XLXN_71,
                E=>XLXN_58,
                S0=>XLXN_17,
                S1=>XLXN_16,
                O=>XLXN_54);
   
   XLXI_8 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_26,
                D1=>XLXN_30,
                D2=>XLXN_34,
                D3=>XLXN_72,
                E=>XLXN_58,
                S0=>XLXN_17,
                S1=>XLXN_16,
                O=>XLXN_55);
   
   XLXI_9 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_76,
                D1=>XLXN_75,
                D2=>XLXN_35,
                D3=>XLXN_73,
                E=>XLXN_58,
                S0=>XLXN_17,
                S1=>XLXN_16,
                O=>XLXN_56);
   
   XLXI_10 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_28,
                D1=>XLXN_32,
                D2=>XLXN_36,
                D3=>XLXN_74,
                E=>XLXN_58,
                S0=>XLXN_17,
                S1=>XLXN_16,
                O=>XLXN_57);
   
   XLXI_23 : CB2CE_MXILINX_Main
      port map (C=>CLK,
                CE=>XLXN_4,
                CLR=>XLXI_23_CLR_openSignal,
                CEO=>open,
                Q0=>XLXN_17,
                Q1=>XLXN_16,
                TC=>open);
   
   XLXI_25 : BCD_7SEG
      port map (A0=>XLXN_54,
                A1=>XLXN_55,
                A2=>XLXN_56,
                A3=>XLXN_57,
                a=>a,
                b=>b,
                c=>c,
                d=>d,
                e=>e,
                f=>f,
                g=>g);
   
   XLXI_26 : D2_4E_MXILINX_Main
      port map (A0=>XLXN_17,
                A1=>XLXN_16,
                E=>XLXN_58,
                D0=>XLXN_135,
                D1=>XLXN_136,
                D2=>XLXN_137,
                D3=>XLXN_138);
   
   XLXI_27 : VCC
      port map (P=>XLXN_58);
   
   XLXI_28 : CB4CE_MXILINX_Main
      port map (C=>XLXN_70,
                CE=>XLXN_4,
                CLR=>CLR,
                CEO=>open,
                Q0=>XLXN_71,
                Q1=>XLXN_72,
                Q2=>XLXN_73,
                Q3=>XLXN_74,
                TC=>open);
   
   XLXI_29 : AND2
      port map (I0=>XLXN_36,
                I1=>XLXN_34,
                O=>XLXN_121);
   
   XLXI_30 : AND2
      port map (I0=>XLXN_75,
                I1=>XLXN_29,
                O=>XLXN_79);
   
   XLXI_31 : AND2
      port map (I0=>XLXN_76,
                I1=>XLXN_77,
                O=>XLXN_78);
   
   XLXI_32 : OR3
      port map (I0=>XLXN_70,
                I1=>XLXN_79,
                I2=>XLXN_78,
                O=>WIN);
   
   XLXI_37 : CB4CLE_MXILINX_Main
      port map (C=>XLXN_108,
                CE=>XLXN_4,
                CLR=>CLR,
                D0=>XLXN_116,
                D1=>XLXN_117,
                D2=>XLXN_118,
                D3=>XLXN_119,
                L=>INCDB,
                CEO=>open,
                Q0=>XLXN_115,
                Q1=>XLXN_34,
                Q2=>XLXN_35,
                Q3=>XLXN_36,
                TC=>open);
   
   XLXI_38 : OR2
      port map (I0=>INCDB,
                I1=>INC2,
                O=>XLXN_108);
   
   XLXI_39 : ADD4_MXILINX_Main
      port map (A0=>XLXN_115,
                A1=>XLXN_34,
                A2=>XLXN_35,
                A3=>XLXN_36,
                B0=>XLXI_39_B0_openSignal,
                B1=>XLXN_151,
                B2=>XLXI_39_B2_openSignal,
                B3=>XLXI_39_B3_openSignal,
                CI=>XLXI_39_CI_openSignal,
                CO=>open,
                OFL=>open,
                S0=>XLXN_116,
                S1=>XLXN_117,
                S2=>XLXN_118,
                S3=>XLXN_119);
   
   XLXI_40 : VCC
      port map (P=>XLXN_151);
   
   XLXI_41 : AND2
      port map (I0=>XLXN_119,
                I1=>XLXN_118,
                O=>XLXN_122);
   
   XLXI_43 : OR2
      port map (I0=>XLXN_123,
                I1=>XLXN_121,
                O=>XLXN_70);
   
   XLXI_44 : AND2
      port map (I0=>INCDB,
                I1=>XLXN_122,
                O=>XLXN_123);
   
   XLXI_45 : INV
      port map (I=>XLXN_135,
                O=>E0);
   
   XLXI_46 : INV
      port map (I=>XLXN_136,
                O=>E1);
   
   XLXI_47 : INV
      port map (I=>XLXN_137,
                O=>E2);
   
   XLXI_48 : INV
      port map (I=>XLXN_138,
                O=>E3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity debounce_MUSER_Main is
   port ( CLK  : in    std_logic; 
          DIN  : in    std_logic; 
          DOUT : out   std_logic);
end debounce_MUSER_Main;

architecture BEHAVIORAL of debounce_MUSER_Main is
   attribute BOX_TYPE   : string ;
   signal XLXN_7 : std_logic;
   signal XLXN_8 : std_logic;
   signal XLXN_9 : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>CLK,
                D=>DIN,
                Q=>XLXN_7);
   
   XLXI_2 : FD
      port map (C=>CLK,
                D=>XLXN_7,
                Q=>XLXN_8);
   
   XLXI_3 : FD
      port map (C=>CLK,
                D=>XLXN_8,
                Q=>XLXN_9);
   
   XLXI_5 : AND3B1
      port map (I0=>XLXN_9,
                I1=>XLXN_8,
                I2=>XLXN_7,
                O=>DOUT);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPM8_MXILINX_Main is
   port ( A  : in    std_logic_vector (7 downto 0); 
          B  : in    std_logic_vector (7 downto 0); 
          GT : out   std_logic; 
          LT : out   std_logic);
end COMPM8_MXILINX_Main;

architecture BEHAVIORAL of COMPM8_MXILINX_Main is
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

entity mod3cnt_MUSER_Main is
   port ( CLK   : in    std_logic; 
          RESET : in    std_logic; 
          E0    : out   std_logic; 
          E1    : out   std_logic; 
          E2    : out   std_logic; 
          VALID : out   std_logic);
end mod3cnt_MUSER_Main;

architecture BEHAVIORAL of mod3cnt_MUSER_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_35 : std_logic;
   component CB2CE_MXILINX_Main
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D2_4E_MXILINX_Main
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_160";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_159";
begin
   XLXI_1 : CB2CE_MXILINX_Main
      port map (C=>XLXN_25,
                CE=>XLXN_16,
                CLR=>RESET,
                CEO=>open,
                Q0=>XLXN_3,
                Q1=>XLXN_4,
                TC=>open);
   
   XLXI_2 : D2_4E_MXILINX_Main
      port map (A0=>XLXN_3,
                A1=>XLXN_4,
                E=>XLXN_17,
                D0=>E0,
                D1=>E1,
                D2=>E2,
                D3=>VALID);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_4,
                I1=>XLXN_3,
                O=>XLXN_8);
   
   XLXI_5 : OR2
      port map (I0=>RESET,
                I1=>XLXN_8,
                O=>XLXN_35);
   
   XLXI_6 : INV
      port map (I=>RESET,
                O=>XLXN_14);
   
   XLXI_7 : FD
      port map (C=>XLXN_35,
                D=>XLXN_14,
                Q=>open);
   
   XLXI_8 : VCC
      port map (P=>XLXN_16);
   
   XLXI_9 : VCC
      port map (P=>XLXN_17);
   
   XLXI_12 : INV
      port map (I=>CLK,
                O=>XLXN_25);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity turnCount_MUSER_Main is
   port ( CLK : in    std_logic; 
          CLR : in    std_logic; 
          E0  : out   std_logic; 
          E1  : out   std_logic; 
          E2  : out   std_logic);
end turnCount_MUSER_Main;

architecture BEHAVIORAL of turnCount_MUSER_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   component CB2CE_MXILINX_Main
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D2_4E_MXILINX_Main
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_161";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_162";
begin
   XLXI_1 : CB2CE_MXILINX_Main
      port map (C=>CLK,
                CE=>XLXN_7,
                CLR=>XLXN_12,
                CEO=>open,
                Q0=>XLXN_10,
                Q1=>XLXN_9,
                TC=>open);
   
   XLXI_2 : D2_4E_MXILINX_Main
      port map (A0=>XLXN_10,
                A1=>XLXN_9,
                E=>XLXN_8,
                D0=>E0,
                D1=>E1,
                D2=>E2,
                D3=>open);
   
   XLXI_3 : VCC
      port map (P=>XLXN_7);
   
   XLXI_4 : VCC
      port map (P=>XLXN_8);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_10,
                I1=>XLXN_9,
                O=>XLXN_11);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_11,
                I1=>CLR,
                O=>XLXN_12);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CardTo7_MUSER_Main is
   port ( A      : in    std_logic; 
          B      : in    std_logic; 
          C      : in    std_logic; 
          D      : in    std_logic; 
          a_out  : out   std_logic; 
          b_out  : out   std_logic; 
          c_out  : out   std_logic; 
          dp_out : out   std_logic; 
          d_out  : out   std_logic; 
          e_out  : out   std_logic; 
          f_out  : out   std_logic; 
          g_out  : out   std_logic);
end CardTo7_MUSER_Main;

architecture BEHAVIORAL of CardTo7_MUSER_Main is
   attribute BOX_TYPE   : string ;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_35 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_37 : std_logic;
   signal XLXN_38 : std_logic;
   signal XLXN_39 : std_logic;
   signal XLXN_40 : std_logic;
   signal XLXN_41 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_62 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
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
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
   component NOR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR5 : component is "BLACK_BOX";
   
   component NAND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>A,
                I1=>XLXN_11,
                O=>XLXN_24);
   
   XLXI_7 : INV
      port map (I=>D,
                O=>XLXN_11);
   
   XLXI_8 : INV
      port map (I=>C,
                O=>XLXN_12);
   
   XLXI_9 : INV
      port map (I=>B,
                O=>XLXN_14);
   
   XLXI_10 : INV
      port map (I=>A,
                O=>XLXN_16);
   
   XLXI_11 : AND3
      port map (I0=>A,
                I1=>XLXN_14,
                I2=>XLXN_12,
                O=>XLXN_25);
   
   XLXI_12 : AND2
      port map (I0=>B,
                I1=>XLXN_11,
                O=>XLXN_26);
   
   XLXI_13 : AND2
      port map (I0=>XLXN_16,
                I1=>D,
                O=>XLXN_27);
   
   XLXI_14 : AND2
      port map (I0=>A,
                I1=>XLXN_12,
                O=>XLXN_28);
   
   XLXI_15 : AND2
      port map (I0=>B,
                I1=>XLXN_12,
                O=>XLXN_29);
   
   XLXI_16 : AND2
      port map (I0=>A,
                I1=>B,
                O=>XLXN_30);
   
   XLXI_17 : AND3
      port map (I0=>XLXN_16,
                I1=>XLXN_14,
                I2=>C,
                O=>XLXN_62);
   
   XLXI_19 : AND2
      port map (I0=>B,
                I1=>XLXN_12,
                O=>XLXN_32);
   
   XLXI_20 : AND2
      port map (I0=>XLXN_16,
                I1=>B,
                O=>XLXN_33);
   
   XLXI_21 : AND4
      port map (I0=>A,
                I1=>XLXN_14,
                I2=>C,
                I3=>XLXN_11,
                O=>XLXN_35);
   
   XLXI_22 : AND2
      port map (I0=>XLXN_12,
                I1=>D,
                O=>XLXN_36);
   
   XLXI_23 : AND2
      port map (I0=>XLXN_16,
                I1=>D,
                O=>XLXN_37);
   
   XLXI_24 : AND4
      port map (I0=>A,
                I1=>XLXN_14,
                I2=>XLXN_12,
                I3=>XLXN_11,
                O=>XLXN_38);
   
   XLXI_25 : AND2
      port map (I0=>XLXN_16,
                I1=>B,
                O=>XLXN_39);
   
   XLXI_26 : AND2
      port map (I0=>XLXN_16,
                I1=>D,
                O=>XLXN_40);
   
   XLXI_27 : AND2
      port map (I0=>C,
                I1=>D,
                O=>XLXN_41);
   
   XLXI_29 : AND2
      port map (I0=>A,
                I1=>XLXN_14,
                O=>XLXN_21);
   
   XLXI_30 : AND2
      port map (I0=>XLXN_16,
                I1=>D,
                O=>XLXN_23);
   
   XLXI_32 : AND2
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                O=>XLXN_44);
   
   XLXI_33 : AND2
      port map (I0=>XLXN_14,
                I1=>XLXN_11,
                O=>XLXN_45);
   
   XLXI_34 : AND2
      port map (I0=>XLXN_16,
                I1=>XLXN_11,
                O=>XLXN_46);
   
   XLXI_35 : AND2
      port map (I0=>XLXN_14,
                I1=>XLXN_12,
                O=>XLXN_47);
   
   XLXI_36 : AND2
      port map (I0=>A,
                I1=>XLXN_14,
                O=>XLXN_48);
   
   XLXI_44 : NOR4
      port map (I0=>XLXN_27,
                I1=>XLXN_26,
                I2=>XLXN_25,
                I3=>XLXN_24,
                O=>a_out);
   
   XLXI_46 : NOR3
      port map (I0=>A,
                I1=>C,
                I2=>D,
                O=>c_out);
   
   XLXI_47 : NOR5
      port map (I0=>XLXN_37,
                I1=>XLXN_36,
                I2=>XLXN_35,
                I3=>XLXN_33,
                I4=>XLXN_32,
                O=>d_out);
   
   XLXI_48 : NOR4
      port map (I0=>XLXN_41,
                I1=>XLXN_40,
                I2=>XLXN_39,
                I3=>XLXN_38,
                O=>e_out);
   
   XLXI_49 : NOR3
      port map (I0=>XLXN_23,
                I1=>C,
                I2=>XLXN_21,
                O=>f_out);
   
   XLXI_50 : NOR5
      port map (I0=>XLXN_48,
                I1=>XLXN_47,
                I2=>XLXN_46,
                I3=>XLXN_45,
                I4=>XLXN_44,
                O=>g_out);
   
   XLXI_51 : NAND3
      port map (I0=>XLXN_16,
                I1=>C,
                I2=>D,
                O=>dp_out);
   
   XLXI_52 : NOR5
      port map (I0=>D,
                I1=>XLXN_62,
                I2=>XLXN_30,
                I3=>XLXN_29,
                I4=>XLXN_28,
                O=>b_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D3_8E_MXILINX_Main is
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
end D3_8E_MXILINX_Main;

architecture BEHAVIORAL of D3_8E_MXILINX_Main is
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

entity sevensegDriver_MUSER_Main is
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
end sevensegDriver_MUSER_Main;

architecture BEHAVIORAL of sevensegDriver_MUSER_Main is
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
   component CB4CE_MXILINX_Main
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
   
   component CB2CE_MXILINX_Main
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
   
   component D3_8E_MXILINX_Main
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_163";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_164";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_165";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_166";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_167";
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
   XLXI_1 : CB4CE_MXILINX_Main
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
   
   XLXI_5 : CB2CE_MXILINX_Main
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
   
   XLXI_22 : D3_8E_MXILINX_Main
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
   
   XLXI_23 : D3_8E_MXILINX_Main
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
   
   XLXI_24 : D3_8E_MXILINX_Main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPM4_MXILINX_Main is
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
end COMPM4_MXILINX_Main;

architecture BEHAVIORAL of COMPM4_MXILINX_Main is
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

entity ADSU4_MXILINX_Main is
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
end ADSU4_MXILINX_Main;

architecture BEHAVIORAL of ADSU4_MXILINX_Main is
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

entity mod10_MUSER_Main is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT0 : out   std_logic; 
          OUT1 : out   std_logic; 
          OUT2 : out   std_logic; 
          OUT3 : out   std_logic);
end mod10_MUSER_Main;

architecture BEHAVIORAL of mod10_MUSER_Main is
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
   component COMPM4_MXILINX_Main
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
   
   component ADSU4_MXILINX_Main
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
   
   component M2_1_MXILINX_Main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_168";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_169";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_170";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_171";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_172";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_173";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_174";
begin
   XLXI_1 : COMPM4_MXILINX_Main
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
   
   XLXI_4 : ADSU4_MXILINX_Main
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
   
   XLXI_8 : ADSU4_MXILINX_Main
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
   
   XLXI_11 : M2_1_MXILINX_Main
      port map (D0=>IN0,
                D1=>XLXN_49,
                S0=>XLXN_46,
                O=>OUT0);
   
   XLXI_12 : M2_1_MXILINX_Main
      port map (D0=>IN1,
                D1=>XLXN_50,
                S0=>XLXN_46,
                O=>OUT1);
   
   XLXI_13 : M2_1_MXILINX_Main
      port map (D0=>IN2,
                D1=>XLXN_51,
                S0=>XLXN_46,
                O=>OUT2);
   
   XLXI_14 : M2_1_MXILINX_Main
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

entity SR4CLE_MXILINX_Main is
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
end SR4CLE_MXILINX_Main;

architecture BEHAVIORAL of SR4CLE_MXILINX_Main is
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
   component M2_1_MXILINX_Main
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
   
   attribute HU_SET of I_MQ0 : label is "I_MQ0_175";
   attribute HU_SET of I_MQ1 : label is "I_MQ1_176";
   attribute HU_SET of I_MQ2 : label is "I_MQ2_177";
   attribute HU_SET of I_MQ3 : label is "I_MQ3_178";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   I_MQ0 : M2_1_MXILINX_Main
      port map (D0=>SLI,
                D1=>D0,
                S0=>L,
                O=>MD0);
   
   I_MQ1 : M2_1_MXILINX_Main
      port map (D0=>Q0_DUMMY,
                D1=>D1,
                S0=>L,
                O=>MD1);
   
   I_MQ2 : M2_1_MXILINX_Main
      port map (D0=>Q1_DUMMY,
                D1=>D2,
                S0=>L,
                O=>MD2);
   
   I_MQ3 : M2_1_MXILINX_Main
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

entity M8_1E_MXILINX_Main is
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
end M8_1E_MXILINX_Main;

architecture BEHAVIORAL of M8_1E_MXILINX_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal M01 : std_logic;
   signal M03 : std_logic;
   signal M23 : std_logic;
   signal M45 : std_logic;
   signal M47 : std_logic;
   signal M67 : std_logic;
   component M2_1E_MXILINX_Main
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
   
   attribute HU_SET of I_M01 : label is "I_M01_182";
   attribute HU_SET of I_M23 : label is "I_M23_181";
   attribute HU_SET of I_M45 : label is "I_M45_180";
   attribute HU_SET of I_M67 : label is "I_M67_179";
begin
   I_M01 : M2_1E_MXILINX_Main
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
   
   I_M23 : M2_1E_MXILINX_Main
      port map (D0=>D2,
                D1=>D3,
                E=>E,
                S0=>S0,
                O=>M23);
   
   I_M45 : M2_1E_MXILINX_Main
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
   
   I_M67 : M2_1E_MXILINX_Main
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

entity playerCard_MUSER_Main is
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
end playerCard_MUSER_Main;

architecture BEHAVIORAL of playerCard_MUSER_Main is
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
   component SR4CLE_MXILINX_Main
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
   
   component M8_1E_MXILINX_Main
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
   
   component ADD4_MXILINX_Main
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
   
   component COMPM8_MXILINX_Main
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component mod10_MUSER_Main
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
   
   component COMPM4_MXILINX_Main
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
   
   component M2_1_MXILINX_Main
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_183";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_184";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_195";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_196";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_197";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_185";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_186";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_187";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_188";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_189";
   attribute HU_SET of XLXI_32 : label is "XLXI_32_190";
   attribute HU_SET of XLXI_33 : label is "XLXI_33_191";
   attribute HU_SET of XLXI_34 : label is "XLXI_34_192";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_193";
   attribute HU_SET of XLXI_36 : label is "XLXI_36_194";
   attribute HU_SET of XLXI_40 : label is "XLXI_40_198";
   attribute HU_SET of XLXI_64 : label is "XLXI_64_199";
   attribute HU_SET of XLXI_65 : label is "XLXI_65_200";
   attribute HU_SET of XLXI_78 : label is "XLXI_78_201";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_202";
   attribute HU_SET of XLXI_82 : label is "XLXI_82_203";
   attribute HU_SET of XLXI_84 : label is "XLXI_84_204";
   attribute HU_SET of XLXI_85 : label is "XLXI_85_205";
   attribute HU_SET of XLXI_86 : label is "XLXI_86_206";
   attribute HU_SET of XLXI_87 : label is "XLXI_87_207";
   attribute HU_SET of XLXI_88 : label is "XLXI_88_208";
begin
   XLXI_1 : SR4CLE_MXILINX_Main
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
   
   XLXI_2 : SR4CLE_MXILINX_Main
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
   
   XLXI_3 : SR4CLE_MXILINX_Main
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
   
   XLXI_4 : SR4CLE_MXILINX_Main
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
   
   XLXI_5 : SR4CLE_MXILINX_Main
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
   
   XLXI_6 : M8_1E_MXILINX_Main
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
   
   XLXI_7 : M8_1E_MXILINX_Main
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
   
   XLXI_8 : M8_1E_MXILINX_Main
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
   
   XLXI_9 : M8_1E_MXILINX_Main
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
   
   XLXI_31 : ADD4_MXILINX_Main
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
   
   XLXI_32 : ADD4_MXILINX_Main
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
   
   XLXI_33 : ADD4_MXILINX_Main
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
   
   XLXI_34 : ADD4_MXILINX_Main
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
   
   XLXI_35 : ADD4_MXILINX_Main
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
   
   XLXI_36 : ADD4_MXILINX_Main
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
   
   XLXI_40 : COMPM8_MXILINX_Main
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
   
   XLXI_64 : ADD4_MXILINX_Main
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
   
   XLXI_65 : ADD4_MXILINX_Main
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
   
   XLXI_66 : mod10_MUSER_Main
      port map (IN0=>XLXN_307,
                IN1=>XLXN_308,
                IN2=>XLXN_311,
                IN3=>XLXN_290,
                OUT0=>XLXN_309,
                OUT1=>XLXN_310,
                OUT2=>XLXN_312,
                OUT3=>XLXN_313);
   
   XLXI_67 : mod10_MUSER_Main
      port map (IN0=>XLXN_291,
                IN1=>XLXN_316,
                IN2=>XLXN_318,
                IN3=>XLXN_294,
                OUT0=>XLXN_315,
                OUT1=>XLXN_317,
                OUT2=>XLXN_319,
                OUT3=>XLXN_321);
   
   XLXI_68 : mod10_MUSER_Main
      port map (IN0=>XLXN_295,
                IN1=>XLXN_296,
                IN2=>XLXN_297,
                IN3=>XLXN_298,
                OUT0=>XLXN_323,
                OUT1=>XLXN_325,
                OUT2=>XLXN_327,
                OUT3=>XLXN_329);
   
   XLXI_69 : mod10_MUSER_Main
      port map (IN0=>XLXN_299,
                IN1=>XLXN_300,
                IN2=>XLXN_301,
                IN3=>XLXN_302,
                OUT0=>XLXN_330,
                OUT1=>XLXN_331,
                OUT2=>XLXN_333,
                OUT3=>XLXN_335);
   
   XLXI_70 : mod10_MUSER_Main
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
   
   XLXI_78 : ADD4_MXILINX_Main
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
   
   XLXI_79 : ADD4_MXILINX_Main
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
   
   XLXI_82 : COMPM4_MXILINX_Main
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
   
   XLXI_84 : M2_1_MXILINX_Main
      port map (D0=>XLXN_407,
                D1=>XLXN_420,
                S0=>XLXN_417,
                O=>SUM0);
   
   XLXI_85 : M2_1_MXILINX_Main
      port map (D0=>XLXN_408,
                D1=>XLXN_421,
                S0=>XLXN_417,
                O=>SUM1);
   
   XLXI_86 : M2_1_MXILINX_Main
      port map (D0=>XLXN_409,
                D1=>XLXN_422,
                S0=>XLXN_417,
                O=>SUM2);
   
   XLXI_87 : M2_1_MXILINX_Main
      port map (D0=>XLXN_410,
                D1=>XLXN_423,
                S0=>XLXN_417,
                O=>SUM3);
   
   XLXI_88 : M2_1_MXILINX_Main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity initRandom_MUSER_Main is
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
end initRandom_MUSER_Main;

architecture BEHAVIORAL of initRandom_MUSER_Main is
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
   component CB4CE_MXILINX_Main
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
   
   component ADD4_MXILINX_Main
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_209";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_210";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_211";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_212";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_213";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_214";
   attribute HU_SET of XLXI_31 : label is "XLXI_31_215";
   attribute HU_SET of XLXI_34 : label is "XLXI_34_216";
   attribute HU_SET of XLXI_36 : label is "XLXI_36_217";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_218";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_219";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_220";
begin
   XLXI_1 : CB4CE_MXILINX_Main
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
   
   XLXI_18 : ADD4_MXILINX_Main
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
   
   XLXI_21 : CB4CE_MXILINX_Main
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
   
   XLXI_24 : ADD4_MXILINX_Main
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
   
   XLXI_26 : CB4CE_MXILINX_Main
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
   
   XLXI_29 : ADD4_MXILINX_Main
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
   
   XLXI_31 : CB4CE_MXILINX_Main
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
   
   XLXI_34 : ADD4_MXILINX_Main
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
   
   XLXI_36 : CB4CE_MXILINX_Main
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
   
   XLXI_39 : ADD4_MXILINX_Main
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
   
   XLXI_41 : CB4CE_MXILINX_Main
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
   
   XLXI_44 : ADD4_MXILINX_Main
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity oneto13cnt_MUSER_Main is
   port ( CLK : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end oneto13cnt_MUSER_Main;

architecture BEHAVIORAL of oneto13cnt_MUSER_Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_10               : std_logic;
   signal XLXN_11               : std_logic;
   signal XLXN_13               : std_logic;
   signal XLXN_14               : std_logic;
   signal XLXN_30               : std_logic;
   signal XLXN_31               : std_logic;
   signal XLXN_35               : std_logic;
   signal XLXI_18_B1_openSignal : std_logic;
   signal XLXI_18_B2_openSignal : std_logic;
   signal XLXI_18_B3_openSignal : std_logic;
   signal XLXI_18_CI_openSignal : std_logic;
   component CB4CE_MXILINX_Main
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
   
   component ADD4_MXILINX_Main
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
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_221";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_222";
begin
   XLXI_2 : CB4CE_MXILINX_Main
      port map (C=>CLK,
                CE=>XLXN_10,
                CLR=>XLXN_30,
                CEO=>open,
                Q0=>XLXN_11,
                Q1=>XLXN_31,
                Q2=>XLXN_13,
                Q3=>XLXN_14,
                TC=>open);
   
   XLXI_11 : VCC
      port map (P=>XLXN_10);
   
   XLXI_16 : AND3
      port map (I0=>XLXN_14,
                I1=>XLXN_13,
                I2=>XLXN_11,
                O=>XLXN_30);
   
   XLXI_18 : ADD4_MXILINX_Main
      port map (A0=>XLXN_11,
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
                S0=>Q0,
                S1=>Q1,
                S2=>Q2,
                S3=>Q3);
   
   XLXI_20 : VCC
      port map (P=>XLXN_35);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Main is
   port ( CLK      : in    std_logic; 
          CLRNEW   : in    std_logic; 
          FASTCLK  : in    std_logic; 
          initSW   : in    std_logic; 
          P1_H     : in    std_logic; 
          P1_S     : in    std_logic; 
          P2_H     : in    std_logic; 
          P2_S     : in    std_logic; 
          P3_H     : in    std_logic; 
          P3_S     : in    std_logic; 
          a        : out   std_logic; 
          b        : out   std_logic; 
          c        : out   std_logic; 
          d        : out   std_logic; 
          dp       : out   std_logic; 
          e        : out   std_logic; 
          ENB1_0   : out   std_logic; 
          ENB1_1   : out   std_logic; 
          ENB1_2   : out   std_logic; 
          ENB1_3   : out   std_logic; 
          ENB1_4   : out   std_logic; 
          ENB2_0   : out   std_logic; 
          ENB2_1   : out   std_logic; 
          ENB2_2   : out   std_logic; 
          ENB2_3   : out   std_logic; 
          ENB2_4   : out   std_logic; 
          ENB3_0   : out   std_logic; 
          ENB3_1   : out   std_logic; 
          ENB3_2   : out   std_logic; 
          ENB3_3   : out   std_logic; 
          ENB3_4   : out   std_logic; 
          f        : out   std_logic; 
          g        : out   std_logic; 
          LEDTURN0 : out   std_logic; 
          LEDTURN1 : out   std_logic; 
          LEDTURN2 : out   std_logic; 
          SCORE_a  : out   std_logic; 
          SCORE_b  : out   std_logic; 
          SCORE_c  : out   std_logic; 
          SCORE_d  : out   std_logic; 
          SCORE_e  : out   std_logic; 
          SCORE_E0 : out   std_logic; 
          SCORE_E1 : out   std_logic; 
          SCORE_E2 : out   std_logic; 
          SCORE_E3 : out   std_logic; 
          SCORE_f  : out   std_logic; 
          SCORE_g  : out   std_logic);
end Main;

architecture BEHAVIORAL of Main is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal P1_HIT                 : std_logic;
   signal SW                     : std_logic;
   signal XLXN_61                : std_logic;
   signal XLXN_62                : std_logic;
   signal XLXN_63                : std_logic;
   signal XLXN_64                : std_logic;
   signal XLXN_265               : std_logic;
   signal XLXN_266               : std_logic;
   signal XLXN_267               : std_logic;
   signal XLXN_268               : std_logic;
   signal XLXN_281               : std_logic;
   signal XLXN_282               : std_logic;
   signal XLXN_283               : std_logic;
   signal XLXN_284               : std_logic;
   signal XLXN_285               : std_logic;
   signal XLXN_286               : std_logic;
   signal XLXN_287               : std_logic;
   signal XLXN_288               : std_logic;
   signal XLXN_293               : std_logic;
   signal XLXN_294               : std_logic;
   signal XLXN_295               : std_logic;
   signal XLXN_296               : std_logic;
   signal XLXN_297               : std_logic;
   signal XLXN_298               : std_logic;
   signal XLXN_299               : std_logic;
   signal XLXN_300               : std_logic;
   signal XLXN_301               : std_logic;
   signal XLXN_302               : std_logic;
   signal XLXN_303               : std_logic;
   signal XLXN_304               : std_logic;
   signal XLXN_618               : std_logic;
   signal XLXN_619               : std_logic;
   signal XLXN_620               : std_logic;
   signal XLXN_621               : std_logic;
   signal XLXN_622               : std_logic;
   signal XLXN_623               : std_logic;
   signal XLXN_624               : std_logic;
   signal XLXN_625               : std_logic;
   signal XLXN_626               : std_logic;
   signal XLXN_650               : std_logic;
   signal XLXN_651               : std_logic;
   signal XLXN_663               : std_logic;
   signal XLXN_664               : std_logic;
   signal XLXN_665               : std_logic;
   signal XLXN_666               : std_logic;
   signal XLXN_667               : std_logic;
   signal XLXN_668               : std_logic;
   signal XLXN_669               : std_logic;
   signal XLXN_670               : std_logic;
   signal XLXN_671               : std_logic;
   signal XLXN_672               : std_logic;
   signal XLXN_673               : std_logic;
   signal XLXN_674               : std_logic;
   signal XLXN_789               : std_logic;
   signal XLXN_790               : std_logic;
   signal XLXN_791               : std_logic;
   signal XLXN_792               : std_logic;
   signal XLXN_793               : std_logic;
   signal XLXN_794               : std_logic;
   signal XLXN_795               : std_logic;
   signal XLXN_799               : std_logic;
   signal XLXN_838               : std_logic;
   signal XLXN_876               : std_logic;
   signal XLXN_877               : std_logic;
   signal XLXN_878               : std_logic;
   signal XLXN_885               : std_logic;
   signal XLXN_890               : std_logic;
   signal XLXN_908               : std_logic;
   signal XLXN_915               : std_logic;
   signal XLXN_1194              : std_logic;
   signal XLXN_1195              : std_logic;
   signal XLXN_1196              : std_logic;
   signal XLXN_1197              : std_logic;
   signal XLXN_1200              : std_logic;
   signal XLXN_1201              : std_logic;
   signal XLXN_1205              : std_logic;
   signal XLXN_1206              : std_logic;
   signal XLXN_1208              : std_logic;
   signal XLXN_1209              : std_logic;
   signal XLXN_1210              : std_logic;
   signal XLXN_1213              : std_logic;
   signal XLXN_1250              : std_logic;
   signal XLXN_1252              : std_logic;
   signal XLXN_1255              : std_logic;
   signal XLXN_1263              : std_logic;
   signal XLXN_1264              : std_logic;
   signal XLXN_1265              : std_logic;
   signal XLXN_1266              : std_logic;
   signal XLXN_1268              : std_logic;
   signal XLXN_1269              : std_logic;
   signal XLXN_1280              : std_logic;
   signal XLXN_1286              : std_logic;
   signal XLXN_1287              : std_logic;
   signal XLXN_1288              : std_logic;
   signal XLXN_1308              : std_logic;
   signal XLXN_1328              : std_logic;
   signal XLXN_1329              : std_logic;
   signal XLXN_1391              : std_logic_vector (7 downto 0);
   signal XLXN_1392              : std_logic_vector (7 downto 0);
   signal XLXN_1399              : std_logic;
   signal XLXN_1400              : std_logic;
   signal XLXN_1401              : std_logic;
   signal XLXN_1402              : std_logic;
   signal XLXN_1403              : std_logic;
   signal XLXN_1409              : std_logic;
   signal XLXN_1410              : std_logic;
   signal XLXN_1412              : std_logic;
   signal XLXN_1413              : std_logic;
   signal XLXN_1414              : std_logic;
   signal XLXN_1415              : std_logic_vector (7 downto 0);
   signal XLXN_1416              : std_logic_vector (7 downto 0);
   signal XLXN_1422              : std_logic;
   signal XLXN_1423              : std_logic;
   signal XLXN_1424              : std_logic;
   signal XLXN_1425              : std_logic;
   signal XLXN_1426              : std_logic;
   signal XLXN_1447              : std_logic;
   signal XLXN_1450              : std_logic;
   signal XLXN_1452              : std_logic;
   signal XLXN_1503              : std_logic;
   signal XLXN_1506              : std_logic;
   signal XLXN_1507              : std_logic;
   signal XLXN_1517              : std_logic;
   signal XLXN_1541              : std_logic;
   signal XLXN_1847              : std_logic;
   signal XLXN_1848              : std_logic;
   signal XLXN_1849              : std_logic;
   signal XLXN_1850              : std_logic;
   signal XLXN_1853              : std_logic;
   signal XLXN_1854              : std_logic;
   signal XLXN_1855              : std_logic;
   signal XLXN_1856              : std_logic;
   signal XLXN_1859              : std_logic;
   signal XLXN_1862              : std_logic;
   signal XLXN_1863              : std_logic;
   signal XLXN_1864              : std_logic;
   signal XLXN_1869              : std_logic;
   signal XLXN_1871              : std_logic;
   signal XLXN_1882              : std_logic;
   signal XLXN_1883              : std_logic;
   signal XLXN_1885              : std_logic;
   signal XLXN_1886              : std_logic;
   signal XLXN_1887              : std_logic;
   signal XLXN_1888              : std_logic;
   signal XLXN_1893              : std_logic;
   signal XLXN_1894              : std_logic;
   signal XLXN_1895              : std_logic;
   signal XLXN_1896              : std_logic;
   signal LEDTURN0_DUMMY         : std_logic;
   signal LEDTURN1_DUMMY         : std_logic;
   signal LEDTURN2_DUMMY         : std_logic;
   signal XLXI_168_D3_openSignal : std_logic;
   signal XLXI_169_D3_openSignal : std_logic;
   signal XLXI_170_D3_openSignal : std_logic;
   signal XLXI_172_D3_openSignal : std_logic;
   component CardTo7_MUSER_Main
      port ( C      : in    std_logic; 
             B      : in    std_logic; 
             A      : in    std_logic; 
             D      : in    std_logic; 
             c_out  : out   std_logic; 
             d_out  : out   std_logic; 
             e_out  : out   std_logic; 
             f_out  : out   std_logic; 
             g_out  : out   std_logic; 
             dp_out : out   std_logic; 
             a_out  : out   std_logic; 
             b_out  : out   std_logic);
   end component;
   
   component oneto13cnt_MUSER_Main
      port ( CLK : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component frequenzy
      port ( CLK    : in    std_logic; 
             HZ625  : out   std_logic; 
             HZ1250 : out   std_logic; 
             HZ1    : out   std_logic);
   end component;
   
   component playerCard_MUSER_Main
      port ( Q0       : in    std_logic; 
             Q1       : in    std_logic; 
             Q2       : in    std_logic; 
             Q3       : in    std_logic; 
             CLK      : in    std_logic; 
             CLR      : in    std_logic; 
             S2       : in    std_logic; 
             S0       : in    std_logic; 
             S1       : in    std_logic; 
             init_Q3  : in    std_logic; 
             init_Q2  : in    std_logic; 
             init_Q1  : in    std_logic; 
             init_Q0  : in    std_logic; 
             init2_Q0 : in    std_logic; 
             init2_Q1 : in    std_logic; 
             init2_Q2 : in    std_logic; 
             init2_Q3 : in    std_logic; 
             init_SW  : in    std_logic; 
             HIT0     : in    std_logic; 
             HIT1     : in    std_logic; 
             HIT2     : in    std_logic; 
             Q1_out   : out   std_logic; 
             Q2_out   : out   std_logic; 
             Q3_out   : out   std_logic; 
             Q0_out   : out   std_logic; 
             LESS21   : out   std_logic; 
             GREAT21  : out   std_logic; 
             SUM4     : out   std_logic; 
             SUM0     : out   std_logic; 
             SUM3     : out   std_logic; 
             SUM2     : out   std_logic; 
             SUM1     : out   std_logic);
   end component;
   
   component initRandom_MUSER_Main
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
             Q6_0 : out   std_logic; 
             Q6_1 : out   std_logic; 
             Q6_2 : out   std_logic; 
             Q6_3 : out   std_logic; 
             Q5_0 : out   std_logic; 
             Q5_1 : out   std_logic; 
             Q5_2 : out   std_logic; 
             Q5_3 : out   std_logic; 
             Q4_0 : out   std_logic; 
             Q4_1 : out   std_logic; 
             Q4_2 : out   std_logic; 
             Q4_3 : out   std_logic);
   end component;
   
   component sevensegDriver_MUSER_Main
      port ( CLK    : in    std_logic; 
             ENB0   : out   std_logic; 
             ENB1   : out   std_logic; 
             Q3_2   : out   std_logic; 
             Q3_1   : out   std_logic; 
             Q3_0   : out   std_logic; 
             Q2_2   : out   std_logic; 
             Q2_1   : out   std_logic; 
             Q2_0   : out   std_logic; 
             Q1_2   : out   std_logic; 
             Q1_1   : out   std_logic; 
             Q1_0   : out   std_logic; 
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
             ENB3_4 : out   std_logic);
   end component;
   
   component M4_1E_MXILINX_Main
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component turnCount_MUSER_Main
      port ( CLK : in    std_logic; 
             CLR : in    std_logic; 
             E0  : out   std_logic; 
             E1  : out   std_logic; 
             E2  : out   std_logic);
   end component;
   
   component mod3cnt_MUSER_Main
      port ( RESET : in    std_logic; 
             CLK   : in    std_logic; 
             E0    : out   std_logic; 
             E1    : out   std_logic; 
             E2    : out   std_logic; 
             VALID : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component debounce_MUSER_Main
      port ( DIN  : in    std_logic; 
             CLK  : in    std_logic; 
             DOUT : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component COMPM8_MXILINX_Main
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component score_MUSER_Main
      port ( INC0  : in    std_logic; 
             INC1  : in    std_logic; 
             CLR   : in    std_logic; 
             CLK   : in    std_logic; 
             INC2  : in    std_logic; 
             INCDB : in    std_logic; 
             a     : out   std_logic; 
             b     : out   std_logic; 
             c     : out   std_logic; 
             d     : out   std_logic; 
             e     : out   std_logic; 
             f     : out   std_logic; 
             g     : out   std_logic; 
             WIN   : out   std_logic; 
             E0    : out   std_logic; 
             E1    : out   std_logic; 
             E2    : out   std_logic; 
             E3    : out   std_logic);
   end component;
   
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
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_168 : label is "XLXI_168_224";
   attribute HU_SET of XLXI_169 : label is "XLXI_169_225";
   attribute HU_SET of XLXI_170 : label is "XLXI_170_226";
   attribute HU_SET of XLXI_172 : label is "XLXI_172_223";
   attribute HU_SET of XLXI_311 : label is "XLXI_311_227";
   attribute HU_SET of XLXI_332 : label is "XLXI_332_228";
begin
   LEDTURN0 <= LEDTURN0_DUMMY;
   LEDTURN1 <= LEDTURN1_DUMMY;
   LEDTURN2 <= LEDTURN2_DUMMY;
   XLXI_3 : CardTo7_MUSER_Main
      port map (A=>XLXN_789,
                B=>XLXN_790,
                C=>XLXN_791,
                D=>XLXN_792,
                a_out=>a,
                b_out=>b,
                c_out=>c,
                dp_out=>dp,
                d_out=>d,
                e_out=>e,
                f_out=>f,
                g_out=>g);
   
   XLXI_25 : oneto13cnt_MUSER_Main
      port map (CLK=>XLXN_799,
                Q0=>XLXN_61,
                Q1=>XLXN_62,
                Q2=>XLXN_63,
                Q3=>XLXN_64);
   
   XLXI_46 : frequenzy
      port map (CLK=>CLK,
                HZ1=>open,
                HZ625=>XLXN_799,
                HZ1250=>SW);
   
   XLXI_107 : playerCard_MUSER_Main
      port map (CLK=>SW,
                CLR=>CLRNEW,
                HIT0=>XLXN_1450,
                HIT1=>XLXN_1447,
                HIT2=>XLXN_1213,
                init_Q0=>XLXN_265,
                init_Q1=>XLXN_266,
                init_Q2=>XLXN_267,
                init_Q3=>XLXN_268,
                init_SW=>XLXN_908,
                init2_Q0=>XLXN_281,
                init2_Q1=>XLXN_282,
                init2_Q2=>XLXN_283,
                init2_Q3=>XLXN_284,
                Q0=>XLXN_61,
                Q1=>XLXN_62,
                Q2=>XLXN_63,
                Q3=>XLXN_64,
                S0=>XLXN_620,
                S1=>XLXN_619,
                S2=>XLXN_618,
                GREAT21=>XLXN_1849,
                LESS21=>XLXN_1287,
                Q0_out=>XLXN_664,
                Q1_out=>XLXN_665,
                Q2_out=>XLXN_666,
                Q3_out=>XLXN_667,
                SUM0=>XLXN_1391(0),
                SUM1=>XLXN_1391(1),
                SUM2=>XLXN_1391(2),
                SUM3=>XLXN_1391(3),
                SUM4=>XLXN_1391(4));
   
   XLXI_108 : initRandom_MUSER_Main
      port map (CLK=>CLK,
                Q1_0=>XLXN_265,
                Q1_1=>XLXN_266,
                Q1_2=>XLXN_267,
                Q1_3=>XLXN_268,
                Q2_0=>XLXN_281,
                Q2_1=>XLXN_282,
                Q2_2=>XLXN_283,
                Q2_3=>XLXN_284,
                Q3_0=>XLXN_285,
                Q3_1=>XLXN_286,
                Q3_2=>XLXN_287,
                Q3_3=>XLXN_288,
                Q4_0=>XLXN_301,
                Q4_1=>XLXN_302,
                Q4_2=>XLXN_303,
                Q4_3=>XLXN_304,
                Q5_0=>XLXN_297,
                Q5_1=>XLXN_298,
                Q5_2=>XLXN_299,
                Q5_3=>XLXN_300,
                Q6_0=>XLXN_293,
                Q6_1=>XLXN_294,
                Q6_2=>XLXN_295,
                Q6_3=>XLXN_296);
   
   XLXI_109 : playerCard_MUSER_Main
      port map (CLK=>SW,
                CLR=>CLRNEW,
                HIT0=>XLXN_1206,
                HIT1=>XLXN_1208,
                HIT2=>XLXN_1209,
                init_Q0=>XLXN_285,
                init_Q1=>XLXN_286,
                init_Q2=>XLXN_287,
                init_Q3=>XLXN_288,
                init_SW=>XLXN_908,
                init2_Q0=>XLXN_293,
                init2_Q1=>XLXN_294,
                init2_Q2=>XLXN_295,
                init2_Q3=>XLXN_296,
                Q0=>XLXN_61,
                Q1=>XLXN_62,
                Q2=>XLXN_63,
                Q3=>XLXN_64,
                S0=>XLXN_621,
                S1=>XLXN_622,
                S2=>XLXN_623,
                GREAT21=>XLXN_1859,
                LESS21=>XLXN_1288,
                Q0_out=>XLXN_668,
                Q1_out=>XLXN_669,
                Q2_out=>XLXN_670,
                Q3_out=>XLXN_671,
                SUM0=>XLXN_1415(0),
                SUM1=>XLXN_1415(1),
                SUM2=>XLXN_1415(2),
                SUM3=>XLXN_1415(3),
                SUM4=>XLXN_1415(4));
   
   XLXI_110 : playerCard_MUSER_Main
      port map (CLK=>SW,
                CLR=>CLRNEW,
                HIT0=>XLXN_1280,
                HIT1=>XLXN_1328,
                HIT2=>XLXN_1329,
                init_Q0=>XLXN_297,
                init_Q1=>XLXN_298,
                init_Q2=>XLXN_299,
                init_Q3=>XLXN_300,
                init_SW=>XLXN_908,
                init2_Q0=>XLXN_301,
                init2_Q1=>XLXN_302,
                init2_Q2=>XLXN_303,
                init2_Q3=>XLXN_304,
                Q0=>XLXN_61,
                Q1=>XLXN_62,
                Q2=>XLXN_63,
                Q3=>XLXN_64,
                S0=>XLXN_624,
                S1=>XLXN_625,
                S2=>XLXN_626,
                GREAT21=>XLXN_1850,
                LESS21=>XLXN_1308,
                Q0_out=>XLXN_672,
                Q1_out=>XLXN_673,
                Q2_out=>XLXN_674,
                Q3_out=>XLXN_1452,
                SUM0=>XLXN_1409,
                SUM1=>XLXN_1410,
                SUM2=>XLXN_1412,
                SUM3=>XLXN_1413,
                SUM4=>XLXN_1414);
   
   XLXI_165 : sevensegDriver_MUSER_Main
      port map (CLK=>SW,
                ENB0=>XLXN_650,
                ENB1=>XLXN_651,
                ENB1_0=>ENB1_0,
                ENB1_1=>ENB1_1,
                ENB1_2=>ENB1_2,
                ENB1_3=>ENB1_3,
                ENB1_4=>ENB1_4,
                ENB2_0=>ENB2_0,
                ENB2_1=>ENB2_1,
                ENB2_2=>ENB2_2,
                ENB2_3=>ENB2_3,
                ENB2_4=>ENB2_4,
                ENB3_0=>ENB3_0,
                ENB3_1=>ENB3_1,
                ENB3_2=>ENB3_2,
                ENB3_3=>ENB3_3,
                ENB3_4=>ENB3_4,
                Q1_0=>XLXN_620,
                Q1_1=>XLXN_619,
                Q1_2=>XLXN_618,
                Q2_0=>XLXN_621,
                Q2_1=>XLXN_622,
                Q2_2=>XLXN_623,
                Q3_0=>XLXN_624,
                Q3_1=>XLXN_625,
                Q3_2=>XLXN_626);
   
   XLXI_168 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_664,
                D1=>XLXN_668,
                D2=>XLXN_672,
                D3=>XLXI_168_D3_openSignal,
                E=>XLXN_663,
                S0=>XLXN_650,
                S1=>XLXN_651,
                O=>XLXN_789);
   
   XLXI_169 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_665,
                D1=>XLXN_669,
                D2=>XLXN_673,
                D3=>XLXI_169_D3_openSignal,
                E=>XLXN_793,
                S0=>XLXN_650,
                S1=>XLXN_651,
                O=>XLXN_790);
   
   XLXI_170 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_666,
                D1=>XLXN_670,
                D2=>XLXN_674,
                D3=>XLXI_170_D3_openSignal,
                E=>XLXN_794,
                S0=>XLXN_650,
                S1=>XLXN_651,
                O=>XLXN_791);
   
   XLXI_171 : VCC
      port map (P=>XLXN_663);
   
   XLXI_172 : M4_1E_MXILINX_Main
      port map (D0=>XLXN_667,
                D1=>XLXN_671,
                D2=>XLXN_1452,
                D3=>XLXI_172_D3_openSignal,
                E=>XLXN_795,
                S0=>XLXN_650,
                S1=>XLXN_651,
                O=>XLXN_792);
   
   XLXI_179 : VCC
      port map (P=>XLXN_793);
   
   XLXI_180 : VCC
      port map (P=>XLXN_794);
   
   XLXI_181 : VCC
      port map (P=>XLXN_795);
   
   XLXI_201 : turnCount_MUSER_Main
      port map (CLK=>XLXN_915,
                CLR=>CLRNEW,
                E0=>LEDTURN0_DUMMY,
                E1=>LEDTURN1_DUMMY,
                E2=>LEDTURN2_DUMMY);
   
   XLXI_202 : mod3cnt_MUSER_Main
      port map (CLK=>P1_HIT,
                RESET=>CLRNEW,
                E0=>XLXN_876,
                E1=>XLXN_877,
                E2=>XLXN_878,
                VALID=>XLXN_885);
   
   XLXI_210 : AND2
      port map (I0=>XLXN_878,
                I1=>P1_HIT,
                O=>XLXN_1213);
   
   XLXI_218 : INV
      port map (I=>XLXN_885,
                O=>XLXN_838);
   
   XLXI_220 : VCC
      port map (P=>XLXN_890);
   
   XLXI_221 : FDCE
      port map (C=>SW,
                CE=>XLXN_1517,
                CLR=>CLRNEW,
                D=>XLXN_890,
                Q=>XLXN_1252);
   
   XLXI_223 : AND2B1
      port map (I0=>XLXN_1252,
                I1=>XLXN_1517,
                O=>XLXN_908);
   
   XLXI_270 : mod3cnt_MUSER_Main
      port map (CLK=>XLXN_1197,
                RESET=>CLRNEW,
                E0=>XLXN_1194,
                E1=>XLXN_1195,
                E2=>XLXN_1196,
                VALID=>XLXN_1200);
   
   XLXI_272 : INV
      port map (I=>XLXN_1200,
                O=>XLXN_1201);
   
   XLXI_275 : AND2
      port map (I0=>XLXN_1194,
                I1=>XLXN_1197,
                O=>XLXN_1206);
   
   XLXI_276 : AND2
      port map (I0=>XLXN_1195,
                I1=>XLXN_1197,
                O=>XLXN_1208);
   
   XLXI_277 : AND2
      port map (I0=>XLXN_1196,
                I1=>XLXN_1197,
                O=>XLXN_1209);
   
   XLXI_278 : OR3
      port map (I0=>XLXN_1848,
                I1=>XLXN_1210,
                I2=>XLXN_1205,
                O=>XLXN_915);
   
   XLXI_292 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P2_H,
                DOUT=>XLXN_1250);
   
   XLXI_293 : AND3
      port map (I0=>XLXN_1252,
                I1=>XLXN_1503,
                I2=>LEDTURN0_DUMMY,
                O=>XLXN_1210);
   
   XLXI_294 : AND3
      port map (I0=>XLXN_1252,
                I1=>XLXN_1506,
                I2=>LEDTURN1_DUMMY,
                O=>XLXN_1205);
   
   XLXI_296 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P1_H,
                DOUT=>XLXN_1255);
   
   XLXI_297 : mod3cnt_MUSER_Main
      port map (CLK=>XLXN_1266,
                RESET=>CLRNEW,
                E0=>XLXN_1263,
                E1=>XLXN_1264,
                E2=>XLXN_1265,
                VALID=>XLXN_1268);
   
   XLXI_299 : INV
      port map (I=>XLXN_1268,
                O=>XLXN_1269);
   
   XLXI_301 : AND2
      port map (I0=>XLXN_1263,
                I1=>XLXN_1266,
                O=>XLXN_1280);
   
   XLXI_302 : AND2
      port map (I0=>XLXN_1264,
                I1=>XLXN_1266,
                O=>XLXN_1328);
   
   XLXI_303 : AND2
      port map (I0=>XLXN_1265,
                I1=>XLXN_1266,
                O=>XLXN_1329);
   
   XLXI_304 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P3_H,
                DOUT=>XLXN_1286);
   
   XLXI_305 : AND3
      port map (I0=>XLXN_1252,
                I1=>XLXN_1507,
                I2=>LEDTURN2_DUMMY,
                O=>XLXN_1848);
   
   XLXI_306 : AND5
      port map (I0=>XLXN_838,
                I1=>XLXN_1287,
                I2=>XLXN_1252,
                I3=>LEDTURN0_DUMMY,
                I4=>XLXN_1255,
                O=>P1_HIT);
   
   XLXI_307 : AND5
      port map (I0=>XLXN_1201,
                I1=>XLXN_1288,
                I2=>XLXN_1252,
                I3=>LEDTURN1_DUMMY,
                I4=>XLXN_1250,
                O=>XLXN_1197);
   
   XLXI_308 : AND5
      port map (I0=>XLXN_1269,
                I1=>XLXN_1308,
                I2=>XLXN_1252,
                I3=>LEDTURN2_DUMMY,
                I4=>XLXN_1286,
                O=>XLXN_1266);
   
   XLXI_311 : COMPM8_MXILINX_Main
      port map (A(7 downto 0)=>XLXN_1391(7 downto 0),
                B(7 downto 0)=>XLXN_1392(7 downto 0),
                GT=>XLXN_1847,
                LT=>XLXN_1869);
   
   XLXI_312 : INV
      port map (I=>XLXN_1409,
                O=>XLXN_1399);
   
   XLXI_313 : INV
      port map (I=>XLXN_1399,
                O=>XLXN_1392(0));
   
   XLXI_314 : INV
      port map (I=>XLXN_1410,
                O=>XLXN_1400);
   
   XLXI_315 : INV
      port map (I=>XLXN_1400,
                O=>XLXN_1392(1));
   
   XLXI_316 : INV
      port map (I=>XLXN_1412,
                O=>XLXN_1401);
   
   XLXI_317 : INV
      port map (I=>XLXN_1401,
                O=>XLXN_1392(2));
   
   XLXI_318 : INV
      port map (I=>XLXN_1413,
                O=>XLXN_1402);
   
   XLXI_319 : INV
      port map (I=>XLXN_1402,
                O=>XLXN_1392(3));
   
   XLXI_320 : INV
      port map (I=>XLXN_1414,
                O=>XLXN_1403);
   
   XLXI_321 : INV
      port map (I=>XLXN_1403,
                O=>XLXN_1392(4));
   
   XLXI_332 : COMPM8_MXILINX_Main
      port map (A(7 downto 0)=>XLXN_1415(7 downto 0),
                B(7 downto 0)=>XLXN_1416(7 downto 0),
                GT=>XLXN_1856,
                LT=>XLXN_1871);
   
   XLXI_333 : INV
      port map (I=>XLXN_1409,
                O=>XLXN_1422);
   
   XLXI_334 : INV
      port map (I=>XLXN_1422,
                O=>XLXN_1416(0));
   
   XLXI_335 : INV
      port map (I=>XLXN_1410,
                O=>XLXN_1423);
   
   XLXI_336 : INV
      port map (I=>XLXN_1423,
                O=>XLXN_1416(1));
   
   XLXI_337 : INV
      port map (I=>XLXN_1412,
                O=>XLXN_1424);
   
   XLXI_338 : INV
      port map (I=>XLXN_1424,
                O=>XLXN_1416(2));
   
   XLXI_339 : INV
      port map (I=>XLXN_1413,
                O=>XLXN_1425);
   
   XLXI_340 : INV
      port map (I=>XLXN_1425,
                O=>XLXN_1416(3));
   
   XLXI_341 : INV
      port map (I=>XLXN_1414,
                O=>XLXN_1426);
   
   XLXI_342 : INV
      port map (I=>XLXN_1426,
                O=>XLXN_1416(4));
   
   XLXI_343 : AND2
      port map (I0=>XLXN_876,
                I1=>P1_HIT,
                O=>XLXN_1450);
   
   XLXI_344 : AND2
      port map (I0=>XLXN_877,
                I1=>P1_HIT,
                O=>XLXN_1447);
   
   XLXI_346 : score_MUSER_Main
      port map (CLK=>SW,
                CLR=>XLXN_1541,
                INCDB=>XLXN_1893,
                INC0=>XLXN_1855,
                INC1=>XLXN_1864,
                INC2=>XLXN_1896,
                a=>SCORE_a,
                b=>SCORE_b,
                c=>SCORE_c,
                d=>SCORE_d,
                e=>SCORE_e,
                E0=>SCORE_E0,
                E1=>SCORE_E1,
                E2=>SCORE_E2,
                E3=>SCORE_E3,
                f=>SCORE_f,
                g=>SCORE_g,
                WIN=>XLXN_1541);
   
   XLXI_350 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P1_S,
                DOUT=>XLXN_1503);
   
   XLXI_351 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P2_S,
                DOUT=>XLXN_1506);
   
   XLXI_353 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>P3_S,
                DOUT=>XLXN_1507);
   
   XLXI_354 : debounce_MUSER_Main
      port map (CLK=>FASTCLK,
                DIN=>initSW,
                DOUT=>XLXN_1517);
   
   XLXI_418 : OR2
      port map (I0=>XLXN_1854,
                I1=>XLXN_1853,
                O=>XLXN_1855);
   
   XLXI_419 : AND3B1
      port map (I0=>XLXN_1849,
                I1=>XLXN_1848,
                I2=>XLXN_1847,
                O=>XLXN_1853);
   
   XLXI_421 : AND3B1
      port map (I0=>XLXN_1849,
                I1=>XLXN_1848,
                I2=>XLXN_1850,
                O=>XLXN_1854);
   
   XLXI_422 : AND3B1
      port map (I0=>XLXN_1859,
                I1=>XLXN_1848,
                I2=>XLXN_1856,
                O=>XLXN_1862);
   
   XLXI_423 : AND3B1
      port map (I0=>XLXN_1859,
                I1=>XLXN_1848,
                I2=>XLXN_1850,
                O=>XLXN_1863);
   
   XLXI_424 : OR2
      port map (I0=>XLXN_1863,
                I1=>XLXN_1862,
                O=>XLXN_1864);
   
   XLXI_426 : AND3B1
      port map (I0=>XLXN_1850,
                I1=>XLXN_1848,
                I2=>XLXN_1869,
                O=>XLXN_1882);
   
   XLXI_427 : AND3B1
      port map (I0=>XLXN_1850,
                I1=>XLXN_1848,
                I2=>XLXN_1849,
                O=>XLXN_1883);
   
   XLXI_428 : AND3B1
      port map (I0=>XLXN_1850,
                I1=>XLXN_1848,
                I2=>XLXN_1871,
                O=>XLXN_1885);
   
   XLXI_429 : AND3B1
      port map (I0=>XLXN_1850,
                I1=>XLXN_1848,
                I2=>XLXN_1859,
                O=>XLXN_1886);
   
   XLXI_432 : OR2
      port map (I0=>XLXN_1883,
                I1=>XLXN_1882,
                O=>XLXN_1887);
   
   XLXI_433 : OR2
      port map (I0=>XLXN_1886,
                I1=>XLXN_1885,
                O=>XLXN_1888);
   
   XLXI_434 : AND2
      port map (I0=>XLXN_1888,
                I1=>XLXN_1887,
                O=>XLXN_1893);
   
   XLXI_435 : OR2
      port map (I0=>XLXN_1888,
                I1=>XLXN_1887,
                O=>XLXN_1894);
   
   XLXI_436 : NAND2
      port map (I0=>XLXN_1888,
                I1=>XLXN_1887,
                O=>XLXN_1895);
   
   XLXI_437 : AND2
      port map (I0=>XLXN_1895,
                I1=>XLXN_1894,
                O=>XLXN_1896);
   
end BEHAVIORAL;


