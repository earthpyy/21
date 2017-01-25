<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="DIN" />
        <signal name="CLK" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="DOUT" />
        <port polarity="Input" name="DIN" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="DOUT" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="DIN" name="D" />
            <blockpin signalname="XLXN_7" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="XLXN_8" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
        <block symbolname="and3b1" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="DOUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="736" name="XLXI_2" orien="R0" />
        <instance x="1664" y="736" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="352" y="608" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="352" y="480" name="DIN" orien="R180" />
        <branch name="CLK">
            <wire x2="400" y1="608" y2="608" x1="352" />
            <wire x2="512" y1="608" y2="608" x1="400" />
            <wire x2="400" y1="608" y2="816" x1="400" />
            <wire x2="960" y1="816" y2="816" x1="400" />
            <wire x2="1536" y1="816" y2="816" x1="960" />
            <wire x2="1088" y1="608" y2="608" x1="960" />
            <wire x2="960" y1="608" y2="816" x1="960" />
            <wire x2="1536" y1="608" y2="816" x1="1536" />
            <wire x2="1664" y1="608" y2="608" x1="1536" />
        </branch>
        <branch name="DIN">
            <wire x2="368" y1="480" y2="480" x1="352" />
            <wire x2="496" y1="480" y2="480" x1="368" />
            <wire x2="512" y1="480" y2="480" x1="496" />
        </branch>
        <instance x="512" y="736" name="XLXI_1" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="960" y1="480" y2="480" x1="896" />
            <wire x2="1088" y1="480" y2="480" x1="960" />
            <wire x2="2176" y1="112" y2="112" x1="960" />
            <wire x2="960" y1="112" y2="480" x1="960" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1520" y1="480" y2="480" x1="1472" />
            <wire x2="1664" y1="480" y2="480" x1="1520" />
            <wire x2="2176" y1="176" y2="176" x1="1520" />
            <wire x2="1520" y1="176" y2="480" x1="1520" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2176" y1="480" y2="480" x1="2048" />
            <wire x2="2176" y1="240" y2="480" x1="2176" />
        </branch>
        <branch name="DOUT">
            <wire x2="2464" y1="176" y2="176" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2464" y="176" name="DOUT" orien="R0" />
        <instance x="2176" y="304" name="XLXI_5" orien="R0" />
    </sheet>
</drawing>