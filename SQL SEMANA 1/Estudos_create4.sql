-- DIA 20/08/2026 TREINO 
--FIAP ESTUDANDO O PPT 3 DO SEGUNDO SEMESTRE.
-- 13:45 ANOTAÇÕES SOBRE CREATE DO PPT

-- 'CREATE' utilizado para criar a estrutura de uma tabela 
--CREATE TABLE nome_tabela (
 --coluna_1 tipo_de_dado [restricao],
 --coluna_1 tipo_de_dado [restricao]
 --coluna_1 tipo_de_dado [restricao],
 --[restricoes_da_tabela]
 --);


-- tipo_de_dado: O tipo de dado que a coluna armazenará (por exemplo: INT, VARCHAR, DATE, etc.).
--restrição: Opcional, especifica regras adicionais(como NOT NULL, PRIMARY KEY, UNIQUE, DEFAULT,etc.).

CREATE TABLE ALUNO (
 Ra int, 
 Nome VARCHAR(60),
 Dt_nascimento date
 );
 
 
--O DATA TYPES definem o tipo de informação que pode ser armazenada em uma coluna de uma tabela;
--Voltado para definição de colunas com números inteiro ou de ponto flutuante, sendo positivo ou negativo.
--NUMBER, FLOAT, DOUBLE E INT 

-- Voltado para definição de colunas com texto alfanumérico
-- VARCHAR, CHAR, CLOB E NVARCHAR2(N)

--Voltado para definição de colunas com DATA e/ou HORA
-- DATE TIMESTAMP

--Uma CONSTRAINT é um tipo de RESTRIÇÃO (ou regras) que podem ser aplicadas nas colunas de uma determinada tabela.
--As principais CONSTRAINTssão as seguintes:
-- NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK E DEFAULT.

--Uma (ou PK) é um atributo, ou um conjunto de atributos, que distingue cada linha de uma tabela.
-- Cada tabela deve ter uma chave primária e apenas uma chave primária.

CREATE TABLE Usuario (
 id int PRIMARY KEY,
 username VARCHAR2(60),
 password VARCHAR2(30)
 );
 
--Uma coluna que possui a restrição NOT NULL não pode ter valores nulos, ou seja, valores que indicam a ausência de dados.
-- A definição NOT NULL só pode ser definida em colunas

--CREATE TABLE NOME_TABELA (
-- coluna1 tipo_dado(tamanho) NOT NULL,
-- coluna2 tipo_dado(tamanho
--);
 
CREATE TABLE PRODUTO (
 id int PRIMARY KEY,
 nome varchar2 (60) NOT NULL,
 preco NUMBER (5,2) NOT NULL,
 quantidade int
 );
--Uma restrição de integridade UNIQUE garante que cada valor em uma coluna ou em um conjunto de colunas seja único, ou seja, 
--não existam duas linhas na mesma tabela com valores iguais nessas colunas;

--CREATE TABLE NOME_TABELA ( 
-- coluna1 tipo_dado(tamanho) UNIQUE 
-- coluna2 tipo_dade(tamanho) 
-- );
 
CREATE TABLE VEICULO ( 
 id int PRIMARY KEY,
 placa varchar2(7)NOT NULL UNIQUE, 
 modelo varchar2(60) NOT NULL, 
 ano int NOT NULL
 );

CREATE TABLE VEICULOS (
 id int PRIMARY KEY,
 placa varchar2(7) NOT NULL,
 modelo varchar2(60) NOT NULL, 
 ano int NOT NULL, 
 CONSTRAINT UK_VEICULO UNIQUE (placa)
 );
 
INSERT INTO VEICULOS VALUES (1, 'GDV123', 'AUDI', 2026);
INSERT INTO VEICULOS VALUES (2, 'ABC1234', 'BMW', 2025);
INSERT INTO VEICULOS VALUES (3, 'XYZ9876', 'TOYOTA', 2024);
INSERT INTO VEICULOS VALUES (4, 'DEF5678', 'HONDA', 2023);
 

-- Uma FOREIGN KEY (ou FK) é uma restrição de integridade referencial, que permiti garantir a consistência dos dados em um banco de dados relacional.
 
 
CREATE TABLE PEDIDO (
 id int PRIMARY KEY,
 data_pedido date, 
 id_usuario int REFERENCES USUARIO(id),
 id_produto int, 
 quantidade int,
 valor_total number (5,2),
 CONSTRAINT FK_PRODUTO
 FOREIGN KEY (id_produto)REFERENCES PRODUTO(id)
 );
 
 
-- Uma restrição CHECK é uma regra que determina quais valores são válidos para uma coluna ou uma tabela em um banco de dados.
--• Ela permite especificar uma expressão lógica que deve ser verdadeira para cada registro inserido ou atualizado na coluna ou na tabela.
--• A expressão lógica pode usar operadores de comparação como >, <, >=, <=, IN, NOT IN, NOT BETWEEN, BETWEEN, = e <>.

--CREATE TABLE NOME_TABELA ( 
-- coluna1 tipo_dado(tamanho)
-- CHECK (validacao_logica),
-- coluna2 tipo_dado(tamanho)
-- );
-- 18:12