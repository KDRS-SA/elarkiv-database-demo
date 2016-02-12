# test01_create.sql
#
# MySQL query for creating demo user & database only
# 

# Create database testdb01 (removes any existing database named testdb01)
# Usage: database and user must be present when importing database from the SIARD Edit application.

##### 1 User section #####
#
# user = 'user01', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'user01'@'localhost';
DROP USER 'user01'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'user01'@'%';
DROP USER 'user01'@'%';

# localhost with masked password
CREATE USER 'user01'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'user01'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'user01'@'%' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'user01'@'%' IDENTIFIED BY 'test';


### Create database ###
	
DROP DATABASE IF EXISTS testdb01;
CREATE DATABASE testdb01;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb01.* TO 'user01'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb01.* TO 'user01'@'%' WITH GRANT OPTION;
