--DIA 01/09/2026

--LETS GO TREINO 12:20


--Ajustes para ORACLE

CREATE TABLE USUARIO (
 id_usuario INT PRIMARY KEY,
 nome VARCHAR2(100),
 email VARCHAR2(100),
 senha VARCHAR2(100),
 data_cadastro DATE,
 status CHAR(1)
);

CREATE TABLE PLANO (
 id_plano INT PRIMARY KEY,
 nome_plano VARCHAR2(50),
 valor NUMBER(8,2),
 qtd_telas INT
);

CREATE TABLE ASSINATURA (
 id_assinatura INT PRIMARY KEY,
 data_inicio DATE,
 data_fim DATE,
 status CHAR(1),
 id_usuario INT,
 id_plano INT,
 CONSTRAINT ID_ASSINATURA_FK
 FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
 CONSTRAINT ID_PLANO_FK FOREIGN KEY (id_plano) REFERENCES PLANO(id_plano)
);

CREATE TABLE CATEGORIA (
 id_categoria INT PRIMARY KEY,
 nome_categoria VARCHAR2(100)
);
INSERT INTO CATEGORIA VALUES (1, 'acao');

CREATE TABLE FILME (
 id_filme INT PRIMARY KEY,
 titulo VARCHAR2(150),
 descricao VARCHAR2(500),
 duracao INT,
 ano_lancamento INT,
 classificacao INT,
 id_categoria INT,
 CONSTRAINT ID_FILME_FK 
 FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);

CREATE TABLE SERIE (
 id_serie INT PRIMARY KEY,
 titulo VARCHAR2(150),
 descricao VARCHAR2(500),
 ano_lancamento INT,
 classificacao INT,
 id_categoria INT,
 CONSTRAINT ID_SERIE_FK
 FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);


-- EXERCICIOS PARA TREINO 15:30

--1.Adicione uma coluna chamada telefone na tabela USUARIO com capacidade para armazenar até 20 caracteres

ALTER TABLE USUARIO 
 ADD Telefone varchar2(20);

--2.Adicione uma coluna chamada pais_origem na tabela FILME com capacidade para armazenar até 50 caracteres.

ALTER TABLE FILME 
 ADD Pais_origem VARCHAR2(50);


--3.Adicione uma coluna chamada idioma na tabela SERIE com capacidade para armazenar até 30 caracteres.

ALTER TABLE SERIE 
 ADD idioma VARCHAR2(30);

--4.Renomeie a coluna titulo da tabela FILME para nome_filme.

ALTER TABLE FILME
 RENAME COLUMN titulo to nome_filme;

--Para vizualizar :)
INSERT INTO FILME VALUES (1, 'Homem aranha', 'de volta pra casa', 2, 2022, 16, 1, 'USA');
SELECT * FROM FILME; 


--5.Renomeie a coluna titulo da tabela SERIE para nome_serie.

ALTER TABLE SERIE 
 RENAME COLUMN titulo to nome_serie;

--6.Altere o tamanho da coluna email da tabela USUARIO para 200 caracteres.

ALTER TABLE USUARIO 
 MODIFY EMAIL VARCHAR2(200);

--7.Altere o tamanho da coluna nome_categoria da tabela CATEGORIA para 150 caracteres.

ALTER TABLE CATEGORIA 
 MODIFY NOME_CATEGORIA VARCHAR2(150);

--8.Adicione uma coluna chamada data_atualizacao na tabela FILME.

ALTER TABLE FILME 
 ADD DATA_ATUALIZACAO VARCHAR2(8);

--9.Adicione uma coluna chamada status na tabela PLANO.

ALTER TABLE PLANO 
 ADD STATUS CHAR(1);

--10.Remova a coluna descricao da tabela SERIE.

ALTER TABLE SERIE 
 DROP COLUMN DESCRICAO;

--11.Remova a coluna duracao da tabela FILME.

ALTER TABLE FILME 
 DROP COLUMN DURACAO;

--12.Renomeie a tabela USUARIO para ASSINANTE.

RENAME USUARIO TO ASSINANTE;

--13.Renomeie a tabela FILME para CATALOGO_FILMES.

RENAME FILME TO CATALOGO_FILMES;

-- FEITO 17:34 :)