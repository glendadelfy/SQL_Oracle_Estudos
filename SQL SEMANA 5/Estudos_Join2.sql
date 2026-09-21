--15/09/2026
--22:40 

--Exercicios 

INNER JOIN básico  
Liste o nome dos clientes e os produtos que eles compraram.


SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
INNER JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;

LEFT JOIN  
Mostre todos os clientes, mesmo os que não têm pedidos, junto com os produtos (se houver).

SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes 
LEFT JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;


RIGHT JOIN  
Liste todos os pedidos e os nomes dos clientes, mesmo que algum pedido não tenha cliente associado.

SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;

--23:24
