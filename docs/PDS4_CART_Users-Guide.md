# PDS4 Cartography Discipline Data Dictionary User’s Guide
{date}  
{author}

> Note to authors who use this outline: The outline is a
> suggestion only. It includes the minimum of content needed to inform the
> dictionary user. Authors are expected to tailor the outline to their particular purposes, elaborating and providing context as needed.

# Contents
   1. Introductory Resources
   1. Overview
   1. Organization of Classes and Attributes
   1. 
   1. Examples

# Introductory Resources

* A [Quick Introduction](https://github.com/pds-data-dictionaries/ldd-cart/blob/main/README.md) to the Cartography Dictionary
* Using Local Dictionaries [SBN Wiki](https://sbnwiki.astro.umd.edu/wiki/Using_Local_Dictionaries)
* Schema Referencing in PDS4 Labels [SBN Wiki](https://sbnwiki.astro.umd.edu/wiki/Schema_Referencing_in_PDS4_Labels)
* Data Dictionary Creation [Resources](https://pds-data-dictionaries.github.io/getting-started/getting-started.html

# Overview of the Cartography Discipline Data Dictionary

The Cartography Dictionary contains classes, elements, attributes, and rules describing map projections, including both cartographic, lander, and rings related definitions and descriptions. The PDS Cartography dictionary is based on and utilizes the existing Federal Geographic Data Committee (FGDC) Content Standard for Digital Geospatial Metadata, with modifications and extensions applied by PDS as needed for planetary mapping applications. This dictionary is strongly recommended for any map projected (derived) PDS4 products whether they are an image-based (e.g., Array_2D, Array_3D_Map, etc.) or GIS vector-based (table-based with defined point, line or polygon geometries).

# Organization of Classes and Attributes

*Give a schematic diagram or a list showing the hierarchy of
classes in order of appearance in label. Refer the reader to the Definitions
section for complete definitions. An example of such a list is given on the
page [Filling Out The Spectral Dictionary Classes](http://sbndev.astro.umd.edu/wiki/Filling_Out_the_Spectral_Dictionary_Classes#.3CCircular_FOV.3E)
on the PDS Small Bodies Node wiki. In this example the names of classes and attributes have hyperlinks to
their definitions further down the page, a useful lookup tool.*

*The author should take into consideration the complexity
of the dictionary when organizing this section.  If the hierarchy is large or
complicated, it may be helpful to break it down by class as shown in the
following subsections, but don’t forget to provide a high-level view of how the
classes relate to one another.*

## Class 1

*What is this class for?*

*Give a schematic diagram or a list of the attributes in this class in order of 
appearance in label. Refer reader to Definitions section for complete definitions.*

*Give label snippets showing use of the class and attributes, with annotations 
as appropriate. Refer reader to Examples section for complete examples.*

*Explain why some things are required and others are optional.*

*List and explain any rules that apply to this class (e.g. from Schematron).*

## Class 2

[repeat this subsection for each class]

# Definitions

*Give an alphabetical list of all classes and attributes
with complete definitions. (Useful ones, not silly ones like "The
map_projection_name attribute provides the name of the map projection.")*

*Include:*

- *Class or attribute name (indicate which it is; capitalize class names according to PDS4 standard)*
- *PDS4 data type (ASCII_Short_String_Collapsed, ASCII_Real, ASCII_Date, etc.)*
- *Definition in complete sentences*
- *Cardinality (minimum and maximum number of values permitted)*
- *Nillable, yes or no? Explain when it is appropriate to use a nil value*
- *Minimum and maximum numeric values, if applicable*
- *Minimum and maximum number of characters, if applicable*
- *List of valid values, if applicable.*

# Examples

*Give one or more examples of label snippets for real products, annotated as appropriate. 
Make sure the examples can be successfully validated using the latest version of the PDS4 
core dictionary and, of course, the dictionary described in this document.*
