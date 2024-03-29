DROP SCHEMA IF EXISTS AZIENDA;
DROP DATABASE IF EXISTS AZIENDA;

CREATE SCHEMA AZIENDA;
USE AZIENDA;

CREATE TABLE IMPIEGATO (
	NOME_BATT VARCHAR(10) NOT NULL,
    INIZ_INT INTEGER,
    COGNOME VARCHAR(10) NOT NULL,
    SSN VARCHAR(13) NOT NULL,
    DATA_N DATE,
    INDIRIZZO VARCHAR(20) NOT NULL,
    SESSO CHAR(1) NOT NULL,
    STIPENDIO DECIMAL(6,2),
    SUPERSSN VARCHAR(13),
    N_D INTEGER,
    PRIMARY KEY (SSN),
    UNIQUE (SSN),
    FOREIGN KEY (SUPERSSN) REFERENCES IMPIEGATO(SSN)
    );
    
CREATE TABLE DIPARTIMENTO (
	NOME_D VARCHAR(10),
    NUMERO_D INTEGER NOT NULL AUTO_INCREMENT,
    DATA_INIZIO_DIR DATE,
    SSN_DIR VARCHAR(13),
    PRIMARY KEY (NUMERO_D),
    UNIQUE (NUMERO_D),
    FOREIGN KEY (SSN_DIR) REFERENCES IMPIEGATO(SSN));

ALTER TABLE IMPIEGATO
ADD FOREIGN KEY (N_D) REFERENCES DIPARTIMENTO(NUMERO_D);

CREATE TABLE PROGETTO (
	NOME_P VARCHAR(10),
    NUMERO_P INTEGER NOT NULL AUTO_INCREMENT,
    SEDE_P VARCHAR(10),
    NUM_D INTEGER,
    PRIMARY KEY (NUMERO_P),
    UNIQUE (NUMERO_P),
    FOREIGN KEY (NUM_D) REFERENCES DIPARTIMENTO(NUMERO_D));

CREATE TABLE LAVORA_SU (
	SSN_I VARCHAR(13) NOT NULL,
    N_P INTEGER,
    ORE TIME,
    PRIMARY KEY (SSN_I,N_P),
    FOREIGN KEY (SSN_I) REFERENCES IMPIEGATO(SSN),
    FOREIGN KEY (N_P) REFERENCES PROGETTO(NUMERO_P));
    
CREATE TABLE SEDI_DIP (
	SEDE VARCHAR(10) NOT NULL,
    SEDE_D INTEGER NOT NULL,
    PRIMARY KEY (SEDE,SEDE_D),
    FOREIGN KEY (SEDE_D) REFERENCES DIPARTIMENTO(NUMERO_D));
    
    
    