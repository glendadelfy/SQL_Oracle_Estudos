--DIA 08/09/2026

--LETS GO TREINO 13:30 

--COMANDO: SELECT

--O comando SELECT é utilizado para consultar 1 ou várias linhas de dados de uma tabela específica em um banco de dados.

--Para usar o comando SELECT, é necessário especificar o nome de objeto que se deseja consultar, seguido do nome das colunas E da
--condição lógica (WHERE – podendo ser opcional)

--17:40

--Veja o exemplo da Sintaxe para Consultar

--PROCEDURAL 

--SELECT coluna1, coluna2
--FROM nome_tabela 
--WHERE condicao_logica

--NÃO PROCEDURAL 

--SELECT * 
--FROM nome_tabela 

--EXEMPLO DE TABELA
--PRODUTO

--PROCEDURAL 

--SELECT desc_produto 
--FROM PRODUTO 
--WHERE id_produto = 1;

--NÃO PRODURAL 
--SELECT * 
--FROM PRODUTO;

--O QUE É WHERE?

--É usada para filtrar registros em uma consulta, retornando apenas as linhas que
--atendem a uma condição específica;
--É essencial para realizar seleções baseadas em critérios, como comparações de
--valores em colunas, expressões lógicas e operadores relacionais.
--No SELECT impõe uma FILTRAGEM DE DADOS;
--No UPDATE impõe uma RESTRIÇÃO DE ATUALIZAÇÃO;
--No DELETE impõe uma RESTRIÇÃO DE REMOÇÃO.

--OPERADORES

--OPERADORES DE COMPARAÇÃO

--Usados para realizar uma comparação entre valores ou expressões, sendo que o seu resultado é um valor lógico (Booleano), isto é, verdadeiro (TRUE) ou
--falso (FALSE).
--Podem ser utilizados em consultas (SELECT), atualizações (UPDATE) e remoções (DELETE).

-- TIPOS
-- SIMBOLO FINALIDADE
-- = Igualdade
-- > Maior que
-- >= Maior ou Igual
-- < Menor que
-- <= Menor ou Igual
-- <> Diferente que


--PERADORES LÓGICOS
-- Usados para realizar combinações de expressões que estabelecem uma comparação de valores,
--sendo que o seu resultado é um valor lógico
--(Booleano), isto é, verdadeiro (TRUE) ou falso (FALSE).
-- Podem ser utilizados em consultas (SELECT), atualizações (UPDATE) e remoções (DELETE)




--SIMBOLO FINALIDADE
--OR Lógica OU
--AND Lógica E
--NOT Lógica Invertida (ou Negação)

--OPERADORES ARITMÉTICOS

-- Usados para realizar operações matemáticas.
-- Podem ser utilizados nos comandos da DML e na DQL

--SIMBOLO FINALIDADE
--+ Somar
--- Subtrair
--* Multiplicar
--/ Dividir
--% Resto da Divisão


--OPERADORES DE COMPARAÇÃO COM FUNÇÃO

-- Usados para realizar uma comparação entre valores ou expressões, sendo que o seu resultado é um valor lógico (Booleano), isto é, verdadeiro (TRUE) ou falso (FALSE).
-- Podem ser utilizados em consultas (SELECT), atualizações (UPDATE) e remoções (DELETE)

--SIMBOLO FINALIDADE
--IN Verificar os itens dentro de uma lista
--BETWEEN Verificar o intervalo

--19:00