--ESTUDOS DIA 30/09/2026

--LETS GO 

-- PPT 10 DE view
--11:40



SOBRE SUBQUERY

• Também conhecida como subconsulta ou consulta aninhada, é uma consulta SQL que é incorporada
dentro de outra consulta SQL
• SUBQUERY é usada para recuperar dados que serão usados na consulta principal para realizar operações
mais complexas ou filtrar resultados
• As SUBQUERY oferecem várias vantagens:
• Filtragem de dados: Usar o resultado de uma subquery para filtrar os resultados da consulta
principal com base em alguma condição.
• Comparações: Comparar valores da consulta principal com resultados de subqueries para
determinar se um registro deve ser incluído.
• Recuperação de dados agregados: Calcular valores agregados (como soma, média, máximo, mínimo)
de subconjuntos de dados para uso na consulta principal.


EXEMPLO DE SUBQUERY
RESULTADO

SELECT nome
FROM Clientes 
WHERE id IN (SELECT cliente_id FROM Pedidos WHERE vl_pedido > 3000);


--Codigo para minha tabela de SEMANA SQL 5 

SELECT nome
FROM Clientes
WHERE id_cliente IN (
SELECT id_cliente
FROM Pedidos
WHERE valor_total > 3000
);


EXEMPLO DE SUBQUERY
RESULTADO


SELECT C.cidade, COUNT(*) as total_clientes 
FROM Clientes C
GROUP BY C.cidade
HAVING COUNT (*) = (SELECT MAX(clientes_count)FROM (SELECT 
COUNT (*) as clientes_count FROM Clientes GROUP BY cidade)
subquery);

--Codigo para minha tabela de SEMANA SQL 5 

SELECT C.cidade, COUNT(*) AS total_clientes
FROM Clientes C
GROUP BY C.cidade
HAVING COUNT(*) = (
SELECT MAX(clientes_count)
FROM (
SELECT COUNT(*) AS clientes_count
FROM Clientes
GROUP BY cidade
) subquery
);


SOBRE SEQUENCE

• Uma SEQUENCE é um objeto que gera valores sequenciais exclusivos.
• São frequentemente usadas para gerar valores de chave primária em tabelas, garantindo que cada
registro tenha um valor único e crescente
• As SEQUENCE oferecem várias vantagens:
• Valores Únicos: Uma sequence gera valores únicos, garantindo que cada valor gerado seja diferente
dos valores anteriores.
• Valores Crescentes ou Decrescentes: Sequences podem gerar valores em ordem crescente ou
decrescente, dependendo de como são configuradas.
• Independentes de Transações: Sequences são frequentemente independentes de transações, o que
significa que os valores gerados por uma sequence não são afetados por transações concorrentes em
execução no banco de dados.


SINTAXE SEQUENCE
• O comando CREATE SEQUENCE é utilizado para criar
uma sequência
• Neste exemplo, estamos criando uma sequence
chamada "minha_sequence" que começa em 1, com
um incremento de 1, um valor mínimo de 1, um
valor máximo de 1000 e a opção "CYCLE" que faz
com que a sequence recomece a partir do valor
mínimo após atingir o valor máximo.

CREATE SEQUENCE minha_sequence
START WITH 1 
INCREMENT BY 1 
MINVALUE 1
MAXVALUE 1000
CYCLE;

--Codigo para minha tabela de SEMANA SQL 5 

CREATE SEQUENCE seq_cliente
START WITH 6
INCREMENT BY 1
MINVALUE 1
MAXVALUE 1000
CYCLE;


EXEMPLO DE SEQUENCE
RESULTADO

Para obter o próximo valor da sequence, você pode usar
a função NEXTVAL:

SELECT minha_sequence.NEXTVAL FROM dual;

--Codigo para minha tabela de SEMANA SQL 5

SELECT seq_cliente.NEXTVAL
FROM dual;



SOBRE INDEX

• Um índice (ou "index" em inglês) é uma estrutura de dados que melhora a velocidade de recuperação de
registros de uma tabela
• Os índices são usados para acelerar consultas, tornando a busca de informações mais eficiente,
principalmente em tabelas grandes
• Os INDEX oferecem várias vantagens:
• Estruturar Dados : Um índice é uma estrutura de dados que armazena uma lista ordenada de valores
de uma ou mais colunas da tabela. Cada valor no índice está associado a um ou mais registros na
tabela e uma referência para sua localização
• Consultas Eficientes: Permite que localize registros com mais rapidez, em vez de pesquisar em toda a
tabela;

SINTAXE INDEX
• O comando CREATE INDEX é utilizado para criar um
indice
• Veja o Exemplo da Sintaxe

CREATE INDEX nome_do_indice 
ON nome_da_tabela (nome_da_coluna);

--Codigo para minha tabela de SEMANA SQL 5

CREATE INDEX idx_nome_cliente
ON Clientes (nome);

--verificando se index existe 

SELECT index_name
FROM user_indexes
WHERE table_name = 'CLIENTES';

--14:00

--15:30
--fiz sozinha huhuhu
VIEW
Exercício 1
1.Crie uma VIEW chamada ClientesRJ mostrando apenas os clientes do Rio de Janeiro.


CREATE VIEW ClienteRJ AS
SELECT Cliente.nome,
 Cliente.estado
FROM Clientes Cliente
WHERE estado = 'RJ';

SELECT * FROM ClienteRJ;

Exercício 2
2.Crie uma VIEW chamada PedidosPendentes mostrando:
Apenas pedidos pendentes.

CREATE VIEW PedidosPendentes AS 
SELECT Pedido.id_pedido,
 Pedido.valor_total,
 Pedido.status
FROM Pedidos Pedido
WHERE status = 'Pendente';

SELECT * FROM PedidosPendentes;


Exercício 3
3.Crie uma VIEW chamada ProdutosMoveis mostrando todos os produtos da categoria "Moveis".

CREATE VIEW ProdutosMoveis AS
SELECT Produto.nome_produto,
 Produto.categoria
FROM Produtos Produto
WHERE categoria = 'Moveis';

SELECT * FROM ProdutosMoveis;


Exercício 4
4.Crie uma VIEW chamada PedidosClientes mostrando:
nome
id_pedido
valor_total
Utilizando JOIN entre Clientes e Pedidos.

CREATE VIEW PedidosClientes AS
SELECT Cliente.nome,
 Pedido.id_pedido,
 Pedido.valor_total
FROM Clientes Cliente 
INNER JOIN Pedidos Pedido
ON Pedido.id_cliente = Cliente.id_cliente;

SELECT * FROM PedidosClientes;


Exercício 5 🚀
5.Crie uma VIEW chamada ProdutosVendidos mostrando:
nome_produto
quantidade
subtotal


CREATE VIEW ProdutosVendidos AS
SELECT Produto.nome_produto,
 ItensPedido.quantidade,
 ItensPedido.subtotal
FROM Produtos Produto 
INNER JOIN Itens_Pedido ItensPedido
ON Itenspedido.id_produto = Produto.id_produto;

SELECT * FROM ProdutosVendidos;

--17:00

--17:50

--copilot 
SUBQUERY
Exercício 6
6.Mostre os clientes que fizeram pedidos acima de R$ 2.000.
nome

SELECT nome
FROM Clientes
WHERE id_cliente IN (
SELECT id_cliente
FROM Pedidos
WHERE valor_total > 2000
);

-copilot 
Exercício 7
7.Mostre os produtos com preço acima de R$ 1.000 usando SUBQUERY.
Dica:AVG(preco)

SELECT nome_produto, preco
FROM Produtos
WHERE preco > (
 SELECT AVG(preco)
 FROM Produtos
); 
--19:00