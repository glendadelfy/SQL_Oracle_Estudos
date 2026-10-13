--ESTUDOS DIA 06/10/2026

--LETS GO 

-- PPT 10 DE view
-- 12:40 

SUBQUERY
Exercício 6
Mostre os clientes que fizeram pedidos acima de R$ 2.000.
Retorne apenas:
SQL
nome

SELECT nome 
FROM Clientes
WHERE Id_cliente IN(
SELECT Id_cliente
FROM Pedidos
WHERE valor_total > 2000
);

--12:50

Exercício 7
Mostre os produtos com preço acima da média dos produtos.
Dica:
SQL
AVG(preco)

SELECT nome_produto
FROM Produtos 
WHERE id_produto IN(
SELECT AVG (preco)
FROM Produtos
);

--14:20


--18:00

Exercício 8
Mostre os clientes que nunca fizeram pedidos.
Dica:
SQL
NOT IN

--18:14 memorizando este momento pois finalmente eu consegui fazer uma consulta utilizando Subquery :)
SELECT nome
FROM Clientes
WHERE id_cliente NOT IN ( 
SELECT id_cliente
FROM Pedidos
);

--18:20 
--18:30 

Exercício 9
Mostre os produtos que já foram vendidos.
Retorne:
SQL
nome_produto

SELECT nome_produto
FROM Produtos
WHERE id_produto IN ( 
SELECT id_produto
FROM Itens_pedido
);



Exercício 10 🚀
Mostre os pedidos com valor acima da média dos pedidos.
Dica:
SQL
AVG(valor_total)


SELECT valor_total 
FROM Pedidos 
WHERE valor_total > (
SELECT AVG (valor_total) 
FROM Pedidos
);


Exercício 11 🚀🚀
Mostre a cidade com maior quantidade de clientes.
Retorne:
SQL
cidade
total_clientes
SQL
COUNT(*)
MAX()


SELECT cidade,
COUNT (id_cliente) AS total_clientes
FROM Clientes 
WHERE id_cliente IN (
SELECT nome,
 cidade, 
COUNT (id_cliente) AS total_clientes
FROM Clientes
WHERE Cidade MAX (total_clientes)
);


--19:20