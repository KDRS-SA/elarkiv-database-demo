# test02-medium_insert.sql
#
# MySQL query for inserting content into existing database tables
# 

# Insert data into database testdb02
# Data inserted into tables: arkivskaper, arkiv, serie, stykke, mappe

# Using a medium (limited) dataset (number of rows in tables stykke & mappe)
# Table rows: arkivskaper 2, arkiv 2, serie, 6, stykke 14, mappe 22, objekt 0

USE testdb02;

INSERT INTO arkivskaper (
	arkivskaperID, identifikator, navn, innhold, merknad)
VALUES
	('1','K-15290.150','Skodje kommune. Formannskapet/kommunestyret',null,null)
	,('2','K-15190.703','Volda kommune. Kommuneingeniøren',null,null)
;

INSERT INTO arkiv (
	arkivID, arkivskaperID, identifikator, depinstID, navn, innhold, 
	startdato, sluttdato, arkivkodefra, arkivkodetil, merknad)
VALUES
	('1','1','K-15290.150','IKAM','Skodje kommune. Formannskapet/kommunestyret',null,null,null,null,null,null)
	,('2','2','K-15190.703','IKAM','Volda kommune. Kommuneingeniøren',null,null,null,null,null,null)
;

INSERT INTO serie (
	serieID, arkivID, identifikator, navn, innhold, 
	startdato, sluttdato, arkivkodefra, arkivkodetil, merknad)
VALUES
	('1','1','Ab','Møtebøker kommunestyret',null,null,null,null,null,null)
	,('2','1','Aa','Møtebøker formannskapet',null,null,null,null,null,null)
	,('3','1','Ac','Sakslister formannskapet',null,null,null,null,null,null)
	,('4','1','Ca','Postjournalar formannskapet',null,null,null,null,null,null)
	,('5','2','Dba','Saksarkiv ordna etter Norsk Herredsforbund sin arkivnøkkel 1963-1965',null,'1963','1965',null,null,null)
	,('6','2','Dbb','Saksarkiv ordna etter Norsk Herredsforbund sin arkivnøkkel 1966-1967',null,'1966','1967',null,null,null)
;

INSERT INTO stykke (
	stykkeID, serieID, identifikator, navn, innhold, 
	startdato, sluttdato, arkivkodefra, arkivkodetil, merknad)
VALUES
	('1','2','L0001','Møtebok',null,'19761101','19790326',null,null,null)
	,('2','2','L0002','Møtebok',null,'19790409','19810309',null,null,null)
	,('12','1','L0003','Møtebok',null,'19860909','19930701',null,null,null)
	,('13','1','L0002','Møtebok',null,'19820215','19860909',null,null,null)
	,('14','1','L0001','Møtebok',null,'19761026','19811214',null,null,null)
	,('16','3','L0001','Sakslister  Del 1',null,'1977','1977',null,null,null)
	,('17','3','L0002','Sakslister  Del 2',null,'1977','1977',null,null,null)
	,('100','4','L0001','Postjournal',null,'19770104','19781031',null,null,null)
	,('101','4','L0002','Postjournal',null,'19781031','19800702',null,null,null)
	,('119','5','L0001','Arkivkode 000-046',null,'1963','1965','0','46',null)
	,('120','5','L0002','Arkivkode 210-210',null,'1963','1965','210','210',null)
	,('121','6','L0003','Arkivkode 504-505.1',null,'1966','1967','504','505.1',null)
	,('122','6','L0002','Arkivkode 210-533',null,'1966','1967','210','533',null)
	,('123','6','L0001','Arkivkode 022-221',null,'1966','1967','22','221',null)
;

INSERT INTO mappe (
	mappeID, stykkeID, identifikator, navn, innhold, 
	startdato, sluttdato, arkivkodefra, arkivkodetil, merknad)
VALUES
	('1','1','0001','Rådet for trygg trafikk',null,'1963','1965','2','2',null)
	,('2','1','0002','Bygningsrådet',null,'1963','1965','21','21',null)
	,('3','1','0003','Brannstyret',null,'1963','1965','22','22',null)
	,('4','1','0004','Teknisk utval',null,'1963','1965','23','23',null)
	,('5','1','0005','Møter i vassforyningsnemnda',null,'1963','1965','24','24',null)
	,('15','2','0001','Dalsfjord sokneråd',null,'1963','1965','210','210',null)
	,('16','2','0002','Mork skule leikeplass',null,'1963','1965','210','210',null)
	,('178','12','0005','Velsvik skule, skuleveg og leikeplass grus',null,'1966','1967','210','210',null)
	,('179','12','0004','Kalvatn skule',null,'1966','1967','210','210',null)
	,('180','12','0003','Høydal skule',null,'1966','1967','210','210',null)
	,('182','12','0001','Lid skule',null,'1966','1967','210','210',null)
	,('183','12','0002','Fylsvik skule',null,'1966','1967','210','210',null)
	,('184','13','0001','Reguleringssaker',null,'1966','1967','504','504',null)
	,('185','13','0002','Regulering - regionplan',null,'1966','1967','504.21','504.21',null)
	,('186','13','0003','Generalplanarbeid - konsulentar',null,'1966','1967','504.22','504.22',null)
	,('187','13','0004','Generalplan for Folkestad',null,'1966','1967','504.22','504.22',null)
	,('214','14','0001','Oppføring av braanngarasje på Fyrde Austefjorden',null,'1966','1967','510','510',null)
	,('259','14','0002','Branngarasje på Straumshamn',null,'1966','1967','510','510',null)
	,('308','16','0001','Vegar - vedlikehald diverse papir',null,'1966','1967','563','563',null)
	,('328','16','0002','Nye vegar med kommunalt sommarvedlikehald',null,'1966','1967','563','563',null)
	,('329','17','0001','Brøyting av private vegar 1967/68',null,'1966','1967','565','565',null)
	,('368','17','0002','Brøyting av private vegar 1966/67',null,'1966','1967','565','565',null)
;
