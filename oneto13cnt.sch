<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_35" />
        <signal name="CLK" />
        <signal name="Q0" />
        <signal name="Q1" />
        <signal name="Q2" />
        <signal name="Q3" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Q0" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
        <port polarity="Output" name="Q3" />
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="add4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="112" y1="-832" y2="-804" x1="112" />
            <line x2="112" y1="-832" y2="-832" x1="64" />
            <line x2="64" y1="-832" y2="-832" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-352" y2="-352" x1="448" />
            <line x2="384" y1="-416" y2="-416" x1="448" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="384" y1="-544" y2="-544" x1="448" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-736" y2="-816" x1="384" />
            <line x2="384" y1="-160" y2="-736" x1="384" />
            <line x2="384" y1="-80" y2="-160" x1="64" />
            <line x2="64" y1="-416" y2="-80" x1="64" />
            <line x2="64" y1="-448" y2="-416" x1="144" />
            <line x2="144" y1="-480" y2="-448" x1="64" />
            <line x2="64" y1="-816" y2="-480" x1="64" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <block symbolname="cb4ce" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_10" name="CE" />
            <blockpin signalname="XLXN_30" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_11" name="Q0" />
            <blockpin signalname="XLXN_31" name="Q1" />
            <blockpin signalname="XLXN_13" name="Q2" />
            <blockpin signalname="XLXN_14" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="add4" name="XLXI_18">
            <blockpin signalname="XLXN_11" name="A0" />
            <blockpin signalname="XLXN_31" name="A1" />
            <blockpin signalname="XLXN_13" name="A2" />
            <blockpin signalname="XLXN_14" name="A3" />
            <blockpin signalname="XLXN_35" name="B0" />
            <blockpin name="B1" />
            <blockpin name="B2" />
            <blockpin name="B3" />
            <blockpin name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="Q0" name="S0" />
            <blockpin signalname="Q1" name="S1" />
            <blockpin signalname="Q2" name="S2" />
            <blockpin signalname="Q3" name="S3" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="XLXN_35" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="160" y="608" name="XLXI_2" orien="R0" />
        <instance x="64" y="384" name="XLXI_11" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="128" y1="384" y2="416" x1="128" />
            <wire x2="160" y1="416" y2="416" x1="128" />
        </branch>
        <instance x="544" y="464" name="XLXI_16" orien="R90" />
        <branch name="XLXN_11">
            <wire x2="736" y1="160" y2="160" x1="544" />
            <wire x2="736" y1="160" y2="464" x1="736" />
            <wire x2="928" y1="160" y2="160" x1="736" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="672" y1="288" y2="288" x1="544" />
            <wire x2="672" y1="288" y2="464" x1="672" />
            <wire x2="928" y1="288" y2="288" x1="672" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="608" y1="352" y2="352" x1="544" />
            <wire x2="608" y1="352" y2="464" x1="608" />
            <wire x2="928" y1="352" y2="352" x1="608" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="160" y1="576" y2="736" x1="160" />
            <wire x2="672" y1="736" y2="736" x1="160" />
            <wire x2="672" y1="720" y2="736" x1="672" />
        </branch>
        <instance x="928" y="864" name="XLXI_18" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="928" y1="224" y2="224" x1="544" />
        </branch>
        <instance x="800" y="464" name="XLXI_20" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="864" y1="464" y2="480" x1="864" />
            <wire x2="928" y1="480" y2="480" x1="864" />
        </branch>
        <branch name="CLK">
            <wire x2="160" y1="480" y2="480" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="480" name="CLK" orien="R180" />
        <branch name="Q0">
            <wire x2="1408" y1="320" y2="320" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="320" name="Q0" orien="R0" />
        <branch name="Q1">
            <wire x2="1408" y1="384" y2="384" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="384" name="Q1" orien="R0" />
        <branch name="Q2">
            <wire x2="1408" y1="448" y2="448" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="448" name="Q2" orien="R0" />
        <branch name="Q3">
            <wire x2="1408" y1="512" y2="512" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="512" name="Q3" orien="R0" />
    </sheet>
</drawing>