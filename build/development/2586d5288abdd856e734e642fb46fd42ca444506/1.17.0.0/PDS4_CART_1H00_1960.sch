<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:cart  Version:1.9.6.0 - Tue Mar 29 17:34:04 UTC 2022 -->
  <!-- Generated from the PDS4 Information Model Version 1.17.0.0 - System Build 12.0 -->
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
    <sch:rule context="//cart:Horizontal_Coordinate_System_Definition/cart:Local">
      <sch:assert test="exists(cart:local_georeference_information) or exists(cart:Map_Projection_Lander) or exists(cart:Map_Projection_Rings)">
        <title>Local_child_check/Rule</title>
        In cart:Local, cart:local_georeference_information or cart:Map_Projection_Lander or cart:Map_Projection_Rings must be specified</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Bounding_Coordinates/cart:east_bounding_coordinate">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Bounding_Coordinates/cart:east_bounding_coordinate/cart:east_bounding_coordinate</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Bounding_Coordinates/cart:north_bounding_coordinate">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Bounding_Coordinates/cart:north_bounding_coordinate/cart:north_bounding_coordinate</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Bounding_Coordinates/cart:south_bounding_coordinate">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Bounding_Coordinates/cart:south_bounding_coordinate/cart:south_bounding_coordinate</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Bounding_Coordinates/cart:west_bounding_coordinate">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Bounding_Coordinates/cart:west_bounding_coordinate/cart:west_bounding_coordinate</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Coordinate_Representation/cart:pixel_resolution_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Coordinate_Representation/cart:pixel_resolution_x/cart:pixel_resolution_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Coordinate_Representation/cart:pixel_resolution_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Coordinate_Representation/cart:pixel_resolution_y/cart:pixel_resolution_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Coordinate_Representation/cart:pixel_scale_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Coordinate_Representation/cart:pixel_scale_x/cart:pixel_scale_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Coordinate_Representation/cart:pixel_scale_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Coordinate_Representation/cart:pixel_scale_y/cart:pixel_scale_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:maximum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical/cart:maximum_elevation/cart:maximum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:minimum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical/cart:minimum_elevation/cart:minimum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:pixel_scale_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Cylindrical/cart:pixel_scale_x/cart:pixel_scale_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:pixel_scale_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Cylindrical/cart:pixel_scale_y/cart:pixel_scale_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:start_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical/cart:start_azimuth/cart:start_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical/cart:stop_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical/cart:stop_azimuth/cart:stop_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:maximum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:maximum_elevation/cart:maximum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:minimum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:minimum_elevation/cart:minimum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:pixel_scale_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Cylindrical_Perspective/cart:pixel_scale_x/cart:pixel_scale_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:pixel_scale_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Cylindrical_Perspective/cart:pixel_scale_y/cart:pixel_scale_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:projection_axis_offset">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Cylindrical_Perspective/cart:projection_axis_offset/cart:projection_axis_offset</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:projection_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:projection_azimuth/cart:projection_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:projection_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:projection_elevation/cart:projection_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:start_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:start_azimuth/cart:start_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Cylindrical_Perspective/cart:stop_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Cylindrical_Perspective/cart:stop_azimuth/cart:stop_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
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
    <sch:rule context="cart:Distance_and_Bearing_Representation/cart:bearing_resolution">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Distance_and_Bearing_Representation/cart:bearing_resolution/cart:bearing_resolution</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Distance_and_Bearing_Representation/cart:distance_resolution">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Distance_and_Bearing_Representation/cart:distance_resolution/cart:distance_resolution</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Equirectangular/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Equirectangular/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Equirectangular/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Equirectangular/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Equirectangular/cart:standard_parallel_1">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Equirectangular/cart:standard_parallel_1/cart:standard_parallel_1</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geo_Transformation/cart:upperleft_corner_x">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Geo_Transformation/cart:upperleft_corner_x/cart:upperleft_corner_x</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geo_Transformation/cart:upperleft_corner_y">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Geo_Transformation/cart:upperleft_corner_y/cart:upperleft_corner_y</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:a_axis_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Geodetic_Model/cart:a_axis_radius/cart:a_axis_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:b_axis_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Geodetic_Model/cart:b_axis_radius/cart:b_axis_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geodetic_Model/cart:c_axis_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Geodetic_Model/cart:c_axis_radius/cart:c_axis_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
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
    <sch:rule context="cart:Geographic/cart:latitude_resolution">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Geographic/cart:latitude_resolution/cart:latitude_resolution</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Geographic/cart:longitude_resolution">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Geographic/cart:longitude_resolution/cart:longitude_resolution</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
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
    <sch:rule context="cart:Lambert_Azimuthal_Equal_Area/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Azimuthal_Equal_Area/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Lambert_Azimuthal_Equal_Area/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Azimuthal_Equal_Area/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Lambert_Conformal_Conic/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Conformal_Conic/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Lambert_Conformal_Conic/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Conformal_Conic/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Lambert_Conformal_Conic/cart:standard_parallel_1">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Conformal_Conic/cart:standard_parallel_1/cart:standard_parallel_1</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Lambert_Conformal_Conic/cart:standard_parallel_2">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Lambert_Conformal_Conic/cart:standard_parallel_2/cart:standard_parallel_2</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
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
      <sch:assert test=". = ('Cylindrical', 'Cylindrical_Perspective', 'Orthographic', 'Orthorectified', 'Perspective', 'Polar', 'Vertical')">
        <title>cart:Map_Projection_Lander/cart:lander_map_projection_name/cart:lander_map_projection_name</title>
        The attribute cart:Map_Projection_Lander/cart:lander_map_projection_name must be equal to one of the following values 'Cylindrical', 'Cylindrical_Perspective', 'Orthographic', 'Orthorectified', 'Perspective', 'Polar', 'Vertical'.</sch:assert>
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
    <sch:rule context="cart:Mercator/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Mercator/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Mercator/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Mercator/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Mercator/cart:standard_parallel_1">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Mercator/cart:standard_parallel_1/cart:standard_parallel_1</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:look_direction">
      <sch:assert test=". = ('LEFT', 'RIGHT')">
        <title>cart:Oblique_Cylindrical/cart:look_direction/cart:look_direction</title>
        The attribute cart:Oblique_Cylindrical/cart:look_direction must be equal to one of the following values 'LEFT', 'RIGHT'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:map_projection_rotation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:map_projection_rotation/cart:map_projection_rotation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:oblique_proj_pole_latitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:oblique_proj_pole_latitude/cart:oblique_proj_pole_latitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:oblique_proj_pole_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:oblique_proj_pole_longitude/cart:oblique_proj_pole_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:oblique_proj_pole_rotation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:oblique_proj_pole_rotation/cart:oblique_proj_pole_rotation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:reference_latitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:reference_latitude/cart:reference_latitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Cylindrical/cart:reference_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Cylindrical/cart:reference_longitude/cart:reference_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Azimuth/cart:azimuth_measure_point_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Azimuth/cart:azimuth_measure_point_longitude/cart:azimuth_measure_point_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Azimuth/cart:azimuthal_angle">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Azimuth/cart:azimuthal_angle/cart:azimuthal_angle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Azimuth/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Azimuth/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Azimuth/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Azimuth/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Point_Group/cart:oblique_line_latitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Point_Group/cart:oblique_line_latitude/cart:oblique_line_latitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Line_Point_Group/cart:oblique_line_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Line_Point_Group/cart:oblique_line_longitude/cart:oblique_line_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Mercator/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Mercator/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Oblique_Mercator/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Oblique_Mercator/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Orthographic/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Orthographic/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:pixel_resolution_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Orthographic_Lander/cart:pixel_resolution_x/cart:pixel_resolution_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:pixel_resolution_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Orthographic_Lander/cart:pixel_resolution_y/cart:pixel_resolution_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:x_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthographic_Lander/cart:x_axis_maximum/cart:x_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:x_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthographic_Lander/cart:x_axis_minimum/cart:x_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:y_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthographic_Lander/cart:y_axis_maximum/cart:y_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthographic_Lander/cart:y_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthographic_Lander/cart:y_axis_minimum/cart:y_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:pixel_resolution_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Orthorectified/cart:pixel_resolution_x/cart:pixel_resolution_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:pixel_resolution_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Orthorectified/cart:pixel_resolution_y/cart:pixel_resolution_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:x_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthorectified/cart:x_axis_maximum/cart:x_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:x_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthorectified/cart:x_axis_minimum/cart:x_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:y_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthorectified/cart:y_axis_maximum/cart:y_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Orthorectified/cart:y_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Orthorectified/cart:y_axis_minimum/cart:y_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:maximum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:maximum_elevation/cart:maximum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:minimum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:minimum_elevation/cart:minimum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:pixel_scale_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Perspective/cart:pixel_scale_x/cart:pixel_scale_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:pixel_scale_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Perspective/cart:pixel_scale_y/cart:pixel_scale_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:projection_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:projection_azimuth/cart:projection_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:projection_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:projection_elevation/cart:projection_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:start_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:start_azimuth/cart:start_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Perspective/cart:stop_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Perspective/cart:stop_azimuth/cart:stop_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
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
    <sch:rule context="cart:Point_Perspective/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Point_Perspective/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Point_Perspective/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Point_Perspective/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Point_Perspective/cart:target_center_distance">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Point_Perspective/cart:target_center_distance/cart:target_center_distance</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polar/cart:maximum_elevation">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polar/cart:maximum_elevation/cart:maximum_elevation</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polar/cart:pixel_scale">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Polar/cart:pixel_scale/cart:pixel_scale</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polar/cart:reference_azimuth">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polar/cart:reference_azimuth/cart:reference_azimuth</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polar_Stereographic/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polar_Stereographic/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polar_Stereographic/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polar_Stereographic/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polyconic/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polyconic/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Polyconic/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Polyconic/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Ring_Polar/cart:angular_scale">
      <sch:assert test="@unit = ('HA/pixel', 'arcsec/pixel', 'deg/pixel', 'radian/pixel')">
        <title>cart:Ring_Polar/cart:angular_scale/cart:angular_scale</title>
        The attribute @unit must be equal to one of the following values 'HA/pixel', 'arcsec/pixel', 'deg/pixel', 'radian/pixel'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Ring_Polar/cart:local_time_scale">
      <sch:assert test="@unit = ('HA/pixel', 'arcsec/pixel', 'deg/pixel', 'radian/pixel')">
        <title>cart:Ring_Polar/cart:local_time_scale/cart:local_time_scale</title>
        The attribute @unit must be equal to one of the following values 'HA/pixel', 'arcsec/pixel', 'deg/pixel', 'radian/pixel'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Ring_Polar/cart:radial_scale">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel')">
        <title>cart:Ring_Polar/cart:radial_scale/cart:radial_scale</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel'.</sch:assert>
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
    <sch:rule context="cart:Sinusoidal/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Sinusoidal/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Sinusoidal/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Sinusoidal/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Surface_Model_Spherical/cart:sphere_radius">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Surface_Model_Spherical/cart:sphere_radius/cart:sphere_radius</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Transverse_Mercator/cart:latitude_of_projection_origin">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Transverse_Mercator/cart:latitude_of_projection_origin/cart:latitude_of_projection_origin</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Transverse_Mercator/cart:longitude_of_central_meridian">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>cart:Transverse_Mercator/cart:longitude_of_central_meridian/cart:longitude_of_central_meridian</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Universal_Polar_Stereographic/cart:ups_zone_identifier">
      <sch:assert test=". = ('A', 'B', 'Y', 'Z')">
        <title>cart:Universal_Polar_Stereographic/cart:ups_zone_identifier/cart:ups_zone_identifier</title>
        The attribute cart:Universal_Polar_Stereographic/cart:ups_zone_identifier must be equal to one of the following values 'A', 'B', 'Y', 'Z'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Cartesian_Position_Base/cart:x_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Cartesian_Position_Base/cart:x_position/cart:x_position</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Cartesian_Position_Base/cart:y_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Cartesian_Position_Base/cart:y_position/cart:y_position</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Cartesian_Position_Base/cart:z_position">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Cartesian_Position_Base/cart:z_position/cart:z_position</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Length_Base/cart:x_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Length_Base/cart:x_length/cart:x_length</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Length_Base/cart:y_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Length_Base/cart:y_length/cart:y_length</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vector_Length_Base/cart:z_length">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vector_Length_Base/cart:z_length/cart:z_length</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:pixel_resolution_x">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Vertical/cart:pixel_resolution_x/cart:pixel_resolution_x</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:pixel_resolution_y">
      <sch:assert test="@unit = ('km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg')">
        <title>cart:Vertical/cart:pixel_resolution_y/cart:pixel_resolution_y</title>
        The attribute @unit must be equal to one of the following values 'km/pixel', 'm/pixel', 'mm/pixel', 'pixel/deg'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:x_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vertical/cart:x_axis_maximum/cart:x_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:x_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vertical/cart:x_axis_minimum/cart:x_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:y_axis_maximum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vertical/cart:y_axis_maximum/cart:y_axis_maximum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="cart:Vertical/cart:y_axis_minimum">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>cart:Vertical/cart:y_axis_minimum/cart:y_axis_minimum</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//cart:Cartography/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'cartography_parameters_to_image_object'">
        <title>local_reference_type_check_cart/Rule</title>
        In cart:Cartography, Local_Internal_Reference.local_reference_type must be equal to 'cartography_parameters_to_image_object'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//cart:Cartography">
      <sch:assert test="exists(cart:Spatial_Domain) or 
                 exists(cart:Spatial_Reference_Information/cart:Horizontal_Coordinate_System_Definition/cart:Local/cart:Map_Projection_Lander) or
                 exists(cart:Spatial_Reference_Information/cart:Horizontal_Coordinate_System_Definition/cart:Local/cart:Map_Projection_Rings)">
        <title>spatial_domain_or_lander_or_rings_check/Rule</title>
        cart:Spatial_Domain or cart:Map_Projection_Lander or cart:Map_Projection_Rings must be specified</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
