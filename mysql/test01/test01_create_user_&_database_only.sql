# test01_create.sql
#
# MySQL query for creating demo user & database only
# 

# Create database test01 (removes any existing database named test01)
# Usage: database and user muest be present when importing database from the SIARD Edit application.

##### 1 User section #####
#
# user = 'test-01', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'test-01'@'localhost';
DROP USER 'test-01'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'test-01';
DROP USER 'test-01';

# localhost with masked password
CREATE USER 'test-01'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'test-01'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'test-01' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'test-01' IDENTIFIED BY 'test';


### Create database ###
	
DROP DATABASE IF EXISTS test01;
CREATE DATABASE test01;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON test01.* TO 'test-01'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON test01.* TO 'test-01' WITH GRANT OPTION;
