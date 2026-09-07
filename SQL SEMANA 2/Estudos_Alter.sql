--DIA 25/08/2026
--12:28

--O comando ALTER é utilizado para alterar diversos objetos em um banco de dados, como tabelas,
--views, usuários, procedures, triggers, entre outros;
--• Para usar o comando ALTER, é necessário especificar o tipo de objeto que se deseja alterar, seguido do
--seu nome e dos seus atributos;


--ALTER TABLE NOME_TABELA 
--COMANDO_DE_MODIFICAR;

--O comando ALTER TABLE altera a definição (ou estrutura) de uma tabela existente;
--• É necessário ser o dono da tabela (ou ter privilégios) para executar o comando;
--• Os principais comandos para alteração em tabela(s) são:
--ALTER TABLE
--ADD
--DROP
--RENAME
--MODIFY

--Quando há necessidade em adicionar uma coluna à uma tabela existente no banco de dados é utilizado o
--comando
--• Através desse comando é possível aplicar uma nova coluna com dados vazios, portanto, é importante
--utilizar esse comando quando a tabela não está preenchida (ou populada de dados) para não ocorrer falhas
--na integridade de dados.
--• Por meio do é possível adicionar N colunas, de variados tipos e com restrição (PK, FK, UK) ou não.


--ALTER TABLE NOME_TABLE 
--ADD NOME_COLUNA TIPO(TAMANHO) ACEITACAO;

--NOME_TABELA: NOME DA TABELA A SER
--ALTERADA;
--NOME_COLUNA: O NOME PARA A NOVA
--COLUNA A SER ADICIONADA;
--TIPO(TAMANHO): TIPO PARA A NOVA
--COLUNA
--ACEITAÇÃO: RESTRIÇÃO OU CONSTRAINT A
--SER ADICIONADA



--ALTER TABLE USUARIO
-- ADD status CHAR(1);


--Quando há necessidade em adicionar uma CONSTRAINT para uma coluna existente na tabela é utilizado o
--comando
--• Atenção! É importante utilizar esse comando quando a tabela não está preenchida (ou populada de dados)
--para não ocorrer falhas na integridade de dados.
--• Por meio do é possível adicionar : PRIMARY KEY, FOREING KEY, UNIQUE, CHECK E
--DEFAULT.

--ALTER TABLE NOME_TABLE 
-- ADD CONSTRAINT
-- NOME_CONSTRAINT TIPO_CONSTRAINT COLUNA1 

--ALTER TABLE USUARIO
-- ADD CONSTRAINT 
--CK_STATUS CHECK (status in ('A', 'I'));

--DROP 

--Quando há necessidade em remover uma coluna à uma tabela existente no banco de dados é utilizado o
--comando DROP COLUMN
--• Através desse comando é possível remover uma coluna, portanto, é importante utilizar esse comando
--quando a tabela não está preenchida (ou populada) para não ocorrer uma exclusão indevida de dados


--ALTER TABLE NOME_TABELA 
-- DROP COLUMN COLUNA1;

--NOME_TABELA: O nome da tabela a ser
--alterada;
--COLUNA1 : O nome da coluna a ser
--removida;


--ALTER TABLE VEICULO 
-- DROP COLUMN modelo;

--Quando há necessidade em remover uma CONSTRAINT para uma coluna existente na tabela é utilizado o
--comando
--• Através desse comando é possível remover uma CONSTRAINT, portanto, é importante utilizar esse
--comando quando a tabela não está preenchida (ou populada) para não ocorrer uma exclusão indevida de
--dados.

--NOME_TABELA: O nome da tabela a ser
--alterada;
--COLUNA1 : O nome da coluna a ser
--removida;


--Quando há necessidade de alterar uma coluna à uma tabela existente no banco de dados é utilizado o
--comando MODIFY
--• Através desse comando é possível alterar as colunas, tais como, tipo, tamanho, obrigatoriedade (NOT
--NULL) e valor default (padrão)

--ALTER TABLE NOME_TABELA 
--MODIFY coluna1 TIPO(TAMANHO);

--NOME_TABELA: O nome da tabela a ser
--alterada;
--COLUNA1 : O nome da coluna a ser
--removida;

--ALTER TABLE USUARIO 
-- MODIFY PASSWORD VARCHAR2(120);

--RENAME

--Quando há necessidade de renomear uma coluna à uma tabela existente no banco de dados é utilizado o
--comando
--• Por padrão, o ORACLE transfere automaticamente as restrições de integridade, índices e entre outros para o
--novo objeto.

--ALTER TABLE NOME_TABELA 
--RENAME COLUMN coluna1 to novo_nome;


--NOME_TABELA: O nome da tabela a ser
--alterada;
--COLUNA1 : O nome da coluna anterior;
--NOVO_NOME: O novo nome da coluna;

-- TABLE USUARIO 
-- RENAME COLUMN password to senha;

--Quando há necessidade de renomear uma tabela existente é utilizado o comando
--• Por padrão, o ORACLE transfere automaticamente as restrições de integridade, índices e entre outros para o
--novo objeto.

--RENAME NOME_TABELA 
-- TO NOME_NOME_TABELA;

--NOME_TABELA: O nome da tabela a ser
--alterada;
--NOVO_NOME_TABELA : O novo nome que
--a tabela receberá

--RENAME VEICULO 
-- TO CARRO;



--EXERCICIO: 

-- Criacao da tabela para o exercicio 

CREATE TABLE USUARIO (
 id INT PRIMARY KEY, 
 username VARCHAR2 (60),
 password VARCHAR2 (30)
);

--Adicionar uma coluna da tabela
ALTER TABLE USUARIO 
 ADD status CHAR(1);
 
--Inserindo valores na tabela
INSERT INTO USUARIO VALUES (1, 'glenda', '123', 'A');

--Adicioanndo uma constraint na coluna com uma restrição
ALTER TABLE USUARIO 
 ADD CONSTRAINT 
 CK_STATUS CHECK (status in ('A', 'I'));
 
--Excluindo a tabela username 
ALTER TABLE USUARIO 
 DROP COLUMN username;
 
--Alterando a quantidade de dados de password 
ALTER TABLE USUARIO 
 MODIFY password VARCHAR2(120);
 
--Inserindo valores na tabela 
INSERT INTO USUARIO VALUES (2, 'glenda', 'A');

--Verificando a tabela 
SELECT * FROM USUARIO

--Alterando o nome da coluna password para senha 
ALTER TABLE USUARIO 
 RENAME column password to senha; 
 
--Verificando a tabela
SELECT * FROM USUARIO 

--Renomeando o nome da tabela USUARIO para USE
RENAME USUARIO 
 TO USE; 
 
--Verificando a tabela
SELECT * FROM USE 

--Deletando a tabela renomeada USE
DROP TABLE USE;



