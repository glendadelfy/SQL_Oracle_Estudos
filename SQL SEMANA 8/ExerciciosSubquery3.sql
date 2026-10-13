--ESTUDOS DIA 07/10/2026

--LETS GO 

-- PPT 10 DE view
-- 18:40 



Nível 1 🟢
Exercício 1
Mostre os clientes que fizeram pedidos.
Retorne:
nome
Dica:
IN

SELECT Nome 
FROM Clientes
WHERE id_cliente IN (
SELECT id_cliente
FROM Pedidos
);


Exercício 2
Mostre os clientes que nunca fizeram pedidos.
Retorne:
nome
Dica:
NOT IN


SELECT Nome 
FROM Clientes
WHERE id_cliente NOT IN (
SELECT id_cliente
FROM Pedidos
);

Exercício 3
Mostre os produtos que já foram vendidos.
Retorne:
nome_produto




SELECT nome_produto
FROM Produtos 
WHERE id_produto IN (
SELECT id_produto 
FROM Itens_Pedido
);


Exercício 4
Mostre os produtos que nunca foram vendidos.
Retorne:
nome_produto




SELECT nome_produto
FROM Produtos 
WHERE id_produto NOT IN (
SELECT id_produto 
FROM Itens_Pedido
);




Nível 2 🟡
Exercício 5
Mostre os pedidos com valor acima da média dos pedidos.
Retorne:
id_pedido
valor_total
Dica:
SQL
AVG(valor_total)


--19:00




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
INSERT INTO Clientes VALUES (6, 'Glenda Delfy', 'Sao Paulo', 'SP', DATE '2024-05-12');

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
INSERT INTO Produtos VALUES (7, 'Notebook Samsung', 'Informatica', 5500, 12);

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

--19:05