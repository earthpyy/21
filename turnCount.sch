<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="E0" />
        <signal name="E1" />
        <signal name="E2" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="CLR" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="E0" />
        <port polarity="Output" name="E1" />
        <port polarity="Output" name="E2" />
        <port polarity="Input" name="CLR" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="cb2ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="XLXN_12" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_10" name="Q0" />
            <blockpin signalname="XLXN_9" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="d2_4e" name="XLXI_2">
            <blockpin signalname="XLXN_10" name="A0" />
            <blockpin signalname="XLXN_9" name="A1" />
            <blockpin signalname="XLXN_8" name="E" />
            <blockpin signalname="E0" name="D0" />
            <blockpin signalname="E1" name="D1" />
            <blockpin signalname="E2" name="D2" />
            <blockpin name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_7" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="CLR" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="656" name="XLXI_1" orien="R0" />
        <branch name="CLK">
            <wire x2="352" y1="528" y2="528" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="528" name="CLK" orien="R180" />
        <instance x="1280" y="656" name="XLXI_2" orien="R0" />
        <branch name="E0">
            <wire x2="1696" y1="336" y2="336" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="336" name="E0" orien="R0" />
        <branch name="E1">
            <wire x2="1696" y1="400" y2="400" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="400" name="E1" orien="R0" />
        <branch name="E2">
            <wire x2="1696" y1="464" y2="464" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="464" name="E2" orien="R0" />
        <instance x="240" y="416" name="XLXI_3" orien="R0" />
        <instance x="1168" y="496" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="304" y1="416" y2="464" x1="304" />
            <wire x2="352" y1="464" y2="464" x1="304" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1232" y1="496" y2="528" x1="1232" />
            <wire x2="1280" y1="528" y2="528" x1="1232" />
        </branch>
        <instance x="880" y="800" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="864" y1="400" y2="400" x1="736" />
            <wire x2="1280" y1="400" y2="400" x1="864" />
            <wire x2="864" y1="400" y2="672" x1="864" />
            <wire x2="880" y1="672" y2="672" x1="864" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="832" y1="336" y2="336" x1="736" />
            <wire x2="1280" y1="336" y2="336" x1="832" />
            <wire x2="832" y1="336" y2="736" x1="832" />
            <wire x2="880" y1="736" y2="736" x1="832" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="352" y1="768" y2="768" x1="336" />
            <wire x2="352" y1="768" y2="832" x1="352" />
            <wire x2="1216" y1="832" y2="832" x1="352" />
            <wire x2="1216" y1="704" y2="704" x1="1136" />
            <wire x2="1216" y1="704" y2="832" x1="1216" />
        </branch>
        <instance x="336" y="832" name="XLXI_6" orien="M0" />
        <branch name="XLXN_12">
            <wire x2="32" y1="624" y2="736" x1="32" />
            <wire x2="80" y1="736" y2="736" x1="32" />
            <wire x2="352" y1="624" y2="624" x1="32" />
        </branch>
        <branch name="CLR">
            <wire x2="368" y1="704" y2="704" x1="336" />
        </branch>
        <iomarker fontsize="28" x="368" y="704" name="CLR" orien="R0" />
    </sheet>
</drawing>