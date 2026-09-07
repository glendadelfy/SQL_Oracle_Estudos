-- DIA 19/08/2026 TREINO 
-- INIT database
-- Criacao de tabela 
CREATE TABLE Clientes (
 ID NUMBER(5) PRIMARY KEY,
 Nome VARCHAR2(255),
 Cidade VARCHAR2(255), 
 Sexo VARCHAR2(1),
 Idade NUMBER(3)
 );
 
 
INSERT INTO Clientes VALUES (1, 'Glenda Delfy', 'São Paulo', 'F', 22);
INSERT INTO Clientes VALUES (2, 'Rhany rhany', 'São Paulo', 'F', 21);
INSERT INTO Clientes VALUES (3, 'Juli Ap', 'São Paulo', 'F', 21);

SELECT * FROM Clientes;

CREATE TABLE Pedidos( 
 id NUMBER(5) Primary key,
 cliente_id NUMBER(5),
 ds_produto VARCHAR2(255),
 vl_pedido NUMBER(7,2),
 FOREIGN KEY (cliente_id) REFERENCES Clientes (id)
 );

INSERT INTO Pedidos VALUES (1, 1, 'Pastel de carne', 15);
INSERT INTO Pedidos VALUES (2, 2, 'Pastel de queijo', 15);
INSERT INTO Pedidos VALUES (3, 3, 'Especial', 20); 
 
SELECT * FROM Pedidos;

SELECT Nome
FROM Clientes
GROUP BY Nome;

-- FIAP ESTUDANDO O PPT 3 DO SEGUNDO SEMESTRE.

CREATE TABLE ALUNO (
 Ra INT, 
 Nome VARCHAR(60),
 Dt_nascimento date
 );