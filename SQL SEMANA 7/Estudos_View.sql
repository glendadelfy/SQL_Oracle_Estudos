--ESTUDOS DIA 28/09/2026

--LETS GO 

-- PPT 10 DE view
--18:30

SOBRE VIEW

• É uma representação virtual de uma tabela, que é derivada de uma ou mais tabelas existentes em um
banco de dados.
• Permite que você crie consultas SQL complexas, resumos ou segmentações de dados, mas sem
armazenar fisicamente os resultados
• As VIEWS oferecem várias vantagens:
• Simplificação das consultas: permite que defina consultas complexas uma vez e as reutilize sempre
que necessário
• Desempenho: podem melhorar o desempenho, uma vez que o banco de dados pode armazenar em
cache os resultados de consultas frequentes em vez de recalculá-los repetidamente. Segurança
• Segurança: pode conceder permissões específicas de consulta em uma VIEW, ocultando detalhes
sensíveis dos dados subjacentes.

SINTAXE VIEW
• O comando CREATE VIEW é utilizado para criar uma
visão
• Veja o exemplo da Sintaxe:

CREATE VIEW nome_view AS
SELECT * FROM nome_tabela
WHERE <condicao_logica>;


CREATE VIEW PedidosSaoPaulo AS
SELECT nome nome_cliente, ds_produto, vl_pedido
FROM CLIENTES C INNER JOIN PEDIDOS P ON C.id=P.cliente_id
WHERE Cidade = 'São Paulo';

Consultando a VIEW

SELECT * FROM PedidosSaoPaulo;

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

--18:58

