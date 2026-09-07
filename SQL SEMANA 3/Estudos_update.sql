--DIA 31/08/2026

--LETS GO TREINO 18:30

--Data Manipulation Language (DML) – Linguagem de Manipulação de Dados ,
--expressa um conjunto de comandos que especificam a:
--• INSERIR 1 ou vários dados (INSERT)
--• ATUALIZAR 1 ou vários dados (UPDATE)
--• REMOVER 1 ou vários dados (DELETE)
--• Os comandos da DML viabiliza o acesso ou manipulação dos dados de forma
--compatível ao modelo de dados projetado.

--A DML é categorizado por:
--• Procedural (ou Específico): Exige especificar quais dados são necessários e como
--obtê-los:
--• No INSERT é apenas mencionado as colunas que irão receber novos dados;
--• No UPDATE é apenas mencionado as colunas que irão receber novos dados E
--que são impostos a uma condição lógica (WHERE) para atualizar uma ou várias
--linhas de dados;
--• No DELETE é apenas mencionado uma condição lógica (WHERE) para remover
--uma ou várias linhas de dados;


--A DML é categorizado por:
--• Não-Procedural (ou Genérico): Exige especificar quais dados são necessários,
--sem especificar como obtê-los (Mais fácil de aprender e poderá gerar códigos
--não muito eficientes).
--• No INSERT é mencionado todas as colunas que irão receber novos dados;
--• No UPDATE é mencionado as colunas que irão receber novos dados, sem a
--necessidade de ter uma condição lógica (WHERE), isto é, atualizando todas
--as linhas da tabela
--• No DELETE não é mencionado uma condição lógica (WHERE), portanto,
--poderá remover todas as linhas da tabela 

--O comando INSERT é utilizado para incluir 1 ou
--vários dados de uma tabela específica em um
--banco de dados.
--• Para usar o comando INSERT, é necessário
--especificar o nome de objeto que se deseja inserir,
--seguido do nome das colunas e dos novos dados
--respectivamente.

--INSERT INTO NOME_TABELA (coluna1, coluna2)
--VALUES (valor1, valor2);

--ou 
--INSERT INTO NOME_TABELA 
--VALUES (valor1, valor2);

CREATE TABLE ALUNO (
 RA INT PRIMARY KEY,
 Nome VARCHAR(100)
);

--EXEMPLO INSERT NÃO-PROCEDURAL (OU GENÉRICO)
INSERT INTO ALUNO VALUES (1, 'Glenda Delfy');

--EXEMPLO INSERT PROCEDURAL (OU ESPECIFICO)
INSERT INTO ALUNO (RA, NOME) VALUES (2, 'Glenda');



--O comando UPDATE é utilizado para atualizar 1 ou vários
--dados de uma tabela específica em um banco de dados.
--• Para usar o comando UPDATE, é necessário especificar o
--nome de objeto que se deseja inserir (nome da tabela),
--seguido do nome das colunas que irã receber o novo
--valor E da condição lógica para atualizar os dados
--(WHERE – podendo ser opcional)

--UPDATE NOME_TABELA 
--SET coluna1=valor_nome;

--ou

--UPDATE NOME_TABELA 
--SET coluna1 = valor_novo;
--WHERE <condicao_logica>;

--19:00

--EXEMPLO INSERT NÃO-PROCEDURAL (OU GENÉRICO)

UPDATE ALUNO 
SET NOME = 'Joao';

--EXEMPLO INSERT PROCEDURAL (OU ESPECIFICO)

UPDATE ALUNO 
SET NOME = 'Maria';
WHERE ra = 1;


--O comando DELETE é utilizado para remover 1 ou
--vários dados de uma tabela específica em um
--banco de dados.
--• Para usar o comando DELETE, é necessário
--especificar o nome de objeto que se deseja inserir
--(nome da tabela), seguido da condição lógica para
--remover os dados (WHERE – podendo ser opcional)

--DELETE FROM NOME_TABELA; 

--OU 

--DELETE FROM NOME_TABELA
--WHERE <condicao_logica>;


--EXEMPLO INSERT NÃO-PROCEDURAL (OU GENÉRICO)

DELETE FROM ALUNO

--OR

--EXEMPLO INSERT NÃO-PROCEDURAL (OU GENÉRICO)

DELETE FROM ALUNO
WHERE ra=1;
