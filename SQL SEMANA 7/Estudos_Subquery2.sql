--ESTUDOS DIA 01/10/2026

--LETS GO 

-- PPT 10 DE view
--18:00




Exercício 8
8.Mostre o produto mais caro.
MAX(preco)

SELECT *
FROM Produtos
WHERE preco = (
 SELECT MAX(preco)
 FROM Produtos
);

Exercício 9
9.Mostre os clientes que possuem pelo menos um pedido.

SELECT nome
FROM Clientes
WHERE id_cliente IN (
SELECT id_cliente
FROM Pedidos
);

--Leitura pois encontro dificuldade em entender a sintaxe 
Selecione o nome 
DE Clientes 
ONDE o id_cliente EM
(Selecione id_cliente 
DE Pedido);

--19:00

Exercício 10
10.Mostre os produtos que nunca foram vendidos.

SELECT nome_produto
FROM Produtos
WHERE id_produto NOT IN (
 SELECT id_produto
 FROM Itens_Pedido
);


Exercício mental

Não escreva SQL.

Responda apenas em português:

Mostre os clientes que fizeram pedidos acima de R$ 2000.

Passo 1:

Qual tabela tem o valor do pedido?

✅ Pedidos

Passo 2:

Qual coluna devo pegar?

✅ id_cliente

Passo 3:

Qual tabela tem o nome?

✅ Clientes

Pronto.

O SQL vira consequência.



Exercício 11
11.Mostre os pedidos com valor acima da média dos pedidos.

--eu fiz 
Select valor_total 
from pedidos
where id_pedido in
( select valor_total 
from pedidos 
where valor_total >2000
);

--copilot
SELECT valor_total
FROM Pedidos
WHERE valor_total > (
SELECT AVG(valor_total)
FROM Pedidos
);

--19:34
