CREATE TABLE personuppgifter (
    personuppgifter_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(100) NOT NULL,
    efternamn VARCHAR(100) NOT NULL,
    personnummer CHAR(12) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefon VARCHAR(50)
);

CREATE TABLE anlaggning (
    anlaggning_id SERIAL PRIMARY KEY,
    adress VARCHAR(255) NOT NULL,
    ort VARCHAR(100) NOT NULL
);

CREATE TABLE program (
    program_id SERIAL PRIMARY KEY,
    program_namn VARCHAR(255) NOT NULL,
    beskrivning TEXT
);

CREATE TABLE utbildningsledare (
    utbildningsledare_id SERIAL PRIMARY KEY,
    personuppgifter_id INT NOT NULL REFERENCES personuppgifter(personuppgifter_id)
);

CREATE TABLE klass (
    klass_id SERIAL PRIMARY KEY,
    klass_namn VARCHAR(100) NOT NULL,
    program_id INT NOT NULL REFERENCES program(program_id),
    utbildningsledare_id INT NOT NULL REFERENCES utbildningsledare(utbildningsledare_id),
    anlaggning_id INT NOT NULL REFERENCES anlaggning(anlaggning_id)
);

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    personuppgifter_id INT NOT NULL REFERENCES personuppgifter(personuppgifter_id),
    klass_id INT NOT NULL REFERENCES klass(klass_id)
);

CREATE TABLE kurs (
    kurs_id SERIAL PRIMARY KEY,
    kurs_namn VARCHAR(255) NOT NULL,
    kurskod VARCHAR(50) UNIQUE NOT NULL,
    poang INT NOT NULL,
    beskrivning TEXT
);

CREATE TABLE program_kurs (
    program_id INT REFERENCES program(program_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (program_id, kurs_id)
);

CREATE TABLE konsult_foretag (
    konsult_foretag_id SERIAL PRIMARY KEY,
    foretagsnamn VARCHAR(255) NOT NULL,
    organisationsnummer VARCHAR(50) UNIQUE NOT NULL,
    adress VARCHAR(255),
    har_f_skatt BOOLEAN NOT NULL,
    timarvode NUMERIC(10,2)
);

CREATE TABLE utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    konsult_foretag_id INT REFERENCES konsult_foretag(konsult_foretag_id),
    personuppgifter_id INT NOT NULL REFERENCES personuppgifter(personuppgifter_id)
);

CREATE TABLE kurs_utbildare (
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (utbildare_id, kurs_id)
);
