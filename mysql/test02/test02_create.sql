# test02_create.sql
#
# MySQL query for creating demo user, database and tables
# 

# Create database test02 (removes any existing database named test02)

##### 1 User section #####
#
# user = 'test-02', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'test-02'@'localhost';
DROP USER 'test-02'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'test-02';
DROP USER 'test-02';

# localhost with masked password
CREATE USER 'test-02'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'test-02'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'test-02' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'test-02' IDENTIFIED BY 'test';

### Create database ###
	
DROP DATABASE IF EXISTS test02;
CREATE DATABASE test02;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON test02.* TO 'test-02'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
# GRANT ALL PRIVILEGES ON test02.* TO 'test-02' WITH GRANT OPTION;

USE test02;

CREATE TABLE arkivskaper (
	arkivskaperID INTEGER,
	identifikator VARCHAR (15),
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	merknad VARCHAR (4000),
	PRIMARY KEY (arkivskaperID),
	UNIQUE KEY arkivskaper (identifikator)
)  engine=InnoDB;

CREATE TABLE arkiv (
	arkivID INTEGER,
	arkivskaperID  INTEGER,
	depinstID VARCHAR (4),
	identifikator VARCHAR (15),
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	startdato VARCHAR (8), 
	sluttdato VARCHAR (8), 
	arkivkodefra VARCHAR (12),
	arkivkodetil VARCHAR (12),
	merknad VARCHAR (4000),
	FOREIGN KEY (arkivskaperID)
		REFERENCES arkivskaper (arkivskaperID),
	PRIMARY KEY (arkivID),
	UNIQUE KEY arkiv (identifikator, depinstid)
)  engine=InnoDB;

CREATE TABLE serie (
	serieID INTEGER,
	arkivID  INTEGER,
	identifikator VARCHAR (15),
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	startdato VARCHAR (8), 
	sluttdato VARCHAR (8), 
	arkivkodefra VARCHAR (12),
	arkivkodetil VARCHAR (12),
	merknad VARCHAR (4000),
	FOREIGN KEY (arkivID)
		REFERENCES arkiv (arkivID),
	PRIMARY KEY (serieID),
	UNIQUE KEY serie (identifikator, serieID)
)  engine=InnoDB;

CREATE TABLE stykke (
	stykkeID INTEGER,
	serieID  INTEGER,
	identifikator VARCHAR (15),
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	startdato VARCHAR (8), 
	sluttdato VARCHAR (8), 
	arkivkodefra VARCHAR (12),
	arkivkodetil VARCHAR (12),
	merknad VARCHAR (4000),
	FOREIGN KEY (serieID)
		REFERENCES serie (serieID),
	PRIMARY KEY (stykkeID),
	UNIQUE KEY stykke (identifikator, stykkeID)
)  engine=InnoDB;

CREATE TABLE mappe (
	mappeID INTEGER,
	stykkeID INTEGER,
	identifikator VARCHAR (15),
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	startdato VARCHAR (8), 
	sluttdato VARCHAR (8), 
	arkivkodefra VARCHAR (12),
	arkivkodetil VARCHAR (12),
	merknad VARCHAR (4000),
	FOREIGN KEY (stykkeID)
		REFERENCES stykke (stykkeID),
	PRIMARY KEY (mappeID),
	UNIQUE KEY mappe (identifikator, mappeID)
)  engine=InnoDB;

CREATE TABLE objekt (
	objektID INTEGER,
	mappeID INTEGER,
	navn VARCHAR (255) NOT NULL,
	innhold VARCHAR (4000),
	merknad VARCHAR (4000),
	filKatalog VARCHAR (255),
	filNavn VARCHAR (50),
	filtypeExtention VARCHAR (12),
	filtypeNavn VARCHAR (30),
	FOREIGN KEY (mappeID)
		REFERENCES mappe (mappeID),
	PRIMARY KEY (objektID)
)  engine=InnoDB;
