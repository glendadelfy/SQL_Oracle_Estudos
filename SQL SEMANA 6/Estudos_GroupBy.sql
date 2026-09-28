--ESTUDOS DIA 21/09/2026

--LETS GO 

-- PPT 9 DE GROUP BY 
--15:40

SOBRE DQL
• Data Query Language (DQL) – Linguagem de Consulta de Dados , expressa o comando
que especifica a:
• CONSULTAR 1 ou vários dados (SELECT)
• Os comandos da DQL viabiliza o acesso aos dados de forma compatível ao modelo de
dados projetado.
• Em algumas literaturas colocam o SELECT dentro da DML

SOBRE SELECT GROUP BY

• O SELECT GROUP BY permite o agrupamento de dados em tabelas separada por meio
de uma ou mais colunas.
• Isso é útil quando você deseja resumir dados e realizar operações agregadas, como
contar, somar ou encontrar médias em grupos de registros que compartilham valores
semelhantes em uma ou mais colunas.
• Para usar o SELECT GROUP BY é necessário utilizar as funções disponíveis no SGBDR

SOBRE SELECT GROUP BY

• O SELECT GROUP BY permite o agrupamento de dados em tabelas separada por meio
de uma ou mais colunas.
• Isso é útil quando você deseja resumir dados e realizar operações agregadas, como
contar, somar ou encontrar médias em grupos de registros que compartilham valores
semelhantes em uma ou mais colunas.
• Para usar o SELECT GROUP BY é necessário utilizar as funções disponíveis no SGBDR


SELECT lista as colunas que serão selecionas além das
funções de agregação
• FROM específica o nome das tabelas que serão selecionadas
• WHERE condição para consulta (impor uma filtragem)
• GROUP BY [coluna] lista as colunas pelas quais deseja
agrupar os dados.
• HAVING limita os dados a serem mostrados no
agrupamento, isto é, funciona similarmente ao WHERE
porém é restrito ao GROUP BY.
• ORDER BY especifica em ordem os resultado da consultado
é exibido [asc] ascendente ou descendente [desc]


SELECT coluna1, coluna2, funcao_agregada(coluna)
FROM nome_da_tabela
WHERE condicao logica 
GROUP BY coluna1 coluna2 
HAVING condicao_logica_agregada 
ORDER BY coluna1;


PRINCIPAIS FUNÇÕES DE AGREGAÇÃO

FUNÇÃO DESCRIÇÃO
AVG ( ) RETORNA A MÉDIA OBTIDA ENTRE OS VALORES
COUNT ( ) RETORNA A QUANTIDADE DE OCORRÊNCIAS (LINHAS)
MAX ( ) RETORNA O MAIOR VALOR DO CONJUNTO
MIN ( ) RETORNA O MENOR VALOR DO CONJUNTO
SUM ( ) RETORNA A SOMATÓRIA DOS VALORES DE UM CONJUNTO
STDDEV ( ) RETORNA O DESVIO PADRÃO DO CONJUNTO
VARIANCE ( ) RETORNA A VARIÂNCIA DO CONJUNTO 


TABELA DE CLIENTES E PEDIDOS


SELECT * FROM Clientes ORDER BY nome ASC;

SELECT * FROM Clientes ORDER BY nome DESC;

SELECT Cidade
FROM Clientes
GROUP BY Cidade;


COMANDO: AVG ( )

• O comando AVG ( ) é utilizado para retorna a média
do conjunto
• Veja o exemplo da Sintaxe:

SELECT AVG (coluna1)
FROM nome_tabela;


COMANDO: MIN ( )

• O comando MIN ( ) é utilizado para retorna o menor
valor do conjunto
• Veja o exemplo da Sintaxe:

SELECT MIN(coluna1)
FROM nome_tabela;

COMANDO: MAX ( )

• O comando MAX ( ) é utilizado para retorna o maior
valor do conjunto
• Veja o exemplo da Sintaxe:

SELECT MAX(coluna1)
FROM nome_tabela;


COMANDO: SUM ( )

• O comando SUM ( ) é utilizado para retorna a
somatório de valores do conjunto
• Veja o exemplo da Sintaxe:

SELECT SUM(coluna1)
FROM nome_tabela;


COMANDO: COUNT ( )

• O comando COUNT ( ) é utilizado para retorna a
quantidade de ocorrências do conjunto
• Veja o exemplo da Sintaxe:

SELECT COUNT (coluna1)
FROM nome_tabela;


COMANDO: STDDEV ( )

• O comando STDDEV ( ) é utilizado para retorna o
desvio padrão do conjunto
• Veja o exemplo da Sintaxe:

SELECT STDDEV(coluna1)
FROM nome_tabela


COMANDO: VARIANCE ( )

• O comando VARIANCE ( ) é utilizado para retorna a
variância do conjunto
• Veja o exemplo da Sintaxe:

SELECT VARIANCE (coluna1)
FROM nome_tabela;


EXEMPLO DE FUNCTIONS

SELECT 
 AVG(idade),
 COUNT(nome),
 MIN(idade),
 MAX(idade),
 STDDEV(idade),
 VARIANCE(idade)
FROM Clientes;



SOBRE
• Muitas vezes, é necessário estabelecer condições para conseguir um resultado
específico no SELECT
• Portanto, pode ser comum utilizar as funções do SQL em agregação (GROUP BY).
• Mas Atenção! Recomenda-se utilizar a instrução HAVING para englobar essas funções,
uma vez que estaremos utilizando o GROUP BY 

Diferença entre WHERE e HAVING

• WHERE:
• Filtra linhas antes de qualquer
agrupamento.
• Usado em condições simples.
• Não pode usar funções de
agregação.


• HAVING:
• Filtra grupos após o GROUP BY.
• Usado quando há funções de
agregação..
• Funciona de forma parecida com
WHERE, mas aplicado ao resultado
agregado.


EXEMPLO DE FUNCTIONS

SELECT C.nome, AVG(C.idade) as media_idade
FROM Clientes C
GROUP BY C.nome
HAVING AVG(C.idade)> 25;

EXEMPLO DE FUCTIONS

SELECT P.ds_produto, AVG(P.vl_pedido) as media_preco
FROM Pedidos P
GROUP BY P.ds_produto
HAVING AVG (P.vl_pedido)> 3000.00;


EXEMPLOS DE FUNCTIONS

SELECT C.nome, COUNT (p.id) as total_pedidos
FROM Clientes C
LEFT JOIN Pedidos P ON C.id = P.cliente_id
GROUP BY C.nome
HAVING COUNT (P.id)>1;

--16:20


--17:50


--17:50

--EXERCICIOS 

--1.Quantos pedidos cada cliente fez?

SELECT id_cliente, COUNT(*)
FROM Pedidos
GROUP BY id_cliente;

--2.Qual o valor total gasto por cliente?

SELECT id_cliente, SUM(valor_total)
FROM Pedidos
GROUP BY id_cliente;


--3.Qual a média de valor dos pedidos por cliente?

SELECT id_cliente, AVG(valor_total)
FROM Pedidos
GROUP BY id_cliente;


--4.Quais clientes fizeram mais de 3 pedidos?

SELECT id_cliente, COUNT(*)
FROM Pedidos
GROUP BY id_cliente
HAVING COUNT(*) > 3;

--5.Quantos clientes existem por estado?

SELECT estado, COUNT(*)
FROM Clientes
GROUP BY estado;


--Nível 1 - COUNT + GROUP BY

--Exercício 1 Mostre quantos pedidos cada cliente realizou.

SELECT Cliente.nome,
COUNT(Pedido.id_pedido) AS total_pedidos
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome;

--18:20

--18:30

--Exercício 2 Exiba quantos pedidos existem para cada status.

SELECT status,
COUNT(*) AS total_pedidos
FROM Pedidos
GROUP BY status;

--Exercício 3 Mostre quantos clientes existem em cada estado.

SELECT estado,
COUNT(*) AS total_clientes
FROM Clientes
GROUP BY estado;

--Exercício 4 Exiba quantos produtos existem em cada categoria.


SELECT categoria,
COUNT(*) AS total_produtos
FROM Produtos
GROUP BY categoria;


--Exercício 5 Mostre quantos itens foram vendidos de cada produto.


SELECT id_produto,
SUM(quantidade) AS total_vendido
FROM Itens_Pedido
GROUP BY id_produto;

--19:00