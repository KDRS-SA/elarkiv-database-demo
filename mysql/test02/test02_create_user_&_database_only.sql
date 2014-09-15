# test02_create.sql
#
# MySQL query for creating demo user & database only
# 

# Create database test02 (removes any existing database named test02)
# Usage: database and user muest be present when importing database from the SIARD Edit application.

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
