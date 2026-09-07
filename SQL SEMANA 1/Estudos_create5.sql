-- DIA 21/08/2026 TREINO 
-- INIT database

--Uma restrição CHECK é uma regra que determina quais
--valores são válidos para uma coluna ou uma tabela em um
--banco de dados.
--• Ela permite especificar uma expressão lógica que deve ser
--verdadeira para cada registro inserido ou atualizado na coluna
--ou na tabela.
--• A expressão lógica pode usar operadores de comparação como
-->, <, >=, <=, IN, NOT IN, NOT BETWEEN, BETWEEN, = e <>.

--CREATE TABLE NOME_TABELA (
-- Coluna1 tipo_dado(tamanho)
-- CHECK (validacao_logica),
-- coluna2 tipo_dado(tamanho)
-- );
CREATE TABLE MOTORISTA (
 id int PRIMARY KEY, 
 nome varchar2(60),
 cpf varchar2(11),
 sexo char(1) CHECK (Sexo = 'M' or sexo = 'F'),
 status char(1),
 CONSTRAINT CK_STATUS
    CHECK(status = 'A' or status ='I')
);
--VOLTANDO 14:00
INSERT INTO MOTORISTA VALUES ( 1, 'Glenda', '52100000000', 'F', 'A'),
(2, 'Glenda', '52100000000', 'F', 'A'),
(3, 'Glenda', '52100000000', 'M', 'I'); 

SELECT * FROM MOTORISTA;
--19:00
