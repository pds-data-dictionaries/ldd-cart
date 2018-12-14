# {Template} Local Data Dictionary (LDD)

The {Template} dictionary contains classes that describe a fictious mission. It can be used as a starting point for creating a new local data dictionary (LDD). After cloning the files, do the following:

1. Remove the ".git" folder to detach the closed files from the git repository.
	- If creating a new git repository, follow instructions provided by the git host for initializing a new repository. For a repository on github this would be:
	```
	git init
	git add .
	git commit -m "Initialize"
	git remote add origin git@github.com:nasa-pds/{your repo}.git
	git push -u origin master
	```
2. Modify this README.md file.
	- Change title and description (this text) to correspond to your LDD. 
	- Update Version section below.
3. Update the "build" folder 
	- Create IM version folders that contain LDD version folders.
	- Update "README.md" to include links to versions.
	- Update "README.md" in LDD version folders to include LDD name.
4. Update the "src" folder
	- Create LDD version folders.
	- Update "README.md" to include LDD name and links to versions.
5. Update LDD specification
	- Rename "ldd-template.xml" to "ldd-" + LDD name.
	- Update contents of ldd specification file
6. Generate XML Schema and Schematron files.
	- In the "src" folder, run the [lddtool](https://pds.nasa.gov/pds4/software/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/)
	- Copy the generated files to the "build/IM version/LDD version" folder.
7. Generate documentation
	- In the "src" directory use the "pds-ldd-doc" tool in the [pds4-tools] package to generate documentation.

## Versions (Source)

- [1.0.0.0](src/1.0.0.0)

## Builds

A Local Data Dictionary (LDD) is built for each version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatiblity of the LDD with the core information model.

This LDD has been built for the following versions of the PDS4 information model.

- [1.9.0.0](build/1.9.0.0)
   - [1.0.0.0](src/1.0.0.0) (Download: 
      [XMLSchema (XSD)](https://github.com/nasa-pds/ldd-template/raw/master/build/1.9.0.0/1.0.0.0/PDS4_MESS_1900_1000.xsd)
      | [Schematron (SCH)](https://github.com/nasa-pds/ldd-template/raw/master/build/1.9.0.0/1.0.0.0/PDS4_MESS_1900_1000.sch)
      )

	
## Notes

Each build is generating using the [lddtool](https://pds.nasa.gov/pds4/software/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/). The build command used is:

```
lddtool -lp ldd-file.xml
```

Documentation included in the source (src) directory is generated using the "pds-ldd-doc" tool in the [pds4-tools](https://github.com/nasa-pds/pds4-tools) package.

After a build the README.md files are updated (manually) to reflect the content of repository.

