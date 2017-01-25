--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : frequenzy.vhf
-- /___/   /\     Timestamp : 12/04/2016 04:12:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/frequenzy.vhf -w C:/Users/Earth/Documents/ei/Blackjack/freq/frequenzy.sch
--Design Name: frequenzy
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

entity AND6_MXILINX_frequenzy is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end AND6_MXILINX_frequenzy;

architecture BEHAVIORAL of AND6_MXILINX_frequenzy is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal I35     : std_logic;
   signal O_DUMMY : std_logic;
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
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_93 : label is "X0Y0";
   attribute RLOC of I_36_94 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_69 : AND3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O_DUMMY);
   
   I_36_93 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>dummy,
                O=>I35);
   
   I_36_94 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I35,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CD4CE_MXILINX_frequenzy is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CD4CE_MXILINX_frequenzy;

architecture BEHAVIORAL of CD4CE_MXILINX_frequenzy is
   attribute BOX_TYPE   : string ;
   signal AO3A     : std_logic;
   signal AX1      : std_logic;
   signal AX2      : std_logic;
   signal A03B     : std_logic;
   signal D0       : std_logic;
   signal D1       : std_logic;
   signal D2       : std_logic;
   signal D3       : std_logic;
   signal OX3      : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
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
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D0,
                Q=>Q0_DUMMY);
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D1,
                Q=>Q1_DUMMY);
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D3,
                Q=>Q3_DUMMY);
   
   I_36_70 : AND3
      port map (I0=>Q2_DUMMY,
                I1=>Q0_DUMMY,
                I2=>Q1_DUMMY,
                O=>A03B);
   
   I_36_73 : XOR2
      port map (I0=>Q3_DUMMY,
                I1=>OX3,
                O=>D3);
   
   I_36_75 : OR2
      port map (I0=>AO3A,
                I1=>A03B,
                O=>OX3);
   
   I_36_77 : AND2
      port map (I0=>Q0_DUMMY,
                I1=>Q1_DUMMY,
                O=>AX2);
   
   I_36_78 : XOR2
      port map (I0=>Q2_DUMMY,
                I1=>AX2,
                O=>D2);
   
   I_36_81 : AND2B1
      port map (I0=>Q3_DUMMY,
                I1=>Q0_DUMMY,
                O=>AX1);
   
   I_36_83 : INV
      port map (I=>Q0_DUMMY,
                O=>D0);
   
   I_36_86 : XOR2
      port map (I0=>Q1_DUMMY,
                I1=>AX1,
                O=>D1);
   
   I_36_88 : AND2
      port map (I0=>Q3_DUMMY,
                I1=>Q0_DUMMY,
                O=>AO3A);
   
   I_36_99 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   I_36_105 : AND4B2
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q0_DUMMY,
                I3=>Q3_DUMMY,
                O=>TC_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTRSE_MXILINX_frequenzy is
   generic( INIT : bit :=  '0');
   port ( C  : in    std_logic; 
          CE : in    std_logic; 
          R  : in    std_logic; 
          S  : in    std_logic; 
          T  : in    std_logic; 
          Q  : out   std_logic);
end FTRSE_MXILINX_frequenzy;

architecture BEHAVIORAL of FTRSE_MXILINX_frequenzy is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal CE_S    : std_logic;
   signal D_S     : std_logic;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDRE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDRE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>CE_S,
                D=>D_S,
                R=>R,
                Q=>Q_DUMMY);
   
   I_36_73 : OR2
      port map (I0=>S,
                I1=>TQ,
                O=>D_S);
   
   I_36_77 : OR2
      port map (I0=>CE,
                I1=>S,
                O=>CE_S);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB8RE_MXILINX_frequenzy is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          R   : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (7 downto 0); 
          TC  : out   std_logic);
end CB8RE_MXILINX_frequenzy;

architecture BEHAVIORAL of CB8RE_MXILINX_frequenzy is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal XLXN_1   : std_logic;
   signal XLXN_2   : std_logic;
   signal Q_DUMMY  : std_logic_vector (7 downto 0);
   signal TC_DUMMY : std_logic;
   component FTRSE_MXILINX_frequenzy
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             R  : in    std_logic; 
             S  : in    std_logic; 
             T  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
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
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_7";
   attribute HU_SET of I_Q1 : label is "I_Q1_6";
   attribute HU_SET of I_Q2 : label is "I_Q2_5";
   attribute HU_SET of I_Q3 : label is "I_Q3_4";
   attribute HU_SET of I_Q4 : label is "I_Q4_3";
   attribute HU_SET of I_Q5 : label is "I_Q5_2";
   attribute HU_SET of I_Q6 : label is "I_Q6_1";
   attribute HU_SET of I_Q7 : label is "I_Q7_0";
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   TC <= TC_DUMMY;
   I_Q0 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>XLXN_1,
                Q=>Q_DUMMY(0));
   
   I_Q1 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   I_Q2 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T2,
                Q=>Q_DUMMY(2));
   
   I_Q3 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T3,
                Q=>Q_DUMMY(3));
   
   I_Q4 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T4,
                Q=>Q_DUMMY(4));
   
   I_Q5 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T5,
                Q=>Q_DUMMY(5));
   
   I_Q6 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T6,
                Q=>Q_DUMMY(6));
   
   I_Q7 : FTRSE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                R=>R,
                S=>XLXN_2,
                T=>T7,
                Q=>Q_DUMMY(7));
   
   I_36_7 : GND
      port map (G=>XLXN_2);
   
   I_36_13 : VCC
      port map (P=>XLXN_1);
   
   I_36_21 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_22 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_23 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_25 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_26 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_28 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_29 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>TC_DUMMY);
   
   I_36_32 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_frequenzy is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_frequenzy;

architecture BEHAVIORAL of FTCE_MXILINX_frequenzy is
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

entity CB2CE_MXILINX_frequenzy is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          TC  : out   std_logic);
end CB2CE_MXILINX_frequenzy;

architecture BEHAVIORAL of CB2CE_MXILINX_frequenzy is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_frequenzy
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
   
   attribute HU_SET of I_Q0 : label is "I_Q0_8";
   attribute HU_SET of I_Q1 : label is "I_Q1_9";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_frequenzy
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_frequenzy
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

entity frequenzy is
   port ( CLK    : in    std_logic; 
          HZ1    : out   std_logic; 
          HZ625  : out   std_logic; 
          HZ1250 : out   std_logic);
end frequenzy;

architecture BEHAVIORAL of frequenzy is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal HZNEW       : std_logic;
   signal XLXN_6      : std_logic;
   signal XLXN_7      : std_logic;
   signal XLXN_10     : std_logic;
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_20     : std_logic;
   signal XLXN_21     : std_logic_vector (7 downto 0);
   signal XLXN_22     : std_logic;
   signal XLXN_34     : std_logic_vector (7 downto 0);
   signal XLXN_35     : std_logic;
   signal XLXN_36     : std_logic;
   signal XLXN_37     : std_logic;
   signal XLXN_47     : std_logic_vector (7 downto 0);
   signal XLXN_48     : std_logic;
   signal XLXN_49     : std_logic;
   signal XLXN_50     : std_logic;
   signal XLXN_60     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_62     : std_logic;
   signal XLXN_63     : std_logic;
   signal XLXN_65     : std_logic;
   signal XLXN_66     : std_logic;
   signal HZ625_DUMMY : std_logic;
   component CB2CE_MXILINX_frequenzy
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component CB8RE_MXILINX_frequenzy
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             R   : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component CD4CE_MXILINX_frequenzy
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
   
   component AND6_MXILINX_frequenzy
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_10";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_11";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_12";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_13";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_14";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_15";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_16";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_17";
begin
   HZ625 <= HZ625_DUMMY;
   XLXI_1 : CB2CE_MXILINX_frequenzy
      port map (C=>CLK,
                CE=>XLXN_66,
                CLR=>XLXN_10,
                CEO=>XLXN_6,
                Q0=>open,
                Q1=>open,
                TC=>open);
   
   XLXI_4 : GND
      port map (G=>XLXN_10);
   
   XLXI_5 : CB8RE_MXILINX_frequenzy
      port map (C=>XLXN_20,
                CE=>XLXN_65,
                R=>XLXN_22,
                CEO=>open,
                Q(7 downto 0)=>XLXN_21(7 downto 0),
                TC=>open);
   
   XLXI_6 : INV
      port map (I=>XLXN_21(2),
                O=>XLXN_19);
   
   XLXI_7 : INV
      port map (I=>XLXN_21(1),
                O=>XLXN_17);
   
   XLXI_8 : INV
      port map (I=>XLXN_21(0),
                O=>XLXN_16);
   
   XLXI_9 : AND5
      port map (I0=>XLXN_21(4),
                I1=>XLXN_21(3),
                I2=>XLXN_19,
                I3=>XLXN_17,
                I4=>XLXN_16,
                O=>XLXN_22);
   
   XLXI_13 : CB2CE_MXILINX_frequenzy
      port map (C=>XLXN_22,
                CE=>XLXN_62,
                CLR=>XLXN_63,
                CEO=>open,
                Q0=>HZ1250,
                Q1=>HZ625_DUMMY,
                TC=>open);
   
   XLXI_14 : CB8RE_MXILINX_frequenzy
      port map (C=>HZ625_DUMMY,
                CE=>XLXN_61,
                R=>HZNEW,
                CEO=>open,
                Q(7 downto 0)=>XLXN_34(7 downto 0),
                TC=>open);
   
   XLXI_15 : CB8RE_MXILINX_frequenzy
      port map (C=>HZ625_DUMMY,
                CE=>HZNEW,
                R=>XLXN_60,
                CEO=>open,
                Q(7 downto 0)=>XLXN_47(7 downto 0),
                TC=>open);
   
   XLXI_16 : CD4CE_MXILINX_frequenzy
      port map (C=>CLK,
                CE=>XLXN_6,
                CLR=>XLXN_10,
                CEO=>XLXN_7,
                Q0=>open,
                Q1=>open,
                Q2=>open,
                Q3=>open,
                TC=>open);
   
   XLXI_17 : CD4CE_MXILINX_frequenzy
      port map (C=>CLK,
                CE=>XLXN_7,
                CLR=>XLXN_10,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>open,
                Q3=>XLXN_20,
                TC=>open);
   
   XLXI_18 : AND5
      port map (I0=>XLXN_34(4),
                I1=>XLXN_34(3),
                I2=>XLXN_35,
                I3=>XLXN_36,
                I4=>XLXN_37,
                O=>HZNEW);
   
   XLXI_19 : INV
      port map (I=>XLXN_34(2),
                O=>XLXN_35);
   
   XLXI_20 : INV
      port map (I=>XLXN_34(1),
                O=>XLXN_36);
   
   XLXI_21 : INV
      port map (I=>XLXN_34(0),
                O=>XLXN_37);
   
   XLXI_22 : AND6_MXILINX_frequenzy
      port map (I0=>XLXN_47(4),
                I1=>XLXN_47(3),
                I2=>XLXN_48,
                I3=>XLXN_49,
                I4=>XLXN_50,
                I5=>HZNEW,
                O=>XLXN_60);
   
   XLXI_23 : INV
      port map (I=>XLXN_47(2),
                O=>XLXN_48);
   
   XLXI_24 : INV
      port map (I=>XLXN_47(1),
                O=>XLXN_49);
   
   XLXI_25 : INV
      port map (I=>XLXN_47(0),
                O=>XLXN_50);
   
   XLXI_26 : VCC
      port map (P=>XLXN_62);
   
   XLXI_27 : VCC
      port map (P=>XLXN_61);
   
   XLXI_28 : GND
      port map (G=>XLXN_63);
   
   XLXI_29 : AND2
      port map (I0=>XLXN_47(4),
                I1=>XLXN_62,
                O=>HZ1);
   
   XLXI_30 : VCC
      port map (P=>XLXN_66);
   
   XLXI_31 : VCC
      port map (P=>XLXN_65);
   
end BEHAVIORAL;


