--Dia 20/09/2026

--LETS GO ESTUDOS SQL JOIN

--1.Listar todas as transações com o nome do cliente

SELECT Cliente.cliente_id,
        Transacao.conta_id,
        Transacao.data,
        Transacao.valor,
        Transacao.descricao
FROM Clientes Cliente
INNER JOIN Contas Conta
ON Cliente.cliente_id = Conta.Cliente_id
INNER JOIN Transacoes Transacao
ON Transacao.conta_id = Conta.conta_id;

--23:40
--2.Mostrar apenas contas do tipo "Corrente" com suas transações

SELECT Conta.tipo,
        Transacao.conta_id,
        Transacao.data,
        Transacao.valor,
        Transacao.descricao
FROM Contas Conta
INNER JOIN Transacoes Transacao 
ON Transacao.conta_id = Conta.conta_id;
WHERE Conta.tipo = 'Corrente';

--23:56
--Estas questões ainda não sei solucionar
--3.Exibir o total movimentado por cada cliente


--4.Encontrar transações acima de R$ 1000 com nome do cliente

--5.Listar clientes e suas contas, mesmo sem transações (usando INNER JOIN não mostrará quem não tem movimentação)