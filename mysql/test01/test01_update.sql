# test01_update.sql
#
# MySQL query for updating database, table content
# 

# Update database test01, table testtabell

USE test01;
UPDATE testtabell
SET beskrivelse = CONCAT(tittel, ' ', arkivkodefra, '-', arkivkodetil)
WHERE ID < 200;