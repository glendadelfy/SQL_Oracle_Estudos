--DIA 24/09/2026
--LETS GO 

-- PPT 9 DE GROUP BY 
--12:40


--Nível 5 - JOIN + GROUP BY + HAVING
--Exercício 21
--Mostre o nome do cliente e a quantidade de pedidos realizados, exibindo apenas clientes com mais de 2 pedidos.

SELECT Cliente.nome,
COUNT (Pedido.id_pedido) AS total_pedidos
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome 
HAVING COUNT (Pedido.id_pedido) >2;

--Exercício 22
--Mostre o nome do cliente e o total gasto, exibindo apenas clientes que gastaram mais de R$ 10.000.

SELECT Cliente.nome,
SUM (Pedido.valor_total) as total_gasto
FROM Clientes Cliente
INNER JOIN Pedidos Pedido 
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome
HAVING SUM (Pedido.valor_total) > 100;

--Exercício 23
--Mostre o nome do produto e a quantidade total vendida, exibindo apenas produtos com mais de 10 unidades vendidas.

SELECT Produto.nome_produto,
SUM (Itenspedido.quantidade) AS quantidade_total
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto
HAVING SUM (Itenspedido.quantidade) > 10;

--Exercício 24
--Mostre o nome do cliente e a média de valor dos seus pedidos, exibindo apenas médias acima de R$ 4.000.

SELECT Cliente.nome,
AVG (Pedido.valor_total) AS med_pedidos
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome 
HAVING AVG (Pedido.valor_total) > 400;


--Exercício 25
--Mostre o nome do produto e a receita total gerada, exibindo apenas produtos que geraram mais de R$ 5.000.


SELECT Produto.nome_produto,
SUM(ItensPedido.subtotal) AS receita_total
FROM Produtos Produto
INNER JOIN Itens_Pedido ItensPedido
ON ItensPedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto
HAVING SUM(ItensPedido.subtotal) > 5000;


--14:00