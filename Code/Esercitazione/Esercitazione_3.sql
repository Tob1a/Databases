ALTER TABLE DIPARTIMENTO
ADD BUDGET INTEGER;

ALTER TABLE DIPARTIMENTO 
RENAME DIPARTIMENTO;

UPDATE DIPARTIMENTO
SET BUDGET=30000;

UPDATE DIPARTIMENTO
SET NOME = 'Quality Assurance', 
DATA_INIZIO_DIR =  '22 Maggio 1988',
DIRETTORE = 'MRRMRY65F34G876Q',
BUDGET = 65000,
NUMERO_D = 3;



