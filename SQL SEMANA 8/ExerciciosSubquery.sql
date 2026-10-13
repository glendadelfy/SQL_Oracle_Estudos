--ESTUDOS DIA 05/10/2026

--LETS GO 

-- PPT 10 DE view
-- 13:50

--EXERCICIOS SUBQUERY 


📘 VIEW
Exercício 1
Crie uma VIEW chamada ClientesRJ mostrando:
nome
cidade
Apenas clientes do Rio de Janeiro.

CREATE VIEW ClientesRJ AS
SELECT Cliente.nome,
 Cliente.estado
FROM Clientes Cliente
Where estado = 'RJ';

SELECT * FROM ClientesRJ;

Exercício 2
Crie uma VIEW chamada PedidosPendentes mostrando:
id_pedido
valor_total
status
Somente pedidos com status = 'Pendente'.


CREATE VIEW PedidosPendentes AS 
SELECT Pedido.id_pedido,
 Pedido.valor_total,
 Pedido.status
FROM Pedidos Pedido
Where status = 'Pendente';

SELECT * FROM PedidosPendentes;

Exercício 3
Crie uma VIEW chamada ProdutosCaros mostrando:
nome_produto
preco
Apenas produtos com preço acima de R$ 1000.

CREATE VIEW ProdutosCaros AS
SELECT Produto.nome_produto,
 Produto.preco
FROM Produtos Produto
Where preco > 1000;

SELECT * FROM ProdutosCaros;
--14:20


Exercício 4

Crie uma VIEW chamada PedidosClientes mostrando:
nome do cliente
id_pedido
valor_total
Utilize JOIN entre Clientes e Pedidos.

CREATE VIEW PedidosClientes AS 
SELECT Cliente.nome,
 Pedido.id_pedido,
 Pedido.valor_total
FROM Clientes Cliente
INNER JOIN Pedidos Pedido 
ON Pedido.id_cliente = Cliente.id_cliente;


Exercício 5 🚀

Crie uma VIEW chamada ProdutosVendidos mostrando:
nome_produto
quantidade
subtotal
Utilize JOIN entre Produtos e ItensPedido.

CREATE VIEW ProdutosVendidos AS 
SELECT Produto.nome_produto,
 Itenspedido.quantidade,
 Itenspedido.subtotal
FROM Produtos Produto 
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto; 

--18:00

SUBQUERY
Exercício 6
Mostre os clientes que fizeram pedidos acima de R$ 2.000.
Retorne apenas:nome


SELECT nome 
FROM Clientes 
WHERE id_cliente IN(
SELECT valor_total
FROM Pedidos
WHERE valor_total > 2000
);


Exercício 7
Mostre os produtos com preço acima da média dos produtos.
Dica:
SQL
AVG(preco)

SELEEEEEEEECT

