18/09/2026 


LETS GO 

--11:50 

Exercício 35
Mostre o número do pedido, o nome do cliente e a data do pedido.

--Escrevendo e lendo consultas com o copilot 
SELECT Pedido.id_pedido,
 Cliente.nome
 Pedido.data_pedido
FROM Pedidos Pedido 
INNER JOIN Clientes cliente
ON Pedido.id_cliente = Cliente.id_cliente;

Exercício 36
Liste o nome dos clientes que já realizaram pedidos.

SELECT cliente.nome
FROM Clientes cliente
INNER JOIN Pedidos pedido
ON cliente.id_cliente = pedido.id_cliente;

Exercício 37
Mostre o nome do produto e o preço unitário dos itens vendidos.

SELECT Produto.nome_produto, 
 Produto.preco
FROM Produtos produto
INNER JOIN Itens_pedido itenspedido 
ON Produto.id_produto = itenspedido.id_produto;

-- Primeiro exercicio feito sozinha 12:54 :) 
Exercício 38
Exiba o número do pedido e a quantidade de produtos comprados.

SELECT Pedido.id_pedido,
 Itenspedido.quantidade
FROM Pedidos Pedido
INNER JOIN Itens_Pedido Itenspedido
ON Pedido.id_pedido = Itenspedido.id_pedido;

--FIZ SOZINHA
Exercício 39
Mostre o nome do cliente e o total gasto em cada pedido.

SELECT Cliente.nome,
 Pedido.valor_total 
FROM CLIENTES Cliente 
INNER JOIN Pedidos Pedido
ON Cliente.id_cliente = Pedido.id_cliente;

--Este exercicio demorei para entender 
Exercício 40
Liste todos os produtos comprados por um cliente.

SELECT Cliente.nome,
 Produto.nome_produto
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido 
ON Cliente.id_cliente = Pedido.id_cliente
INNER JOIN Itens_Pedido itenspedido
ON itenspedido.id_pedido = Pedido.id_pedido
INNER JOIN Produtos Produto 
ON Produto.id_produto = itenspedido.id_produto;


--13:40

--14:00

--TREINAR
Exercício 42
Mostre o número do pedido, o nome do produto e a quantidade comprada.

SELECT Pedido.id_pedido,
 Produto.nome_produto,
 Itenspedido.quantidade
FROM Pedidos Pedido 
INNER JOIN Itens_pedido Itenspedido
ON Itenspedido.id_pedido = Pedido.id_pedido
INNER JOIN Produtos Produto
ON Produto.id_produto = Itenspedido.id_produto;

--14:20 

--15:40 

--FIZ SOZINHA 
Exercício 43
Exiba o nome do cliente, o número do pedido e o valor total do pedido.

SELECT Cliente.nome,
 Pedido.id_pedido,
 Pedido.valor_total
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido 
ON Pedido.id_cliente = Cliente.id_cliente;

-- Eu fiz sozinha omggg to tendo um treco
Exercício 44
Mostre o nome do cliente e os produtos que ele comprou.

SELECT Cliente.nome,
 Produto.nome_produto
FROM CLIENTES Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
INNER JOIN Itens_pedido Itenspedido
ON Itenspedido.id_pedido = Pedido.id_pedido 
INNER JOIN Produtos Produto 
ON Produto.id_produto = Itenspedido.id_produto;

--Eu fiz sozinha
Exercício 45
Liste o número do pedido, a data do pedido e o nome do cliente.

SELECT Pedido.id_pedido,
 Pedido.data_pedido,
 Cliente.nome 
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente;

--16:14


--17:10 estudos 

Desafio 😎
Exercício 56

Mostre:

Nome do cliente
Número do pedido
Nome do produto
Quantidade
Subtotal

Tudo em uma única consulta.


SELECT Cliente.nome,
 Pedido.id_pedido,
 Produto.nome_produto,
 Itenspedido.quantidade,
 Itenspedido.subtotal
FROM Clientes cliente
INNER JOIN Pedidos Pedido 
ON Pedido.id_cliente = Cliente.id_cliente
INNER JOIN Itens_Pedido itenspedido
ON Itenspedido.id_pedido = Pedido.id_pedido
INNER JOIN Produtos Produto 
ON Produto.id_produto = Itenspedido.id_produto;

--18:10

--Sugestão do copilot: 

Sim, e na verdade eu acho uma ótima ideia! 😊

Se eu estivesse montando sua trilha de estudos, faria algo assim:


1SELECT
↓
2WHERE
↓
3INNER JOIN
↓
4LEFT JOIN / RIGHT JOIN
↓
5ORDER BY
↓
6COUNT, SUM, AVG, MAX, MIN
↓
7GROUP BY
↓
8HAVING
↓
9VIEW
↓
10SUBQUERY
↓
11CASE
↓
12Stored Procedures (opcional)
↓
13Triggers (opcional)