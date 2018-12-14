<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:sample  Version:1.0.0.0 - Tue Apr 24 09:25:02 PDT 2018 -->
  <!-- Generated from the PDS4 Information Model Version 1.9.0.0 - System Build 8a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/sample/v1" prefix="sample"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="sample:SAMPLE/sample:mission_phase_name">
      <sch:assert test=". = ('Earth Cruise', 'Earth Flyby', 'Launch', 'Mercury Cruise', 'Mercury Encounter', 'Mercury Orbit', 'Venus Cruise', 'Venus Flyby')">
        The attribute sample:mission_phase_name must be equal to one of the following values 'Earth Cruise', 'Earth Flyby', 'Launch', 'Mercury Cruise', 'Mercury Encounter', 'Mercury Orbit', 'Venus Cruise', 'Venus Flyby'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
