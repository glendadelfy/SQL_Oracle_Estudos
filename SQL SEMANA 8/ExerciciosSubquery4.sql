--ESTUDOS DIA 08/10/2026

--LETS GO 

-- PPT 10 DE view
-- 18:50




Nível 2 🟡
Exercício 5
Mostre os pedidos com valor acima da média dos pedidos.
Retorne:
id_pedido
valor_total
Dica:
AVG(valor_total)

SELECT id_pedido,
 valor_total
FROM Pedidos
WHERE valor_total > (
 SELECT AVG(valor_total)
 FROM Pedidos
);




Exercício 6
Mostre os produtos com preço acima da média dos produtos.
Retorne:
nome_produto
preco


SELECT nome_produto,
 preco
FROM Produtos
WHERE preco > (
SELECT AVG(preco)
FROM Produtos
); 


Exercício 7
Mostre os produtos com preço abaixo da média dos produtos.
Retorne:
nome_produto
preco


SELECT nome_produto,
 preco
FROM Produtos
WHERE preco < (
SELECT AVG(preco)
FROM Produtos
); 


Exercício 8
Mostre os clientes que fizeram pedidos abaixo de R$ 1.000.
Retorne:
nome

SELECT nome
FROM Clientes
WHERE id_cliente IN (
 SELECT id_cliente
 FROM Pedidos
 WHERE valor_total < 1000
);



Nível 3 🟠
Exercício 9
Mostre o produto mais caro.
Retorne:
nome_produto
preco
Dica:
MAX(preco)

-- 19:05

