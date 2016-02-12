# test04_create.sql
#
# MySQL query for creating demo user, database and tables
# 

# Create database testdb04 (removes any existing database named testdb04)

##### 1 User section #####
#
# user = 'user04', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'user04'@'localhost';
DROP USER 'user04'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'user04'@'%';
DROP USER 'user04'@'%';

# localhost with masked password
CREATE USER 'user04'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'user04'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'user04'@'%' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'user04'@'%' IDENTIFIED BY 'test';

### Create database ###
	
DROP DATABASE IF EXISTS testdb04;
CREATE DATABASE testdb04;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb04.* TO 'user04'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb04.* TO 'user04'@'%' WITH GRANT OPTION;