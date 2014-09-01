USE test01;
UPDATE testtabell
SET beskrivelse = CONCAT(tittel, ' ', arkivkodefra, '-', arkivkodetil)
WHERE ID < 200;