README_mysql_test02.txt

Creates demo database testdb02 & user user02 with password test:
- Demo of archive catalog with tables with content: arkivskaper, arkiv, stykke, serie, mappe & objekt.

With user having full MySQL admin permissions:

Run (import) SQL-query "test02_create.sql"
1. Removes (if existing) user "user02"@"localhost" via GRANT command.
2. Creates user "user02"@" with password "test".
3. Creates database "testdb02" (drops any existing database with this name).
4. Creates tables "arkivskaper", "arkiv", "serie", "stykke", "mappe", "objekt"

Run (import) one of the following SQL-queries:
a) "test02_insert.sql" {full set of demo table content}
b) "test02-medium_insert.sql" {medium set of demo table content}
c) "test02-small_insert.sql" {small set of demo table content}
1. Inserts content into database tables:
arkivskaper, arkiv, serie, stykke, mappe

The testdb02 database is exported to the SIARD format using the SiardEdit ver. 1.69 application from the Swiss Federal Archives.
File: test02_mysql_elarkiv-database-demo_2014-12-01.siard
File: test02-small_mysql_elarkiv-database-demo_2014-12-01.siard

Exported metadata from SiardEdit:
File: test02_mysql_elarkiv-database-demo_2014-12-01_metadata.xml
File: test02-small_mysql_elarkiv-database-demo_2014-12-01_metadata.xml

Unzipped SIARD-folder using PKZIP/SECUREZIP:
Folder: test02_mysql_elarkiv-database-demo_2014-12-01
Folder: test02-small_mysql_elarkiv-database-demo_2014-12-01

Run (import) SQL-query "test02_create_user_&_database_only.sql" before importing the SIARD-file into a clean MySQL system.
