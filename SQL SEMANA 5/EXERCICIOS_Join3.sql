--Dia 19/09/2026

--LETS GO ESTUDOS SQL JOIN

-- Criação das tabelas
CREATE TABLE Clientes (
    cliente_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    cpf VARCHAR2(11)
);

CREATE TABLE Contas (
    conta_id NUMBER PRIMARY KEY,
    nome_conta VARCHAR2(50),
    tipo VARCHAR2(20),
    cliente_id NUMBER,
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE Transacoes (
    transacao_id NUMBER PRIMARY KEY,
    conta_id NUMBER,
    data DATE,
    valor NUMBER(10,2),
    descricao VARCHAR2(200),
    CONSTRAINT fk_conta FOREIGN KEY (conta_id) REFERENCES Contas(conta_id)
);

-- Inserindo dados fictícios
INSERT INTO Clientes VALUES (1, 'Ana Souza', '12345678901');
INSERT INTO Clientes VALUES (2, 'Carlos Lima', '98765432100');
INSERT INTO Clientes VALUES (3, 'Fernanda Alves', '45678912300');

INSERT INTO Contas VALUES (101, 'Conta Corrente Ana', 'Corrente', 1);
INSERT INTO Contas VALUES (102, 'Conta Poupança Carlos', 'Poupança', 2);
INSERT INTO Contas VALUES (103, 'Investimento Fernanda', 'Investimento', 3);
INSERT INTO Contas VALUES (104, 'Conta Corrente Fantasma', 'Corrente', NULL);

INSERT INTO Transacoes VALUES (1001, 101, TO_DATE('2026-09-01','YYYY-MM-DD'), 2500.00, 'Depósito inicial');
INSERT INTO Transacoes VALUES (1002, 101, TO_DATE('2026-09-05','YYYY-MM-DD'), -300.00, 'Pagamento boleto');
INSERT INTO Transacoes VALUES (1003, 102, TO_DATE('2026-09-10','YYYY-MM-DD'), 1500.00, 'Depósito salário');
INSERT INTO Transacoes VALUES (1004, 103, TO_DATE('2026-09-15','YYYY-MM-DD'), 5000.00, 'Aplicação em fundos');

--23:50
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

--00:16

--2.Mostrar apenas contas do tipo "Corrente" com suas transações

--3.Exibir o total movimentado por cada cliente

--4.Encontrar transações acima de R$ 1000 com nome do cliente

--5.Listar clientes e suas contas, mesmo sem transações (usando INNER JOIN não mostrará quem não tem movimentação)

