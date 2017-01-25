--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : BCD_7SEG.vhf
-- /___/   /\     Timestamp : 12/06/2016 00:14:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/BCD_7SEG.vhf -w C:/Users/Earth/Documents/ei/Blackjack/bcdto7/BCD_7SEG.sch
--Design Name: BCD_7SEG
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

entity OR6_MXILINX_BCD_7SEG is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end OR6_MXILINX_BCD_7SEG;

architecture BEHAVIORAL of OR6_MXILINX_BCD_7SEG is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal I35     : std_logic;
   signal O_DUMMY : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_106 : label is "X0Y0";
   attribute RLOC of I_36_107 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_87 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O_DUMMY);
   
   I_36_88 : OR3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_106 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I35,
                O=>O_DUMMY);
   
   I_36_107 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>dummy,
                O=>I35);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR8_MXILINX_BCD_7SEG is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end OR8_MXILINX_BCD_7SEG;

architecture BEHAVIORAL of OR8_MXILINX_BCD_7SEG is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_91 : label is "X0Y1";
   attribute RLOC of I_36_116 : label is "X0Y0";
   attribute RLOC of I_36_117 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_91 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
   I_36_94 : OR2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_95 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_112 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_116 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_117 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR7_MXILINX_BCD_7SEG is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end OR7_MXILINX_BCD_7SEG;

architecture BEHAVIORAL of OR7_MXILINX_BCD_7SEG is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal I36     : std_logic;
   signal O_DUMMY : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_110 : label is "X0Y0";
   attribute RLOC of I_36_111 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_89 : OR4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_90 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O_DUMMY);
   
   I_36_110 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>I6,
                O=>I36);
   
   I_36_111 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I36,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR9_MXILINX_BCD_7SEG is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          I8 : in    std_logic; 
          O  : out   std_logic);
end OR9_MXILINX_BCD_7SEG;

architecture BEHAVIORAL of OR9_MXILINX_BCD_7SEG is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_120 : label is "X0Y0";
   attribute RLOC of I_36_121 : label is "X0Y0";
   attribute RLOC of I_36_122 : label is "X0Y1";
begin
   O <= O_DUMMY;
   I_36_94 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_110 : OR3
      port map (I0=>S0,
                I1=>S1,
                I2=>I8,
                O=>O_DUMMY);
   
   I_36_119 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_120 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_121 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_122 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>I8,
                I4=>dummy,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BCD_7SEG is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          a  : out   std_logic; 
          b  : out   std_logic; 
          c  : out   std_logic; 
          d  : out   std_logic; 
          e  : out   std_logic; 
          f  : out   std_logic; 
          g  : out   std_logic);
end BCD_7SEG;

architecture BEHAVIORAL of BCD_7SEG is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3   : std_logic;
   signal XLXN_4   : std_logic;
   signal XLXN_7   : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_63  : std_logic;
   signal XLXN_68  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_78  : std_logic;
   signal XLXN_83  : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_92  : std_logic;
   signal XLXN_104 : std_logic;
   component OR8_MXILINX_BCD_7SEG
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR9_MXILINX_BCD_7SEG
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             I8 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR6_MXILINX_BCD_7SEG
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR7_MXILINX_BCD_7SEG
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_2";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_3";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_4";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_5";
begin
   XLXI_1 : OR8_MXILINX_BCD_7SEG
      port map (I0=>XLXN_54,
                I1=>XLXN_61,
                I2=>XLXN_63,
                I3=>XLXN_68,
                I4=>XLXN_73,
                I5=>XLXN_89,
                I6=>XLXN_92,
                I7=>XLXN_104,
                O=>b);
   
   XLXI_2 : OR9_MXILINX_BCD_7SEG
      port map (I0=>XLXN_54,
                I1=>XLXN_61,
                I2=>XLXN_68,
                I3=>XLXN_73,
                I4=>XLXN_78,
                I5=>XLXN_83,
                I6=>XLXN_89,
                I7=>XLXN_92,
                I8=>XLXN_104,
                O=>c);
   
   XLXI_3 : OR4
      port map (I0=>XLXN_54,
                I1=>XLXN_63,
                I2=>XLXN_83,
                I3=>XLXN_92,
                O=>e);
   
   XLXI_4 : OR6_MXILINX_BCD_7SEG
      port map (I0=>XLXN_54,
                I1=>XLXN_73,
                I2=>XLXN_78,
                I3=>XLXN_83,
                I4=>XLXN_92,
                I5=>XLXN_104,
                O=>f);
   
   XLXI_5 : OR7_MXILINX_BCD_7SEG
      port map (I0=>XLXN_63,
                I1=>XLXN_68,
                I2=>XLXN_73,
                I3=>XLXN_78,
                I4=>XLXN_83,
                I5=>XLXN_92,
                I6=>XLXN_104,
                O=>g);
   
   XLXI_6 : OR8_MXILINX_BCD_7SEG
      port map (I0=>XLXN_54,
                I1=>XLXN_63,
                I2=>XLXN_68,
                I3=>XLXN_78,
                I4=>XLXN_83,
                I5=>XLXN_89,
                I6=>XLXN_92,
                I7=>XLXN_104,
                O=>a);
   
   XLXI_8 : OR6_MXILINX_BCD_7SEG
      port map (I0=>XLXN_54,
                I1=>XLXN_63,
                I2=>XLXN_68,
                I3=>XLXN_78,
                I4=>XLXN_83,
                I5=>XLXN_92,
                O=>d);
   
   XLXI_11 : AND4
      port map (I0=>A3,
                I1=>XLXN_7,
                I2=>XLXN_4,
                I3=>XLXN_3,
                O=>XLXN_92);
   
   XLXI_12 : AND4
      port map (I0=>XLXN_8,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                O=>XLXN_89);
   
   XLXI_19 : AND4
      port map (I0=>A3,
                I1=>XLXN_7,
                I2=>XLXN_4,
                I3=>A0,
                O=>XLXN_104);
   
   XLXI_22 : AND4
      port map (I0=>XLXN_8,
                I1=>A2,
                I2=>A1,
                I3=>XLXN_3,
                O=>XLXN_83);
   
   XLXI_23 : AND4
      port map (I0=>XLXN_8,
                I1=>A2,
                I2=>XLXN_4,
                I3=>A0,
                O=>XLXN_78);
   
   XLXI_24 : AND4
      port map (I0=>XLXN_8,
                I1=>A2,
                I2=>XLXN_4,
                I3=>XLXN_3,
                O=>XLXN_73);
   
   XLXI_25 : AND4
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                I2=>A1,
                I3=>A0,
                O=>XLXN_68);
   
   XLXI_26 : AND4
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                I2=>A1,
                I3=>XLXN_3,
                O=>XLXN_63);
   
   XLXI_27 : AND4
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                I2=>XLXN_4,
                I3=>A0,
                O=>XLXN_61);
   
   XLXI_28 : AND4
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                I2=>XLXN_4,
                I3=>XLXN_3,
                O=>XLXN_54);
   
   XLXI_55 : INV
      port map (I=>A3,
                O=>XLXN_8);
   
   XLXI_76 : INV
      port map (I=>A2,
                O=>XLXN_7);
   
   XLXI_77 : INV
      port map (I=>A1,
                O=>XLXN_4);
   
   XLXI_78 : INV
      port map (I=>A0,
                O=>XLXN_3);
   
end BEHAVIORAL;


