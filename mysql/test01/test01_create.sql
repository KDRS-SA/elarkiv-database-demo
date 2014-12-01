# test01_create.sql
#
# MySQL query for creating demo user, database, tables and content
# 

# Create database testdb01 (removes any existing database named testdb01)

##### 1 User section #####
#
# user = 'user01', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'user01'@'localhost';
DROP USER 'user01'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'user01';
DROP USER 'user01';

# localhost with masked password
CREATE USER 'user01'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'user01'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'user01' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'user01' IDENTIFIED BY 'test';


### Create database ###
	
DROP DATABASE IF EXISTS testdb01;
CREATE DATABASE testdb01;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb01.* TO 'user01'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb01.* TO 'user01' WITH GRANT OPTION;

USE testdb01;

CREATE TABLE testtabell (
	id INTEGER,
	tittel VARCHAR(100) NOT NULL,
	beskrivelse VARCHAR(255),
	arkivkodefra VARCHAR(20),
	arkivkodetil VARCHAR(20),
	PRIMARY KEY (id)
)  engine=InnoDB;

INSERT INTO testtabell (
	id,	tittel, beskrivelse, arkivkodefra, arkivkodetil)
VALUES
	("1", "Test tittel 1", "Test beskrivelse 1", "000", "000")
	,("2", "Test tittel 2", "Test beskrivelse 2", "001", "003")
	,("3", "Test tittel 3", "Test beskrivelse 3", "100", "101")
	,("4", "Test tittel 4", "Test beskrivelse 4", "250", "255")
	,("5", "Test tittel 5", "Test beskrivelse 5", "A00", "B20")
	,("6", "Test tittel 6", "Test beskrivelse 6", "AX", "AY")
;
