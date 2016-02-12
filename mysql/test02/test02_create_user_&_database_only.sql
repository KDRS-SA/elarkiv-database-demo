# test02_create.sql
#
# MySQL query for creating demo user & database only
# 

# Create database testdb02 (removes any existing database named testdb02)
# Usage: database and user must be present when importing database from the SIARD Edit application.

##### 1 User section #####
#
# user = 'user02', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'user02'@'localhost';
DROP USER 'user02'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'user02'@'%';
DROP USER 'user02'@'%';

# localhost with masked password
CREATE USER 'user02'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'user02'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'user02'@'%' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'user02'@'%' IDENTIFIED BY 'test';

### Create database ###
	
DROP DATABASE IF EXISTS testdb02;
CREATE DATABASE testdb02;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb02.* TO 'user02'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb02.* TO 'user02'@'%' WITH GRANT OPTION;
