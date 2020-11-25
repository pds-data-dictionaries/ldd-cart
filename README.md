# Cartography Local Data Dictionary (LDD)

The Cartography dictionary contains classes, elements, attributes, and rules describing map projections, including both cartographic and lander related definitions and descriptions. The PDS Cartography dictionary is based on and utilizes the existing Federal Geographic Data Committee (FGDC) Content Standard for Digital Geospatial Metadata, with modifications and extensions applied by PDS as needed for planetary mapping application. 

## Current Source

Only one LDD source version is kept such that it can be managed by github.

- [src](src)

## Versions

A Local Data Dictionary (LDD) is built for selected versions of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatiblity of the LDD with the core information model.

## Builds

This LDD has been built for the following versions of the PDS4 information models.

- [1.E.0.0_1.9.5.0](build/development)
- [1.D.0.0_1.9.4.0](build/1.D.0.0_1.9.4.0)
	
## Notes

Each build is generating using the [lddtool](https://pds.nasa.gov/pds4/software/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/). The build command used is:

```
lddtool -lpsnJ PDS4_GEOM_IngestLDD.xml PDS4_CART_IngestLDD.xml
```


# Contribute

Have a bug or feature request? Create one in the [PDS4 Issue Repo](https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo/issues/new/choose).


# Support

See the [PDS Data Dictionaries Support page](https://pds-data-dictionaries.github.io/support/) for more Support information.
