README_mysql_test02.txt

With user having full MySQL admin permissions:

Run (import) SQL-query "test02_create.sql"
1. Removes (if existing) user "test-02"@"localhost" via GRANT command.
2. Creates user "test-02"@" with password "test".
3. Creates database "test02" (drops any existing database with this name).
4. Creates tables "arkivskaper", "arkiv", "serie", "stykke", "mappe", "objekt"
5. Populates table "testtabell" with 6 rows of data.

Run (import) one of the following SQL-queries:
a) "test02_insert.sql" {full set of demo table content}
b) "test02_insert_medium.sql" {medium set of demo table content}
c) "test02_insert_small.sql" {small set of demo table content}
1. Inserts content into database tables:
arkivskaper, arkiv, serie, stykke, mappe

The test02 database is exported to the SIARD format using the SiardEdit ver. 1.69 application from the Swiss Federal Archives.
File: test02_mysql_elarkiv-database-demo_2014-09-15.siard
File: test02-small_mysql_elarkiv-database-demo_2014-09-15.siard

Exported metadata from SiardEdit:
File: test02_mysql_elarkiv-database-demo_2014-09-15_metadata.xml
File: test02_small_mysql_elarkiv-database-demo_2014-09-15_metadata.xml

Unzipped SIARD-folder using PKZIP:
Folder: test02_mysql_elarkiv-database-demo_2014-09-15
Folder: test02-small_mysql_elarkiv-database-demo_2014-09-15

Run (import) SQL-query "test02_create_user_&_database_only.sql" before importing the SIARD-file into a clean MySQL system.
