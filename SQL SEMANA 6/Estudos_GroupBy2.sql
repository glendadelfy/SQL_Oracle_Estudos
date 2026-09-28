--DIA 22/09/2026
--LETS GO 

-- PPT 9 DE GROUP BY 
--12:10

--TABELA DE SEMANA 5 SQL
CREATE TABLE Clientes (
id_cliente NUMBER PRIMARY KEY,
nome VARCHAR2(100) NOT NULL,
cidade VARCHAR2(50),
estado CHAR(2),
data_cadastro DATE
);


INSERT INTO Clientes VALUES (1, 'Maria Silva', 'Sao Paulo', 'SP', DATE '2026-09-09');
INSERT INTO Clientes VALUES (2, 'Joao Souza', 'Campinas', 'SP', DATE '2024-02-15');
INSERT INTO Clientes VALUES (3, 'Ana Lima', 'Rio de Janeiro', 'RJ', DATE '2024-03-20');
INSERT INTO Clientes VALUES (4, 'Carlos Oliveira', 'Belo Horizonte', 'MG', DATE '2024-04-05');
INSERT INTO Clientes VALUES (5, 'Fernanda Costa', 'Curitiba', 'PR', DATE '2024-05-12');

CREATE TABLE Pedidos (
id_pedido NUMBER PRIMARY KEY,
id_cliente NUMBER NOT NULL,
data_pedido DATE,
valor_total NUMBER(10,2),
status VARCHAR2(20),
 CONSTRAINT fk_pedidos_cliente
 FOREIGN KEY (id_cliente)REFERENCES Clientes(id_cliente)
);


INSERT INTO Pedidos VALUES (101, 1, DATE '2025-01-15', 4620, 'Entregue');
INSERT INTO Pedidos VALUES (102, 2, DATE '2025-02-10', 1850, 'Entregue');
INSERT INTO Pedidos VALUES (103, 1, DATE '2025-03-05', 120, 'Pendente');
INSERT INTO Pedidos VALUES (104, 3, DATE '2025-03-18', 350, 'Entregue');
INSERT INTO Pedidos VALUES (105, 4, DATE '2025-04-02', 2400, 'Cancelado');

create table Produtos (
id_produto INT,
nome_produto VARCHAR(100),
categoria VARCHAR(50),
preco DECIMAL(10,2),
estoque INT
);

INSERT INTO Produtos VALUES (1, 'Notebook Dell', 'Informatica', 4500, 20);
INSERT INTO Produtos VALUES (2, 'Mouse Logitech', 'Informatica', 120, 50);
INSERT INTO Produtos VALUES (3, 'Teclado Mecanico', 'Informatica', 350, 30);
INSERT INTO Produtos VALUES (4, 'Monitor LG', 'Informatica', 1500, 15);
INSERT INTO Produtos VALUES (5, 'Cadeira Gamer', 'Moveis', 1800, 8);
INSERT INTO Produtos VALUES (6, 'Mesa Escritorio', 'Moveis', 900, 12);

create table Itens_Pedido (
id_item INT,
id_pedido INT,
id_produto INT,
quantidade INT,
subtotal DECIMAL(10,2)
);

INSERT INTO Itens_Pedido VALUES (1, 101, 1, 1, 4500);
INSERT INTO Itens_Pedido VALUES (2, 101, 2, 1, 120);
INSERT INTO Itens_Pedido VALUES (3, 102, 5, 1, 1800);
INSERT INTO Itens_Pedido VALUES (4, 102, 2, 1, 120);
INSERT INTO Itens_Pedido VALUES (5, 103, 2, 1, 120);
INSERT INTO Itens_Pedido VALUES (6, 104, 3, 1, 350);
INSERT INTO Itens_Pedido VALUES (7, 105, 4, 1, 1500);
INSERT INTO Itens_Pedido VALUES (8, 105, 6, 1, 900);

--Nível 1 - COUNT + HAVING

--Exercício 1
--Mostre os clientes que realizaram mais de 1 pedido.

SELECT Cliente.nome,
COUNT (Pedido.id_pedido) AS Total_pedidos
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome
HAVING COUNT (Pedido.id_pedido) > 1; 

--Exercício 2
--Exiba os status que possuem mais de 2 pedidos cadastrados.

SELECT Pedido.status,
COUNT (Pedido.id_pedido) AS Total_pedidos
FROM Clientes Cliente
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Pedido.status
HAVING COUNT (Pedido.id_pedido)>1;


--Exercício 3
--Mostre os estados que possuem mais de 1 cliente.

SELECT Cliente.estado,
COUNT (Cliente.id_cliente) AS Total_Clientes
FROM Clientes Cliente
GROUP BY Cliente.estado
HAVING COUNT (Cliente.nome)>1;

--Minha primeira consulta utilizando group by sozinha 13:26 huhuhu

--Exercício 4
--Exiba os produtos que aparecem em mais de 1 item de pedido.

SELECT Produto.nome_produto,
COUNT (Itenspedido.id_item) AS Total_itens
FROM Produtos Produto
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto
HAVING COUNT (Itenspedido.id_item)>1;


--Exercício 5
--Mostre os clientes que realizaram mais de 3 pedidos.

SELECT Cliente.nome,
COUNT (Pedido.id_pedido) AS Total_pedidos
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome
HAVING COUNT (Pedido.id_pedido) > 1;

--"é importante verificar a pergunta correta, quais são os dados trabalhados e sua importância"
-- 13:40


--14:00
--SQL Básico
--✅
--JOINs
--✅
--GROUP BY + HAVING
--✅ (aprendendo)
--Views
--⬜
--Subqueries
--⬜
--Python Básico
--⬜
--Pandas
--⬜
--ETL
--⬜
--Power BI
--⬜
--PySpark
--⬜
--Azure
--⬜
--Engenheira de Dados Júnior

--16:00

--Nível 2 - SUM + HAVING
--Exercício 6
--Mostre os clientes cujo total gasto em pedidos seja maior que R$ 10.000.

SELECT Cliente.nome,
SUM (Pedido.valor_total) AS Total 
FROM Clientes Cliente
INNER JOIN Pedidos pedido 
ON Pedido.id_cliente = Cliente.id_cliente 
GROUP BY Cliente.nome
HAVING SUM (Pedido.valor_total) > 10000;

--Exercício 7
--Exiba os produtos cuja quantidade total vendida seja maior que 20 unidades.

SELECT Produto.nome_produto,
SUM (Itenspedido.quantidade) AS Total 
FROM Produtos Produto
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto
HAVING SUM (Itenspedido.quantidade)> 20;



--Exercício 8
--Mostre os pedidos cuja soma dos subtotais seja superior a R$ 5.000.

SELECT Pedido.id_pedido,
SUM (Itenspedido.subtotal) AS Total_sub
FROM Pedidos Pedido
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_pedido = Pedido.id_pedido
GROUP BY Pedido.id_pedido
HAVING SUM (Itenspedido.subtotal)> 4000;

--17:30

--18:30

--Exercício 9
--Exiba os clientes cujo valor total de compras ultrapasse R$ 15.000.

SELECT Cliente.nome,
SUM (Pedido.valor_total) AS Valor_total
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome
HAVING SUM (Pedido.valor_total)> 4000;


Exercício 10
Mostre os produtos cuja receita total gerada seja superior a R$ 8.000.

SELECT Produto.nome_produto,
SUM(Itenspedido.subtotal) AS Receita_Total
FROM Produtos Produto
INNER JOIN Itens_Pedido Itenspedido
ON Itenspedido.id_produto = Produto.id_produto
GROUP BY Produto.nome_produto
HAVING SUM(Itenspedido.subtotal) > 8000;
 
--18:54

