# test04-small_insert_objekt_no-documents.sql
#
# MySQL query for inserting content into existing database tables
# 

# Insert data into database testdb04
# Data inserted into tables: arkivskaper, arkiv, serie, stykke, mappe, objekt

# Using a small (limited) dataset (number of rows in tables stykke & mappe)
# Table rows: arkivskaper 2, arkiv 2, serie, 6, stykke 9, mappe 9, objekt 9

# This import SQL imports data into table objekt NOT including import of file object into the blob-field

USE testdb04;

INSERT INTO objekt (
	objektID, mappeID, navn, innhold, merknad,
	filNavn, filtypeExtention, filtypeNavn)
VALUES
	('1','1','Dokument 1','Rådet for trygg trafikk','Merknad dokument 1','Vedlikehold av Noark 5.txt','TXT','TXT-dokument')
	,('2','2','Dokument 2',NULL,'Merknad dokument 2','utvalg_k2000v01_addml_7.3.XML','XML','XML-dokument')
	,('3','3','Dokument 3','Brannstyret','Merknad dokument 3','1.pdf','PDF','PDF-dokument')
	,('4','4','Dokument 4','Teknisk utval','Merknad dokument 4','2.pdf','PDF','PDF-dokument')
	,('5','5','Dokument 5','Møter i vassforyningsnemnda','Merknad dokument 5','5.pdf','PDF','PDF-dokument')
	,('6','214','Dokument ','Oppføring av braanngarasje på Fyrde Austefjorden','Merknad dokument 6','Noark 5v3.1 a5 Eks Arkivuttrekk xml.docx','DOCX','Word 2003-dokument')
	,('7','259','Dokument ','Branngarasje på Straumshamn','Merknad dokument 7','Noark-5v3.1_a2_Metadatakatalog _objektsortert.doc','DOC','Word-dokument')
	,('8','308','Dokument ','Vegar - vedlikehald diverse papir','Merknad dokument 8','Noark-5v3.1_a4_Eks_Virksomhetsspesifikke_metadata.docx','DOCX','Word-dokument')
	,('9','328','Dokument ','Nye vegar med kommunalt sommarvedlikehald','Merknad dokument 9','Samlet oversikt over krav i Noark5_egenerklæring_3_1 (rev 20.06.2013).xlsx','XLSX','Word-dokument')
;
