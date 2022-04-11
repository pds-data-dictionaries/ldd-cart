# Cartography (cart) Discipline Namespace

The Cartography displine namespace contains classes, elements, attributes, and rules describing map projections, including orbital-, lander-, and rings-related definitions and descriptions. The PDS Cartography namespace is largely based on the existing Federal Geographic Data Committee (FGDC) Content Standard for Digital Geospatial Metadata, with modifications and extensions applied by PDS as needed for planetary mapping applications. This namespace is strongly recommended for any map projected (derived) PDS4 products whether they are an image-based (e.g. Array_2D, Array_3D_Map, etc.) or GIS vector-based (table-based with defined point, line or polygon geometries). The Cartography and Imaging Node at the U.S. Geological Survey and Jet Propulsion Laboratories (JPL) are the stewards of this namespace. Expect updates at least once or twice per year.

A map projection is generally a mathematical method used to represent the 3-dimensional surface of the target body on a 2-dimensional plane. This typically requires (1) definition for the shape and size of the body and (2) the ability to transform from geographic/geocentric (longitude and latitude) coordinates to planar/Cartesian coordinates (X and Y) typically in meters. And while related, landed and rings map projections can be very different, we currently support seven different lander map projections commonly used in rover missions. Lander projections are commonly found or originate within JPL’s VICAR software. For rings, we currently only support one projection. This projection, called Ring_Polar, maps the distance from the center of the body in the X axis and the local time into the Y axis of the resulting Cartesian plane.

Steward: [Trent Hare, IMG Node](@thareUSGS)

# Documentation

* [User Guide](docs/PDS4_CART_Users-Guide.md)
* [Detailed Documentation](docs)
  - UML view [SVG](docs/PDS4_CART_IngestLDD.svg)
  - Graphical view [PDF](docs/PDS4_CART_IngestLDD.pdf)
* [Other PDS Namespace Documentation](https://pds-data-dictionaries.github.io/)

 
# Latest Release

* Schema packages [on GitHub](../../../releases/latest)
* [Change log](CHANGELOG.md)

# Feedback

Have a bug or feature request? Create one in the [PDS4 Issue Repo](https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo/issues/new/choose).


# Developer Support

* [PDS Namespace Developer Documentation](https://pds-data-dictionaries.github.io/)
