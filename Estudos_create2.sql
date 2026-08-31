-- DIA 18/08/2026
-- INIT database
-- Criacao de tabela 
CREATE TABLE Cachorros(
 ID NUMBER(5)PRIMARY KEY,
 Nome VARCHAR2(255),
 Cor VARCHAR2(255),
 Data_Nascimento DATE,
 Idade NUMBER(5)
 );
 
 -- inserindo valores 
INSERT INTO Cachorros VALUES (1, 'Fofo', 'Preto com amarelo', DATE '2013-12-12', 13);
INSERT INTO Cachorros VALUES (2, 'Timon', 'Amarelo', DATE '2011-12-12', 20);

SELECT * FROM Cachorros;

CREATE TABLE Raca (
 ID NUMBER(5) PRIMARY KEY,
 Cachorro_id NUMBER(5),
 Tamanho VARCHAR2(255),
 Peso NUMBER(5),
 Farejador VARCHAR2(1),
 Cacador VARCHAR2(1),
 Carinhoso VARCHAR2(1),
 Veloz VARCHAR2(1),
 FOREIGN KEY (Cachorro_id) REFERENCES Cachorros (ID) 
 );
 
--DELETE FROM Raca;

INSERT INTO Raca VALUES (1, 1,'medio', 13, 'S', 'S', 'S', 'S');
INSERT INTO RACA VALUES (2, 2, 'Grande', 20, 'S', 'N', 'S', 'S');

SELECT * FROM Raca;

SELECT Nome
FROM Cachorros
GROUP BY Nome;