elarkiv-database-demo
=====================

Elarkiv Database Demo let you create demo-databases in the most common platforms MySQL, MSSQL and Oracle and
extract, preserve and publish the archives.

Content
- Import demo-databases from premade SQL-queries.
- Extract Submission Information Package (SIP) from the database as SIARD-files.
- Transform the SIP into an Archival Information Pacakge (AIP) to be preserved in the archives.
- Transform the AIP into a Dissemination Information Package (DIP) to be published through a neutral interface.
- Gather Norwegian Archival STANDARDS.
- Gather SYSTEMS metadata descriptions for preservation and publishing in xml open format.

## MySQL ##

- Information files at top level: README, RESOURCES, CHANGELOG.
- SQL-queries for importing testdb01, testdb02, testdb03 and testdb04.
- Subfolder "_doc" with "Workshop 2016 Online" user documentation (Norwegian only at this point).
- Picture of table relations with primary- and foreign keys.
- SIARD 1.0-folder with SIP of database as zip64 and unpacked as xml metadata and datafiles.

## MSSQL ##

NOT IMPLEMENTED YET

## Oracle ##

NOT IMPLEMENTED YET
- Oracle 9.2, Oracle 11g XE, Oracle 12

## Standards ##

Noark 3, Noark 4, Noark 5, ADDML 7.3, ADDML 8.2

NOARK: Norwegian Archival Standard. 
ADDML: Archival Data Description Mark-up Language is a standard describing a collection of data files.
SIARD: Software Independant Archiving of Relational Databases from the Swiss Federal Archives.

http://arkivverket.no/eng
http://arkivverket.no/eng/Public-Sector/Noark
http://www.arkivverket.no/arkivverket/Arkivbevaring/Elektronisk-arkivmateriale/Standarder
http://www.digitalpreservation.gov/formats/fdd/fdd000426.shtml

https://en.wikipedia.org/wiki/ADDML
https://en.wikipedia.org/wiki/Open_Archival_Information_System

## Systems ##

Metadata descriptions of systems preservation and publishing in a neutral open format (xml) based on ADDML.

### Metadata descriptions of the systems below are NOT IMPLEMENTED YET ###

testdb01
- Demo database 01 with 1 table.

testdb02
- Demo database 02 with 6 tables: arkivskaper, arkiv, serie, stykke, mappe, objekt (empty).

testdb03
- Demo database 03 with 6 tables: arkivskaper, arkiv, serie, stykke, mappe, objekt.
- Documents in an external folder is to be referred to from table "objekt".

testdb04
- Demo database 04 with 6 tables: arkivskaper, arkiv, serie, stykke, mappe, objekt.
- Documents is to be stored in blob-field in database table "objekt".
