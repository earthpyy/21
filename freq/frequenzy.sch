<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="CLK" />
        <signal name="XLXN_10" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_21(4)" />
        <signal name="XLXN_21(3)" />
        <signal name="XLXN_21(2)" />
        <signal name="XLXN_21(1)" />
        <signal name="XLXN_21(0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_34(4)" />
        <signal name="XLXN_34(3)" />
        <signal name="XLXN_34(2)" />
        <signal name="XLXN_34(1)" />
        <signal name="XLXN_34(0)" />
        <signal name="XLXN_45" />
        <signal name="HZ625" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_47(2)" />
        <signal name="XLXN_47(1)" />
        <signal name="XLXN_47(0)" />
        <signal name="XLXN_47(3)" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="HZ1250" />
        <signal name="HZ1" />
        <signal name="XLXN_47(4)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="HZ625" />
        <port polarity="Output" name="HZ1250" />
        <port polarity="Output" name="HZ1" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="cb8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="cd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="and6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="144" y1="-272" y2="-272" x1="64" />
            <line x2="64" y1="-176" y2="-176" x1="144" />
            <arc ex="144" ey="-272" sx="144" sy="-176" r="48" cx="144" cy="-224" />
            <line x2="64" y1="-64" y2="-384" x1="64" />
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
        <block symbolname="cb2ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_66" name="CE" />
            <blockpin signalname="XLXN_10" name="CLR" />
            <blockpin signalname="XLXN_6" name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_10" name="G" />
        </block>
        <block symbolname="cb8re" name="XLXI_5">
            <blockpin signalname="XLXN_20" name="C" />
            <blockpin signalname="XLXN_65" name="CE" />
            <blockpin signalname="XLXN_22" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_21(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_21(2)" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_21(1)" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_21(0)" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_9">
            <blockpin signalname="XLXN_21(4)" name="I0" />
            <blockpin signalname="XLXN_21(3)" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="XLXN_16" name="I4" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_13">
            <blockpin signalname="XLXN_22" name="C" />
            <blockpin signalname="XLXN_62" name="CE" />
            <blockpin signalname="XLXN_63" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="HZ1250" name="Q0" />
            <blockpin signalname="HZ625" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb8re" name="XLXI_14">
            <blockpin signalname="HZ625" name="C" />
            <blockpin signalname="XLXN_61" name="CE" />
            <blockpin signalname="XLXN_45" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_34(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb8re" name="XLXI_15">
            <blockpin signalname="HZ625" name="C" />
            <blockpin signalname="XLXN_45" name="CE" />
            <blockpin signalname="XLXN_60" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_47(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_16">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_6" name="CE" />
            <blockpin signalname="XLXN_10" name="CLR" />
            <blockpin signalname="XLXN_7" name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_17">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="XLXN_10" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin signalname="XLXN_20" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and5" name="XLXI_18">
            <blockpin signalname="XLXN_34(4)" name="I0" />
            <blockpin signalname="XLXN_34(3)" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_36" name="I3" />
            <blockpin signalname="XLXN_37" name="I4" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_34(2)" name="I" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="XLXN_34(1)" name="I" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_34(0)" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and6" name="XLXI_22">
            <blockpin signalname="XLXN_47(4)" name="I0" />
            <blockpin signalname="XLXN_47(3)" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_49" name="I3" />
            <blockpin signalname="XLXN_50" name="I4" />
            <blockpin signalname="XLXN_45" name="I5" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_47(2)" name="I" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_47(1)" name="I" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="XLXN_47(0)" name="I" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_26">
            <blockpin signalname="XLXN_62" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_27">
            <blockpin signalname="XLXN_61" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="XLXN_63" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="XLXN_47(4)" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="HZ1" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_30">
            <blockpin signalname="XLXN_66" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_31">
            <blockpin signalname="XLXN_65" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_6">
            <wire x2="1248" y1="800" y2="800" x1="992" />
            <wire x2="1264" y1="768" y2="768" x1="1248" />
            <wire x2="1248" y1="768" y2="800" x1="1248" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1904" y1="768" y2="768" x1="1648" />
        </branch>
        <branch name="CLK">
            <wire x2="544" y1="864" y2="864" x1="384" />
            <wire x2="608" y1="864" y2="864" x1="544" />
            <wire x2="1040" y1="400" y2="400" x1="544" />
            <wire x2="1712" y1="400" y2="400" x1="1040" />
            <wire x2="1712" y1="400" y2="832" x1="1712" />
            <wire x2="1904" y1="832" y2="832" x1="1712" />
            <wire x2="1040" y1="400" y2="832" x1="1040" />
            <wire x2="1264" y1="832" y2="832" x1="1040" />
            <wire x2="544" y1="400" y2="864" x1="544" />
        </branch>
        <instance x="528" y="1328" name="XLXI_4" orien="R0" />
        <instance x="608" y="992" name="XLXI_1" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="608" y1="960" y2="960" x1="592" />
            <wire x2="592" y1="960" y2="1088" x1="592" />
            <wire x2="592" y1="1088" y2="1200" x1="592" />
            <wire x2="1264" y1="1088" y2="1088" x1="592" />
            <wire x2="1904" y1="1088" y2="1088" x1="1264" />
            <wire x2="1264" y1="928" y2="1088" x1="1264" />
            <wire x2="1904" y1="928" y2="1088" x1="1904" />
        </branch>
        <instance x="2528" y="720" name="XLXI_5" orien="R0" />
        <instance x="3056" y="1120" name="XLXI_8" orien="R180" />
        <branch name="XLXN_16">
            <wire x2="2832" y1="1152" y2="1152" x1="2800" />
        </branch>
        <instance x="2800" y="832" name="XLXI_9" orien="R180" />
        <branch name="XLXN_17">
            <wire x2="2832" y1="1088" y2="1088" x1="2800" />
        </branch>
        <instance x="3056" y="1056" name="XLXI_7" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="2832" y1="1024" y2="1024" x1="2800" />
        </branch>
        <instance x="3056" y="992" name="XLXI_6" orien="R180" />
        <branch name="XLXN_20">
            <wire x2="2400" y1="704" y2="704" x1="2288" />
            <wire x2="2400" y1="592" y2="704" x1="2400" />
            <wire x2="2528" y1="592" y2="592" x1="2400" />
        </branch>
        <branch name="XLXN_21(7:0)">
            <wire x2="3200" y1="464" y2="464" x1="2912" />
            <wire x2="3456" y1="464" y2="464" x1="3200" />
            <wire x2="3200" y1="464" y2="896" x1="3200" />
            <wire x2="3200" y1="896" y2="960" x1="3200" />
            <wire x2="3200" y1="960" y2="1024" x1="3200" />
            <wire x2="3200" y1="1024" y2="1088" x1="3200" />
            <wire x2="3200" y1="1088" y2="1152" x1="3200" />
            <wire x2="3200" y1="1152" y2="1168" x1="3200" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2528" y1="688" y2="1024" x1="2528" />
            <wire x2="2544" y1="1024" y2="1024" x1="2528" />
            <wire x2="2528" y1="1024" y2="1632" x1="2528" />
            <wire x2="2672" y1="1632" y2="1632" x1="2528" />
        </branch>
        <instance x="576" y="1776" name="XLXI_14" orien="R0" />
        <instance x="2672" y="1760" name="XLXI_13" orien="R0" />
        <bustap x2="3104" y1="896" y2="896" x1="3200" />
        <branch name="XLXN_21(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2952" y="896" type="branch" />
            <wire x2="2960" y1="896" y2="896" x1="2800" />
            <wire x2="3104" y1="896" y2="896" x1="2960" />
        </branch>
        <bustap x2="3104" y1="960" y2="960" x1="3200" />
        <branch name="XLXN_21(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2952" y="960" type="branch" />
            <wire x2="2960" y1="960" y2="960" x1="2800" />
            <wire x2="3104" y1="960" y2="960" x1="2960" />
        </branch>
        <bustap x2="3104" y1="1024" y2="1024" x1="3200" />
        <branch name="XLXN_21(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3080" y="1024" type="branch" />
            <wire x2="3088" y1="1024" y2="1024" x1="3056" />
            <wire x2="3104" y1="1024" y2="1024" x1="3088" />
        </branch>
        <bustap x2="3104" y1="1088" y2="1088" x1="3200" />
        <branch name="XLXN_21(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3080" y="1088" type="branch" />
            <wire x2="3088" y1="1088" y2="1088" x1="3056" />
            <wire x2="3104" y1="1088" y2="1088" x1="3088" />
        </branch>
        <bustap x2="3104" y1="1152" y2="1152" x1="3200" />
        <branch name="XLXN_21(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3080" y="1152" type="branch" />
            <wire x2="3088" y1="1152" y2="1152" x1="3056" />
            <wire x2="3104" y1="1152" y2="1152" x1="3088" />
        </branch>
        <instance x="1264" y="960" name="XLXI_16" orien="R0" />
        <instance x="1904" y="960" name="XLXI_17" orien="R0" />
        <instance x="944" y="1856" name="XLXI_18" orien="R180" />
        <branch name="XLXN_35">
            <wire x2="976" y1="2048" y2="2048" x1="944" />
        </branch>
        <instance x="1200" y="2016" name="XLXI_19" orien="R180" />
        <branch name="XLXN_36">
            <wire x2="976" y1="2112" y2="2112" x1="944" />
        </branch>
        <instance x="1200" y="2080" name="XLXI_20" orien="R180" />
        <branch name="XLXN_37">
            <wire x2="976" y1="2176" y2="2176" x1="944" />
        </branch>
        <instance x="1200" y="2144" name="XLXI_21" orien="R180" />
        <branch name="XLXN_34(7:0)">
            <wire x2="1360" y1="1520" y2="1520" x1="960" />
            <wire x2="1360" y1="1520" y2="1920" x1="1360" />
            <wire x2="1360" y1="1920" y2="1984" x1="1360" />
            <wire x2="1360" y1="1984" y2="2048" x1="1360" />
            <wire x2="1360" y1="2048" y2="2112" x1="1360" />
            <wire x2="1360" y1="2112" y2="2176" x1="1360" />
            <wire x2="1360" y1="2176" y2="2192" x1="1360" />
        </branch>
        <bustap x2="1264" y1="1920" y2="1920" x1="1360" />
        <branch name="XLXN_34(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1920" type="branch" />
            <wire x2="1104" y1="1920" y2="1920" x1="944" />
            <wire x2="1264" y1="1920" y2="1920" x1="1104" />
        </branch>
        <bustap x2="1264" y1="1984" y2="1984" x1="1360" />
        <branch name="XLXN_34(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1984" type="branch" />
            <wire x2="1104" y1="1984" y2="1984" x1="944" />
            <wire x2="1264" y1="1984" y2="1984" x1="1104" />
        </branch>
        <bustap x2="1264" y1="2048" y2="2048" x1="1360" />
        <branch name="XLXN_34(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2048" type="branch" />
            <wire x2="1232" y1="2048" y2="2048" x1="1200" />
            <wire x2="1264" y1="2048" y2="2048" x1="1232" />
        </branch>
        <bustap x2="1264" y1="2112" y2="2112" x1="1360" />
        <branch name="XLXN_34(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2112" type="branch" />
            <wire x2="1232" y1="2112" y2="2112" x1="1200" />
            <wire x2="1264" y1="2112" y2="2112" x1="1232" />
        </branch>
        <bustap x2="1264" y1="2176" y2="2176" x1="1360" />
        <branch name="XLXN_34(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2176" type="branch" />
            <wire x2="1232" y1="2176" y2="2176" x1="1200" />
            <wire x2="1264" y1="2176" y2="2176" x1="1232" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="576" y1="1744" y2="2048" x1="576" />
            <wire x2="688" y1="2048" y2="2048" x1="576" />
            <wire x2="576" y1="2048" y2="2288" x1="576" />
            <wire x2="1408" y1="2288" y2="2288" x1="576" />
            <wire x2="1408" y1="1568" y2="2288" x1="1408" />
            <wire x2="1600" y1="1568" y2="1568" x1="1408" />
            <wire x2="1728" y1="1568" y2="1568" x1="1600" />
            <wire x2="1600" y1="1568" y2="2352" x1="1600" />
            <wire x2="2000" y1="2352" y2="2352" x1="1600" />
            <wire x2="2000" y1="2288" y2="2352" x1="2000" />
        </branch>
        <instance x="1728" y="1760" name="XLXI_15" orien="R0" />
        <branch name="HZ625">
            <wire x2="512" y1="1312" y2="1648" x1="512" />
            <wire x2="576" y1="1648" y2="1648" x1="512" />
            <wire x2="1504" y1="1312" y2="1312" x1="512" />
            <wire x2="3136" y1="1312" y2="1312" x1="1504" />
            <wire x2="3136" y1="1312" y2="1504" x1="3136" />
            <wire x2="3280" y1="1504" y2="1504" x1="3136" />
            <wire x2="3296" y1="1504" y2="1504" x1="3280" />
            <wire x2="1504" y1="1312" y2="1632" x1="1504" />
            <wire x2="1728" y1="1632" y2="1632" x1="1504" />
            <wire x2="3136" y1="1504" y2="1504" x1="3056" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="2496" y1="1504" y2="1504" x1="2112" />
            <wire x2="2496" y1="1504" y2="1968" x1="2496" />
            <wire x2="2496" y1="1968" y2="2032" x1="2496" />
            <wire x2="2496" y1="2032" y2="2096" x1="2496" />
            <wire x2="2496" y1="2096" y2="2160" x1="2496" />
            <wire x2="2496" y1="2160" y2="2192" x1="2496" />
            <wire x2="2496" y1="2192" y2="2224" x1="2496" />
            <wire x2="2496" y1="2224" y2="2384" x1="2496" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="2048" y1="2096" y2="2096" x1="2000" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="2048" y1="2160" y2="2160" x1="2000" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2048" y1="2224" y2="2224" x1="2000" />
        </branch>
        <instance x="2000" y="1904" name="XLXI_22" orien="R180" />
        <instance x="2272" y="2064" name="XLXI_23" orien="R180" />
        <instance x="2272" y="2128" name="XLXI_24" orien="R180" />
        <instance x="2272" y="2192" name="XLXI_25" orien="R180" />
        <bustap x2="2400" y1="2096" y2="2096" x1="2496" />
        <branch name="XLXN_47(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="2096" type="branch" />
            <wire x2="2336" y1="2096" y2="2096" x1="2272" />
            <wire x2="2400" y1="2096" y2="2096" x1="2336" />
        </branch>
        <bustap x2="2400" y1="2160" y2="2160" x1="2496" />
        <branch name="XLXN_47(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="2160" type="branch" />
            <wire x2="2336" y1="2160" y2="2160" x1="2272" />
            <wire x2="2400" y1="2160" y2="2160" x1="2336" />
        </branch>
        <bustap x2="2400" y1="2224" y2="2224" x1="2496" />
        <branch name="XLXN_47(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="2224" type="branch" />
            <wire x2="2336" y1="2224" y2="2224" x1="2272" />
            <wire x2="2400" y1="2224" y2="2224" x1="2336" />
        </branch>
        <bustap x2="2400" y1="2032" y2="2032" x1="2496" />
        <branch name="XLXN_47(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2200" y="2032" type="branch" />
            <wire x2="2208" y1="2032" y2="2032" x1="2000" />
            <wire x2="2400" y1="2032" y2="2032" x1="2208" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1728" y1="1728" y2="2128" x1="1728" />
            <wire x2="1744" y1="2128" y2="2128" x1="1728" />
        </branch>
        <instance x="2576" y="1440" name="XLXI_26" orien="R0" />
        <instance x="288" y="1520" name="XLXI_27" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="352" y1="1520" y2="1584" x1="352" />
            <wire x2="576" y1="1584" y2="1584" x1="352" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2640" y1="1568" y2="1568" x1="2592" />
            <wire x2="2672" y1="1568" y2="1568" x1="2640" />
            <wire x2="2592" y1="1568" y2="2128" x1="2592" />
            <wire x2="2928" y1="2128" y2="2128" x1="2592" />
            <wire x2="2640" y1="1440" y2="1568" x1="2640" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2672" y1="1728" y2="1760" x1="2672" />
        </branch>
        <instance x="2608" y="1888" name="XLXI_28" orien="R0" />
        <instance x="2928" y="2256" name="XLXI_29" orien="R0" />
        <instance x="400" y="608" name="XLXI_30" orien="R0" />
        <instance x="2368" y="416" name="XLXI_31" orien="R0" />
        <branch name="XLXN_65">
            <wire x2="2432" y1="416" y2="528" x1="2432" />
            <wire x2="2528" y1="528" y2="528" x1="2432" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="464" y1="608" y2="800" x1="464" />
            <wire x2="608" y1="800" y2="800" x1="464" />
        </branch>
        <branch name="HZ1250">
            <wire x2="3280" y1="1440" y2="1440" x1="3056" />
            <wire x2="3280" y1="1424" y2="1440" x1="3280" />
        </branch>
        <branch name="HZ1">
            <wire x2="3360" y1="2160" y2="2160" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1424" name="HZ1250" orien="R270" />
        <iomarker fontsize="28" x="3296" y="1504" name="HZ625" orien="R0" />
        <iomarker fontsize="28" x="3360" y="2160" name="HZ1" orien="R0" />
        <iomarker fontsize="28" x="384" y="864" name="CLK" orien="R180" />
        <bustap x2="2400" y1="1968" y2="1968" x1="2496" />
        <branch name="XLXN_47(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2200" y="1968" type="branch" />
            <wire x2="2200" y1="1968" y2="1968" x1="2000" />
            <wire x2="2400" y1="1968" y2="1968" x1="2200" />
        </branch>
        <bustap x2="2592" y1="2192" y2="2192" x1="2496" />
        <branch name="XLXN_47(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2760" y="2192" type="branch" />
            <wire x2="2760" y1="2192" y2="2192" x1="2592" />
            <wire x2="2928" y1="2192" y2="2192" x1="2760" />
        </branch>
    </sheet>
</drawing>