--DIA 13/09/2026

--LETS GO TREINO

-- 18:40 
CREATE TABLE CLIENTE (
ID_CLIENTE NUMBER(5) PRIMARY KEY,
NOME VARCHAR2(100) NOT NULL,
IDADE NUMBER(3) NOT NULL,
CIDADE VARCHAR2(50) NOT NULL,
RENDA NUMBER(10,2) NOT NULL
);

INSERT INTO CLIENTE VALUES (1, 'Ana Silva', 25, 'São Paulo', 3500.00);
INSERT INTO CLIENTE VALUES (2, 'Carlos Souza', 40, 'Rio de Janeiro', 5000.00);
INSERT INTO CLIENTE VALUES (3, 'Mariana Costa', 30, 'Belo Horizonte', 4200.00);
INSERT INTO CLIENTE VALUES (4, 'João Pereira', 22, 'São Paulo', 2000.00);
INSERT INTO CLIENTE VALUES (5, 'Fernanda Lima', 35, 'Curitiba', 6000.00);
INSERT INTO CLIENTE VALUES (6, 'Pedro Santos', 28, 'Porto Alegre', 3200.00);


--Exercícios de SELECT + WHERE
--Liste todos os clientes da tabela.

SELECT * FROM CLIENTE; 

--Mostre apenas os nomes dos clientes.

SELECT NOME
FROM CLIENTE;

--Liste os clientes com idade maior que 30.

SELECT * FROM CLIENTE 
WHERE IDADE > 30;

--Mostre os clientes que moram em "São Paulo".

SELECT * FROM CLIENTE
WHERE CIDADE = 'São Paulo';

--Liste os clientes com renda menor que 4000.

SELECT * FROM CLIENTE 
WHERE RENDA < 4000;


--🔎 Exercícios com Operadores Lógicos

--Liste os clientes com idade maior que 25 e renda maior que 3000.

SELECT * FROM CLIENTE 
WHERE IDADE > 25 AND RENDA > 3000;

--Mostre os clientes que moram em "Curitiba" ou "Porto Alegre".

SELECT * FROM CLIENTE
WHERE CIDADE = 'Porto Alegre' OR CIDADE = 'Curitiba';

--Liste os clientes com renda maior que 5000 ou idade menor que 25.

SELECT * FROM CLIENTE
WHERE RENDA > 500 OR IDADE < 25;

--Mostre os clientes que não moram em "São Paulo".

--ESTE EU PRECISO TREINAR
SELECT * FROM CLIENTE 
WHERE CIDADE <> 'São Paulo';

--Liste os clientes com idade maior que 30 e renda menor que 5000.

SELECT * FROM CLIENTE 
WHERE IDADE > 30 AND RENDA < 5000;

-- 19:10

--Exercícios com IN

--Liste os clientes com ID 1, 3 e 5.

--ESTE EU PRECISO TREINAR
SELECT * FROM CLIENTE
WHERE ID_CLIENTE IN (1, 3, 5);

--Mostre os clientes que moram em "São Paulo", "Rio de Janeiro" ou "Curitiba".

SELECT * FROM CLIENTE
WHERE CIDADE IN ('São Paulo', 'Rio de Janeiro', 'Curitiba');

--Liste os clientes cuja idade seja 22, 25 ou 30.

SELECT * FROM CLIENTE
WHERE IDADE IN (22, 25, 30);

--Mostre os clientes com renda exatamente 2000, 3500 ou 6000.

SELECT * FROM CLIENTE 
WHERE RENDA IN (2000, 3500, 6000);

--Liste os clientes com ID 2, 4 e 6.

SELECT * FROM CLIENTE
WHERE ID_CLIENTE IN (2, 4, 6);

--19:22

--Exercícios com BETWEEN

--Liste os clientes com idade entre 25 e 35.

--ESTE EU PRECISO TREINAR
SELECT * FROM CLIENTE
WHERE IDADE BETWEEN 25 AND 35;

--Mostre os clientes cuja renda esteja entre 3000 e 5000.

SELECT * FROM CLIENTE
WHERE RENDA BETWEEN 3000 AND 5000;

--Liste os clientes com ID entre 2 e 5.

SELECT * FROM CLIENTE
WHERE ID_CLIENTE BETWEEN 2 AND 5;


--Mostre os clientes com idade entre 20 e 30 e renda maior que 3000.

SELECT * FROM CLIENTE
WHERE IDADE BETWEEN 20 AND 30 AND RENDA > 3000;

--Liste os clientes que moram em "São Paulo" e têm idade entre 22 e 28.

SELECT * FROM CLIENTE 
WHERE CIDADE = 'São Paulo' AND IDADE BETWEEN 22 AND 28;

--19:58
