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
        <signal name="XLXN_8" />
        <signal name="Q2" />
        <signal name="Q0" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="ENB0" />
        <signal name="XLXN_22" />
        <signal name="XLXN_31" />
        <signal name="ENB1" />
        <signal name="Q3_2" />
        <signal name="Q3_1" />
        <signal name="Q3_0" />
        <signal name="Q2_2" />
        <signal name="Q2_1" />
        <signal name="Q2_0" />
        <signal name="Q1_2" />
        <signal name="Q1_1" />
        <signal name="Q1_0" />
        <signal name="XLXN_79" />
        <signal name="ENB1_0" />
        <signal name="ENB1_1" />
        <signal name="ENB1_2" />
        <signal name="ENB1_3" />
        <signal name="ENB1_4" />
        <signal name="ENB2_0" />
        <signal name="ENB2_1" />
        <signal name="ENB2_2" />
        <signal name="ENB2_3" />
        <signal name="ENB2_4" />
        <signal name="ENB3_0" />
        <signal name="ENB3_1" />
        <signal name="ENB3_2" />
        <signal name="ENB3_3" />
        <signal name="ENB3_4" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_103" />
        <signal name="XLXN_97" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="ENB0" />
        <port polarity="Output" name="ENB1" />
        <port polarity="Output" name="Q3_2" />
        <port polarity="Output" name="Q3_1" />
        <port polarity="Output" name="Q3_0" />
        <port polarity="Output" name="Q2_2" />
        <port polarity="Output" name="Q2_1" />
        <port polarity="Output" name="Q2_0" />
        <port polarity="Output" name="Q1_2" />
        <port polarity="Output" name="Q1_1" />
        <port polarity="Output" name="Q1_0" />
        <port polarity="Output" name="ENB1_0" />
        <port polarity="Output" name="ENB1_1" />
        <port polarity="Output" name="ENB1_2" />
        <port polarity="Output" name="ENB1_3" />
        <port polarity="Output" name="ENB1_4" />
        <port polarity="Output" name="ENB2_0" />
        <port polarity="Output" name="ENB2_1" />
        <port polarity="Output" name="ENB2_2" />
        <port polarity="Output" name="ENB2_3" />
        <port polarity="Output" name="ENB2_4" />
        <port polarity="Output" name="ENB3_0" />
        <port polarity="Output" name="ENB3_1" />
        <port polarity="Output" name="ENB3_2" />
        <port polarity="Output" name="ENB3_3" />
        <port polarity="Output" name="ENB3_4" />
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
            <blockpin signalname="XLXN_13" name="Q1" />
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
        <block symbolname="cb2ce" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="C" />
            <blockpin signalname="XLXN_9" name="CE" />
            <blockpin signalname="XLXN_12" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="ENB0" name="Q0" />
            <blockpin signalname="ENB1" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_9" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="ENB1" name="I0" />
            <blockpin signalname="ENB0" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="ENB0" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="ENB1" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="ENB1" name="I" />
            <blockpin signalname="XLXN_118" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="ENB0" name="I" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="Q0" name="I2" />
            <blockpin signalname="Q1_0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Q1_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_15">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="Q1_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="ENB0" name="I1" />
            <blockpin signalname="Q0" name="I2" />
            <blockpin signalname="Q2_0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="ENB0" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Q2_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="ENB0" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="Q2_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="ENB1" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="Q0" name="I2" />
            <blockpin signalname="Q3_0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="ENB1" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Q3_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_21">
            <blockpin signalname="ENB1" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="Q3_2" name="O" />
        </block>
        <block symbolname="d3_8e" name="XLXI_22">
            <blockpin signalname="Q1_0" name="A0" />
            <blockpin signalname="Q1_1" name="A1" />
            <blockpin signalname="Q1_2" name="A2" />
            <blockpin signalname="XLXN_79" name="E" />
            <blockpin signalname="ENB1_0" name="D0" />
            <blockpin signalname="ENB1_1" name="D1" />
            <blockpin signalname="ENB1_2" name="D2" />
            <blockpin signalname="ENB1_3" name="D3" />
            <blockpin signalname="ENB1_4" name="D4" />
            <blockpin name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="d3_8e" name="XLXI_23">
            <blockpin signalname="Q2_0" name="A0" />
            <blockpin signalname="Q2_1" name="A1" />
            <blockpin signalname="Q2_2" name="A2" />
            <blockpin signalname="XLXN_97" name="E" />
            <blockpin signalname="ENB2_0" name="D0" />
            <blockpin signalname="ENB2_1" name="D1" />
            <blockpin signalname="ENB2_2" name="D2" />
            <blockpin signalname="ENB2_3" name="D3" />
            <blockpin signalname="ENB2_4" name="D4" />
            <blockpin name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="d3_8e" name="XLXI_24">
            <blockpin signalname="Q3_0" name="A0" />
            <blockpin signalname="Q3_1" name="A1" />
            <blockpin signalname="Q3_2" name="A2" />
            <blockpin signalname="XLXN_98" name="E" />
            <blockpin signalname="ENB3_0" name="D0" />
            <blockpin signalname="ENB3_1" name="D1" />
            <blockpin signalname="ENB3_2" name="D2" />
            <blockpin signalname="ENB3_3" name="D3" />
            <blockpin signalname="ENB3_4" name="D4" />
            <blockpin name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="ENB0" name="I1" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_41">
            <blockpin signalname="ENB1" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="XLXN_1">
            <wire x2="464" y1="672" y2="720" x1="464" />
            <wire x2="512" y1="720" y2="720" x1="464" />
        </branch>
        <branch name="CLK">
            <wire x2="512" y1="784" y2="784" x1="480" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="240" y1="960" y2="1584" x1="240" />
            <wire x2="512" y1="1584" y2="1584" x1="240" />
            <wire x2="512" y1="960" y2="960" x1="240" />
            <wire x2="1472" y1="960" y2="960" x1="512" />
            <wire x2="512" y1="880" y2="960" x1="512" />
            <wire x2="1472" y1="784" y2="784" x1="1392" />
            <wire x2="1472" y1="784" y2="960" x1="1472" />
        </branch>
        <branch name="Q2">
            <wire x2="1104" y1="592" y2="592" x1="896" />
            <wire x2="1104" y1="592" y2="752" x1="1104" />
            <wire x2="1136" y1="752" y2="752" x1="1104" />
            <wire x2="2208" y1="592" y2="592" x1="1104" />
            <wire x2="2208" y1="592" y2="640" x1="2208" />
            <wire x2="2624" y1="640" y2="640" x1="2208" />
            <wire x2="2208" y1="640" y2="1248" x1="2208" />
            <wire x2="2624" y1="1248" y2="1248" x1="2208" />
            <wire x2="2208" y1="1248" y2="1872" x1="2208" />
            <wire x2="2624" y1="1872" y2="1872" x1="2208" />
        </branch>
        <instance x="512" y="912" name="XLXI_1" orien="R0" />
        <instance x="400" y="672" name="XLXI_2" orien="R0" />
        <instance x="1136" y="880" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="480" y="784" name="CLK" orien="R180" />
        <instance x="512" y="1712" name="XLXI_5" orien="R0" />
        <instance x="416" y="1456" name="XLXI_6" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="480" y1="1456" y2="1520" x1="480" />
            <wire x2="512" y1="1520" y2="1520" x1="480" />
        </branch>
        <instance x="1136" y="1680" name="XLXI_7" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="512" y1="1680" y2="1744" x1="512" />
            <wire x2="1392" y1="1744" y2="1744" x1="512" />
            <wire x2="1392" y1="1584" y2="1744" x1="1392" />
        </branch>
        <instance x="1728" y="784" name="XLXI_8" orien="R0" />
        <instance x="1728" y="864" name="XLXI_9" orien="R0" />
        <instance x="1728" y="1040" name="XLXI_10" orien="R0" />
        <instance x="1728" y="1168" name="XLXI_11" orien="R0" />
        <instance x="2624" y="464" name="XLXI_13" orien="R0" />
        <instance x="2624" y="640" name="XLXI_14" orien="R0" />
        <instance x="2624" y="832" name="XLXI_15" orien="R0" />
        <instance x="2624" y="1072" name="XLXI_16" orien="R0" />
        <instance x="2624" y="1248" name="XLXI_17" orien="R0" />
        <instance x="2624" y="1440" name="XLXI_18" orien="R0" />
        <instance x="2624" y="1696" name="XLXI_19" orien="R0" />
        <instance x="2624" y="1872" name="XLXI_20" orien="R0" />
        <instance x="2624" y="2064" name="XLXI_21" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2400" y1="752" y2="752" x1="1952" />
            <wire x2="2448" y1="752" y2="752" x1="2400" />
            <wire x2="2528" y1="752" y2="752" x1="2448" />
            <wire x2="2528" y1="752" y2="816" x1="2528" />
            <wire x2="3392" y1="816" y2="816" x1="2528" />
            <wire x2="2624" y1="336" y2="336" x1="2400" />
            <wire x2="2400" y1="336" y2="752" x1="2400" />
            <wire x2="2448" y1="512" y2="752" x1="2448" />
            <wire x2="2624" y1="512" y2="512" x1="2448" />
            <wire x2="2528" y1="704" y2="752" x1="2528" />
            <wire x2="2624" y1="704" y2="704" x1="2528" />
            <wire x2="3392" y1="672" y2="816" x1="3392" />
            <wire x2="3424" y1="672" y2="672" x1="3392" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2416" y1="832" y2="832" x1="1952" />
            <wire x2="2464" y1="832" y2="832" x1="2416" />
            <wire x2="2624" y1="832" y2="832" x1="2464" />
            <wire x2="3328" y1="832" y2="832" x1="2624" />
            <wire x2="2624" y1="400" y2="400" x1="2416" />
            <wire x2="2416" y1="400" y2="832" x1="2416" />
            <wire x2="2464" y1="576" y2="832" x1="2464" />
            <wire x2="2624" y1="576" y2="576" x1="2464" />
            <wire x2="2624" y1="768" y2="832" x1="2624" />
            <wire x2="3328" y1="736" y2="832" x1="3328" />
            <wire x2="3424" y1="736" y2="736" x1="3328" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2176" y1="528" y2="528" x1="896" />
            <wire x2="2176" y1="528" y2="1056" x1="2176" />
            <wire x2="2624" y1="1056" y2="1056" x1="2176" />
            <wire x2="2176" y1="1056" y2="1680" x1="2176" />
            <wire x2="2624" y1="1680" y2="1680" x1="2176" />
            <wire x2="2176" y1="448" y2="528" x1="2176" />
            <wire x2="2624" y1="448" y2="448" x1="2176" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2080" y1="1136" y2="1136" x1="1952" />
            <wire x2="2432" y1="1136" y2="1136" x1="2080" />
            <wire x2="2432" y1="1136" y2="1568" x1="2432" />
            <wire x2="2624" y1="1568" y2="1568" x1="2432" />
            <wire x2="2432" y1="1568" y2="1744" x1="2432" />
            <wire x2="2624" y1="1744" y2="1744" x1="2432" />
            <wire x2="2432" y1="1744" y2="1936" x1="2432" />
            <wire x2="2624" y1="1936" y2="1936" x1="2432" />
            <wire x2="2080" y1="1024" y2="1136" x1="2080" />
            <wire x2="2944" y1="1024" y2="1024" x1="2080" />
            <wire x2="2944" y1="1024" y2="1984" x1="2944" />
            <wire x2="3392" y1="1984" y2="1984" x1="2944" />
        </branch>
        <instance x="3744" y="832" name="XLXI_22" orien="R0" />
        <instance x="3744" y="1488" name="XLXI_23" orien="R0" />
        <instance x="3744" y="2144" name="XLXI_24" orien="R0" />
        <branch name="Q3_2">
            <wire x2="3040" y1="1936" y2="1936" x1="2880" />
            <wire x2="3200" y1="1936" y2="1936" x1="3040" />
            <wire x2="3040" y1="1696" y2="1936" x1="3040" />
            <wire x2="3744" y1="1696" y2="1696" x1="3040" />
        </branch>
        <branch name="Q3_1">
            <wire x2="3024" y1="1744" y2="1744" x1="2880" />
            <wire x2="3200" y1="1744" y2="1744" x1="3024" />
            <wire x2="3744" y1="1632" y2="1632" x1="3024" />
            <wire x2="3024" y1="1632" y2="1744" x1="3024" />
        </branch>
        <branch name="Q3_0">
            <wire x2="3008" y1="1568" y2="1568" x1="2880" />
            <wire x2="3200" y1="1568" y2="1568" x1="3008" />
            <wire x2="3008" y1="1568" y2="1664" x1="3008" />
            <wire x2="3424" y1="1664" y2="1664" x1="3008" />
            <wire x2="3424" y1="1568" y2="1664" x1="3424" />
            <wire x2="3744" y1="1568" y2="1568" x1="3424" />
        </branch>
        <branch name="Q2_2">
            <wire x2="3008" y1="1312" y2="1312" x1="2880" />
            <wire x2="3200" y1="1312" y2="1312" x1="3008" />
            <wire x2="3008" y1="1200" y2="1312" x1="3008" />
            <wire x2="3520" y1="1200" y2="1200" x1="3008" />
            <wire x2="3520" y1="1040" y2="1200" x1="3520" />
            <wire x2="3744" y1="1040" y2="1040" x1="3520" />
        </branch>
        <branch name="Q2_1">
            <wire x2="3008" y1="1120" y2="1120" x1="2880" />
            <wire x2="3200" y1="1120" y2="1120" x1="3008" />
            <wire x2="3008" y1="1056" y2="1120" x1="3008" />
            <wire x2="3440" y1="1056" y2="1056" x1="3008" />
            <wire x2="3440" y1="976" y2="1056" x1="3440" />
            <wire x2="3744" y1="976" y2="976" x1="3440" />
        </branch>
        <branch name="Q2_0">
            <wire x2="3008" y1="944" y2="944" x1="2880" />
            <wire x2="3200" y1="944" y2="944" x1="3008" />
            <wire x2="3008" y1="944" y2="1040" x1="3008" />
            <wire x2="3424" y1="1040" y2="1040" x1="3008" />
            <wire x2="3424" y1="912" y2="1040" x1="3424" />
            <wire x2="3744" y1="912" y2="912" x1="3424" />
        </branch>
        <branch name="Q1_2">
            <wire x2="3024" y1="704" y2="704" x1="2880" />
            <wire x2="3200" y1="704" y2="704" x1="3024" />
            <wire x2="3744" y1="384" y2="384" x1="3024" />
            <wire x2="3024" y1="384" y2="704" x1="3024" />
        </branch>
        <branch name="Q1_1">
            <wire x2="3008" y1="512" y2="512" x1="2880" />
            <wire x2="3200" y1="512" y2="512" x1="3008" />
            <wire x2="3008" y1="416" y2="512" x1="3008" />
            <wire x2="3440" y1="416" y2="416" x1="3008" />
            <wire x2="3440" y1="320" y2="416" x1="3440" />
            <wire x2="3744" y1="320" y2="320" x1="3440" />
        </branch>
        <branch name="Q1_0">
            <wire x2="3008" y1="336" y2="336" x1="2880" />
            <wire x2="3200" y1="336" y2="336" x1="3008" />
            <wire x2="3744" y1="256" y2="256" x1="3008" />
            <wire x2="3008" y1="256" y2="336" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1936" name="Q3_2" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1744" name="Q3_1" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1568" name="Q3_0" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1312" name="Q2_2" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1120" name="Q2_1" orien="R0" />
        <iomarker fontsize="28" x="3200" y="944" name="Q2_0" orien="R0" />
        <iomarker fontsize="28" x="3200" y="704" name="Q1_2" orien="R0" />
        <iomarker fontsize="28" x="3200" y="512" name="Q1_1" orien="R0" />
        <iomarker fontsize="28" x="3200" y="336" name="Q1_0" orien="R0" />
        <branch name="ENB1_0">
            <wire x2="4160" y1="256" y2="256" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="256" name="ENB1_0" orien="R0" />
        <branch name="ENB1_1">
            <wire x2="4160" y1="320" y2="320" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="320" name="ENB1_1" orien="R0" />
        <branch name="ENB1_2">
            <wire x2="4160" y1="384" y2="384" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="384" name="ENB1_2" orien="R0" />
        <branch name="ENB1_3">
            <wire x2="4160" y1="448" y2="448" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="448" name="ENB1_3" orien="R0" />
        <branch name="ENB1_4">
            <wire x2="4160" y1="512" y2="512" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="512" name="ENB1_4" orien="R0" />
        <branch name="ENB2_0">
            <wire x2="4160" y1="912" y2="912" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="912" name="ENB2_0" orien="R0" />
        <branch name="ENB2_1">
            <wire x2="4160" y1="976" y2="976" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="976" name="ENB2_1" orien="R0" />
        <branch name="ENB2_2">
            <wire x2="4160" y1="1040" y2="1040" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1040" name="ENB2_2" orien="R0" />
        <branch name="ENB2_3">
            <wire x2="4160" y1="1104" y2="1104" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1104" name="ENB2_3" orien="R0" />
        <branch name="ENB2_4">
            <wire x2="4160" y1="1168" y2="1168" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1168" name="ENB2_4" orien="R0" />
        <branch name="ENB3_0">
            <wire x2="4160" y1="1568" y2="1568" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1568" name="ENB3_0" orien="R0" />
        <branch name="ENB3_1">
            <wire x2="4160" y1="1632" y2="1632" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1632" name="ENB3_1" orien="R0" />
        <branch name="ENB3_2">
            <wire x2="4160" y1="1696" y2="1696" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1696" name="ENB3_2" orien="R0" />
        <branch name="ENB3_3">
            <wire x2="4160" y1="1760" y2="1760" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1760" name="ENB3_3" orien="R0" />
        <branch name="ENB3_4">
            <wire x2="4160" y1="1824" y2="1824" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="1824" name="ENB3_4" orien="R0" />
        <branch name="ENB0">
            <wire x2="1072" y1="1392" y2="1392" x1="896" />
            <wire x2="1072" y1="1392" y2="1552" x1="1072" />
            <wire x2="1136" y1="1552" y2="1552" x1="1072" />
            <wire x2="1616" y1="1392" y2="1392" x1="1072" />
            <wire x2="1616" y1="1392" y2="1904" x1="1616" />
            <wire x2="1888" y1="1904" y2="1904" x1="1616" />
            <wire x2="1728" y1="752" y2="752" x1="1616" />
            <wire x2="1616" y1="752" y2="928" x1="1616" />
            <wire x2="1952" y1="928" y2="928" x1="1616" />
            <wire x2="1952" y1="928" y2="944" x1="1952" />
            <wire x2="2064" y1="944" y2="944" x1="1952" />
            <wire x2="2080" y1="944" y2="944" x1="2064" />
            <wire x2="2464" y1="944" y2="944" x1="2080" />
            <wire x2="2464" y1="944" y2="1120" x1="2464" />
            <wire x2="2624" y1="1120" y2="1120" x1="2464" />
            <wire x2="2464" y1="1120" y2="1312" x1="2464" />
            <wire x2="2624" y1="1312" y2="1312" x1="2464" />
            <wire x2="2512" y1="944" y2="944" x1="2464" />
            <wire x2="2624" y1="944" y2="944" x1="2512" />
            <wire x2="1616" y1="928" y2="1136" x1="1616" />
            <wire x2="1728" y1="1136" y2="1136" x1="1616" />
            <wire x2="1616" y1="1136" y2="1392" x1="1616" />
            <wire x2="2064" y1="848" y2="944" x1="2064" />
            <wire x2="3360" y1="848" y2="848" x1="2064" />
            <wire x2="3360" y1="848" y2="1328" x1="3360" />
            <wire x2="3376" y1="1328" y2="1328" x1="3360" />
        </branch>
        <branch name="ENB1">
            <wire x2="1024" y1="1456" y2="1456" x1="896" />
            <wire x2="1024" y1="1456" y2="1616" x1="1024" />
            <wire x2="1136" y1="1616" y2="1616" x1="1024" />
            <wire x2="1648" y1="1456" y2="1456" x1="1024" />
            <wire x2="1648" y1="1456" y2="2048" x1="1648" />
            <wire x2="1888" y1="2048" y2="2048" x1="1648" />
            <wire x2="1728" y1="832" y2="832" x1="1648" />
            <wire x2="1648" y1="832" y2="1008" x1="1648" />
            <wire x2="1728" y1="1008" y2="1008" x1="1648" />
            <wire x2="1648" y1="1008" y2="1200" x1="1648" />
            <wire x2="1648" y1="1200" y2="1456" x1="1648" />
            <wire x2="2112" y1="1200" y2="1200" x1="1648" />
            <wire x2="2400" y1="1200" y2="1200" x1="2112" />
            <wire x2="2400" y1="1200" y2="1632" x1="2400" />
            <wire x2="2624" y1="1632" y2="1632" x1="2400" />
            <wire x2="2400" y1="1632" y2="1808" x1="2400" />
            <wire x2="2624" y1="1808" y2="1808" x1="2400" />
            <wire x2="2400" y1="1808" y2="2000" x1="2400" />
            <wire x2="2624" y1="2000" y2="2000" x1="2400" />
            <wire x2="2112" y1="1200" y2="2048" x1="2112" />
            <wire x2="3392" y1="2048" y2="2048" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="1888" y="1904" name="ENB0" orien="R0" />
        <iomarker fontsize="28" x="1888" y="2048" name="ENB1" orien="R0" />
        <branch name="Q0">
            <wire x2="1040" y1="464" y2="464" x1="896" />
            <wire x2="2144" y1="464" y2="464" x1="1040" />
            <wire x2="2144" y1="464" y2="880" x1="2144" />
            <wire x2="2624" y1="880" y2="880" x1="2144" />
            <wire x2="2144" y1="880" y2="1504" x1="2144" />
            <wire x2="2624" y1="1504" y2="1504" x1="2144" />
            <wire x2="1040" y1="464" y2="816" x1="1040" />
            <wire x2="1136" y1="816" y2="816" x1="1040" />
            <wire x2="2624" y1="272" y2="272" x1="2144" />
            <wire x2="2144" y1="272" y2="464" x1="2144" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="3744" y1="704" y2="704" x1="3680" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="3744" y1="1360" y2="1360" x1="3632" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="3744" y1="2016" y2="2016" x1="3648" />
        </branch>
        <instance x="3424" y="800" name="XLXI_39" orien="R0" />
        <instance x="3376" y="1456" name="XLXI_40" orien="R0" />
        <instance x="3392" y="2112" name="XLXI_41" orien="R0" />
        <branch name="XLXN_118">
            <wire x2="2064" y1="1008" y2="1008" x1="1952" />
            <wire x2="2496" y1="1008" y2="1008" x1="2064" />
            <wire x2="2624" y1="1008" y2="1008" x1="2496" />
            <wire x2="2496" y1="1008" y2="1184" x1="2496" />
            <wire x2="2624" y1="1184" y2="1184" x1="2496" />
            <wire x2="2496" y1="1184" y2="1376" x1="2496" />
            <wire x2="2624" y1="1376" y2="1376" x1="2496" />
            <wire x2="2064" y1="1008" y2="1392" x1="2064" />
            <wire x2="3376" y1="1392" y2="1392" x1="2064" />
        </branch>
    </sheet>
</drawing>