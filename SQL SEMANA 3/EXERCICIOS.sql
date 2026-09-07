--DIA 06/09/2026
--17:30 

--Exercício SQL – Cadastro de Produtos
--Crie uma tabela chamada PRODUTO com os seguintes campos:

--ID (inteiro, chave primária)

--Nome (texto, até 100 caracteres)

--Preco (decimal, com duas casas decimais)

--Estoque (inteiro)

--Agora faça os seguintes comandos:

--INSERT

--Insira três produtos diferentes na tabela (exemplo: notebook, celular, fone de ouvido).

--UPDATE

--Atualize o preço de um dos produtos.

--Atualize o estoque de outro produto.

--DELETE

--Remova um produto específico da tabela usando o WHERE.

--Remova todos os produtos da tabela sem usar WHERE.


CREATE TABLE PRODUTOS(
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR2(100),
    preco_produto INT,
    estoque INT
    );
INSERT INTO PRODUTOS VALUES (1, 'notebook', 5000, 2);
INSERT INTO PRODUTOS VALUES (2, 'celular', 2500, 10);
INSERT INTO PRODUTOS VALUES (3, 'fone de ouvido', 500, 100);

UPDATE PRODUTOS 
    SET preco_produto = 6000
    WHERE id_produto =1;

UPDATE PRODUTOS
    SET estoque = 10
    WHERE id_produto =1;

SELECT * FROM PRODUTOS;

DELETE FROM PRODUTOS
    WHERE id_produto= 1;

DELETE FROM PRODUTOS;

--FIM 19:16 

