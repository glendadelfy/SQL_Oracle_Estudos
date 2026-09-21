DIA 16/09/2026

LETS GO TREINO 15:40

EXERCICIOS
JOIN 

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

SELECT * FROM Clientes;
 
SELECT * FROM Produtos;
 
SELECT * FROM Pedidos;
 
SELECT * FROM Itens_Pedido

--17:45

Nível 1 - SELECT
Exercício 1
Liste todos os clientes cadastrados.

SELECT * FROM Clientes;

Exercício 2
Mostre apenas os nomes dos clientes.

select nome 
from clientes;

Exercício 3
Liste todos os produtos da categoria 'Informática'.

select * from produtos 
where categoria = 'Informatica';

Exercício 4
Exiba os pedidos com status 'Entregue'.

select * from pedidos 
where status = 'Entregue';

Exercício 5
Mostre os produtos com preço superior a R$ 1.000.

select * from produtos 
where preco > 1000;


Nível 2 - WHERE
Exercício 6
Liste os clientes que moram em São Paulo (SP).

SELECT * FROM CLIENTES 
WHERE Cidade = 'Sao Paulo';

Exercício 7
Mostre os pedidos realizados após 01/01/2025.

SELECT * FROM PEDIDOS
WHERE data_pedido > DATE '01/01/2026';

Exercício 8
Exiba os produtos com estoque menor que 10 unidades.

SELECT * FROM PRODUTOS 
Where estoque < 10;

Exercício 9
Liste os pedidos com valor entre R$ 500 e R$ 2.000.

SELECT * FROM PRODUTOS 
WHERE valor_total BETWEEN 500 AND 2000;


Exercício 10
Mostre os clientes cujo nome começa com a letra "M".

SELECT * FROM CLIENTES
WHERE nome LIKE 'M%';


Nível 7 - JOIN
Exercício 30
Liste o nome do cliente e a data de cada pedido.

SELECT * FROM Clientes
INNER JOIN Pedidos
ON Clientes.id_cliente = Pedidos.id_cliente;

Exercício 31
Mostre o nome do cliente e o valor total de seus pedidos.



Exercício 32
Liste todos os produtos vendidos em cada pedido.



Exercício 33
Mostre nome do produto, quantidade vendida e subtotal.



Exercício 34
Exiba todos os pedidos realizados por clientes do estado de SP.

--19:06