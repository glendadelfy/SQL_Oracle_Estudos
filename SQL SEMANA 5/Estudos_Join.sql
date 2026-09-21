--dia 14/09/2026 

--PPT 8 JOIN 
--23:00

--SOBRE SELECT JOIN
--• O SELECT JOIN permite o agrupamento de dados em tabelas separada por meio dos relacionamentos explícitos (Chave Primária com Chave Estrangeira)
--• Também é possível por relacionamentos não explícitos (ou não previstos 
--anteriormente na modelagem conceitual)
--• Você pode unir dados a partir de quaisquer colunas entre as tabelas, desde que os tipos sejam iguais E a operação faça sentindo
--• Boas junções:
--• As colunas de junção normalmente é a coluna de chave primária com estrangeira
--• As colunas de junção devem ser do mesmo tipo.


CREATE TABLE CLIENTES (
  ID NUMBER(5) PRIMARY KEY,
  Nome VARCHAR2(255),
  Cidade VARCHAR2(255)
);

INSERT INTO CLIENTES (ID, Nome, Cidade) VALUES
  (1, 'Maria Silva', 'São Paulo'),
  (2, 'João Santos', 'Rio de Janeiro'),
  (3, 'Ana Oliveira', 'Belo Horizonte'),
  (4, 'Carlos Pereira', 'Curitiba'),
  (5, 'Fernanda Costa', 'Porto Alegre'),
  (6, 'Paulo Souza', 'Recife'),
  (7, 'Juliana Lima', 'Fortaleza'),
  (8, 'Roberto Almeida', 'Manaus'),
  (9, 'Patrícia Gomes', 'Salvador'),
  (10, 'Ricardo Fernandes', 'Brasília');
  
CREATE TABLE Pedidos (
  ID NUMBER(5) PRIMARY KEY,
  Cliente_id NUMBER(5),
  Produto VARCHAR2(255),
  FOREIGN KEY (Cliente_id) REFERENCES Clientes(ID)
);

INSERT INTO Pedidos (ID, Cliente_id, Produto)
VALUES (101, 1, 'Notebook Dell');

INSERT INTO Pedidos (ID, Cliente_id, Produto)
VALUES (102, 2, 'Smartphone Samsung');

INSERT INTO Pedidos (ID, Cliente_id, Produto)
VALUES (103, 3, 'Cadeira Gamer');

INSERT INTO Pedidos (ID, Cliente_id, Produto)
VALUES (104, 4, 'Mouse Logitech');

INSERT INTO Pedidos (ID, Cliente_id, Produto)
VALUES (105, 5, 'Impressora HP');



COMANDO: SELECT EQUI JOIN
• O comando SELECT EQUI JOIN é utilizado para 
retorna 
apenas 
correspondências
os 
registros 
que têm
nas duas tabelas que estão sendo 
unidas
. Ou seja, apenas os registros que satisfazem a 
condição de junção são retornados.
• Veja o exemplo da Sintaxe

SELECT * FROM CLIENTES, PEDIDOS
	WHERE CLIENTES.ID = 
PEDIDOS.CLIENTE_ID;



COMANDO: SELECT INNER JOIN
• O comando SELECT INNER JOIN é utilizado para 
retorna 
apenas 
correspondências
os 
registros 
que
nas duas tabelas que estão sendo 
unidas
. Ou seja, apenas os registros que satisfazem a 
condição de junção são retornados.
• Veja o exemplo da Sintaxe

SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
INNER JOIN Pedidos ON Clientes.ID = 
Pedidos.Cliente_ID;


COMANDO: SELECT LEFT JOIN
• O comando SELECT LEFT JOIN é utilizado para 
retorna todos os registros da tabela à ESQUERDA, 
junto
com os registros correspondentes (ou 
similares) da tabela à DIREITA.
• Veja o exemplo da Sintaxe

SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ID = 
Pedidos.Cliente_ID;



COMANDO: SELECT RIGHT JOIN
• O comando SELECT RIGTH JOIN é utilizado para 
retorna todos os registros da tabela à DIREITA, junto
com os registros correspondentes (ou similares) da 
tabela à ESQUERDA
• Veja o exemplo da Sintaxe


SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.ID = 
Pedidos.Cliente_ID;


COMANDO: SELECT LEFT EXCLUDING JOIN
• O comando SELECT LEFT EXCLUDING JOIN é 
utilizado para retorna todos os registros da tabela à 
ESQUERDA, exceto
os registros correspondentes (ou 
similares) da tabela à DIREITO
• Veja o exemplo da Sintaxe

SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ID = 
Pedidos.Cliente_ID
WHERE Pedidos.ID IS NULL;


COMANDO: SELECT RIGHT EXCLUDING JOIN
• O comando SELECT RIGTH EXCLUDING JOIN é 
utilizado para retorna todos os registros da tabela à 
DIREITA, exceto
os registros correspondentes (ou 
similares) da tabela à ESQUERDA
• Veja o exemplo da Sintaxe



SELECT Clientes.Nome, Pedidos.Produto
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.ID = 
Pedidos.Cliente_ID
WHERE Clientes.ID IS NULL;

--23:58

dia 15/09/2026 

--22:10


COMANDO: SELECT FULL JOIN
• O comando SELECT FULL JOIN é utilizado para 
retorna todos os registros diferentes da tabela à 
DIREITA e da tabela à ESQUERDA, além de unir
aqueles que são comuns entre as duas tabelas.
• Veja o exemplo da Sintaxe

SELECT Clientes.Nome, Pedidos.Produto 
FROM Clientes 
FULL OUTER JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;

COMANDO: SELECT OUTER JOIN
• O comando SELECT OUTER JOIN é utilizado para 
retorna todos os registros diferentes da tabela à 
DIREITA e da tabela à ESQUERDA, exceto
que são comuns entre as duas tabelas.
• Veja o exemplo da Sintaxe



SELECT Clientes.Nome, Pedidos.Produto 
FROM Clientes 
LEFT JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;
WHERE Pedidos.ID IS NULL

UNION


SELECT Clientes.Nome, Pedidos.Produto 
FROM Clientes 
RIGHT JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID;
WHERE Pedidos.ID IS NULL;



SOBRE SELF JOIN
• O SELF JOIN (ou autojunção) é uma operação de junção em que uma tabela é 
combinada consigo mesma
• O "SELF JOIN" é frequentemente usado quando você tem dados em uma única tabela 
que estão relacionados entre si por meio de campos dentro dessa tabela
• Nesse casso, é necessário acessa a mesma tabela duas vezes, uma para recuperar os 
dados e a outra para buscar os dados auto-relacionados 
• Atenção! É necessário utilizar o comando AS (para definir apelidos) entre a tabela e colunas. 


CREATE TABLE Funcionários (
ID INT PRIMARY KEY, 
Nome VARCHAR(255),
Supervisor_ID INT 
);

INSERT INTO Funcionários (ID, Nome, Supervisor_ID)
VALUES 
(1, 'Ana Silva', NULL),          -- Ana é a chefe geral, sem supervisor
(2, 'Carlos Souza', 1),          -- Carlos é supervisionado por Ana
(3, 'Mariana Costa', 1),         -- Mariana também supervisionada por Ana
(4, 'João Pereira', 2),          -- João supervisionado por Carlos
(5, 'Fernanda Lima', 2),         -- Fernanda supervisionada por Carlos
(6, 'Ricardo Alves', 3);         -- Ricardo supervisionado por Mariana


SELECT A.Nome AS Funcionário, B.Nome AS Supervisor
FROM Funcionários A
LEFT JOIN Funcionários B ON A.Supervisor_ID = B.ID;

