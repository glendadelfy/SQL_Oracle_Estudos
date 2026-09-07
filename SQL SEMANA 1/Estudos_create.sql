--DIA 17/08/2026
-- INIT database
CREATE TABLE Clientes (
 ID NUMBER(5)PRIMARY KEY,
 Nome VARCHAR(255),
 Cidade VARCHAR2(255),
 Sexo VARCHAR(1),
 idade NUMBER
);

INSERT INTO clientes VALUES(1, 'Glenda', 'São Paulo', 'M', 20);
INSERT INTO clientes VALUES(2, 'Glenda', 'São Paulo', 'M', 20);
INSERT INTO clientes VALUES(3, 'Glenda', 'São Paulo', 'M', 20);
INSERT INTO clientes VALUES(4, 'Glenda', 'São Paulo', 'M', 20);
INSERT INTO clientes VALUES(5, 'Glenda', 'São Paulo', 'M', 20);
INSERT INTO clientes VALUES(6, 'Glenda', 'São Paulo', 'M', 20);


CREATE TABLE Pedidos(
 id NUMBER(5) PRIMARY KEY,
 cliente_id NUMBER(5),
 ds_produto VARCHAR2(255),
 vl_pedido Number(5,2),
 FOREIGN KEY (cliente_id) REFERENCES Clientes (id) 
);
 
 
INSERT INTO Pedidos VALUES (101, 1, 'Celular', 100);
INSERT INTO Pedidos VALUES (102, 2, 'Celular', 100);
INSERT INTO Pedidos VALUES (103, 3, 'Celular', 100); 
INSERT INTO Pedidos VALUES (104, 4, 'Celular', 100);
INSERT INTO Pedidos VALUES (105, 5, 'Celular', 100);
INSERT INTO Pedidos VALUES (106, 6, 'Celular', 10);
 
 
SELECT Cidade
FROM Clientes 
GROUP BY Cidade;

SELECT AVG(vl_pedido)
FROM Pedidos;


SELECT MIN(vl_pedido)
FROM Pedidos;

SELECT MAX(vl_pedido)
FROM(Pedidos);

SELECT SUM(vl_pedido)
FROM(Pedidos);

SELECT COUNT(vl_pedido)
FROM(Pedidos);

SELECT STDDEV(vl_pedido)
FROM (Pedidos);

SELECT VARIANCE(vl_pedido)
FROM(Pedidos);

SELECT 
 AVG(idade),
 COUNT(nome), 
 MIN(idade),
 MAX(idade),
 STDDEV(idade),
 VARIANCE(idade)
FROM Clientes;