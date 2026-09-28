--DIA 23/09/2026
--LETS GO 

-- PPT 9 DE GROUP BY 
--13:40




Nível 3 - AVG + GROUP BY
Exercício 
11 Mostre a média do valor dos pedidos de cada cliente.

SELECT Cliente.nome,
AVG (Pedido.valor_total) AS Valor_medio
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome;





SELECT

Exercício 
12 Exiba a média de quantidade comprada para cada produto.

SELECT Produto.nome_produto,
AVG (Itenspedido.quantidade) As qnt_med_produto
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto;


Exercício 
13 Mostre a média dos subtotais por produto.

SELECT Produto.nome_produto,
AVG (Itenspedido.subtotal) As sub_med_produto
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto;

Exercício 
14 Exiba a média dos pedidos por estado dos clientes.


SELECT Cliente.estado,
AVG (Pedido.valor_total) AS med_pedidos
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Cliente.id_cliente = Pedido.id_cliente
GROUP BY Cliente.estado;


--14:10

--15:40

Exercício 
15 Mostre a média dos valores dos pedidos agrupados por status.


SELECT Pedido.status,
AVG (Pedido.valor_total) AS med_pedido
FROM Pedidos Pedido
GROUP BY Pedido.status;

--16:00


--18:00

--Nível 4 - MAX e MIN
--Exercício 16 
--Mostre o maior valor de pedido realizado por cada cliente.

SELECT Cliente.nome,
MAX(Pedido.valor_total) AS valor_max
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome;

--Exercício 17 
--Mostre o menor valor de pedido realizado por cada cliente.

SELECT Cliente.nome,
MIN(Pedido.valor_total) AS valor_min
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome;


--Exercício 18 
--Exiba a maior quantidade comprada de cada produto.

SELECT Produto.nome_produto,
MAX (Itenspedido.quantidade) max_quantidade
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto 
GROUP BY Produto.nome_produto;

--18:20 
--18:30

--Exercício 19 
--Exiba o menor subtotal registrado para cada produto.

SELECT Produto.nome_produto,
MIN (Itenspedido.subtotal) AS min_subtotal
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido 
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto;



--Exercício 20 
--Mostre o pedido mais caro de cada cliente.

SELECT Cliente.nome,
MAX (Pedido.valor_total) AS max_pedido
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome;

--18:50

