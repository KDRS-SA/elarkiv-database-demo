README_mysql_test01.txt

Creates demo database testdb01 & user user01 with password test:
- table "testtabell" containing 6 rows of data.

With user having full MySQL admin permissions:

Run (import) SQL-query "test01_create.sql"
1. Removes (if existing) user "user01"@"localhost" via GRANT command.
2. Creates user "user01"@ with password "test".
3. Creates database "testdb01" (drops any existing database with this name).
4. Creates table "testtabell" with columns "id" (primary key), tittel, beskrivelse, arkivkodefra, arkivkodetil.
5. Populates table "testtabell" with 6 rows of data.

Run (import) SQL-query "test01_update.sql"
1. Updates database "testdb01", table "testtabell", field "beskrivelse"
- New value = "[tittel] [arkivkodefra]-[arkivkodetil]"

The testdb01 database is exported to the SIARD format using the SiardEdit ver. 1.69 application from the Swiss Federal Archives.
File: test01_mysql_elarkiv-database-demo_2014-12-01.siard

Exported metadata from SiardEdit:
File: test01_mysql_elarkiv-database-demo_2014-12-01_metadata.xml

Unzipped SIARD-folder using PKZIP/SECUREZIP:
Folder: test01_mysql_elarkiv-database-demo_2014-12-01

Run (import) SQL-query "test01_create_user_&_database_only.sql" before importing the SIARD-file into a clean MySQL system.
