# Cartography Discipline Data Dictionary

The Cartography Dictionary contains classes, elements, attributes, and rules describing map projections, including both cartographic, lander, and rings related definitions and descriptions. The PDS Cartography dictionary is largely based on the existing Federal Geographic Data Committee (FGDC) Content Standard for Digital Geospatial Metadata, with modifications and extensions applied by PDS as needed for planetary mapping applications. This dictionary is required for any map projected (derived) PDS4 products whether they are an image-based (e.g. Array_2D, Array_3D_Map, etc.) or GIS vector-based (table-based with defined point, line or polygon geometries). The Cartography and Imaging Node at the U.S. Geological Survey and Jet Propulsion Laboratories (JPL) are the stewards of this dictionary. Expect updates at least once or twice per year. Currently, Trent Hare from USGS, oversees updates to the dictionary and any questions can be addressed to him (thare@usgs.gov).

A map projection is generally a mathematical method used to represent the 3-dimensional surface of the target body on a 2-dimensional plane. This typically requires (1) definition for the shape and size of the body and (2) the ability to transform from geographic/geocentric (longitude and latitude) coordinates to planar/Cartesian coordinates (X, Y or also called eastings, northings) typically in meters. For a more information on many of the projections allowed in PDS4, please see [Snyder 1987](https://doi.org/10.3133/pp1395) or for an open source implementation for the equations please see [PROJ](https://proj.org/). And while related, landed and rings map projections can be very different, we currently only support seven different lander map projections commonly used in rover missions. Lander projections are commonly found or originate within JPL’s VICAR software. For rings, we currently only support one projection. This projection, called <cart:Ring_Polar>, maps the distance from the center of the body in the X axis and the local time into the Y axis of the resulting Cartesian plane.

## Documentation - Cartography Discipline Data Dictionary

- [User Guide](docs/PDS4_CART_Users-Guide.md)
- Detailed documentation
  - In depth guide [link]
  - Class view [Html](https://github.com/pds-data-dictionaries/ldd-cart/blob/v1.9.6.0/docs/PDS4_CART_IngestLDD.pdf)
  - Graphical view [PDF](https://github.com/pds-data-dictionaries/ldd-cart/blob/v1.9.6.0/docs/PDS4_CART_IngestLDD.pdf)
       

## Current Source

Only one LDD source version is kept such that it can be managed by github.

- [src](src)


## Versions

A Local Data Dictionary (LDD) is built for selected versions of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatibility of the LDD with the core information model.


## Builds

This LDD has been built for the following versions of the PDS4 information models.

- [1.14.0.0, 1.15.0.0, 1.16.0.0, 1.17.0.0](release)
	

# Contribute

Have a bug or feature request? Create one in the [PDS4 Issue Repo](https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo/issues/new/choose).


# Support

>See the [PDS Data Dictionaries Support page](https://pds-data-dictionaries.github.io/support/) for more Support information.
