README_mysql_test03.txt

Creates demo database testdb04 & user user04 with password test:
- Demo of archive catalog with tables with content: arkivskaper, arkiv, stykke, serie, mappe & objekt.
- Objekt documents are saved as blobs fields in table "objekt".

With user having full MySQL admin permissions:

Run (import) SQL-query "test04_create.sql"
1. Removes (if existing) user "user04" via GRANT command.
2. Creates user "user04" with password "test".
3. Creates database "test04" (drops any existing database with this name).
4. Creates tables "arkivskaper", "arkiv", "serie", "stykke", "mappe", "objekt"

Run (import) one of the following SQL-queries:
NOT IMPLEMENTED a) "test04_insert.sql" {full set of demo table content}
NOT IMPLEMENTED b) "test04-medium_insert.sql" {medium set of demo table content}
c) "test04-small_insert_no-objekt.sql" {small set of demo table content}
1. Inserts content into database tables:
arkivskaper, arkiv, serie, stykke, mappe, objekt
# Only the small set of values is implemented for table "objekt"

Run the following SQL-query: to import table "objekt":
"test04-small_insert_objekt.sql" {documents in blobs fields content}

The testdb04 database is exported to the SIARD format using the SiardEdit ver. 1.78 application from the Swiss Federal Archives.
File: test04_small_mysql_elarkiv-database-demo_2016-02-08.siard

Exported metadata from SiardEdit:
File: test03_small_mysql_elarkiv-database-demo_2016-02-08_metadata.xml

Unzipped SIARD-folder using PKZIP/SECUREZIP:
Folder: test03_small_mysql_elarkiv-database-demo_2016-02-08

Run (import) SQL-query "test04_create_user_&_database_only.sql" before importing the SIARD-file into a clean MySQL system.
