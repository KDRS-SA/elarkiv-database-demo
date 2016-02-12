# test01_update.sql
#
# MySQL query for updating database, table content
# 

# Update database testdb01, table testtabell

USE testdb01;
UPDATE testtabell
SET beskrivelse = CONCAT(tittel, ' ', arkivkodefra, '-', arkivkodetil)
WHERE ID < 5;
