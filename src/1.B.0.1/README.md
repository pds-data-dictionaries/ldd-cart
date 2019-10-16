# Cartography Local Data Dictionary

Contains classes and attributes used to describe cartographic
    products.  This information is largely adapted from the FGDC "Content
    Standard for Digital Geospatial Metadata", with extensions (changes/
    additions) to satisfy planetary requirements.
    
    ## CHANGE LOG ##
    1.9.0.0
    - Upgraded to v1900 of the IM
    - Created new Map_Projection_Lander class with associated map projections and attributes
    - New pixel_scale attribute that defines a pixel scale not x/y aligned
    - Change units for pixel_scale_x/y to Units_of_Pixel_Scale_Map
    - Change units for pixel_resolution_x/y to Units_of_Pixel_Resolution_Map
    - Change local_georeference_information to optional in the case where Map_Projection_Lander is specified.
    - Created Local_child_check rule to check this
    - Change Spatial_Domain to optional in the case where Map_Projection_Lander is specified since domain is the horizon
    - Created spatial_domain_or_lander_check rule to check this
    - Added Local_Internal_Reference at top-level of Cartography dictionary
    - Created local_reference_type_check_cart rule to enforce value of Local_Internal_Reference
    
    1.9.0.1
    - Changed all class local_identifier to identifier_reference per v1900 IM update
    - Changed Coordinate_Space_Reference to inherit from Geometry dictionary
    
    1.9.0.2
    - CIsbell 24July2018
    - Added/corrected unit_of_measure_type where appropriate to correctly include 
      'Units_of_Pixel_Scale_Map' and 'Units_of_Pixel_Resolution_Map'
    
    1.9.1.0
    - Added Point Perspective Map Projection (CIsbell).
    - Note: As of 24July2018, parameters/attributes here include only those required to define the 'fundamental' Point Perspective (PP)
            Projection. That is, along with the common base projection parameters required for all projections, the additional PP
            requirements of target_center_distance and nadir point (longitude_of_central_meridian, latitude_of_projection_origin) 
            will define the basic PP projection. Additional parameters for a more 'complex' PP (line/sample sub-spacecraft offsets,
            optical offsets, focal parameters, image array segment definitions, etc, will need to be added as needed.
 
    1.9.1.1
    - CDeCesare 20181116
    - Removed definitions of classes which are already defined by GEOM dictionary: Vector_Cartesian_Unit_Base, Vector_Cartesian_Position_Base, Vector_Cartesian_No_Units
    - Updated references that point at Vector_Cartesian_Unit_Base to instead point at geom.Vector_Cartesian_Unit
    - Updated references that point at Vector_Cartesian_Position_Base to instead point at geom.Vector_Cartesian_Position_Base

    1.9.2.0
	PGeissler and THare 20181221
	- Added Oblique Cylindrical Map Projection 
    - Note: To support Cassini BIDR. This is a somewhat specialize map projection which requires several new projection parameters
            including: reference_latitude, reference_longitude, map_projection_rotation, oblique_proj_pole_latitude, 
			oblique_proj_pole_longitude, oblique_proj_pole_rotation, oblique_proj_x_axis_vector, oblique_proj_y_axis_vector, and
			oblique_proj_z_axis_vector. The original parameter center_latitude is now mapped to latitude_of_projection_origin and
			the original parameter center_longitude is now mapped to longitude_of_central_meridian. line, sample offsets are
			remapped into meters using upperleft_corner_x and upperleft_corner_y. 
    - Added many definitions for map projections (cartographic and lander). 
    - Removed "General Vertical Near-sided Projection" since it has functionally been replaced by "Point Perspective".

    1.9.3.0
  THare and PGeissler 20190307
  -  'Planar_Coordinate_Information' is no longer mandated to better support vector files. It should be added for images
  -  'cart.latitude_resolution' and 'cart:longitude_resolution' to be optional, not needed for vector GIS labels
  -  changed DD_Association to DD_Association_External as a temporary fix to support geom.Coordinate_Space_Reference
          under Surface_Model_Parameters and Map_Projection_Lander

Version: 1.9.3.0  
Steward: img

## Classes

### Cartography
The Cartography class provides a description of how a 3D sphere, spheroid, or elliptical spheroid or the celestial 
      sphere is mapped onto a plane.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
pds.Local_Internal_Reference | 1 | *
[Spatial_Domain](#spatial_domain) | 0 | 1
[Spatial_Reference_Information](#spatial_reference_information) | 1 | 1

### Spatial_Domain
The Spatial_Domain class describes the geographic areal
      domain of the data set.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Bounding_Coordinates](#bounding_coordinates) | 1 | 1

### Spatial_Reference_Information
The Spatial_Reference_Information class provides a
      description of the reference frame for, and the means to encode,
      coordinates in a data set.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Horizontal_Coordinate_System_Definition](#horizontal_coordinate_system_definition) | 1 | 1

### Bounding_Coordinates
The Bounding_Coordinates class defines the limits of coverage of a set of data expressed by latitude 
      and longitude values in the order western-most, eastern-most, northern-most, and southern-most.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[west_bounding_coordinate](#west_bounding_coordinate) | 1 | 1
[east_bounding_coordinate](#east_bounding_coordinate) | 1 | 1
[north_bounding_coordinate](#north_bounding_coordinate) | 1 | 1
[south_bounding_coordinate](#south_bounding_coordinate) | 1 | 1

### Horizontal_Coordinate_System_Definition
The Horizontal_Coordinate_System_Definition class provides the reference frame or system from which 
      linear or angular quantities are measured and assigned to the position that a point occupies.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Local](#local) | 1 | 1
[Geodetic_Model](#geodetic_model) | 0 | 1

### Geodetic_Model
The Geodetic_Model class provides parameters describing the shape of the planet.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[latitude_type](#latitude_type) | 1 | 1
[spheroid_name](#spheroid_name) | 0 | 1
[semi_major_radius](#semi_major_radius) | 1 | 1
[semi_minor_radius](#semi_minor_radius) | 1 | 1
[polar_radius](#polar_radius) | 1 | 1
[longitude_direction](#longitude_direction) | 1 | 1

### Geographic
The Geographic class provides information about the
      quantities of latitude and longitude which define the position of a
      point on a planetary body's surface with respect to a reference
      spheroid.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[latitude_resolution](#latitude_resolution) | 0 | 1
[longitude_resolution](#longitude_resolution) | 0 | 1

### Planar
The Planar class provides the quantities of distances, or
      distances and angles, which define the position of a point on a
      reference plane to which the surface of a planet has been
      projected.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Local_Planar](#local_planar) | 1 | 1
[Planar_Coordinate_Information](#planar_coordinate_information) | 0 | 1
[Geo_Transformation](#geo_transformation) | 0 | 1

### Local
The Local class provides a description of any coordinate
      system that is not aligned with the surface of the planet.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[local_description](#local_description) | 1 | 1
[local_georeference_information](#local_georeference_information) | 0 | 1
[Map_Projection_Lander](#map_projection_lander) | 0 | 1
[Surface_Model_Parameters](#surface_model_parameters) | 0 | 1

### Planar_Coordinate_Information
The Planar_Coordinate_Information class provides
      information about the coordinate system developed on the planar
      surface.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[planar_coordinate_encoding_method](#planar_coordinate_encoding_method) | 1 | 1
[Distance_and_Bearing_Representation](#distance_and_bearing_representation) | 1 | 1

### Map_Projection
The Map_Projection class provides the systematic representation of all or 
      part of the surface of a planet on a plane (or Cartesian system).

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[map_projection_name](#map_projection_name) | 1 | 1
[Transverse_Mercator](#transverse_mercator) | 1 | 1

### Grid_Coordinate_System
The Grid_Coordinate_System class defines a
      plane-rectangular coordinate system usually based on, and
      mathematically adjusted to, a map projection so that geographic
      positions can be readily transformed to and from plane
      coordinates.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[grid_coordinate_system_name](#grid_coordinate_system_name) | 1 | 1
[Universal_Transverse_Mercator](#universal_transverse_mercator) | 0 | 1
[Universal_Polar_Stereographic](#universal_polar_stereographic) | 0 | 1
[State_Plane_Coordinate_System](#state_plane_coordinate_system) | 0 | 1

### Local_Planar
The Local_Planar class defines any right-handed planar
      coordinate system of which the z-axis coincides with a plumb line
      through the origin that locally is aligned with the surface of the
      planet.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[local_planar_description](#local_planar_description) | 1 | 1
[local_planar_georeference_information](#local_planar_georeference_information) | 1 | 1

### Coordinate_Representation
The Coordinate_Representation class provides the method of
      encoding the position of a point by measuring its distance from
      perpendicular reference axes (the "coordinate pair" and "row and
      column" methods.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_resolution_x](#pixel_resolution_x) | 1 | 1
[pixel_resolution_y](#pixel_resolution_y) | 1 | 1
[pixel_scale_x](#pixel_scale_x) | 1 | 1
[pixel_scale_y](#pixel_scale_y) | 1 | 1

### Distance_and_Bearing_Representation
The Distance_and_Bearing_Representation class provides a
      method of encoding the position of a point by measuring its distance
      and direction (azimuth angle) from another point.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[distance_resolution](#distance_resolution) | 1 | 1
[bearing_resolution](#bearing_resolution) | 1 | 1
[bearing_reference_direction](#bearing_reference_direction) | 1 | 1
[bearing_reference_meridian](#bearing_reference_meridian) | 1 | 1

### Equirectangular
The Equirectangular class contains parameters for the
      Equirectangular projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1

### Lambert_Conformal_Conic
The Lambert_Conformal_Conic class contains parameters for
      the Lambert Conformal Conic projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 1 | 1

### Oblique_Mercator
The Oblique_Mercator class contains parameters for the
      Oblique Mercator projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1

### Point_Perspective
The Point Perspective class contains parameters for
      the Point Perpsective (fundemental definition) projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[target_center_distance](#target_center_distance) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 1 | 1

### Polar_Stereographic
The Polar_Stereographic class contains parameters for the
      Polar Stereographic projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[straight_vertical_longitude_from_pole](#straight_vertical_longitude_from_pole) | 1 | 1

### Polyconic
The Polyconic class contains parameters for the Polyconic
      projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 1 | 1

### Sinusoidal
The Sinusoidal class contains parameters for the Sinusoidal
      projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1

### Transverse_Mercator
The Transverse_Mercator class contains parameters for the
      Transverse Mercator projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[scale_factor_at_central_meridian](#scale_factor_at_central_meridian) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 1 | 1

### Universal_Transverse_Mercator
The Universal_Transverse_Mercator class defines a grid
      system based on the transverse mercator projection, applied between
      latitudes 84 degrees north and 80 degrees south on the planet's
      surface.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[utm_zone_number](#utm_zone_number) | 1 | 1
[Transverse_Mercator](#transverse_mercator) | 1 | 1

### Universal_Polar_Stereographic
The Universal_Polar_Stereographic class defines a grid
      system based on the polar stereographic projection, applied to the
      planet's polar regions north of 84 degrees north and south of 80
      degrees south.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[ups_zone_identifier](#ups_zone_identifier) | 1 | 1
[Polar_Stereographic](#polar_stereographic) | 1 | 1

### Oblique_Cylindrical
The Oblique_Cylindrical class contains parameters for the
      Oblique Cylindrical projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Map_Projection_Base](#map_projection_base) | 1 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 1 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 1 | 1
[reference_latitude](#reference_latitude) | 1 | 1
[reference_longitude](#reference_longitude) | 1 | 1
[map_projection_rotation](#map_projection_rotation) | 1 | 1
[oblique_proj_pole_latitude](#oblique_proj_pole_latitude) | 1 | 1
[oblique_proj_pole_longitude](#oblique_proj_pole_longitude) | 1 | 1
[oblique_proj_pole_rotation](#oblique_proj_pole_rotation) | 1 | 1
[oblique_proj_x_axis_vector](#oblique_proj_x_axis_vector) | 1 | 1
[oblique_proj_y_axis_vector](#oblique_proj_y_axis_vector) | 1 | 1
[oblique_proj_z_axis_vector](#oblique_proj_z_axis_vector) | 1 | 1
[look_direction](#look_direction) | 1 | 1

### State_Plane_Coordinate_System
The State_Plane_Coordinate_System class defines a
      plane-rectangular coordinate system established for each state in the
      United States by the National Geodetic Survey.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[spcs_zone_identifier](#spcs_zone_identifier) | 1 | 1
[Polyconic](#polyconic) | 1 | 1

### Oblique_Line_Azimuth
The Oblique_Line_Azimuth class defines the method used to
      describe the line along which an oblique mercator map projection is
      centered using the map projection origin and an azimuth.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[azimuthal_angle](#azimuthal_angle) | 1 | 1
[azimuth_measure_point_longitude](#azimuth_measure_point_longitude) | 1 | 1

### Oblique_Line_Point
The Oblique_Line_Point class defines the method used to
      describe the line along which an oblique mercator map projection is
      centered using two points near the limits of the mapped region that
      define the center line.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Oblique_Line_Point_Group](#oblique_line_point_group) | 2 | 2

### Map_Projection_Base
An abstract class that serves as the parent class to all
      the map projections.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[straight_vertical_longitude_from_pole](#straight_vertical_longitude_from_pole) | 0 | 1
[scale_factor_at_projection_origin](#scale_factor_at_projection_origin) | 0 | 3
[scale_factor_at_center_line](#scale_factor_at_center_line) | 0 | 1
[scale_factor_at_central_meridian](#scale_factor_at_central_meridian) | 0 | 1
[longitude_of_central_meridian](#longitude_of_central_meridian) | 0 | 1
[Oblique_Line_Point](#oblique_line_point) | 0 | 1
[latitude_of_projection_origin](#latitude_of_projection_origin) | 0 | 1

### Map_Projection_Lander
The Map_Projection class provides the systematic representation 
      of all or part of the surface of a planet on a plane or developable surface 
      from the perspective of an in-situ spacecraft.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[lander_map_projection_name](#lander_map_projection_name) | 1 | 1
[Orthorectified](#orthorectified) | 1 | 1

### Surface_Model_Parameters
TBD

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[surface_model_type](#surface_model_type) | 1 | 1
[Surface_Model_Spherical](#surface_model_spherical) | 1 | 1

### Surface_Model_Planar
TBD

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Surface_Normal](#vector_surface_normal) | 1 | 1
[Vector_Surface_Ground_Location](#vector_surface_ground_location) | 1 | 1

### Surface_Model_Spherical
TBD

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[sphere_radius](#sphere_radius) | 0 | 1
[sphere_intersection_count](#sphere_intersection_count) | 0 | 1
[Vector_Sphere_Center](#vector_sphere_center) | 1 | 1

### Cylindrical
This is an in-situ projection used for (non-stereo) panoramas. 
      Each image row represents a constant elevation and each image column 
      represents a constant azimuth, from a given point of view.  The image 
      scale in degrees per pixel is constant across the image.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_scale_x](#pixel_scale_x) | 1 | 1
[pixel_scale_y](#pixel_scale_y) | 0 | 1
[maximum_elevation](#maximum_elevation) | 1 | 1
[minimum_elevation](#minimum_elevation) | 1 | 1
[start_azimuth](#start_azimuth) | 1 | 1
[stop_azimuth](#stop_azimuth) | 1 | 1
[zero_elevation_line](#zero_elevation_line) | 1 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1

### Perspective
This is an in-situ projection that models a pinhole camera.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_scale_x](#pixel_scale_x) | 1 | 1
[pixel_scale_y](#pixel_scale_y) | 0 | 1
[maximum_elevation](#maximum_elevation) | 1 | 1
[minimum_elevation](#minimum_elevation) | 1 | 1
[start_azimuth](#start_azimuth) | 1 | 1
[stop_azimuth](#stop_azimuth) | 1 | 1
[projection_azimuth](#projection_azimuth) | 1 | 1
[projection_elevation](#projection_elevation) | 1 | 1
[Camera_Model_Offset](#camera_model_offset) | 1 | 1

### Cylindrical_Perspective
This is an in-situ projection that is a hybrid.  Each 
      column is a vertical slice from a pinhole camera (Perspective 
      projection), while the columns are spaced evenly in azimuth 
      (Cylindrical projection).  It is most useful for viewing panoramas 
      in stereo.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_scale_x](#pixel_scale_x) | 1 | 1
[pixel_scale_y](#pixel_scale_y) | 0 | 1
[maximum_elevation](#maximum_elevation) | 0 | 1
[minimum_elevation](#minimum_elevation) | 0 | 1
[projection_azimuth](#projection_azimuth) | 0 | 1
[projection_elevation](#projection_elevation) | 1 | 1
[projection_elevation_line](#projection_elevation_line) | 1 | 1
[start_azimuth](#start_azimuth) | 1 | 1
[stop_azimuth](#stop_azimuth) | 1 | 1
[projection_axis_offset](#projection_axis_offset) | 0 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1
[Vector_Projection_Z_Axis](#vector_projection_z_axis) | 0 | 1

### Polar
This is an in-situ projection that provides a quasi-overhead 
      view that extends to the horizon.  Elevation is measured radially outward 
      from the nadir location, with a constant pixel scale.  Azimuth is 
      measured along concentric circles centered at the nadir.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_scale](#pixel_scale) | 1 | 1
[maximum_elevation](#maximum_elevation) | 1 | 1
[reference_azimuth](#reference_azimuth) | 1 | 1
[Pixel_Position_Nadir_Polar](#pixel_position_nadir_polar) | 0 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1

### Vertical
This is an in-situ projection that provides an overhead view. 
      By projecting to a surface model, the need for range data is eliminated, 
      but significant layover effects can happen when the actual geometry does 
      not match the surface model.  It has a constant scale in meters/pixel, subject 
      to layover distortion.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_resolution_x](#pixel_resolution_x) | 1 | 1
[pixel_resolution_y](#pixel_resolution_y) | 0 | 1
[x_axis_maximum](#x_axis_maximum) | 1 | 1
[x_axis_minimum](#x_axis_minimum) | 1 | 1
[y_axis_maximum](#y_axis_maximum) | 1 | 1
[y_axis_minimum](#y_axis_minimum) | 1 | 1
[Pixel_Position_Origin](#pixel_position_origin) | 0 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1

### Orthographic_Lander
This is an in-situ projection that is a generalization of 
      the Vertical projection, in that any arbitrary projection plane can be 
      specified.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_resolution_x](#pixel_resolution_x) | 1 | 1
[pixel_resolution_y](#pixel_resolution_y) | 0 | 1
[x_axis_maximum](#x_axis_maximum) | 1 | 1
[x_axis_minimum](#x_axis_minimum) | 1 | 1
[y_axis_maximum](#y_axis_maximum) | 1 | 1
[y_axis_minimum](#y_axis_minimum) | 1 | 1
[Pixel_Position_Origin](#pixel_position_origin) | 0 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1
[Vector_Projection_X_Axis](#vector_projection_x_axis) | 0 | 1
[Vector_Projection_Y_Axis](#vector_projection_y_axis) | 0 | 1
[Vector_Projection_Z_Axis](#vector_projection_z_axis) | 0 | 1

### Orthorectified
This is an in-situ projection that provides a true overhead 
      view of the scene.  Range data is required to create this projection, 
      meaning there is no parallax distortion.  It has a constant scale in 
      meters/pixel.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[pixel_resolution_x](#pixel_resolution_x) | 1 | 1
[pixel_resolution_y](#pixel_resolution_y) | 1 | 1
[x_axis_maximum](#x_axis_maximum) | 1 | 1
[x_axis_minimum](#x_axis_minimum) | 1 | 1
[y_axis_maximum](#y_axis_maximum) | 1 | 1
[y_axis_minimum](#y_axis_minimum) | 1 | 1
[Pixel_Position_Origin](#pixel_position_origin) | 0 | 1
[Vector_Projection_Origin](#vector_projection_origin) | 0 | 1
[Vector_Projection_X_Axis](#vector_projection_x_axis) | 0 | 1
[Vector_Projection_Y_Axis](#vector_projection_y_axis) | 0 | 1
[Vector_Projection_Z_Axis](#vector_projection_z_axis) | 0 | 1

### Vector_Surface_Normal
The Vector_Surface_Normal class specifies a vector normal to the planar surface. This vector is measured in the 
      coordinates specified by the Coordinate_Space reference in the Surface_Model_Parameters class.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Unit_Base](#vector_cartesian_unit_base) | 1 | 1

### Vector_Surface_Ground_Location
The Vector_Surface_Ground_Location class specifies any point on the surface. This point is measured in the 
      coordinates specified by the Coordinate_Space reference in the Surface_Model_Parameters class.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Position_Base](#vector_cartesian_position_base) | 1 | 1

### Vector_Sphere_Center
The Vector_Sphere_Center class specifies the center of the sphere. This point is measured in the coordinates specified by 
      the Coordinate_Space reference in the Surface_Model_Parameters class.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Position_Base](#vector_cartesian_position_base) | 1 | 1

### Vector_Projection_Origin
The Vector_Projection_Origin class specifies the location of the origin of the projection. For Polar and Cylindrical 
      projections, this is the XYZ point from which all the azimuth/elevation rays emanate. For the Cylindrical-Perspective 
      projection, this defines the center of the circle around which the synthetic camera orbits. For Orthographic, Orthorectified, 
      and Vertical projections, this optional keyword specifies the point on the projection plane that serves as the origin of 
      the projection (i.e. all points on a line through this point in the direction of PROJECTION_Z_AXIS_VECTOR will be 
      ocated at X=Y=0 in the projection). If not present, (0,0,0) should be assumed. This translation is generally not necessary 
      and not often used; the (X|Y)_AXIS_MINIMUM and (X|Y)_AXIS_MAXIMUM fields allow the mosaic to be located arbitrarily 
      in the projection plane.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Position_Base](#vector_cartesian_position_base) | 1 | 1

### Vector_Projection_X_Axis
The Vector_Projection_X_Axis class specifies a unit vector defining the X-axis for a given projection. For Orthographic, 
      Orthorectified, and Vertical projections, this vector defines how the * axis in the mosaic is oriented in space. The X and Y axis 
      vectors together define the rotation of the projection plane around the projection axis.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Unit_Base](#vector_cartesian_unit_base) | 1 | 1

### Vector_Projection_Y_Axis
The Vector_Projection_Y_Axis class specifies a unit vector defining the Y-axis for a given projection. For Orthographic, Orthorectified, and Vertical 
      projections, this vector defines how the * axis in the mosaic is oriented in space. The X and Y axis vectors together define 
      the rotation of the projection plane around the projection axis.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Unit_Base](#vector_cartesian_unit_base) | 1 | 1

### Vector_Projection_Z_Axis
The Vector_Projection_Z_Axis class specifies a unit vector defining the Z axis for a given projection. For Orthographic, 
      Orthorectified, and Vertical projections, this vector defines the projection axis for the mosaic. All points along a line parallel 
      to this axis are projected to the same spot in the projection plane. For the Cylindrical-Perspective projections, this defines the 
      new axis of the circle around which the synthetic camera orbits (i.e. the normal to the circle), after the cameras have been rotated 
      to correct for rover tilt. CAMERA_ROTATION_AXIS_VECTOR contains the axis before rotation; the difference in these two indicate the 
      rotation amount.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[Vector_Cartesian_Unit_Base](#vector_cartesian_unit_base) | 1 | 1

### Vector_Length_Base
The Vector_Length_Base is an abstract class that forms the base of length-based x, y, z vectors.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[x_length](#x_length) | 1 | 1
[y_length](#y_length) | 1 | 1
[z_length](#z_length) | 1 | 1

### Vector_Cartesian_Unit_Base
This is a generic unit vector in Cartesian space.
      The "x", "y", and "z" component have no units and are restricted to
      values between -1.0 and 1.0 inclusive. Further the length of the 
      vector square root of the (sum of the squares of the components) 
      must be 1.0.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[x_unit](#x_unit) | 1 | 1
[y_unit](#y_unit) | 1 | 1
[z_unit](#z_unit) | 1 | 1

### Vector_Cartesian_Position_Base
The Vector_Cartesian_Position_Base is a three dimensional,  
      rectangular coordinates vector. Uses units of length. The   
      included attributes are not sufficient to identify the  
      endpoints of the vector.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[x_position](#x_position) | 1 | 1
[y_position](#y_position) | 1 | 1
[z_position](#z_position) | 1 | 1

### Vector_Cartesian_No_Units
This is a generic vector in Cartesian space.
      The "x", "y", and "z" component have no units.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[x](#x) | 1 | 1
[y](#y) | 1 | 1
[z](#z) | 1 | 1

### Camera_Model_Offset
The Camera_Model_Offset class specifies the location of the image origin with respect to the camera model's origin. 
      For CAHV/CAHVOR models, this origin is not the center of the camera, but is the upper-left corner 
      of the "standard"-size image, which is encoded in the CAHV vectors. Applies to the Perspective lander map projection.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[line](#line) | 1 | 1
[sample](#sample) | 1 | 1

### Pixel_Position_Nadir_Polar
The Pixel_Position_Nadir_Polar class specifies the sample coordinate of the location in the image of the "special" 
      point of the mosaic. For Polar projections, this is the nadir of the polar projection. In PDS3, this information was specified 
      using the LINE_PROJECTION_OFFSET and SAMPLE_PROJECTION_OFFSET keywords.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[line](#line) | 1 | 1
[sample](#sample) | 1 | 1

### Pixel_Position_Origin
The Pixel_Position_Origin class specifies the sample coordinate of the location in the image of the "special" point 
      of the mosaic. For Vertical, Orthographic and Orthorectified projections, this is the origin of the projected coordinate system, 
      corresponding to the Vector_Projection_Origin. In PDS3, this information was specified using the LINE_PROJECTION_OFFSET and 
      SAMPLE_PROJECTION_OFFSET keywords.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[line](#line) | 1 | 1
[sample](#sample) | 1 | 1

### Oblique_Line_Point_Group
The Oblique_Line_Point_Group class provides the coordinates
      in latitude and longitude of one end point of the line along which an
      oblique mercator map projection is centered.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[oblique_line_latitude](#oblique_line_latitude) | 1 | 1
[oblique_line_longitude](#oblique_line_longitude) | 1 | 1

### Geo_Transformation
The GEO_Transformation describes the relationship between raster 
      positions (in pixel/line coordinates) and georeferenced coordinates. This is 
      defined by an affine transform. The affine transform consists of six coefficients 
      which map pixel/line coordinates into georeferenced space using the following relationship:
      Xgeo = GT(0) + Xpixel*GT(1) + Yline*GT(2)
      Ygeo = GT(3) + Xpixel*GT(4) + Yline*GT(5)

      or also defined as:
      GT[0] = Xmin;           // upperleft_corner_y
      GT[1] = CellSize in X;  // W-E pixel size, pixel_resolution_x
      GT[2] = 0;              // rotation term, 0 if 'North Up'
      GT[3] = Ymax;           // upperleft_corner_y
      GT[4] = 0;              // shear term, 0 if 'North Up'
      GT[5] = CellSize in Y;  // N-S pixel size, pixel_resolution_y
    
      In case of north up images, the GT(2) and GT(4) coefficients are zero, and the GT(1) 
      is pixel width (pixel_resolution_x), and GT(5) is pixel height (pixel_resolution_y). 
      The (GT(0),GT(3)) position is the top left corner of the top left pixel of the raster.
      Note that the pixel/line coordinates in the above are from (0.5,0.5) at the top left corner 
      of the top left pixel to (width_in_pixels,height_in_pixels) at the bottom right corner of 
      the bottom right pixel. The pixel/line location of the center of the top left pixel would 
      therefore be (1.0,1.0).

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[upperleft_corner_x](#upperleft_corner_x) | 0 | 1
[upperleft_corner_y](#upperleft_corner_y) | 0 | 1
## Attributes


### target_center_distance
The target_center_distance attribute provides the distance to target center, 
      in meters, relative to the observing system.

Type: ASCII_Real  
Units: Units_of_Length  



### upperleft_corner_x
The upperleft_corner_x and upperleft_corner_y attributes provide the projection x and y values, 
      in meters, relative to the map projection origin, at sample 0.5 and line 0.5 (upper left corner 
      of pixel 1,1 within image array).
                 
      (0.5,0.5) - upper left corner (edge) of pixel 1,1
      /
      #---+---+-> I    where # is X,Y location in meters,
      | * |   |                relative to map projection origin.
      +---+---+        where * is pixel coordinate (1.0,1.0)
      |        \
      J         pixel coordinate (2.5,1.5)

Type: ASCII_Real  
Units: Units_of_Length  



### upperleft_corner_y
The upperleft_corner_x and upperleft_corner_y attributes provide the projection x and y values, 
      in meters, relative to the map projection origin, at sample 0.5 and line 0.5 (upper left corner 
      of pixel 1,1 within image array).
      
      (0.5,0.5) - upper left corner (edge) of pixel 1,1
      /
      #---+---+-> I    where # is X,Y location in meters,
      | * |   |                relative to map projection origin.
      +---+---+        where * is pixel coordinate (1.0,1.0)
      |        \
      J         pixel coordinate (2.5,1.5)

Type: ASCII_Real  
Units: Units_of_Length  



### scale_factor_at_projection_origin
The scale_factor_at_projection_origin attribute
      provides a multiplier for reducing a distance obtained from a 
      map by computation or scaling to the actual distance at the 
      projection origin.

Type: ASCII_Real  
Units: Units_of_None  



### west_bounding_coordinate
The west_bounding_coordinate attribute provides the
      western-most coordinate of the limit of coverage expressed in
      longitude.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### east_bounding_coordinate
The east_bounding_coordinate attribute provides the
      eastern-most coordinate of the limit of coverage expressed in
      longitude.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### north_bounding_coordinate
The north_bounding_coordinate attribute provides the
      northern-most coordinate of the limit of coverage expressed in
      latitude.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### south_bounding_coordinate
The south_bounding_coordinate attribute provides the
      southern-most coordinate of the limit of coverage expressed in
      latitude.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### spheroid_name
The spheroid_name attribute provides the identification
      given to established representations of a planet's shape.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  



### semi_major_radius
The semi_major_axis attribute provides the radius of the
      equatorial axis of the ellipsoid.

Type: ASCII_Real  
Units: Units_of_Length  



### semi_minor_radius
The semi_minor_radius attribute provides the value of the
      intermediate axis of the ellipsoid that defines the approximate shape
      of a target body.  The semi-minor axis is usually in the equatorial
      plane.

Type: ASCII_Real  
Units: Units_of_Length  



### polar_radius
The polar_radius attribute provides the value of the
      semiminor axis of the ellipsoid that defines the approximate shape of
      a target body.  The polar radius is normal to the plane defined by
      the semi-major and semi-minor axes.

Type: ASCII_Real  
Units: Units_of_Length  



### longitude_direction
The longitude_direction attribute identifies the direction
      of longitude (e.g. POSITIVE_EAST or POSITIVE_WEST) for a planet.	The
      IAU definition for direction of positive longitude should be adopted: 
      http://astrogeology.usgs.gov/groups/IAU-WGCCRE. Typically, for planets 
      with prograde (direct) rotations, positive longitude direction is to 
      the west.  For planets with retrograde rotations, positive longitude 
      direction is to the east.  Generally the Positive West longitude_direction 
      is used for planetographc systems and Positive East is used for 
      planetocentric systems.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Positive East | Positive East longitudes (i.e., longitudes measured positively 
        to the east) will be used when the bodies rotation is retrograde. Because 
        of tradition, the Earth, Sun, and Moon do not conform with this definition. 
        Their rotations are direct and longitudes run both east and west 180 degree, 
        or east 360 degree.
Positive West | Positive West longitudes (i.e., longitudes measured 
        positively to the west) will be used when the rotation is prograde (direct).


### latitude_type
The latitude_type attribute defines the type of latitude 
      (planetographic, planetocentric) used within a cartographic product 
      and as reflected in attribute values within associated PDS labels. 
      For planets and satellites, latitude is measured north and south of 
      the equator; north latitudes are designated as positive. The planetocentric 
      latitude is the angle between the equatorial plane and a line from the 
      center of the body. The planetographic latitude is the angle between 
      the equatorial plane and a line that is normal to the body. In summary, 
      both latitudes are equivalent on a sphere (i.e., equatorial radius equal 
      to polar radius); however, they differ on an ellipsoid (e.g., Mars, Earth).
      For more on latitude_type, please see the IAU publication available here: 
      http://astrogeology.usgs.gov/groups/IAU-WGCCRE

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Planetographic | The planetographic latitude is the angle between 
        the equatorial plane and a line that is normal to the body.
Planetocentric | The planetocentric latitude is the angle between 
        the equatorial plane and a line from the center of the body.


### latitude_resolution
The latitude_resolution attribute indicates the minimum
      difference between two adjacent latitude values expressed in angular
      units of measure.

Type: ASCII_Real  
Units: Units_of_Angle  



### longitude_resolution
The longitude_resolution attribute indicates the minimum
      difference between two adjacent longitude values expressed in angular
      units of measure.

Type: ASCII_Real  
Units: Units_of_Angle  



### local_description
The local_description attribute provides a description of
      the coordinate system and its orientation to the surface of a
      planet.

Type: ASCII_Text_Preserved  
Units: Units_of_None  



### local_georeference_information
The local_georeference_information attribute provides a description of
      the information provided to register the local system to a planet
      (e.g. control points, satellite ephemeral data, inertial navigation
      data).

Type: ASCII_Text_Preserved  
Units: Units_of_None  



### planar_coordinate_encoding_method
The planar_coordinate_encoding_method attribute indicates
      the means used to represent horizontal positions.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Coordinate Pair | A method of encoding the position of a point by measuring its distance
          from perpendicular reference axes (Casrtesian plane). The coordinate pair (x,y), 
          generally in meters, is defined such that x is determined by its horizontal distance
          from the origin and y is determined by its vertical distance from the origin.
Distance and Bearing | A method of encoding the position of a point by measuring 
          its distance and direction (azimuth angle) from another point.
Row and Column | A method of encoding the position of a point by measuring its distance
          from perpendicular reference axes (Casrtesian plane). The coordinate pair (row,column), 
          generally in pixels, is defined such that the row is determined by its horizontal
          distance from the origin and column is determined by its vertical distance from the 
          origin.


### map_projection_name
The map_projection_name attribute provides the name of the
      map projection. Definitions when available are from Synder, J.P., 1987,
      Map Projections: A Working Manual, USGS Numbered Series,
      Professional Paper 1395, URL: https://doi.org/10.3133/pp1395.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Albers Conical Equal Area | Projection is mathematically based on a cone that is conceptually 
          secant on two parallels. No areal deformation. North or South Pole is 
          represented by an arc. Retains its properties at various scales; individual maps 
          can be joined along their edges.
Azimuthal Equidistant | Projection is mathematically based on a plane tangent to the body. 
          The entire body can be represented. Generally the Azimuthal Equidistant map 
          projection portrays less than one hemisphere, though the other hemisphere can 
          be portrayed but is much distorted. Has true direction and true distance 
          scaling from the point of tangency.
Equidistant Conic | Projection is mathematically based on a cone that is tangent at 
          one parallel or conceptually secant at two paralle ls. North or South Pole is 
          represented by an arc.
Equirectangular | Also called Equidistant Cylindrical, this projection is neither 
          equal-area or conformal and is known for its very simple construction. Equations only
          allow spherical body definitions. The meridians and parallels are all equidistant
          straight parallel lines, intersecting at right angles. If the Equator is made the
          standard parallel, true to scale and free of distortion, the meridians are spaced at 
          the same distances as the  parallels, and the graticule appears square. This form is
          often called the Plate Carree or the Simple Cylindrical projection.
Gnomonic | This projection is geometrically projected onto a plane, and 
          the point of projection is at the center of the body. It is impossible to show 
          a full hemisphere with one Gnomonic map. It is the only projection in which any 
          straight line is a great circle, and it is the only projection that shows the 
          shortest distance between any two points as a straight line.
Lambert Azimuthal Equal Area | The Lambert Azimuthal Equal-Area projection is mathematically 
          based on a plane tangent to the body. It is the only projection that can accurately 
          represent both areas and true direction from the center of the projection. This 
          projection generally represents only one hemisphere.
Lambert Conformal Conic | Projection is mathematically based on a cone that is tangent 
          at one parallel or (more often) that is conceptually secant on two parallels. 
          Areal distortion is minimal but increases away from the standard parallels. 
          North or South Pole is represented by a point; the other pole cannot be 
          shown. Great circle lines are approximately straight. It retains its properties 
          at various scale and maps can be joined along their edges.
Mercator | Projection can be thought of as being mathematically based on 
          a cylinder tangent at the equator. Any straight line is a constant-azimuth 
          (rhumb) line. Areal enlargement is extreme away from the equator; poles 
          cannot be represented. Shape is true only within any small area. Reasonably 
          accurate projection within a 15 degree band along the line of tangency.
Miller Cylindrical | Similar to Mercator, this projection is neither equal-area or conformal. 
          Equations only allow spherical body definitions. The meridians and parallels are straight 
          lines, intersecting at right angles. Meridians are equidistant and parallels are spaced 
          farther apart away from Equator. Generally used for global maps.
Oblique Cylindrical | This projection works by moving the north pole of the simple cylindrical
          projection. The pole latitude and longitude are the location of the new north pole, 
          and the rotation is the equivalent to the center longitude in simple cylindrical.
          Because of the supported rotation parameter, this projection is pretty uniquely used in 
          the planetary community and it is impleneted in USGS's Integrated Software for Imagers 
          and Spectrometers v2/3 (ISIS3) suite.
Oblique Mercator | The projection is mathematically based on a cylinder tangent along any 
          great circle other than the equator or a meridian. Shape is true only within any small 
          area. Areal enlargement increases away from the line of tangency. Reasonably accurate 
          projection within a 15 degree band along the line of tangency.
Orthographic | The Orthographic projection is geometrically based on a plane tangent 
          to the earth, and the point of projection is at infinity. The body appears as it 
          would from outer space. This projection is a truly graphic representation of the body 
          and is a projection in which distortion becomes a visual aid. It is the most familiar 
          of the azimuthal map projections. Directions from the center of the Orthographic map 
          projection are true.
Point Perspective | Simimlar to Orthographic, this projection is often used to show the body
          as seen from space. This appears to be the same as the the Vertical Perspective 
          projection as define in Synder, J.P., 1987, Map Projections: A Working Manual.  
          Vertical Perspective projections are azimuthal. Central meridian and a particular 
          parallel (if shown) are straight lines. Other meridians and parallels are usually 
          arcs of circles or ellipses, but some may be parabolas or hyperbolas. This is neither
          conformal or equal-area.
Polar Stereographic | Related to the Stereographic projection but generally centered directly 
          at the North or South Pole of the body. This resembles other polar azimuthals, 
          with straight radiating meridians and concentric circles for parallels. The parallels 
          are spaced at increasingly wide distances the farther the latitude is from the pole.
Polyconic | Projection is mathematically based on an infinite number of cones tangent 
          to an infinite number of parallels. Distortion increases away from the central meridian. 
          Has both areal and angular deformation.
Robinson | Also called orthophanic, Robinson is a compromise projection used for global 
          maps. Meridians are equally spaced and resemble elliptical arcs, concave toward the central 
          meridian. The poles are 0.53 times the length of the equator.
Sinusoidal | Projection is mathematically based on a cylinder tangent on the equator. 
          Meridian spacing is equal and decreases toward the poles. Parallel spacing is equal. 
          There is no angular deformation along the central meridian and the equator. Cannot be 
          edge-joined in an east-west direction if each map has its own central meridian.
Space Oblique Mercator | The Space Oblique Mercator (SOM) projection visually differs from the
          Oblique Mercator projection in that the central line (the groundtrack of the orbiting 
          satellite) is slightly curved, rather than straight.
Stereographic | The Stereographic projection is geometrically projected onto a plane, 
          and the point of the projection is on the surface of the sphere opposite the point 
          of tangency. Circles on the body appear as straight lines, parts of circles, or circles 
          on the projection. Directions from the center of the stereographic map projection are 
          true. Generally only one hemisphere is portrayed.
Transverse Mercator | Projection is mathematically based on a cylinder tangent to a meridian. 
          Shape is true only within any small area. Areal enlargment increases away from the 
          tangent meridian. Reasonably accurate projection within a 15 degree band along the line of 
          tangency. Cannot be edge-joined in an east-west direction if each map has its own 
          central meridian.
van der Grinten | The projection has both areal and angular deformation. It was conceived 
          as a compromise between the Mercator and the Mollweide projection, which shows the world in
          an ellipse. The Vander Grinten shows the world in a circle.


### grid_coordinate_system_name
The grid_coordinate_system_name attribute provides the name
      of the grid coordinate system.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Universal Transverse Mercator | The UTM is the ellipsoidal Transverse Mercator to which specific parameters, 
          such as central meridians, have been applied. This is generally used for Earth. The Earth, 
          between lats. 84 degrees North and 80 degrees South, is divided into 60 zones each generally 6 degrees wide in longitude. 
          Bounding meridians are evenly divisible by 6 degrees, and zones are numbered from 1 to 60 proceeding 
          east from the 180th meridian from Greenwich with minor exceptions.
Universal Polar Stereographic | Like Universal Transverse Mercator (UTM), UPS is a method to split up the Earth
          into quads. When the latitude is from 84 degrees North and 80 degrees South to the respective poles, the (UPS) 
          projection is used.
State Plane Coordinate System 1927 | In the United States, it is the projection used in the State Plane Coordinate 
          System (SPCS) for States with predominant north-south extent. (The Lambert Conformal Conic 
          is used for the others, except for the panhandle of Alaska, which is prepared on the Oblique
          Mercator. Alaska, Florida, and New York use both the Transverse Mercator and the Lambert 
          Conformal Conic for different zones.) Except for narrow States, such as Delaware, New Hampshire, 
          and New Jersey, all States using the Transverse Mercator are divided into two to eight zones, 
          each with its own central meridian, along which the scale is slightly reduced to balance
          the scale throughout the map. Each zone is designed to maintain scale distortion within 1 part 
          in 10,000. 1927 refers to the use of the 1927 North American Datum (NAD27).
State Plane Coordinate System 1983 | In the United States, it is the projection used in the State Plane Coordinate 
          System (SPCS) for States with predominant north-south extent. (The Lambert Conformal Conic 
          is used for the others, except for the panhandle of Alaska, which is prepared on the Oblique
          Mercator. Alaska, Florida, and New York use both the Transverse Mercator and the Lambert 
          Conformal Conic for different zones.) Except for narrow States, such as Delaware, New Hampshire, 
          and New Jersey, all States using the Transverse Mercator are divided into two to eight zones, 
          each with its own central meridian, along which the scale is slightly reduced to balance
          the scale throughout the map. Each zone is designed to maintain scale distortion within 1 part 
          in 10,000. 1983 refers to the use of the 1983 North American Datum (NAD83).
ARC Coordinate System | the Equal Arc-second Coordinate System, a plane-rectangular coordinate system 
          established in Department of Defense, 1990.
Other Grid System | a complete description of a grid system, not defined elsewhere in this standard, 
          that was used for the data set. The information provided shall include the name of the grid 
          system, the names of the parameters and values used for the data set, and the citation of the 
          specification for the algorithms that describe the mathematical relationship between the body 
          and the coordinates of the grid system.


### local_planar_description
The local_planar_description attribute provides a description of the local planar system.

Type: ASCII_Text_Preserved  
Units: Units_of_None  



### local_planar_georeference_information
The local_planar_georeference_information attribute
      provides a description of the information provided to register the
      local planar system to a planet (e.g. control points, satellite
      ephemeral data, inertial navigation data).

Type: ASCII_Text_Preserved  
Units: Units_of_None  



### pixel_resolution_x
The pixel_resolution_x and pixel_resolution_y attributes indicate the image
      array pixel resolution (distance/pixel or degree/pixel) relative to the
      Cartesian (x,y) coordinate system as defined by the map projection. Due to
      varying properties across different map projections, actual surface distances
      for an individual pixel may be accurate only at specific location(s) within the
      image array (e.g. reference latitude or longitude, standard parallels, etc). For
      most PDS products, x and y resolution values are equal ('square' pixels). The
      inclusion of both x and y attributes allows for anticipated products where
      resolution may differ for each axis ('rectangular' pixels).
      
      NOTE: Definition of this PDS4 attribute differs from how 'resolution' was defined within PDS3.

Type: ASCII_Real  
Units: Units_of_Pixel_Resolution_Map  



### pixel_resolution_y
The pixel_resolution_x and pixel_resolution_y attributes indicate the image
      array pixel resolution (distance/pixel or degree/pixel) relative to the
      Cartesian (x,y) coordinate system as defined by the map projection. Due to
      varying properties across different map projections, actual surface distances
      for an individual pixel may be accurate only at specific location(s) within the
      image array (e.g. reference latitude or longitude, standard parallels, etc). For
      most PDS products, x and y resolution values are equal ('square' pixels). The
      inclusion of both x and y attributes allows for anticipated products where
      resolution may differ for each axis ('rectangular' pixels).
      
      NOTE: Definition of this PDS4 attribute differs from how 'resolution' was defined within PDS3.

Type: ASCII_Real  
Units: Units_of_Pixel_Resolution_Map  



### pixel_scale_x
The pixel_scale_x and pixel_scale_y attributes indicate the image array
        pixel scale (pixel/degree or pixel/distance) relative to the Cartesian (x,y)
        coordinate system as defined by the map projection. Due to varying
        properties across different map projections, actual surface distances for an
        individual pixel may be accurate only at specific location(s) within the
        image array (e.g. reference latitude or longitude, standard parallels, etc).
        For most PDS products, x and y scale values are equal ('square' pixels). The
        inclusion of both x and y attributes allows for anticipated products where
        scale may differ for each axis ('rectangular' pixels).
        
        NOTE1: For presentation of hard-copy maps, a map scale is traditionally
        expressed as a 'representative fraction' (the ratio of a hard-copy map to the
        actual subject surface (e.g. 1:250,000, where one unit of measure on the map
        equals 250,000 of the same unit on the body surface)). This usage is relevant
        when map/data are presented on hard-copy media (paper, computer screen,etc).
        When defining pixel scale within a stored image/array context here, we are
        expressing a ratio between the image array and the actual surface (thus,
        pixel/degree or pixel/distance units).
        
        NOTE2: Definition of this PDS4 attribute differs from how 'scale' was defined within PDS3

Type: ASCII_Real  
Units: Units_of_Pixel_Scale_Map  



### pixel_scale_y
The pixel_scale_x and pixel_scale_y attributes indicate the image array
      pixel scale (pixel/degree or pixel/distance) relative to the Cartesian (x,y)
      coordinate system as defined by the map projection. Due to varying
      properties across different map projections, actual surface distances for an
      individual pixel may be accurate only at specific location(s) within the
      image array (e.g. reference latitude or longitude, standard parallels, etc).
      For most PDS products, x and y scale values are equal ('square' pixels). The
      inclusion of both x and y attributes allows for anticipated products where
      scale may differ for each axis ('rectangular' pixels).

      NOTE1: For presentation of hard-copy maps, a map scale is traditionally
      expressed as a 'representative fraction' (the ratio of a hard-copy map to the
      actual subject surface (e.g. 1:250,000, where one unit of measure on the map
      equals 250,000 of the same unit on the body surface)). This usage is relevant
      when map/data are presented on hard-copy media (paper, computer screen,etc).
      When defining pixel scale within a stored image/array context here, we are
      expressing a ratio between the image array and the actual surface (thus,
      pixel/degree or pixel/distance units).

      NOTE2: Definition of this PDS4 attribute differs from how 'scale' was defined within PDS3

Type: ASCII_Real  
Units: Units_of_Pixel_Scale_Map  



### pixel_resolution
The pixel_resolution attribute indicate the image
      array pixel resolution (distance/pixel or degree/pixel) relative to the
      referenced coordinate system as defined by the map projection. This attribute should be used in 
      lieu of pixel_resolution_x and pixel_resolution_y when the pixel resolution is not  x/y aligned.
      i.e. a radial pixel resolution.
      
      NOTE: Definition of this PDS4 attribute differs from how 'resolution' was defined within PDS3

Type: ASCII_Real  
Units: Units_of_Map_Scale  



### pixel_scale
The pixel_scale attribute indicate the image array
      pixel scale (pixel/degree or pixel/distance) relative to the
      referenced coordinate system as defined by the map projection. This attribute should be used in 
      lieu of pixel_scale_x and pixel_scale_y when the pixel scale is not  x/y aligned.
      i.e. a radial pixel scale.
      
      NOTE: Definition of this PDS4 attribute differs from how 'scale' was defined within PDS3

Type: ASCII_Real  
Units: Units_of_Map_Scale  



### distance_resolution
The distance_resolution attribute provides the minimum
      distance measurable between two points, expressed in Planar Distance
      Units of measure.

Type: ASCII_Real  
Units: Units_of_Map_Scale  



### bearing_resolution
The bearing_resolution attribute provides the minimum angle
      measurable between two points.

Type: ASCII_Real  
Units: Units_of_Angle  



### bearing_reference_direction
The bearing_reference_direction attribute specifies the
      direction from which the bearing is measured.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
North | For planets and satellites, latitude is measured north and south of 
          the equator; north latitudes are designated as positive.
South | For planets and satellites, latitude is measured north and south of 
          the equator; south latitudes are designated as negative.


### bearing_reference_meridian
The bearing_reference_meridian attribute specifies the axis
      from which the bearing is measured.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Assumed | An assumed bearing is one in which the reference direction is 
          straight ahead, where the bearing is measured relative to the direction the 
          navigator is facing.
Grid | A grid bearing is measured in relation to the fixed horizontal 
          reference plane of grid north, that is, using the direction northwards along 
          the grid lines of the map projection as a reference point.
Magnetic | A magnetic bearing is measured in relation to magnetic north on Earth.
Astronomic | A astronimic bearing is measured in relation to the North Star, 
        Polaris on Earth.
Geodetic | A geodectic bearing (or true bearing) is measured in relation to true 
          north via a great circle (or the shortest path connecting two points on the 
          surface of the body).


### standard_parallel_1
The standard_parallel_1 attribute defines the first standard
      parallel (applicable only for specific projections), the first line of
      constant latitude at which the surface of the planet and the plane or
      developable surface intersect.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### standard_parallel_2
The standard_parallel_2 attribute defines the second standard
      parallel (applicable only for specific projections, a subset of specific
      projections where a first standard parallel is applicable), the second line
      of constant latitude at which the surface of the planet and the plane or
      developable surface intersect.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### longitude_of_central_meridian
The longitude_of_central_meridian attribute defines the
      line of longitude at the center of a map projection generally used as
      the basis for constructing the projection.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### latitude_of_projection_origin
The latitude_of_projection_origin attribute defines
      the latitude chosen as the origin of rectangular coordinates
      for a map projection.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### scale_factor_at_center_line
The scale_factor_at_center_line attribute provides a
      multiplier for reducing a distance obtained from a map by computation
      or scaling to the actual distance along the center line.

Type: ASCII_Real  
Units: Units_of_None  



### straight_vertical_longitude_from_pole
The straight_vertical_longitude_from_pole attribute
      provides the longitude oriented straight up from the North or South
      Pole.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### scale_factor_at_central_meridian
The scale_factor_at_central_meridian attribute provides a
      multiplier for reducing a distance obtained from a map by computation
      or scaling to the actual distance along the central
      meridian.

Type: ASCII_Real  
Units: Units_of_None  



### utm_zone_number
The utm_zone_number attribute provides the identifier for
      the Universal Transverse Mercator (UTM) zone.

Type: ASCII_Integer  
Units: Units_of_None  
Minimum Value: -60  
Maximum Value: 60  



### ups_zone_identifier
The ups_zone_identifier attribute provides an identifier
      for the Universal Polar Stereographic (UPS) zone.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
A | UPS Zone Identifier: A
B | UPS Zone Identifier: B
Y | UPS Zone Identifier: Y
Z | UPS Zone Identifier: Z


### spcs_zone_identifier
The spcs_zone_identifier attribute identifies the
      State Plane Coordinate Systems (SPCS) zone.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  



### azimuthal_angle
The azimuthal_angle attribute provides the angle measured
      clockwise from north, and expressed in degrees.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### azimuth_measure_point_longitude
The azimuth_measure_point_longitude attribute provides the
      longitude of the map projection origin.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### oblique_line_latitude
The oblique_line_latitude attribute provides the latitude
      of a point defining the oblique line.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### oblique_line_longitude
The oblique_line_longitude attribute provides the longitude
      of a point defining the oblique line.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### lander_map_projection_name
The map_projection_name attribute provides the name of the
      map projection.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Cylindrical | This is an in-situ projection used for (non-stereo) panoramas. 
          Each image row represents a constant elevation and each image column 
          represents a constant azimuth, from a given point of view.  The image 
          scale in degrees per pixel is constant across the image.
Vertical | This is an in-situ projection that provides an overhead view. 
          By projecting to a surface model, the need for range data is eliminated, 
          but significant layover effects can happen when the actual geometry does 
          not match the surface model.  It has a constant scale in meters/pixel, subject 
          to layover distortion.
Perspective | This is an in-situ projection that models a pinhole camera.
Polar | This is an in-situ projection that provides a quasi-overhead 
          view that extends to the horizon.  Elevation is measured radially outward 
          from the nadir location, with a constant pixel scale.  Azimuth is 
          measured along concentric circles centered at the nadir.
Orthographic | This is an in-situ projection that is a generalization of 
          the Vertical projection, in that any arbitrary projection plane can be 
          specified.
Orthorectified | This is an in-situ projection that provides a true overhead 
          view of the scene.  Range data is required to create this projection, 
          meaning there is no parallax distortion.  It has a constant scale in 
          meters/pixel.
Cylindrical_Perspective | This is an in-situ projection that is a hybrid.  Each 
          column is a vertical slice from a pinhole camera (Perspective 
          projection), while the columns are spaced evenly in azimuth 
          (Cylindrical projection).  It is most useful for viewing panoramas 
          in stereo.


### x_unit
The x component of a unit vector.

Type: ASCII_Real  
Units: Units_of_None  



### y_unit
The y component of a unit vector.

Type: ASCII_Real  
Units: Units_of_None  



### z_unit
The z component of a unit vector.

Type: ASCII_Real  
Units: Units_of_None  



### x_length
The x_length attribute represents length in the x-direction.

Type: ASCII_Real  
Units: Units_of_Length  



### y_length
The y_length attribute represents length in the y-direction.

Type: ASCII_Real  
Units: Units_of_Length  



### z_length
The z_length attribute represents length in the z-direction.

Type: ASCII_Real  
Units: Units_of_Length  



### x_position
The x component of a Cartesian position vector.

Type: ASCII_Real  
Units: Units_of_Length  



### y_position
The y component of a Cartesian position vector.

Type: ASCII_Real  
Units: Units_of_Length  



### z_position
The z component of a Cartesian position vector.

Type: ASCII_Real  
Units: Units_of_Length  



### x
The x component of a Cartesian vector which has no units.

Type: ASCII_Real  
Units: undefined  



### y
The y component of a Cartesian vector which has no units.

Type: ASCII_Real  
Units: undefined  



### z
The z component of a Cartesian vector which has no units.

Type: ASCII_Real  
Units: undefined  



### x_axis_minimum
The x_axis_minimum attribute specifies the value of the X coordinate (measured in the projection frame) of a 
      Vertical, Orthographic or Orthorectified lander map projection at the bottom of the image.

Type: ASCII_Real  
Units: Units_of_Length  



### x_axis_maximum
The x_axis_maximum attribute specifies the value of the X coordinate (measured in the projection frame) of a 
      Vertical, Orthographic or Orthorectified lander map projection at the top of the image. Note that +X is at the top of 
      the image and +Y is at the right, so +X corresponds to North in the Vertical projection.

Type: ASCII_Real  
Units: Units_of_Length  



### y_axis_minimum
The y_axis_minimum attribute specifies the value of the Y coordinate (measured in the projection frame) of a 
      Vertical, Orthographic or Orthorectified lander map projection at the left edge of the image.

Type: ASCII_Real  
Units: Units_of_Length  



### y_axis_maximum
The y_axis_minimum attribute specifies the value of the Y coordinate (measured in the projection frame) of a 
      Vertical, Orthographic or Orthorectified lander map projection at the right edge of the image.

Type: ASCII_Real  
Units: Units_of_Length  



### start_azimuth
The start_azimuth specifies the angular distance from a fixed reference position at which an image or observation starts. Azimuth is 
      measured in a spherical coordinate system, in a plane normal to the principal axis. Azimuth values increase according to the right hand rule 
      relative to the positive direction of the principal axis of the spherical coordinate system. For lander map projections, this attribute specifies 
      the azimuth of the left edge of the output map. Applies to Cylindrical and Cylindrical-Perspective lander map projections only.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### stop_azimuth
The stop_azimuth attribute pecifies the angular distance from a fixed reference position at which an image or observation stops. 
      Azimuth is measured in a spherical coordinate system, in a plane normal to the principal axis. Azimuth values increase according to the 
      right hand rule relative to the positive direction of the principal axis of the spherical coordinate system. For lander map projections, 
      this attribute specifies the azimuth of the right edge of the output map. Applies to Cylindrical and Cylindrical-Perspective lander map 
      projections only.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### minimum_elevation
The minimum_elevation attribute specifies the elevation (as defined by the coordinate system) of the last 
      line of the image for Cylindrical map projections. Applies to Cylindrical, Perspective and Cylindrical-Perspective 
      lander map projections.

Type: ASCII_Real  
Units: Units_of_Angle  



### maximum_elevation
The maximum_elevation attribute specifies the elevation (as defined by the coordinate system) of 
      the first line of the image. For the Polar projection, specifies the highest elevation used, i.e. the elevation 
      of the outermost circle of pixels. Applies to lander map projections Cylindrical, Polar, Sinusoidal, 
      Perspective and Cylindrical-Perspective.

Type: ASCII_Real  
Units: Units_of_Angle  



### surface_model_type
Specifies the type of surface used for the reprojection performed during the mosaicking process. 
      Valid values: Planar - refers to a flat planar model; Spherical refers to a spherical model where the camera is at the center of the sphere.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
Spherical | spherical surface model where the camera is at the center of the sphere
Planar | flat planar surface model


### sphere_radius
The sphere_radius attribute specifies the radius of the spherical body. In PDS3, this was specified using the  
      SURFACE_NORMAL_VECTOR keyword.

Type: ASCII_Real  
Units: Units_of_Length  



### sphere_intersection_count
The sphere_intersection_count attribute specifies the number of the intersection to use for the spherical surface 
      model when the camera is outside the sphere. For example, specifying a value of 1 would indicate the first intersection with 
      the sphere should be used (more useful for modeling hills or rocks), while a value of 2 would indicate the second intersection 
      with the sphere should be used (more useful for modeling craters). In PDS3, this was overloaded as part of the SURFACE_MODEL_TYPE 
      keyword.

Type: ASCII_Integer  
Units: Units_of_None  
Minimum Value: 1  



### projection_azimuth
The projection_azimuth attribute specifies the azimuth of the horizontal center of projection for the Perspective lander 
      map projection (loosely, where the camera model is pointing).

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: 1  



### projection_elevation
The projection_elevation attribute specifies the elevation of the vertical center of projection (loosely, where the camera 
      is pointing). For Perspective lander map projection, this applies to the single output camera model; for Cylindrical-Perspective it 
      applies to each columns output camera model, before the rotation specified by Vector_Projection_Z_Axis.

Type: ASCII_Real  
Units: Units_of_Angle  



### projection_elevation_line
The projection_elevation_line attribute specifies the image line which corresponds to the projection_elevation 
      attribute for each column of the Cylindrical-Perspective projection, before the rotation specified by Vector_Projection_Z_Axis.

Type: ASCII_Real  
Units: Units_of_None  
Minimum Value: 1  



### zero_elevation_line
The zero_elevation_line attribute specifies the image line representing 0.0 degree elevation. 
      Applies to Cylindrical lander map projections.

Type: ASCII_Real  
Units: Units_of_None  



### reference_azimuth
The reference_azimuth attribute specifies the azimuth of the line extending from the center of the 
      image to the top center of the image with respect to a polar projection..

Type: ASCII_Real  
Units: Units_of_Angle  



### line
The line attribute specifies the line number in the image.

Type: ASCII_Real  
Units: Units_of_None  
Minimum Value: 1  



### sample
The sample attribute specifies the sample number.

Type: ASCII_Real  
Units: Units_of_None  
Minimum Value: 1  



### projection_axis_offset
The projection_axis_offset attribute specifies an offset from a projection axis in a map projection. 
      For the Cylindrical-Perspective projection, this is the radius of a circle which represents the rotation around the 
      projection origin of the synthetic camera used to calculate each column.

Type: ASCII_NonNegative_Integer  
Units: Units_of_Length  
Minimum Value: 1  



### reference_latitude
Provides the ordinary latitude coordinate of the origin (oblique latitude = oblique longitude = 0) for the 
      oblique coordinate system used to specify the OBLIQUE_CYLIDRICAL projection used in Cassini BIDR. NOTE that whereas some 
      past PDS products may utilize oblique projections defined solely in terms of the REFERENCE_LATITUDE and 
      REFERENCE_LONGITUDE (i.e., with a third defining angle always set to zero), the Cassini BIDRs require the full 
      generality of three nonzero rotation angles. These angles are represented by the keywords OBLIQUE_PROJ_POLE_LATITUDE, 
      OBLIQUE_PROJ_POLE_LONGITUDE, and  OBLIQUE_PROJ_POLE_ROTATION. The values of REFERENCE_LATITUDE and  REFERENCE_LONGITUDE 
      are consistent with the latter three angles but do not uniquely define the oblique coordinate system on their own.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### reference_longitude
Provides the ordinary longitude coordinate of the origin (oblique latitude = oblique longitude = 0) for the 
      oblique coordinate system used to specify the  OBLIQUE_CYLIDRICAL projection used in Cassini BIDR. NOTE that whereas some 
      past PDS products may utilize oblique projections defined solely in terms of the REFERENCE_LATITUDE and REFERENCE_LONGITUDE 
      (i.e., with a third defining angle always set to zero), the Cassini BIDRs require the full generality of three nonzero 
      rotation angles. These angles are represented by the keywords OBLIQUE_PROJ_POLE_LATITUDE, OBLIQUE_PROJ_POLE_LONGITUDE, 
      and OBLIQUE_PROJ_POLE_ROTATION. The values of REFERENCE_LATITUDE and REFERENCE_LONGITUDE are consistent with the latter 
      three angles but do not uniquely define the oblique coordinate system on their own.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### map_projection_rotation
Included for generality, always 90 degrees for Cassini BIDRs.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### oblique_proj_pole_latitude
One of the three angles defining the oblique coordinate system used in the OBLIQUE_CYLINDRICAL 
      projection. This is the ordinary latitude of the pole (Z axis) of the oblique system.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -90  
Maximum Value: 90  



### oblique_proj_pole_longitude
One of the three angles defining the oblique coordinate system used in the OBLIQUE_CYLINDRICAL projection. 
      This is the ordinary longitude of the pole (Z axis) of the oblique system.

Type: ASCII_Real  
Units: Units_of_Angle  
Minimum Value: -180  
Maximum Value: 360  



### oblique_proj_pole_rotation
One of the three angles defining the oblique coordinate system used in the OBLIQUE_CYLINDRICAL projection. 
      This is a rotation around the polar (Z) axis of the oblique system that completes the transformation from standard to 
      oblique coordinates. The value is positive east (obeys right hand rule) and is in the range 0 to 360 degrees.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### oblique_proj_x_axis_vector
Unit vector in the direction of the X axis of the oblique coordinate system used in the OBLIQUE_CYLINDRICAL 
      projection, in terms of the X, Y, and Z axes of the standard body-fixed coordinate system. In each system, the X axis 
      points from the body center toward longitude and latitude (0,0) in that system, the Z axis to (0,90), and the Y-axis 
      completes a right-handed set. The OBLIQUE_PROJ_X/Y/Z_AXIS_VECTORS makeup the rows of a rotation matrix that when multiplied 
      on the left of a vector referenced to the standard coordinate system converts it into its equivalent in the oblique coordinate 
      system. This rotation matrix is the product of successively applied rotations by OBLIQUE_PROJ_POLE_LONGITUDE around the Z 
      axis, 90 OBLIQUE_PROJ_POLE_LATITUDE around the once-rotated Y axis, and OBLIQUE_PROJ_POLE_ROTATION around the twice-rotated 
      Z axis.

Type: ASCII_Text_Preserved  
Units: undefined  



### oblique_proj_y_axis_vector
Unit vector in the direction of the Y axis of the oblique coordinate system used in the OBLIQUE_CYLINDRICAL projection, 
      in terms of the X, Y, and Z axes of the standard body-fixed coordinate system. In each system, the X axis points from the body center 
      toward longitude and latitude (0,0) in that system, the Z axis to (0,90), and the Y-axis completes a right-handed set. The 
      OBLIQUE_PROJ_X/Y/Z_AXIS_VECTORS makeup the rows of a rotation matrix that when multiplied on the left of a vector referenced to 
      the standard coordinate system converts it into its equivalent in the oblique coordinate system. This rotation matrix is the 
      product of successively applied rotations by OBLIQUE_PROJ_POLE_LONGITUDE around the Z axis, 90 OBLIQUE_PROJ_POLE_LATITUDE around 
      the once-rotated Y axis, and OBLIQUE_PROJ_POLE_ROTATION around the twice-rotated Z axis.

Type: ASCII_Text_Preserved  
Units: undefined  



### oblique_proj_z_axis_vector
Unit vector in the direction of the Z axis of the oblique coordinate system used in the OBLIQUE_CYLINDRICAL projection, 
      in terms of the X, Y, and Z axes of the standard body-fixed coordinate system. In each system, the X axis points from the body center 
      toward longitude and latitude (0,0) in that system, the Z axis to (0,90), and the Y-axis completes a right-handed set. The 
      OBLIQUE_PROJ_X/Y/Z_AXIS_VECTORS makeup the rows of a rotation matrix that when multiplied on the left of a vector referenced to 
      the standard coordinate system converts it into its equivalent in the oblique coordinate system. This rotation matrix is the product 
      of successively applied rotations by OBLIQUE_PROJ_POLE_LONGITUDE around the Z axis, 90 OBLIQUE_PROJ_POLE_LATITUDE around the 
      once-rotated Y axis, and OBLIQUE_PROJ_POLE_ROTATION around the twice-rotated Z axis.

Type: ASCII_Text_Preserved  
Units: undefined  



### look_direction
The value (RIGHT or LEFT) indicates the side of the spacecraft groundtrack to which the antenna is pointed for data 
      acquired within this file. The SAR images stored in theBIDR files are always acquired on only one side of the ground track for 
      each Titan pass. This value also indicates from which side the SAR image is illuminated. If the spacecraft images to the left 
      of its ground track (LOOK_DIRECTION=LEFT), the image will be illuminated from the (viewer's) left side, and, conversely, if the 
      spacecraft looks to the right, the illumination will come from the right in the image file. The direction of illumination is 
      critical to interpretation of features in the image.

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
LEFT | Antenna pointed left of spacecraft groundtrack
RIGHT | Antenna pointed right of spacecraft groundtrack

