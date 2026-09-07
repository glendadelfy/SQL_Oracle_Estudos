--DIA 29/08/2026

--LETS GO TREINO 

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
 FOREIGN KEY (id_usuario)
 REFERENCES USUARIO(id_usuario),
 FOREIGN KEY (id_plano)
 REFERENCES PLANO(id_plano)
);


CREATE TABLE CATEGORIA (
 id_categoria INT PRIMARY KEY,
 nome_categoria VARCHAR2(100)
);


CREATE TABLE FILME (
 id_filme INT PRIMARY KEY,
 titulo VARCHAR2(150),
 descricao VARCHAR2(500),
 duracao INT,
 ano_lancamento INT,
 classificacao INT,
 id_categoria INT,
 FOREIGN KEY (id_categoria)
 REFERENCES CATEGORIA(id_categoria)
);

CREATE TABLE SERIE (
 id_serie INT PRIMARY KEY,
 titulo VARCHAR2(150),
 descricao VARCHAR2(500),
 ano_lancamento INT,
 classificacao INT,
 id_categoria INT,
 FOREIGN KEY (id_categoria)
 REFERENCES CATEGORIA(id_categoria)
);

CREATE TABLE TEMPORADA (
 id_temporada INT PRIMARY KEY,
 numero_temporada INT,
 id_serie INT,
 FOREIGN KEY (id_serie)
 REFERENCES SERIE(id_serie)
);

CREATE TABLE EPISODIO (
 id_episodio INT PRIMARY KEY,
 titulo VARCHAR2(150),
 duracao INT,
 numero_episodio INT,
 id_temporada INT,
 FOREIGN KEY (id_temporada)
 REFERENCES TEMPORADA(id_temporada)
);

CREATE TABLE HISTORICO_VISUALIZACAO (
 id_historico INT PRIMARY KEY,
 data_visualizacao DATE,
 tempo_assistido INT,
 id_usuario INT,
 id_filme INT,
 FOREIGN KEY (id_usuario)
 REFERENCES USUARIO(id_usuario),
 FOREIGN KEY (id_filme)
 REFERENCES FILME(id_filme)
);


CREATE TABLE AVALIACAO (
 id_avaliacao INT PRIMARY KEY,
 nota INT,
 comentario VARCHAR2(300),
 id_usuario INT,
 id_filme INT,
 --FOREIGN KEY (id_usuario)
 --REFERENCES USUARIO(id_usuario),
 FOREIGN KEY (id_filme)
 REFERENCES FILME(id_filme)
);

--Desafio Completo: 

--Adicionar telefone ao usuário

ALTER TABLE USUARIO
 ADD TELEFONE VARCHAR(11);
--Adicionar status à tabela filme

ALTER TABLE FILME   
 ADD STATUS CHAR(1);
--Renomear uma coluna

ALTER TABLE AVALIACAO 
    RENAME COLUMN COMENTARIO TO RESENHA;
--Modificar o tamanho de uma coluna

ALTER TABLE AVALIACAO 
    MODIFY RESENHA VARCHAR(30);

--Adicionar uma chave estrangeira

ALTER TABLE AVALIACAO 
    ADD CONSTRAINT AVALIACAO_FK 
    FOREIGN KEY (id_usuario) REFERENCES USUARIO (id_usuario);

--Remover uma coluna

ALTER TABLE HISTORICO_VISUALIZACAO
    DROP COLUMN TEMPO_ASSISTIDO;

--Renomear tabela

RENAME HISTORICO_VISUALIZACAO TO HISTORICO; 


--Adicionar coluna de data de atualização
--?

--Exercícios de DROP

--Remover uma constraint

ALTER TABLE AVALIACAO 
    DROP CONSTRAINT AVALIACAO_FK;

--Excluir tabela de avaliação

DROP TABLE AVALIACAO;

--Excluir tabela histórico

DROP TABLE HISTORICO;

--Excluir tabela episódio

DROP TABLE EPISODIO;

--Excluir tabela temporada

DROP TABLE TEMPORADA;

--Excluir tabela série

DROP TABLE SERIE;

--Excluir tabela filme

DROP TABLE FILME;

--Fim 18:28

