--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CardTo7.vhf
-- /___/   /\     Timestamp : 12/04/2016 01:05:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/CardTo7.vhf -w C:/Users/Earth/Documents/ei/Blackjack/CardTo7.sch
--Design Name: CardTo7
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

entity CardTo7 is
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
end CardTo7;

architecture BEHAVIORAL of CardTo7 is
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


