DIA 17/09/2026

LETS GO TREINO 

--11:30 
Estudos de Estrutura de projetos Python, camadas do projeto
link: http://eskelsen.medium.com/estruturando-projetos-em-python-um-modelo-de-sistema-d0652d289bc

--12:30

--Estudos de SQL FIAP Curso de Banco de Dados e verifiquei que existem:
--Estruturas de controle
--Cursores 
--Objetos compilados no Oracle RDBMS 
--Tratamento de execeções 
--Stoted Procedures

--Logo vi que existe SQL e como criar funções e lembro que no curso da FIAP o professor no 2 ano passou sobre PROCEDURE, DECLARE E BEGIN. 
--E pesquisei sobre oque "O que são DDL, DML, DQL, e DCL em SQL?"


DDL - Data Definition Language - Linguagem de Definição de Dados.
São os comandos que interagem com os objetos do banco.
São comandos DDL : CREATE, ALTER e DROP

DML - Data Manipulation Language - Linguagem de Manipulação de Dados.
São os comandos que interagem com os dados dentro das tabelas.
São comandos DML : INSERT, DELETE e UPDATE

DQL - Data Query Language - Linguagem de Consulta de dados.
São os comandos de consulta.
São comandos DQL : SELECT (é o comando de consulta)

DTL - Data Transaction Language - Linguagem de Transação de Dados.
São os comandos para controle de transação.
São comandos DTL : BEGIN TRANSACTION, COMMIT E ROLLBACK

DCL - Data Control Language - Linguagem de Controle de Dados.
São os comandos para controlar a parte de segurança do banco de dados.
São comandos DCL : GRANT, REVOKE E DENY.


--De todos esses eu domino DDL, DML e DQL. Sobre DTL me lembro somentre das palavras, DCL eu não tenho nenhum conhecimento.
--Logo, lembrei que em Oracle utilizamos PL-SQL e que existe o T-SQL e pesquisei oque seria: "Oque é PL-SQL e T-SQL?"

O PL/SQL e o T-SQL são extensões procedurais da linguagem SQL criadas para adicionar lógica de programação (como variáveis, loops e condições) aos bancos de dados.

--13:20 

--PAUSA

--14:00

ESTUDOS 

--16:00

Exercício 31
Mostre o nome do cliente e o valor total de seus pedidos.

SELECT Clientes.nome, Pedidos.valor_total
FROM Clientes 
INNER JOIN Pedidos ON Clientes.id_cliente = Pedidos.id_cliente;

Exercício 32
Liste todos os produtos vendidos em cada pedido.

--SELECT Produtos.nome_produto, Pedidos.valor_total 
--FROM Produtos
--RIGHT JOIN Pedidos ON Produtos.id_produto = Pedidos.id_cliente;

SELECT Pedido.id_pedido,
 Produto.nome_produto
FROM Pedidos pedido
INNER JOIN Itens_Pedido itensp
ON Pedido.id_pedido = itensp.id_pedido
INNER JOIN Produtos Produto
ON itensp.id_produto = Produto.id_produto;

--17:00

--18:20

--TREINAR
Exercício 33
Mostre nome do produto, quantidade vendida e subtotal.

SELECT
p.nome_produto,
ip.quantidade,
ip.subtotal
FROM Produtos p
INNER JOIN Itens_Pedido ip
ON p.id_produto = ip.id_produto;

--TREINAR
Exercício 34
Exiba todos os pedidos realizados por clientes do estado de SP.

SELECT p.*
FROM Pedidos p
INNER JOIN Clientes c
ON p.id_cliente = c.id_cliente
WHERE c.estado = 'SP';

--18:50