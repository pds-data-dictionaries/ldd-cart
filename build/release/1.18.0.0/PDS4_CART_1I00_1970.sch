<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:cart  Version:1.9.7.0 - Thu Nov 19 22:29:27 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.18.0.0 - System Build 12.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/cart/v1" prefix="cart"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/geom/v1" prefix="geom"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//cart:Cartography">
      <sch:assert test="if ((cart:Secondary_Spatial_Domain) and not (cart:Spatial_Domain)) then false() else true()">
        <title>//cart:Cartography/Rule</title>
        cart:Spatial_Domain must exist if cart:Secondary_Spatial_Domain is used</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//cart:Cartography/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'cartography_parameters_to_image_object'">
        <title>//cart:Cartography/pds:Local_Internal_Reference/Rule</title>
        In cart:Cartography, Local_Internal_Reference.local_reference_type must be equal to 'cartography_parameters_to_image_object'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Distance_and_Bearing_Representation/cart:bearing_reference_direction">
      <sch:assert test=". = ('North', 'South')">
        <title>cart:Distance_and_Bearing_Representation/cart:bearing_reference_direction/cart:bearing_reference_direction</title>
        The attribute cart:Distance_and_Bearing_Representation/cart:bearing_reference_direction must be equal to one of the following values 'North', 'South'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Distance_and_Bearing_Representation/cart:bearing_reference_meridian">
      <sch:assert test=". = ('Assumed', 'Astronomic', 'Geodetic', 'Grid', 'Magnetic')">
        <title>cart:Distance_and_Bearing_Representation/cart:bearing_reference_meridian/cart:bearing_reference_meridian</title>
        The attribute cart:Distance_and_Bearing_Representation/cart:bearing_reference_meridian must be equal to one of the following values 'Assumed', 'Astronomic', 'Geodetic', 'Grid', 'Magnetic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:coordinate_system_type">
      <sch:assert test=". = ('Body-fixed Non-rotating', 'Body-fixed Rotating', 'Inertial')">
        <title>cart:Geodetic_Model/cart:coordinate_system_type/cart:coordinate_system_type</title>
        The attribute cart:Geodetic_Model/cart:coordinate_system_type must be equal to one of the following values 'Body-fixed Non-rotating', 'Body-fixed Rotating', 'Inertial'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:latitude_type">
      <sch:assert test=". = ('Planetocentric', 'Planetographic')">
        <title>cart:Geodetic_Model/cart:latitude_type/cart:latitude_type</title>
        The attribute cart:Geodetic_Model/cart:latitude_type must be equal to one of the following values 'Planetocentric', 'Planetographic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:longitude_direction">
      <sch:assert test=". = ('Positive East', 'Positive West')">
        <title>cart:Geodetic_Model/cart:longitude_direction/cart:longitude_direction</title>
        The attribute cart:Geodetic_Model/cart:longitude_direction must be equal to one of the following values 'Positive East', 'Positive West'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Grid_Coordinate_System/cart:grid_coordinate_system_name">
      <sch:assert test=". = ('ARC Coordinate System', 'Other Grid System', 'State Plane Coordinate System 1927', 'State Plane Coordinate System 1983', 'Universal Polar Stereographic', 'Universal Transverse Mercator')">
        <title>cart:Grid_Coordinate_System/cart:grid_coordinate_system_name/cart:grid_coordinate_system_name</title>
        The attribute cart:Grid_Coordinate_System/cart:grid_coordinate_system_name must be equal to one of the following values 'ARC Coordinate System', 'Other Grid System', 'State Plane Coordinate System 1927', 'State Plane Coordinate System 1983', 'Universal Polar Stereographic', 'Universal Transverse Mercator'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Map_Projection/cart:map_projection_name">
      <sch:assert test=". = ('Albers Conical Equal Area', 'Azimuthal Equidistant', 'Equidistant Conic', 'Equirectangular', 'Gnomonic', 'Lambert Azimuthal Equal Area', 'Lambert Conformal Conic', 'Mercator', 'Miller Cylindrical', 'Oblique Cylindrical', 'Oblique Mercator', 'Orthographic', 'Point Perspective', 'Polar Stereographic', 'Polyconic', 'Robinson', 'Sinusoidal', 'Space Oblique Mercator', 'Stereographic', 'Transverse Mercator', 'van der Grinten')">
        <title>cart:Map_Projection/cart:map_projection_name/cart:map_projection_name</title>
        The attribute cart:Map_Projection/cart:map_projection_name must be equal to one of the following values 'Albers Conical Equal Area', 'Azimuthal Equidistant', 'Equidistant Conic', 'Equirectangular', 'Gnomonic', 'Lambert Azimuthal Equal Area', 'Lambert Conformal Conic', 'Mercator', 'Miller Cylindrical', 'Oblique Cylindrical', 'Oblique Mercator', 'Orthographic', 'Point Perspective', 'Polar Stereographic', 'Polyconic', 'Robinson', 'Sinusoidal', 'Space Oblique Mercator', 'Stereographic', 'Transverse Mercator', 'van der Grinten'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Map_Projection_Lander/cart:lander_map_projection_name">
      <sch:assert test=". = ('Cylindrical', 'Cylindrical_Perspective', 'Orthographic', 'Orthographic_Lander', 'Orthorectified', 'Perspective', 'Polar', 'Vertical')">
        <title>cart:Map_Projection_Lander/cart:lander_map_projection_name/cart:lander_map_projection_name</title>
        The attribute cart:Map_Projection_Lander/cart:lander_map_projection_name must be equal to one of the following values 'Cylindrical', 'Cylindrical_Perspective', 'Orthographic', 'Orthographic_Lander', 'Orthorectified', 'Perspective', 'Polar', 'Vertical'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Map_Projection_Rings/cart:rings_map_projection_name">
      <sch:assert test=". = ('Ring_Polar')">
        <title>cart:Map_Projection_Rings/cart:rings_map_projection_name/cart:rings_map_projection_name</title>
        The attribute cart:Map_Projection_Rings/cart:rings_map_projection_name must be equal to the value 'Ring_Polar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:look_direction">
      <sch:assert test=". = ('Both', 'LEFT', 'Left', 'RIGHT', 'Right')">
        <title>cart:Oblique_Cylindrical/cart:look_direction/cart:look_direction</title>
        The attribute cart:Oblique_Cylindrical/cart:look_direction must be equal to one of the following values 'Both', 'LEFT', 'Left', 'RIGHT', 'Right'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Planar_Coordinate_Information/cart:planar_coordinate_encoding_method">
      <sch:assert test=". = ('Coordinate Pair', 'Distance and Bearing', 'Row and Column')">
        <title>cart:Planar_Coordinate_Information/cart:planar_coordinate_encoding_method/cart:planar_coordinate_encoding_method</title>
        The attribute cart:Planar_Coordinate_Information/cart:planar_coordinate_encoding_method must be equal to one of the following values 'Coordinate Pair', 'Distance and Bearing', 'Row and Column'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Secondary_Spatial_Domain/cart:latitude_type">
      <sch:assert test=". = ('Planetocentric', 'Planetographic')">
        <title>cart:Secondary_Spatial_Domain/cart:latitude_type/cart:latitude_type</title>
        The attribute cart:Secondary_Spatial_Domain/cart:latitude_type must be equal to one of the following values 'Planetocentric', 'Planetographic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Secondary_Spatial_Domain/cart:longitude_direction">
      <sch:assert test=". = ('Positive East', 'Positive West')">
        <title>cart:Secondary_Spatial_Domain/cart:longitude_direction/cart:longitude_direction</title>
        The attribute cart:Secondary_Spatial_Domain/cart:longitude_direction must be equal to one of the following values 'Positive East', 'Positive West'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Surface_Model_Parameters/cart:surface_model_type">
      <sch:assert test=". = ('Infinity', 'Planar', 'Spherical')">
        <title>cart:Surface_Model_Parameters/cart:surface_model_type/cart:surface_model_type</title>
        The attribute cart:Surface_Model_Parameters/cart:surface_model_type must be equal to one of the following values 'Infinity', 'Planar', 'Spherical'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Universal_Polar_Stereographic/cart:ups_zone_identifier">
      <sch:assert test=". = ('A', 'B', 'Y', 'Z')">
        <title>cart:Universal_Polar_Stereographic/cart:ups_zone_identifier/cart:ups_zone_identifier</title>
        The attribute cart:Universal_Polar_Stereographic/cart:ups_zone_identifier must be equal to one of the following values 'A', 'B', 'Y', 'Z'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
