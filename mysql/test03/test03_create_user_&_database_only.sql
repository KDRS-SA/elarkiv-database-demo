# test03_create.sql
#
# MySQL query for creating demo user, database and tables
# 

# Create database testdb03 (removes any existing database named testdb03)

##### 1 User section #####
#
# user = 'user03', password = 'test'

# Remove (if exist) existing localhost user
GRANT USAGE ON *.* TO 'user03'@'localhost';
DROP USER 'user03'@'localhost';

# Remove (if exist) existing global user
GRANT USAGE ON *.* TO 'user03'@'%';
DROP USER 'user03'@'%';

# localhost with masked password
CREATE USER 'user03'@'localhost' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# localhost with plain password
# CREATE USER 'user03'@'localhost' IDENTIFIED BY 'test';

# global with masked password
CREATE USER 'user03'@'%' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29';

# global with plain password
# CREATE USER 'user03'@'%' IDENTIFIED BY 'test';

### Create database ###
	
DROP DATABASE IF EXISTS testdb03;
CREATE DATABASE testdb03;

# localhost grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb03.* TO 'user03'@'localhost' WITH GRANT OPTION;

# global grant priveleges for user to created database
GRANT ALL PRIVILEGES ON testdb03.* TO 'user03'@'%' WITH GRANT OPTION;