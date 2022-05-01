# Changelog

## 1.9.6.0
- THare 20220224
- update attribute local_time_scale to Units_of_Pixel_Resolution_Angular for RMS
- update to GEOM 1G00_1950
- Updates based on DMSP meeting comments:
  - Changed grid coordinate to XSChoice
  - update latitude_of_projection_origin to be mandatory for Orthographic.

## 1.9.5.0
- THare 20201204
- updates for 1.E.0.0 and 1.F.0.0, adding dictionary_type and building with new GEOM 1E00_1900

## 1.9.4.0
- THare 20200515
- Add new class Vector_Projection_Z_Axis_Initial
- Under Oblique Cylindrical set reference_latitude and reference_longitude as optional. Unfortunately,
      some older PDS3 labels have these two values (and an implied angle always set to zero) instead of using the
      more appropriate values: oblique_proj_pole_latitude, oblique_proj_pole_longitude, oblique_proj_pole_rotation
      Implementations for this map projection on use the later 3 attributes (e.g. ISIS3/4 and PROJ) not reference_*.
      So when older labels only use reference_*, those should be converted to use the 3 oblique_proj_pole_* attributes
      (note it is not a simple mapping, requiring a calculated update to get from reference_* to oblique_proj_pole_*)
- Removed scale_factor_at_center_line as it is currently not being used anywhere
- Removed pixel_resolution as pixel_resolution_x and pixel_resolution_y should be used (and it was not used anywhere)
      If square, simply repeat the same value in both pixel_resolution_x and pixel_resolution_y
- Updated projection_axis_offset to be ASCII_REAL
  
## 1.9.3.4
- THare 20200127
- Minor update for Oblique Cylindrical to help define that the XML-odd 3-value vector strings (oblique_proj_x_axis_vector,
      oblique_proj_y_axis_vector, oblique_proj_z_axis_vector) as optional and really for documentation purposes.
- Minor update to Polar Stereographic to make scale_factor_at_projection_origin optional and added documentation
      to help clarify that attribute projection.

## 1.9.3.3
- THare 20191027
- Removed Map_Projection_Base. This was suppose to be an abstract class for group liking map projection
      parameters, but there was no good method to group across the current allowable map projections and
      it made it harder to know which map projection required which parameters.
- Added Orthographic, Mercator, and Lambert Azimuthal Equal-area
- removed straight_vertical_longitude_from_pole, just use longitude_of_central_meridian (aka Longitude of 
      projection center) for polar stereographic which is more normally seen. need to update:
      https://github.com/OSGeo/gdal/blob/33a8a0edc764253b582e194d330eec3b83072863/gdal/frmts/pds/pds4dataset.cpp#L2280

## 1.9.3.2
- THare 20190909
- add Ring section, Map_Projection_Rings, for ring map projections to meet conversion of Cassini PDS3 data to PDS4.
- Rings initially falls under Horizontal_Coordinate_System_Definition using Local (not tied to a surface) and
      enforces the need for a defined Geodetic_Model (body name, radius values, latitude type, and longitude direction).
- Updated spatial_domain_or_lander_check to spatial_domain_or_lander_or_rings_check rule.

## 1.9.3.1
- THare and CDeCesare 20190613
- updated line and sample attributes to allow for non-negate values under Camera_Model_Offset, 
      Pixel_Position_Nadir_Polar, Pixel_Position_Origin  

-THare 20190520
- simple misspellings
- updated definitions for Surface_Model_Parameters and Surface_Model_Planar, surface_model_type, 
      Vector_Surface_Ground_Location, Vector_Surface_Normal

- THare and CDeCesare 20190430
- Upgraded to v1B10 of IM.
- Undid changes from 1.9.1.1.
    - Coordinate_Space_Reference is now re-used from the GEOM class as-is, so that CART doesn't need to re-implement it.

## 1.9.3.0
- THare and PGeissler 20190424
- 'Planar_Coordinate_Information' is no longer mandated to better support vector files. It should be added for images
- 'cart.latitude_resolution' and 'cart:longitude_resolution' to be optional, not needed for vector GIS labels
- Added Secondary_Spatial_Domain as an optional or alternative method to list IAU recommended or historically used 
      bounding coordinate section to support both positive East and positive West systems in the same label.
- Rename all three radius parameter names. These were renamed to clarify the parameter names since the name 
        semi_major_radius is flawed and confusing as semi and radius both mean "half". This keyword should have
        originally been named semi_major_axis (as used by the Federal Geospatial Data Consortium (FGDC)). To better
        align with PDS version 3, we are moving these parameters names back to a_axis_radius, b_axis_radius, and 
        c_axis_radius. Thus we are renaming: 
- semi_major_radius to a_axis_radius. 
- semi_minor_radius to b_axis_radius
- polar_radius to c_axis_radius
      To be clear, most mapping applications call a_axis_radius the semi_major_axis and c_axis_radius the semi_minor_radius.
      The b_axis_radius value is generally not seen in mapping applications which typical do not support triaxial definitions
      for map projections. For most all cases, when a triaxial definition is defined, the IAU defines a best fit sphere. 
      see: https://astrogeology.usgs.gov/groups/IAU-WGCCRE.
      When a best-fit sphere or a body is already defined as a sphere, a single radius value will be listed across all three 
      parameters a_axis_radius, b_axis_radius, and c_axis_radius. For an ellipse, the a_axis_radius and b_axis_radius will be
      defined by a single radius value and a different (generally smaller) radius value for the c_axis_radius. Lastly, the
      default units for the these parameters was set to meters "m".

## 1.9.2.0
- PGeissler and THare 20181221
- Added Oblique Cylindrical Map Projection 
- Note: To support Cassini BIDR. This is a somewhat specialize map projection which requires several new projection
      parameters including: reference_latitude, reference_longitude, map_projection_rotation, oblique_proj_pole_latitude, 
	oblique_proj_pole_longitude, oblique_proj_pole_rotation, oblique_proj_x_axis_vector, oblique_proj_y_axis_vector, and oblique_proj_z_axis_vector. The original parameter center_latitude is now mapped to latitude_of_projection_origin and
	the original parameter center_longitude is now mapped to longitude_of_central_meridian. line, sample offsets are
	remapped into meters using upperleft_corner_x and upperleft_corner_y. 
- Added many definitions for map projections (cartographic and lander). 
- Removed "General Vertical Near-sided Projection" since it has functionally been replaced by "Point Perspective".

## 1.9.1.1
- CDeCesare 20181116
- Removed definitions of classes which are already defined by GEOM dictionary: Vector_Cartesian_Unit_Base, Vector_Cartesian_Position_Base, Vector_Cartesian_No_Units
- Updated references that point at Vector_Cartesian_Unit_Base to instead point at geom.Vector_Cartesian_Unit
- Updated references that point at Vector_Cartesian_Position_Base to instead point at geom.Vector_Cartesian_Position_Base

## 1.9.1.0
- Added Point Perspective Map Projection (CIsbell).
- Note: As of 24July2018, parameters/attributes here include only those required to define the 'fundamental' Point Perspective (PP)
        Projection. That is, along with the common base projection parameters required for all projections, the additional PP
        requirements of target_center_distance and nadir point (longitude_of_central_meridian, latitude_of_projection_origin) 
        will define the basic PP projection. Additional parameters for a more 'complex' PP (line/sample sub-spacecraft offsets
        optical offsets, focal parameters, image array segment definitions, etc, will need to be added as needed.

## 1.9.0.2
- CIsbell 24July2018
- Added/corrected unit_of_measure_type where appropriate to correctly include 
      'Units_of_Pixel_Scale_Map' and 'Units_of_Pixel_Resolution_Map'

## 1.9.0.1
- Changed all class local_identifier to identifier_reference per v1900 IM update
- Changed Coordinate_Space_Reference to inherit from Geometry dictionary
    
## 1.9.0.0
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

## 1.7.0.0 
- Generated 2014-02-13T18:31:07Z by eduxbury using mk_img_ldd.pl from the Imaging Node MySQL img_ldd database.
- removed 'cart.' prefix from all local_id entries then, change to v1700 (Sept 7, 2016)
- updated standard_parallel_1/2 items per entries throughout
- renamed ellipsoid_name to spheroid_name
- update Oblique_Mercator per redundancies (already in Map_Projection_Base) (Oct 17, 2016)
- updated spheroid_name as optional, and not enumerated
