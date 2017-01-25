--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : debounce.vhf
-- /___/   /\     Timestamp : 12/05/2016 06:50:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/Earth/Documents/ei/Blackjack/debounce.vhf -w C:/Users/Earth/Documents/ei/Blackjack/debounce.sch
--Design Name: debounce
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

entity debounce is
   port ( CLK  : in    std_logic; 
          DIN  : in    std_logic; 
          DOUT : out   std_logic);
end debounce;

architecture BEHAVIORAL of debounce is
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


