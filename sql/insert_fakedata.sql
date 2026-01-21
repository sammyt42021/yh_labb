
INSERT INTO personuppgifter (fornamn, efternamn, personnummer, email)
VALUES
('Anna', 'Svensson', '199001011234', 'anna@yrkesco.se'),
('Erik', 'Larsson', '198505055678', 'erik@yrkesco.se'),
('Sara', 'Nilsson', '199803039999', 'sara@student.se');

INSERT INTO anlaggning (adress, ort)
VALUES
('Storgatan 1', 'Göteborg'),
('Sveavägen 10', 'Stockholm');

INSERT INTO program (program_namn, beskrivning)
VALUES
('AI Developer', 'Utbildning inom AI och ML');

INSERT INTO utbildningsledare (personuppgifter_id)
VALUES (1);

INSERT INTO klass (klass_namn, program_id, utbildningsledare_id, anlaggning_id)
VALUES ('AI23', 1, 1, 1);

INSERT INTO student (personuppgifter_id, klass_id)
VALUES (3, 1);

INSERT INTO kurs (kurs_namn, kurskod, poang, beskrivning)
VALUES
('Python', 'PY101', 30, 'Python programming'),
('Machine Learning', 'ML201', 40, 'Supervised & unsupervised learning');

INSERT INTO program_kurs (program_id, kurs_id)
VALUES (1, 1), (1, 2);

INSERT INTO konsult_foretag (foretagsnamn, organisationsnummer, har_f_skatt, timarvode)
VALUES ('TechConsult AB', '556677-8899', true, 900);

INSERT INTO utbildare (konsult_foretag_id, personuppgifter_id)
VALUES (1, 2);

INSERT INTO kurs_utbildare (utbildare_id, kurs_id)
VALUES (1, 1), (1, 2);
