<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ADI-Phase-2">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 08/10/2012 14:57:29</description>
<packages>
<package name="QFP50P900X900X160-48N">
<smd name="1" x="-4.2164" y="2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-4.2164" y="2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-4.2164" y="1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-4.2164" y="1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-4.2164" y="0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-4.2164" y="0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-4.2164" y="-0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-4.2164" y="-0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-4.2164" y="-1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-4.2164" y="-1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-4.2164" y="-2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-4.2164" y="-2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-2.7432" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="14" x="-2.2606" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="15" x="-1.7526" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="16" x="-1.2446" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="17" x="-0.762" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="18" x="-0.254" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="19" x="0.254" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="20" x="0.762" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="21" x="1.2446" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="22" x="1.7526" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="23" x="2.2606" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="24" x="2.7432" y="-4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="25" x="4.2164" y="-2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="4.2164" y="-2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="27" x="4.2164" y="-1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="28" x="4.2164" y="-1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="29" x="4.2164" y="-0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="30" x="4.2164" y="-0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="31" x="4.2164" y="0.254" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="32" x="4.2164" y="0.762" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="33" x="4.2164" y="1.2446" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="34" x="4.2164" y="1.7526" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="35" x="4.2164" y="2.2606" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="36" x="4.2164" y="2.7432" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="37" x="2.7432" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="2.2606" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="1.7526" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="1.2446" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="0.762" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="0.254" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="-0.254" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="-0.762" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="-1.2446" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="-1.7526" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="-2.2606" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="-2.7432" y="4.2164" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-3.2258" y1="3.6068" x2="-3.6068" y2="3.6068" width="0.1524" layer="21"/>
<wire x1="3.6068" y1="3.2258" x2="3.6068" y2="3.6068" width="0.1524" layer="21"/>
<wire x1="3.2258" y1="-3.6068" x2="3.6068" y2="-3.6068" width="0.1524" layer="21"/>
<wire x1="-3.1496" y1="2.7686" x2="-2.7686" y2="3.1496" width="0.1524" layer="21"/>
<wire x1="-3.6068" y1="-3.6068" x2="-3.2258" y2="-3.6068" width="0.1524" layer="21"/>
<wire x1="3.6068" y1="-3.6068" x2="3.6068" y2="-3.2258" width="0.1524" layer="21"/>
<wire x1="3.6068" y1="3.6068" x2="3.2258" y2="3.6068" width="0.1524" layer="21"/>
<wire x1="-3.6068" y1="3.6068" x2="-3.6068" y2="3.2258" width="0.1524" layer="21"/>
<wire x1="-3.6068" y1="-3.2258" x2="-3.6068" y2="-3.6068" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-1.5494" x2="-5.461" y2="-1.9304" width="0.1524" layer="49"/>
<wire x1="-5.461" y1="-1.9304" x2="-5.207" y2="-1.9304" width="0.1524" layer="49"/>
<wire x1="-5.207" y1="-1.9304" x2="-5.207" y2="-1.5494" width="0.1524" layer="49"/>
<wire x1="0.5588" y1="-5.207" x2="0.5588" y2="-5.461" width="0.1524" layer="49"/>
<wire x1="0.5588" y1="-5.461" x2="0.9398" y2="-5.461" width="0.1524" layer="49"/>
<wire x1="0.9398" y1="-5.461" x2="0.9398" y2="-5.207" width="0.1524" layer="49"/>
<wire x1="5.461" y1="-0.0508" x2="5.461" y2="-0.4318" width="0.1524" layer="49"/>
<wire x1="5.461" y1="-0.4318" x2="5.207" y2="-0.4318" width="0.1524" layer="49"/>
<wire x1="5.207" y1="-0.4318" x2="5.207" y2="-0.0508" width="0.1524" layer="49"/>
<wire x1="1.0668" y1="5.207" x2="1.0668" y2="5.461" width="0.1524" layer="49"/>
<wire x1="1.0668" y1="5.461" x2="1.4478" y2="5.461" width="0.1524" layer="49"/>
<wire x1="1.4478" y1="5.461" x2="1.4478" y2="5.207" width="0.1524" layer="49"/>
<text x="-6.1722" y="2.7432" size="1.27" layer="49" ratio="6" rot="SR0">*</text>
<wire x1="2.6162" y1="3.6068" x2="2.8956" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="3.6068" x2="2.8956" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="4.5974" x2="2.6162" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="4.5974" x2="2.6162" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="3.6068" x2="2.3876" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="3.6068" x2="2.3876" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="4.5974" x2="2.1082" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="4.5974" x2="2.1082" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="3.6068" x2="1.8796" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="3.6068" x2="1.8796" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="4.5974" x2="1.6256" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="4.5974" x2="1.6256" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="3.6068" x2="1.397" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="1.397" y1="3.6068" x2="1.397" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="1.397" y1="4.5974" x2="1.1176" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="4.5974" x2="1.1176" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="3.6068" x2="0.889" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="0.889" y1="3.6068" x2="0.889" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="0.889" y1="4.5974" x2="0.6096" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="4.5974" x2="0.6096" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="0.127" y1="3.6068" x2="0.381" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="0.381" y1="3.6068" x2="0.381" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="0.381" y1="4.5974" x2="0.127" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="0.127" y1="4.5974" x2="0.127" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="3.6068" x2="-0.127" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="3.6068" x2="-0.127" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="4.5974" x2="-0.381" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="4.5974" x2="-0.381" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="3.6068" x2="-0.6096" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="3.6068" x2="-0.6096" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="4.5974" x2="-0.889" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="4.5974" x2="-0.889" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="3.6068" x2="-1.1176" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="3.6068" x2="-1.1176" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="4.5974" x2="-1.397" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="4.5974" x2="-1.397" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="3.6068" x2="-1.6256" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-1.6256" y1="3.6068" x2="-1.6256" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-1.6256" y1="4.5974" x2="-1.8796" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="4.5974" x2="-1.8796" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="3.6068" x2="-2.3368" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-2.3368" y1="3.6068" x2="-2.1082" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="3.6068" x2="-2.1082" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="4.5974" x2="-2.3876" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="4.5974" x2="-2.3876" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="3.6068" x2="-2.6162" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="3.6068" x2="-2.6162" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="4.5974" x2="-2.8956" y2="4.5974" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="4.5974" x2="-2.8956" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.6162" x2="-3.6068" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.8956" x2="-4.5974" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="2.8956" x2="-4.5974" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="2.6162" x2="-3.6068" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.1082" x2="-3.6068" y2="2.3368" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.3368" x2="-3.6068" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.3876" x2="-4.5974" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="2.3876" x2="-4.5974" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="2.1082" x2="-3.6068" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="1.6256" x2="-3.6068" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="1.8796" x2="-4.5974" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="1.8796" x2="-4.5974" y2="1.6256" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="1.6256" x2="-3.6068" y2="1.6256" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="1.1176" x2="-3.6068" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="1.397" x2="-4.5974" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="1.397" x2="-4.5974" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="1.1176" x2="-3.6068" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="0.6096" x2="-3.6068" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="0.889" x2="-4.5974" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="0.889" x2="-4.5974" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="0.6096" x2="-3.6068" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="0.127" x2="-3.6068" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="0.381" x2="-4.5974" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="0.381" x2="-4.5974" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="0.127" x2="-3.6068" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-0.381" x2="-3.6068" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-0.127" x2="-4.5974" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-0.127" x2="-4.5974" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-0.381" x2="-3.6068" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-0.889" x2="-3.6068" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-0.6096" x2="-4.5974" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-0.6096" x2="-4.5974" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-0.889" x2="-3.6068" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-1.397" x2="-3.6068" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-1.1176" x2="-4.5974" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-1.1176" x2="-4.5974" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-1.397" x2="-3.6068" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-1.8796" x2="-3.6068" y2="-1.6256" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-1.6256" x2="-4.5974" y2="-1.6256" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-1.6256" x2="-4.5974" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-1.8796" x2="-3.6068" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-2.3876" x2="-3.6068" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-2.1082" x2="-4.5974" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-2.1082" x2="-4.5974" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-2.3876" x2="-3.6068" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-2.8956" x2="-3.6068" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-2.6162" x2="-4.5974" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-2.6162" x2="-4.5974" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-4.5974" y1="-2.8956" x2="-3.6068" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-3.6068" x2="-2.8956" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-3.6068" x2="-2.8956" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-4.5974" x2="-2.6162" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-4.5974" x2="-2.6162" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-3.6068" x2="-2.3876" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-3.6068" x2="-2.3876" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-4.5974" x2="-2.1082" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-4.5974" x2="-2.1082" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-1.6256" y1="-3.6068" x2="-1.8796" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-3.6068" x2="-1.8796" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-4.5974" x2="-1.6256" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-1.6256" y1="-4.5974" x2="-1.6256" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-3.6068" x2="-1.397" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-3.6068" x2="-1.397" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-4.5974" x2="-1.1176" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-4.5974" x2="-1.1176" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-3.6068" x2="-0.889" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-3.6068" x2="-0.889" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-4.5974" x2="-0.6096" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-4.5974" x2="-0.6096" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-3.6068" x2="-0.381" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-3.6068" x2="-0.381" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-4.5974" x2="-0.127" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-4.5974" x2="-0.127" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-3.6068" x2="0.127" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="0.127" y1="-3.6068" x2="0.127" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="0.127" y1="-4.5974" x2="0.381" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-4.5974" x2="0.381" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-3.6068" x2="0.6096" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-3.6068" x2="0.6096" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-4.5974" x2="0.889" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-4.5974" x2="0.889" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-3.6068" x2="1.1176" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-3.6068" x2="1.1176" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-4.5974" x2="1.397" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-4.5974" x2="1.397" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-3.6068" x2="1.6256" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="-3.6068" x2="1.6256" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="-4.5974" x2="1.8796" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-4.5974" x2="1.8796" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-3.6068" x2="2.1082" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-3.6068" x2="2.1082" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-4.5974" x2="2.3876" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-4.5974" x2="2.3876" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-3.6068" x2="2.6162" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-3.6068" x2="2.6162" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-4.5974" x2="2.8956" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-4.5974" x2="2.8956" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-2.6162" x2="3.6068" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-2.8956" x2="4.5974" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-2.8956" x2="4.5974" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-2.6162" x2="3.6068" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-2.1082" x2="3.6068" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-2.3876" x2="4.5974" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-2.3876" x2="4.5974" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-2.1082" x2="3.6068" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-1.6256" x2="3.6068" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-1.8796" x2="4.5974" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-1.8796" x2="4.5974" y2="-1.6256" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-1.6256" x2="3.6068" y2="-1.6256" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-1.1176" x2="3.6068" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-1.397" x2="4.5974" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-1.397" x2="4.5974" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-1.1176" x2="3.6068" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-0.6096" x2="3.6068" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-0.889" x2="4.5974" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-0.889" x2="4.5974" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-0.6096" x2="3.6068" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-0.127" x2="3.6068" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-0.381" x2="4.5974" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-0.381" x2="4.5974" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="-0.127" x2="3.6068" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="0.381" x2="3.6068" y2="0.127" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="0.127" x2="4.5974" y2="0.127" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="0.127" x2="4.5974" y2="0.381" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="0.381" x2="3.6068" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="0.889" x2="3.6068" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="0.6096" x2="4.5974" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="0.6096" x2="4.5974" y2="0.889" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="0.889" x2="3.6068" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="1.397" x2="3.6068" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="1.1176" x2="4.5974" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="1.1176" x2="4.5974" y2="1.397" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="1.397" x2="3.6068" y2="1.397" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="1.8796" x2="3.6068" y2="1.6256" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="1.6256" x2="4.5974" y2="1.6256" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="1.6256" x2="4.5974" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="1.8796" x2="3.6068" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="2.3876" x2="3.6068" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="2.1082" x2="4.5974" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="2.1082" x2="4.5974" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="2.3876" x2="3.6068" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="2.8956" x2="3.6068" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="2.6162" x2="4.5974" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="2.6162" x2="4.5974" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="4.5974" y1="2.8956" x2="3.6068" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="2.3368" x2="-2.3368" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-3.6068" x2="3.6068" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-3.6068" x2="3.6068" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="3.6068" x2="-3.6068" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="3.6068" x2="-3.6068" y2="-3.6068" width="0.1524" layer="51"/>
<text x="-6.1722" y="2.7432" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.4544" y="6.985" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-9.525" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ADV7173KSTZ">
<pin name="ALOHADANCE" x="-25.4" y="48.26" length="middle" direction="pwr"/>
<pin name="VAA_3" x="-25.4" y="45.72" length="middle" direction="pwr"/>
<pin name="VAA_4" x="-25.4" y="43.18" length="middle" direction="pwr"/>
<pin name="VAA_5" x="-25.4" y="40.64" length="middle" direction="pwr"/>
<pin name="VAA_6" x="-25.4" y="38.1" length="middle" direction="pwr"/>
<pin name="VAA_7" x="-25.4" y="35.56" length="middle" direction="pwr"/>
<pin name="VAA_8" x="-25.4" y="33.02" length="middle" direction="pwr"/>
<pin name="VAA" x="-25.4" y="30.48" length="middle" direction="pwr"/>
<pin name="CLOCK" x="-25.4" y="25.4" length="middle" direction="in"/>
<pin name="SCLOCK" x="-25.4" y="22.86" length="middle" direction="in"/>
<pin name="VREF" x="-25.4" y="17.78" length="middle"/>
<pin name="HSYNC*" x="-25.4" y="15.24" length="middle"/>
<pin name="BLANK*" x="-25.4" y="12.7" length="middle"/>
<pin name="FIELD/VSYNC*" x="-25.4" y="10.16" length="middle"/>
<pin name="TTX" x="-25.4" y="5.08" length="middle" direction="in"/>
<pin name="ALSB" x="-25.4" y="2.54" length="middle" direction="in"/>
<pin name="RESET*" x="-25.4" y="0" length="middle" direction="in"/>
<pin name="SDATA" x="-25.4" y="-2.54" length="middle"/>
<pin name="PAL_NTSC" x="-25.4" y="-5.08" length="middle" direction="in"/>
<pin name="SCRESET/RTC" x="-25.4" y="-7.62" length="middle" direction="in"/>
<pin name="RSET1" x="-25.4" y="-12.7" length="middle" direction="in"/>
<pin name="RSET2" x="-25.4" y="-15.24" length="middle" direction="in"/>
<pin name="P0" x="-25.4" y="-20.32" length="middle" direction="in"/>
<pin name="P1" x="-25.4" y="-22.86" length="middle" direction="in"/>
<pin name="P2" x="-25.4" y="-25.4" length="middle" direction="in"/>
<pin name="P3" x="-25.4" y="-27.94" length="middle" direction="in"/>
<pin name="P4" x="-25.4" y="-30.48" length="middle" direction="in"/>
<pin name="P5" x="-25.4" y="-33.02" length="middle" direction="in"/>
<pin name="P6" x="-25.4" y="-35.56" length="middle" direction="in"/>
<pin name="P7" x="-25.4" y="-38.1" length="middle" direction="in"/>
<pin name="GND_2" x="-25.4" y="-43.18" length="middle" direction="pas"/>
<pin name="GND_3" x="-25.4" y="-45.72" length="middle" direction="pas"/>
<pin name="GND_4" x="-25.4" y="-48.26" length="middle" direction="pas"/>
<pin name="GND_5" x="-25.4" y="-50.8" length="middle" direction="pas"/>
<pin name="GND_6" x="-25.4" y="-53.34" length="middle" direction="pas"/>
<pin name="GND" x="-25.4" y="-55.88" length="middle" direction="pas"/>
<pin name="VSO*" x="25.4" y="48.26" length="middle" direction="out" rot="R180"/>
<pin name="TTXREQ" x="25.4" y="45.72" length="middle" direction="out" rot="R180"/>
<pin name="CLAMP" x="25.4" y="43.18" length="middle" direction="out" rot="R180"/>
<pin name="COMP1" x="25.4" y="38.1" length="middle" direction="out" rot="R180"/>
<pin name="COMP2" x="25.4" y="35.56" length="middle" direction="out" rot="R180"/>
<pin name="CSO_HSO*" x="25.4" y="30.48" length="middle" direction="out" rot="R180"/>
<pin name="DAC_A" x="25.4" y="25.4" length="middle" direction="out" rot="R180"/>
<pin name="DAC_B" x="25.4" y="22.86" length="middle" direction="out" rot="R180"/>
<pin name="DAC_C" x="25.4" y="20.32" length="middle" direction="out" rot="R180"/>
<pin name="DAC_D" x="25.4" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="DAC_E" x="25.4" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="DAC_F" x="25.4" y="12.7" length="middle" direction="out" rot="R180"/>
<wire x1="-20.32" y1="53.34" x2="-20.32" y2="-60.96" width="0.4064" layer="94"/>
<wire x1="-20.32" y1="-60.96" x2="20.32" y2="-60.96" width="0.4064" layer="94"/>
<wire x1="20.32" y1="-60.96" x2="20.32" y2="53.34" width="0.4064" layer="94"/>
<wire x1="20.32" y1="53.34" x2="-20.32" y2="53.34" width="0.4064" layer="94"/>
<text x="-4.318" y="56.3118" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.461" y="-64.7192" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADV7173KSTZ" prefix="U">
<description>LQFP-48,Digital PAL/NTSC Video Encoder</description>
<gates>
<gate name="A" symbol="ADV7173KSTZ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P900X900X160-48N">
<connects>
<connect gate="A" pin="ALOHADANCE" pad="1"/>
<connect gate="A" pin="ALSB" pad="17"/>
<connect gate="A" pin="BLANK*" pad="16"/>
<connect gate="A" pin="CLAMP" pad="42"/>
<connect gate="A" pin="CLOCK" pad="48"/>
<connect gate="A" pin="COMP1" pad="36"/>
<connect gate="A" pin="COMP2" pad="23"/>
<connect gate="A" pin="CSO_HSO*" pad="10"/>
<connect gate="A" pin="DAC_A" pad="35"/>
<connect gate="A" pin="DAC_B" pad="33"/>
<connect gate="A" pin="DAC_C" pad="29"/>
<connect gate="A" pin="DAC_D" pad="28"/>
<connect gate="A" pin="DAC_E" pad="25"/>
<connect gate="A" pin="DAC_F" pad="24"/>
<connect gate="A" pin="FIELD/VSYNC*" pad="15"/>
<connect gate="A" pin="GND" pad="31"/>
<connect gate="A" pin="GND_2" pad="13"/>
<connect gate="A" pin="GND_3" pad="18"/>
<connect gate="A" pin="GND_4" pad="47"/>
<connect gate="A" pin="GND_5" pad="12"/>
<connect gate="A" pin="GND_6" pad="26"/>
<connect gate="A" pin="HSYNC*" pad="14"/>
<connect gate="A" pin="P0" pad="2"/>
<connect gate="A" pin="P1" pad="3"/>
<connect gate="A" pin="P2" pad="4"/>
<connect gate="A" pin="P3" pad="5"/>
<connect gate="A" pin="P4" pad="6"/>
<connect gate="A" pin="P5" pad="7"/>
<connect gate="A" pin="P6" pad="8"/>
<connect gate="A" pin="P7" pad="9"/>
<connect gate="A" pin="PAL_NTSC" pad="43"/>
<connect gate="A" pin="RESET*" pad="44"/>
<connect gate="A" pin="RSET1" pad="38"/>
<connect gate="A" pin="RSET2" pad="22"/>
<connect gate="A" pin="SCLOCK" pad="20"/>
<connect gate="A" pin="SCRESET/RTC" pad="39"/>
<connect gate="A" pin="SDATA" pad="21"/>
<connect gate="A" pin="TTX" pad="41"/>
<connect gate="A" pin="TTXREQ" pad="40"/>
<connect gate="A" pin="VAA" pad="46"/>
<connect gate="A" pin="VAA_3" pad="11"/>
<connect gate="A" pin="VAA_4" pad="19"/>
<connect gate="A" pin="VAA_5" pad="27"/>
<connect gate="A" pin="VAA_6" pad="30"/>
<connect gate="A" pin="VAA_7" pad="32"/>
<connect gate="A" pin="VAA_8" pad="34"/>
<connect gate="A" pin="VREF" pad="37"/>
<connect gate="A" pin="VSO*" pad="45"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="ADV7173KSTZ" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="82H2834" constant="no"/>
<attribute name="PACKAGE" value="LQFP-48" constant="no"/>
<attribute name="SUPPLIER" value="Analog Devices" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="ADI-Phase-2" deviceset="ADV7173KSTZ" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="149.86" y="109.22"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
