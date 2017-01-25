<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK" />
        <signal name="Q0" />
        <signal name="Q1" />
        <signal name="Q2" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="ENB0" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_44" />
        <signal name="ENB1" />
        <signal name="ENB2" />
        <signal name="ENB3" />
        <signal name="ENB4" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Q0" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
        <port polarity="Output" name="ENB0" />
        <port polarity="Output" name="ENB1" />
        <port polarity="Output" name="ENB2" />
        <port polarity="Output" name="ENB3" />
        <port polarity="Output" name="ENB4" />
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
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <block symbolname="cb4ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="XLXN_8" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="Q0" name="Q0" />
            <blockpin signalname="Q1" name="Q1" />
            <blockpin signalname="Q2" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="Q0" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="d3_8e" name="XLXI_6">
            <blockpin signalname="Q0" name="A0" />
            <blockpin signalname="Q1" name="A1" />
            <blockpin signalname="Q2" name="A2" />
            <blockpin signalname="XLXN_44" name="E" />
            <blockpin signalname="ENB0" name="D0" />
            <blockpin signalname="ENB1" name="D1" />
            <blockpin signalname="ENB2" name="D2" />
            <blockpin signalname="ENB3" name="D3" />
            <blockpin signalname="ENB4" name="D4" />
            <blockpin name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="XLXN_44" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="448" y="752" name="XLXI_1" orien="R0" />
        <instance x="336" y="512" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="400" y1="512" y2="560" x1="400" />
            <wire x2="448" y1="560" y2="560" x1="400" />
        </branch>
        <branch name="CLK">
            <wire x2="448" y1="624" y2="624" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="624" name="CLK" orien="R180" />
        <instance x="1072" y="720" name="XLXI_4" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="448" y1="720" y2="800" x1="448" />
            <wire x2="1408" y1="800" y2="800" x1="448" />
            <wire x2="1408" y1="624" y2="624" x1="1328" />
            <wire x2="1408" y1="624" y2="800" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="2640" y="304" name="Q0" orien="R0" />
        <iomarker fontsize="28" x="2640" y="368" name="Q1" orien="R0" />
        <iomarker fontsize="28" x="2640" y="432" name="Q2" orien="R0" />
        <instance x="1952" y="1248" name="XLXI_6" orien="R0" />
        <branch name="Q2">
            <wire x2="1040" y1="432" y2="432" x1="832" />
            <wire x2="1040" y1="432" y2="592" x1="1040" />
            <wire x2="1072" y1="592" y2="592" x1="1040" />
            <wire x2="1488" y1="432" y2="432" x1="1040" />
            <wire x2="2640" y1="432" y2="432" x1="1488" />
            <wire x2="1488" y1="432" y2="800" x1="1488" />
            <wire x2="1952" y1="800" y2="800" x1="1488" />
        </branch>
        <branch name="Q1">
            <wire x2="1520" y1="368" y2="368" x1="832" />
            <wire x2="2640" y1="368" y2="368" x1="1520" />
            <wire x2="1520" y1="368" y2="736" x1="1520" />
            <wire x2="1952" y1="736" y2="736" x1="1520" />
        </branch>
        <branch name="Q0">
            <wire x2="976" y1="304" y2="304" x1="832" />
            <wire x2="976" y1="304" y2="656" x1="976" />
            <wire x2="1072" y1="656" y2="656" x1="976" />
            <wire x2="1552" y1="304" y2="304" x1="976" />
            <wire x2="1552" y1="304" y2="672" x1="1552" />
            <wire x2="1952" y1="672" y2="672" x1="1552" />
            <wire x2="2640" y1="304" y2="304" x1="1552" />
        </branch>
        <instance x="1824" y="1088" name="XLXI_19" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1888" y1="1088" y2="1120" x1="1888" />
            <wire x2="1952" y1="1120" y2="1120" x1="1888" />
        </branch>
        <branch name="ENB0">
            <wire x2="2496" y1="672" y2="672" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="672" name="ENB0" orien="R0" />
        <branch name="ENB1">
            <wire x2="2496" y1="736" y2="736" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="736" name="ENB1" orien="R0" />
        <branch name="ENB2">
            <wire x2="2496" y1="800" y2="800" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="800" name="ENB2" orien="R0" />
        <branch name="ENB3">
            <wire x2="2496" y1="864" y2="864" x1="2336" />
        </branch>
        <branch name="ENB4">
            <wire x2="2496" y1="928" y2="928" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="928" name="ENB4" orien="R0" />
        <iomarker fontsize="28" x="2496" y="864" name="ENB3" orien="R0" />
    </sheet>
</drawing>