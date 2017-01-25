<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="B" />
        <signal name="XLXN_14" />
        <signal name="A" />
        <signal name="XLXN_16" />
        <signal name="D" />
        <signal name="XLXN_18" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="c_out" />
        <signal name="d_out" />
        <signal name="e_out" />
        <signal name="f_out" />
        <signal name="g_out" />
        <signal name="dp_out" />
        <signal name="a_out" />
        <signal name="b_out" />
        <signal name="XLXN_62" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="c_out" />
        <port polarity="Output" name="d_out" />
        <port polarity="Output" name="e_out" />
        <port polarity="Output" name="f_out" />
        <port polarity="Output" name="g_out" />
        <port polarity="Output" name="dp_out" />
        <port polarity="Output" name="a_out" />
        <port polarity="Output" name="b_out" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="nor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="nor5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="216" y1="-192" y2="-192" x1="256" />
            <circle r="12" cx="204" cy="-192" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_21">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="XLXN_11" name="I3" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_24">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_11" name="I3" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_33">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_35">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="nor4" name="XLXI_44">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="a_out" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_46">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="c_out" name="O" />
        </block>
        <block symbolname="nor5" name="XLXI_47">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_32" name="I4" />
            <blockpin signalname="d_out" name="O" />
        </block>
        <block symbolname="nor4" name="XLXI_48">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_39" name="I2" />
            <blockpin signalname="XLXN_38" name="I3" />
            <blockpin signalname="e_out" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_49">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="f_out" name="O" />
        </block>
        <block symbolname="nor5" name="XLXI_50">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_45" name="I3" />
            <blockpin signalname="XLXN_44" name="I4" />
            <blockpin signalname="g_out" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_51">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="dp_out" name="O" />
        </block>
        <block symbolname="nor5" name="XLXI_52">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="XLXN_28" name="I4" />
            <blockpin signalname="b_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <iomarker fontsize="28" x="112" y="80" name="D" orien="R180" />
        <iomarker fontsize="28" x="272" y="80" name="C" orien="R180" />
        <instance x="320" y="112" name="XLXI_8" orien="R90" />
        <instance x="160" y="128" name="XLXI_7" orien="R90" />
        <instance x="480" y="112" name="XLXI_9" orien="R90" />
        <iomarker fontsize="28" x="432" y="80" name="B" orien="R180" />
        <instance x="640" y="112" name="XLXI_10" orien="R90" />
        <iomarker fontsize="28" x="592" y="80" name="A" orien="R180" />
        <instance x="752" y="544" name="XLXI_1" orien="R0" />
        <instance x="752" y="752" name="XLXI_11" orien="R0" />
        <instance x="752" y="912" name="XLXI_12" orien="R0" />
        <instance x="752" y="1072" name="XLXI_13" orien="R0" />
        <instance x="752" y="1280" name="XLXI_14" orien="R0" />
        <instance x="752" y="1424" name="XLXI_15" orien="R0" />
        <instance x="752" y="1568" name="XLXI_16" orien="R0" />
        <instance x="752" y="1776" name="XLXI_17" orien="R0" />
        <instance x="768" y="2144" name="XLXI_19" orien="R0" />
        <instance x="768" y="2272" name="XLXI_20" orien="R0" />
        <instance x="768" y="2528" name="XLXI_21" orien="R0" />
        <instance x="768" y="2672" name="XLXI_22" orien="R0" />
        <instance x="768" y="2800" name="XLXI_23" orien="R0" />
        <instance x="784" y="3088" name="XLXI_24" orien="R0" />
        <instance x="784" y="3232" name="XLXI_25" orien="R0" />
        <instance x="784" y="3360" name="XLXI_26" orien="R0" />
        <instance x="784" y="3488" name="XLXI_27" orien="R0" />
        <instance x="784" y="3680" name="XLXI_29" orien="R0" />
        <instance x="784" y="3840" name="XLXI_30" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1200" y1="3584" y2="3584" x1="1040" />
            <wire x2="1200" y1="3584" y2="3600" x1="1200" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1200" y1="3744" y2="3744" x1="1040" />
            <wire x2="1200" y1="3728" y2="3744" x1="1200" />
        </branch>
        <instance x="784" y="4016" name="XLXI_32" orien="R0" />
        <instance x="784" y="4144" name="XLXI_33" orien="R0" />
        <instance x="784" y="4272" name="XLXI_34" orien="R0" />
        <instance x="784" y="4400" name="XLXI_35" orien="R0" />
        <instance x="784" y="4528" name="XLXI_36" orien="R0" />
        <branch name="D">
            <wire x2="144" y1="80" y2="80" x1="112" />
            <wire x2="192" y1="80" y2="80" x1="144" />
            <wire x2="192" y1="80" y2="128" x1="192" />
            <wire x2="144" y1="80" y2="944" x1="144" />
            <wire x2="752" y1="944" y2="944" x1="144" />
            <wire x2="144" y1="944" y2="1568" x1="144" />
            <wire x2="144" y1="1568" y2="1808" x1="144" />
            <wire x2="944" y1="1808" y2="1808" x1="144" />
            <wire x2="144" y1="1808" y2="2544" x1="144" />
            <wire x2="768" y1="2544" y2="2544" x1="144" />
            <wire x2="144" y1="2544" y2="2672" x1="144" />
            <wire x2="768" y1="2672" y2="2672" x1="144" />
            <wire x2="144" y1="2672" y2="3232" x1="144" />
            <wire x2="784" y1="3232" y2="3232" x1="144" />
            <wire x2="144" y1="3232" y2="3360" x1="144" />
            <wire x2="784" y1="3360" y2="3360" x1="144" />
            <wire x2="144" y1="3360" y2="3712" x1="144" />
            <wire x2="784" y1="3712" y2="3712" x1="144" />
            <wire x2="144" y1="3712" y2="4608" x1="144" />
            <wire x2="784" y1="4608" y2="4608" x1="144" />
            <wire x2="1248" y1="1568" y2="1568" x1="144" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="192" y1="352" y2="416" x1="192" />
            <wire x2="752" y1="416" y2="416" x1="192" />
            <wire x2="192" y1="416" y2="784" x1="192" />
            <wire x2="752" y1="784" y2="784" x1="192" />
            <wire x2="192" y1="784" y2="2272" x1="192" />
            <wire x2="768" y1="2272" y2="2272" x1="192" />
            <wire x2="192" y1="2272" y2="2832" x1="192" />
            <wire x2="784" y1="2832" y2="2832" x1="192" />
            <wire x2="192" y1="2832" y2="3888" x1="192" />
            <wire x2="784" y1="3888" y2="3888" x1="192" />
            <wire x2="192" y1="3888" y2="4016" x1="192" />
            <wire x2="784" y1="4016" y2="4016" x1="192" />
            <wire x2="192" y1="4016" y2="4144" x1="192" />
            <wire x2="784" y1="4144" y2="4144" x1="192" />
        </branch>
        <branch name="C">
            <wire x2="304" y1="80" y2="80" x1="272" />
            <wire x2="352" y1="80" y2="80" x1="304" />
            <wire x2="352" y1="80" y2="112" x1="352" />
            <wire x2="304" y1="80" y2="1584" x1="304" />
            <wire x2="752" y1="1584" y2="1584" x1="304" />
            <wire x2="304" y1="1584" y2="1872" x1="304" />
            <wire x2="944" y1="1872" y2="1872" x1="304" />
            <wire x2="304" y1="1872" y2="2336" x1="304" />
            <wire x2="768" y1="2336" y2="2336" x1="304" />
            <wire x2="304" y1="2336" y2="3424" x1="304" />
            <wire x2="784" y1="3424" y2="3424" x1="304" />
            <wire x2="304" y1="3424" y2="3664" x1="304" />
            <wire x2="1200" y1="3664" y2="3664" x1="304" />
            <wire x2="304" y1="3664" y2="4672" x1="304" />
            <wire x2="784" y1="4672" y2="4672" x1="304" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="352" y1="336" y2="560" x1="352" />
            <wire x2="752" y1="560" y2="560" x1="352" />
            <wire x2="352" y1="560" y2="1152" x1="352" />
            <wire x2="752" y1="1152" y2="1152" x1="352" />
            <wire x2="352" y1="1152" y2="1296" x1="352" />
            <wire x2="752" y1="1296" y2="1296" x1="352" />
            <wire x2="352" y1="1296" y2="2016" x1="352" />
            <wire x2="768" y1="2016" y2="2016" x1="352" />
            <wire x2="352" y1="2016" y2="2608" x1="352" />
            <wire x2="768" y1="2608" y2="2608" x1="352" />
            <wire x2="352" y1="2608" y2="2896" x1="352" />
            <wire x2="784" y1="2896" y2="2896" x1="352" />
            <wire x2="352" y1="2896" y2="3952" x1="352" />
            <wire x2="784" y1="3952" y2="3952" x1="352" />
            <wire x2="352" y1="3952" y2="4272" x1="352" />
            <wire x2="784" y1="4272" y2="4272" x1="352" />
        </branch>
        <branch name="B">
            <wire x2="464" y1="80" y2="80" x1="432" />
            <wire x2="512" y1="80" y2="80" x1="464" />
            <wire x2="512" y1="80" y2="112" x1="512" />
            <wire x2="464" y1="80" y2="848" x1="464" />
            <wire x2="752" y1="848" y2="848" x1="464" />
            <wire x2="464" y1="848" y2="1360" x1="464" />
            <wire x2="752" y1="1360" y2="1360" x1="464" />
            <wire x2="464" y1="1360" y2="1440" x1="464" />
            <wire x2="752" y1="1440" y2="1440" x1="464" />
            <wire x2="464" y1="1440" y2="2080" x1="464" />
            <wire x2="768" y1="2080" y2="2080" x1="464" />
            <wire x2="464" y1="2080" y2="2144" x1="464" />
            <wire x2="768" y1="2144" y2="2144" x1="464" />
            <wire x2="464" y1="2144" y2="3104" x1="464" />
            <wire x2="784" y1="3104" y2="3104" x1="464" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="512" y1="336" y2="624" x1="512" />
            <wire x2="752" y1="624" y2="624" x1="512" />
            <wire x2="512" y1="624" y2="1648" x1="512" />
            <wire x2="752" y1="1648" y2="1648" x1="512" />
            <wire x2="512" y1="1648" y2="2400" x1="512" />
            <wire x2="768" y1="2400" y2="2400" x1="512" />
            <wire x2="512" y1="2400" y2="2960" x1="512" />
            <wire x2="784" y1="2960" y2="2960" x1="512" />
            <wire x2="512" y1="2960" y2="3552" x1="512" />
            <wire x2="784" y1="3552" y2="3552" x1="512" />
            <wire x2="512" y1="3552" y2="4080" x1="512" />
            <wire x2="784" y1="4080" y2="4080" x1="512" />
            <wire x2="512" y1="4080" y2="4336" x1="512" />
            <wire x2="784" y1="4336" y2="4336" x1="512" />
            <wire x2="512" y1="4336" y2="4400" x1="512" />
            <wire x2="784" y1="4400" y2="4400" x1="512" />
        </branch>
        <branch name="A">
            <wire x2="624" y1="80" y2="80" x1="592" />
            <wire x2="672" y1="80" y2="80" x1="624" />
            <wire x2="672" y1="80" y2="112" x1="672" />
            <wire x2="624" y1="80" y2="480" x1="624" />
            <wire x2="752" y1="480" y2="480" x1="624" />
            <wire x2="624" y1="480" y2="688" x1="624" />
            <wire x2="752" y1="688" y2="688" x1="624" />
            <wire x2="624" y1="688" y2="1216" x1="624" />
            <wire x2="752" y1="1216" y2="1216" x1="624" />
            <wire x2="624" y1="1216" y2="1504" x1="624" />
            <wire x2="752" y1="1504" y2="1504" x1="624" />
            <wire x2="624" y1="1504" y2="1936" x1="624" />
            <wire x2="944" y1="1936" y2="1936" x1="624" />
            <wire x2="624" y1="1936" y2="2464" x1="624" />
            <wire x2="768" y1="2464" y2="2464" x1="624" />
            <wire x2="624" y1="2464" y2="3024" x1="624" />
            <wire x2="784" y1="3024" y2="3024" x1="624" />
            <wire x2="624" y1="3024" y2="3616" x1="624" />
            <wire x2="784" y1="3616" y2="3616" x1="624" />
            <wire x2="624" y1="3616" y2="4464" x1="624" />
            <wire x2="784" y1="4464" y2="4464" x1="624" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="672" y1="336" y2="1008" x1="672" />
            <wire x2="752" y1="1008" y2="1008" x1="672" />
            <wire x2="672" y1="1008" y2="1712" x1="672" />
            <wire x2="752" y1="1712" y2="1712" x1="672" />
            <wire x2="672" y1="1712" y2="2208" x1="672" />
            <wire x2="768" y1="2208" y2="2208" x1="672" />
            <wire x2="672" y1="2208" y2="2736" x1="672" />
            <wire x2="768" y1="2736" y2="2736" x1="672" />
            <wire x2="672" y1="2736" y2="3168" x1="672" />
            <wire x2="784" y1="3168" y2="3168" x1="672" />
            <wire x2="672" y1="3168" y2="3296" x1="672" />
            <wire x2="784" y1="3296" y2="3296" x1="672" />
            <wire x2="672" y1="3296" y2="3776" x1="672" />
            <wire x2="784" y1="3776" y2="3776" x1="672" />
            <wire x2="672" y1="3776" y2="4208" x1="672" />
            <wire x2="784" y1="4208" y2="4208" x1="672" />
            <wire x2="672" y1="4208" y2="4736" x1="672" />
            <wire x2="784" y1="4736" y2="4736" x1="672" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1248" y1="448" y2="448" x1="1008" />
            <wire x2="1248" y1="448" y2="624" x1="1248" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1120" y1="624" y2="624" x1="1008" />
            <wire x2="1120" y1="624" y2="688" x1="1120" />
            <wire x2="1248" y1="688" y2="688" x1="1120" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1120" y1="816" y2="816" x1="1008" />
            <wire x2="1120" y1="752" y2="816" x1="1120" />
            <wire x2="1248" y1="752" y2="752" x1="1120" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1248" y1="976" y2="976" x1="1008" />
            <wire x2="1248" y1="816" y2="976" x1="1248" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1216" y1="2048" y2="2048" x1="1024" />
            <wire x2="1216" y1="2048" y2="2224" x1="1216" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1120" y1="2176" y2="2176" x1="1024" />
            <wire x2="1120" y1="2176" y2="2288" x1="1120" />
            <wire x2="1216" y1="2288" y2="2288" x1="1120" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1040" y1="2368" y2="2368" x1="1024" />
            <wire x2="1216" y1="2352" y2="2352" x1="1040" />
            <wire x2="1040" y1="2352" y2="2368" x1="1040" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1120" y1="2576" y2="2576" x1="1024" />
            <wire x2="1120" y1="2416" y2="2576" x1="1120" />
            <wire x2="1216" y1="2416" y2="2416" x1="1120" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1216" y1="2704" y2="2704" x1="1024" />
            <wire x2="1216" y1="2480" y2="2704" x1="1216" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1200" y1="2928" y2="2928" x1="1040" />
            <wire x2="1200" y1="2928" y2="3072" x1="1200" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1200" y1="3136" y2="3136" x1="1040" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1120" y1="3264" y2="3264" x1="1040" />
            <wire x2="1120" y1="3200" y2="3264" x1="1120" />
            <wire x2="1200" y1="3200" y2="3200" x1="1120" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1200" y1="3392" y2="3392" x1="1040" />
            <wire x2="1200" y1="3264" y2="3392" x1="1200" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1248" y1="3920" y2="3920" x1="1040" />
            <wire x2="1248" y1="3920" y2="4048" x1="1248" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1136" y1="4048" y2="4048" x1="1040" />
            <wire x2="1136" y1="4048" y2="4112" x1="1136" />
            <wire x2="1248" y1="4112" y2="4112" x1="1136" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1248" y1="4176" y2="4176" x1="1040" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1136" y1="4304" y2="4304" x1="1040" />
            <wire x2="1136" y1="4240" y2="4304" x1="1136" />
            <wire x2="1248" y1="4240" y2="4240" x1="1136" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1248" y1="4432" y2="4432" x1="1040" />
            <wire x2="1248" y1="4304" y2="4432" x1="1248" />
        </branch>
        <branch name="c_out">
            <wire x2="1232" y1="1872" y2="1872" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1872" name="c_out" orien="R0" />
        <branch name="d_out">
            <wire x2="1504" y1="2352" y2="2352" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="2352" name="d_out" orien="R0" />
        <branch name="e_out">
            <wire x2="1488" y1="3168" y2="3168" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="3168" name="e_out" orien="R0" />
        <branch name="f_out">
            <wire x2="1488" y1="3664" y2="3664" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="3664" name="f_out" orien="R0" />
        <branch name="g_out">
            <wire x2="1536" y1="4176" y2="4176" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="4176" name="g_out" orien="R0" />
        <branch name="dp_out">
            <wire x2="1072" y1="4672" y2="4672" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="4672" name="dp_out" orien="R0" />
        <iomarker fontsize="28" x="1872" y="720" name="a_out" orien="R0" />
        <branch name="a_out">
            <wire x2="1872" y1="720" y2="720" x1="1504" />
        </branch>
        <instance x="1248" y="880" name="XLXI_44" orien="R0" />
        <instance x="944" y="2000" name="XLXI_46" orien="R0" />
        <instance x="1216" y="2544" name="XLXI_47" orien="R0" />
        <instance x="1200" y="3328" name="XLXI_48" orien="R0" />
        <instance x="1200" y="3792" name="XLXI_49" orien="R0" />
        <instance x="1248" y="4368" name="XLXI_50" orien="R0" />
        <instance x="784" y="4800" name="XLXI_51" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1120" y1="1472" y2="1472" x1="1008" />
            <wire x2="1120" y1="1440" y2="1472" x1="1120" />
            <wire x2="1248" y1="1440" y2="1440" x1="1120" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1120" y1="1328" y2="1328" x1="1008" />
            <wire x2="1120" y1="1328" y2="1376" x1="1120" />
            <wire x2="1248" y1="1376" y2="1376" x1="1120" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1248" y1="1184" y2="1184" x1="1008" />
            <wire x2="1248" y1="1184" y2="1312" x1="1248" />
        </branch>
        <instance x="1248" y="1632" name="XLXI_52" orien="R0" />
        <branch name="b_out">
            <wire x2="1536" y1="1440" y2="1440" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1440" name="b_out" orien="R0" />
        <branch name="XLXN_62">
            <wire x2="1168" y1="1648" y2="1648" x1="1008" />
            <wire x2="1248" y1="1504" y2="1504" x1="1168" />
            <wire x2="1168" y1="1504" y2="1648" x1="1168" />
        </branch>
    </sheet>
</drawing>