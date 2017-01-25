<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="E0" />
        <signal name="E1" />
        <signal name="E2" />
        <signal name="XLXN_8" />
        <signal name="RESET" />
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="CLK" />
        <signal name="XLXN_32" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_14" />
        <signal name="XLXN_35" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="VALID" />
        <port polarity="Output" name="E0" />
        <port polarity="Output" name="E1" />
        <port polarity="Output" name="E2" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="VALID" />
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="d2_4e" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="A0" />
            <blockpin signalname="XLXN_4" name="A1" />
            <blockpin signalname="XLXN_17" name="E" />
            <blockpin signalname="E0" name="D0" />
            <blockpin signalname="E1" name="D1" />
            <blockpin signalname="E2" name="D2" />
            <blockpin signalname="VALID" name="D3" />
        </block>
        <block symbolname="cb2ce" name="XLXI_1">
            <blockpin signalname="XLXN_25" name="C" />
            <blockpin signalname="XLXN_16" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_3" name="Q0" />
            <blockpin signalname="XLXN_4" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="XLXN_35" name="C" />
            <blockpin signalname="XLXN_14" name="D" />
            <blockpin name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="RESET" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="464" name="XLXI_2" orien="R0" />
        <instance x="464" y="1008" name="XLXI_1" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1072" y1="688" y2="688" x1="848" />
            <wire x2="1104" y1="688" y2="688" x1="1072" />
            <wire x2="1072" y1="144" y2="688" x1="1072" />
            <wire x2="1312" y1="144" y2="144" x1="1072" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1088" y1="752" y2="752" x1="848" />
            <wire x2="1104" y1="752" y2="752" x1="1088" />
            <wire x2="1088" y1="208" y2="752" x1="1088" />
            <wire x2="1312" y1="208" y2="208" x1="1088" />
        </branch>
        <branch name="E0">
            <wire x2="1728" y1="144" y2="144" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="144" name="E0" orien="R0" />
        <branch name="E1">
            <wire x2="1728" y1="208" y2="208" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="208" name="E1" orien="R0" />
        <branch name="E2">
            <wire x2="1728" y1="272" y2="272" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="272" name="E2" orien="R0" />
        <iomarker fontsize="28" x="448" y="1152" name="RESET" orien="R180" />
        <instance x="320" y="752" name="XLXI_8" orien="R0" />
        <instance x="1200" y="320" name="XLXI_9" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="384" y1="752" y2="816" x1="384" />
            <wire x2="464" y1="816" y2="816" x1="384" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1264" y1="320" y2="336" x1="1264" />
            <wire x2="1312" y1="336" y2="336" x1="1264" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="464" y1="880" y2="880" x1="432" />
        </branch>
        <instance x="208" y="912" name="XLXI_12" orien="R0" />
        <branch name="CLK">
            <wire x2="208" y1="880" y2="880" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="880" name="CLK" orien="R180" />
        <instance x="1104" y="816" name="XLXI_4" orien="R0" />
        <instance x="2224" y="880" name="XLXI_7" orien="R0" />
        <branch name="RESET">
            <wire x2="576" y1="1152" y2="1152" x1="448" />
            <wire x2="992" y1="1152" y2="1152" x1="576" />
            <wire x2="1264" y1="1152" y2="1152" x1="992" />
            <wire x2="464" y1="976" y2="1056" x1="464" />
            <wire x2="576" y1="1056" y2="1056" x1="464" />
            <wire x2="576" y1="1056" y2="1152" x1="576" />
            <wire x2="992" y1="784" y2="1152" x1="992" />
            <wire x2="1408" y1="784" y2="784" x1="992" />
            <wire x2="1264" y1="1072" y2="1152" x1="1264" />
            <wire x2="1536" y1="1072" y2="1072" x1="1264" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1408" y1="720" y2="720" x1="1360" />
        </branch>
        <instance x="1536" y="1104" name="XLXI_6" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1792" y1="1072" y2="1072" x1="1760" />
            <wire x2="2224" y1="624" y2="624" x1="1792" />
            <wire x2="1792" y1="624" y2="1072" x1="1792" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2224" y1="752" y2="752" x1="1664" />
        </branch>
        <instance x="1408" y="848" name="XLXI_5" orien="R0" />
        <branch name="VALID">
            <wire x2="1888" y1="336" y2="336" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1888" y="336" name="VALID" orien="R0" />
    </sheet>
</drawing>