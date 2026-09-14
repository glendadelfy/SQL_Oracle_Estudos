--DIA 10/09/2026

--LETS GO TREINO 11:50

--EXEMPLO DE TABELA

--FUNCTIONS DE TEXTO

--COMANDO DESCRIÇÃO
--LOWER (X) Converte as letras para minúscula, onde o texto é informado na parâmetro X
--UPPER (X) Converte as letras para maiúscula, onde o texto é informado na parâmetro X
--INITCAP (X) Converte a letra inicial de cada palavra em maiúscula, onde o texto é informado na parâmetro X

--EXEMPLO DE TABELA

-- SELECT 
--    LOWER(DESC_PRODUTO),
--    UPPER(DESC_PRODUTO),
--    INITCAP(DESC_PRODUTO)
--FROM PRODUTO;

--FUNCTIONS DE TEXTO

--COMANDO DESCRIÇÃO
--CONCAT (X, Y) Concatena o conteúdo, onde o texto é informado no parâmetro X e Y
--SUBSTR (X, INICIO, LARGURA) Retorna uma substring, onde o texto é informado no parâmetro X, a partir da posição especificada no parâmetro INICIO e a LARGURA pode ser fornecido opcionalmente
--LENGTH (X) Retorna uma quantidade de caracteres, onde o texto é informado no parâmetro X
--INSTR (X, Localiza String, Inicio, Ocorrência) Procura um texto e retorna a posição que ocorre, onde o texto é informado no parâmetro X, a posição INICIO para iniciar a busca é opcional. Também pode ser fornecido uma OCORRÊNCIA, que indica qual ocorrência de “LOCALIZA STRING” deve ser retornada.
--LPAD/RPAD Preenche X com espaços a esquerda (LPAD) ou a direita (RPAD), para que o cumprimento total da string tenha até n caracteres de largura. Também pode ser fornecido texto para preenchimento da esquerda ou direita e quando não é fornecido é substituído por espaços em branco.
--REPLACE (X, String Busca, String Substituicao) Procura um texto e o substitui, onde o texto é informado no parâmetro X

--EXEMPLO DE TABELA

--SELECT 
--    CONCAT(DESC_PRODUTO, 'A'),
--   SUBSTR(DESC_PRODUTO,1,3),
--    SUBSTR(DESC_PRODUTO,3),
--    LENGTH(DESC_PRODUTO)
--FROM PRODUTO;


--EXEMPLO DE TABELA

--SELECT 
--    DESC_PRODUTO,
--    RPAD(DESC_PRODUTO, 20, '.'),
--    LPAD(DESC_PRODUTO,20, '.')
--FROM PRODUTO;


--EXEMPLO DE TABELA

--SELECT 
--    DESC_PRODUTO,
--    LTRIM(DESC_PRODUTO,'Pr'),
--    RTRIM(DESC_PRODUTO, 'A')
--FROM PROCUTO;

--EXEMPLO DE TABELA

--SELECT 
--    DESC_PRODUTO,
--    REPLACE(DESC_PRODUTO, 'r', '*'),
--FROM PROCUTO;

--FUNCTIONS DE CONVERSÃO

--COMANDO DESCRIÇÃO
--TO_CHAR (X, FORMATO) Converte para uma string (VARCHAR2), onde o valor é informado na parâmetro X
--TO_NUMBER (X, FORMATO) Converte para um número (NUMBER), onde o valor é informado na parâmetro X
--TO_DATE (X , FORMATO) Converte para uma data (DATE), onde o valor é informado na parâmetro X

--13:10 

--13:40

--Vou criar exercícios em ordem crescente de dificuldade para você praticar SELECT, WHERE, operadores e Functions.

--Tabela Base

CREATE TABLE PRODUTO (
ID_PRODUTO NUMBER(5) PRIMARY KEY,
DESC_PRODUTO VARCHAR2(100) NOT NULL,
PRECO NUMBER(10,2) NOT NULL,
ESTOQUE NUMBER(5) NOT NULL,
CATEGORIA VARCHAR2(50) NOT NULL
);


INSERT INTO PRODUTO VALUES (1, 'Notebook Dell', 3500.00, 10, 'Informatica');
INSERT INTO PRODUTO VALUES (2, 'Mouse Gamer', 120.00, 50, 'Periferico');
INSERT INTO PRODUTO VALUES (3, 'Teclado Mecanico', 300.00, 20, 'Periferico');
INSERT INTO PRODUTO VALUES (4, 'Monitor LG', 900.00, 15, 'Informatica');
INSERT INTO PRODUTO VALUES (5, 'Headset JBL', 250.00, 30, 'Audio');
INSERT INTO PRODUTO VALUES (6, 'Caixa de Som', 180.00, 25, 'Audio');



--Exercícios Nível 1 - SELECT

--1.Liste todos os dados da tabela PRODUTO.

SELECT * FROM PRODUTO;


--2.Mostre apenas a coluna DESC_PRODUTO.

SELECT DESC_PRODUTO
FROM PRODUTO;


--3.Mostre apenas as colunas DESC_PRODUTO e PRECO.

--ESTE EU PRECISO TREINAR
SELECT DESC_PRODUTO, PRECO
FROM PRODUTO;

--4.Mostre apenas a categoria dos produtos.

SELECT CATEGORIA
FROM PRODUTO;

--5.Mostre todos os produtos cadastrados.

SELECT * FROM PRODUTO;


--Exercícios Nível 2 - WHERE

6.Mostre o produto cujo ID é igual a 3.

SELECT * FROM PRODUTO 
WHERE ID_PRODUTO = 3;

7.Mostre os produtos com preço maior que 500.

SELECT * FROM PRODUTO 
WHERE PRECO > 500;

8.Mostre os produtos com preço menor que 300.

SELECT * FROM PRODUTO 
WHERE PRECO < 300;

9.Mostre os produtos cujo estoque é maior ou igual a 20.


SELECT * FROM PRODUTO 
WHERE ESTOQUE >= 20;

10.Mostre os produtos diferentes da categoria "Áudio".

--ESTE EU PRECISO TREINAR
SELECT * FROM PRODUTO
WHERE CATEGORIA <> 'Audio'; 


--Exercícios Nível 3 - Operadores Lógicos

11.Liste os produtos com preço maior que 200 E estoque maior que 20.

SELECT * FROM PRODUTO 
WHERE PRECO > 200 AND ESTOQUE < 20;

12.Liste os produtos da categoria "Informática" OU "Áudio".

--ESTE EU PRECISO TREINAR
SELECT * FROM PRODUTO
WHERE CATEGORIA = 'Informatica' OR CATEGORIA = 'Audio';

13.Liste os produtos que NÃO pertencem à categoria "Periférico".

SELECT * FROM PRODUTO
WHERE CATEGORIA <> 'Periferico';

14.Liste os produtos com preço acima de 200 E abaixo de 1000.

SELECT * FROM PRODUTO
WHERE PRECO > 200 AND PRECO < 1000;

15.Liste os produtos da categoria "Áudio" E estoque maior que 25.

SELECT * FROM PRODUTO 
WHERE CATEGORIA = 'Audio' AND ESTOQUE > 25;

-- 17:00

-- 18:30

--Exercícios Nível 4 - IN e BETWEEN

16.Liste os produtos com ID 1, 3 e 5.

--ESTE EU PRECISO TREINAR
SELECT * FROM PRODUTO
WHERE ID_PRODUTO IN (1, 3, 5);

17.Liste os produtos da categoria "Áudio" ou "Periférico" usando IN.

SELECT * FROM PRODUTO
WHERE CATEGORIA IN ('Audio', 'Periferico');

18.Liste os produtos com preço entre 200 e 1000.

SELECT * FROM PRODUTO 
WHERE PRECO BETWEEN 100 AND 100;

19.Liste os produtos cujo estoque está entre 15 e 30.

SELECT * FROM PRODUTO 
WHERE ESTOQUE BETWEEN 15 AND 30;

20.Liste os produtos com ID entre 2 e 5.

SELECT * FROM PRODUTO 
WHERE ID_PRODUTO BETWEEN 2 AND 5;

--18:50