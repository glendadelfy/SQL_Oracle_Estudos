--LETS GO TREINO 13:00

--DQL SELECT COM FUNCTIONS


--O QUE E FUNCTIONS?

--Refere-se a um objeto que executa uma operação específica e retorna um valor ou um conjunto de valores.
--Em SQL são usadas para realizar cálculos, manipular dados e executar tarefas diversas dentro de consultas ou procedimentos armazenados
--Existem essas categorias que manipulam:
--Texto (ou Caracteres)
--Números (Inteiros ou Reais)
--Data e Hora
--Conversão de tipo


--FUNCTIONS NUMÉRICAS

--COMANDO DESCRIÇÃO
--ROUND (X, [Y])
--Retorna o resultado do arredondamento, onde o valor de X é informado com casas decimais no Y (opcional – e arredonda em 0 o decimal) TRUNC (X, [Y])
--Retorna o resultado do truncamento, onde o valor de X é informado e quantidade de casas decimais em Y (opcional – e trunca 0 a casa decimal)
--MOD (X,Y) Retorna o resto da divisão, onde X é dividido por Y
--ABS (X) Retorna o valor absoluto, onde o valor X é ignorado o sinal de + ou -
--SQRT (X) Retorna a raiz quadrada, onde o valor de X é informado
--CEIL (X) Função para arredondar os números decimais para cima
--FLOOR Função para arredondar os números decimais para baixo


--EXEMPLO DE TABELA

--SELECT 
--    ROUND(VALOR_PRODUTO, 4),
--    MOD(VALOR_PRODUTO, 2),
--    TRUNC(VALOR_PRODUTO, 0),
--    ABS(VALOR_PRODUTO *(-1)),
--    SQRT(VALOR_PRODUTO),
--   CEIL(VALOR_PRODUTO)
--FROM PRODUTO;

-- FUNCTIONS DE TEXTO

--COMANDO DESCRIÇÃO
--LOWER (X) Converte as letras para minúscula, onde o texto é informado na parâmetro X
--UPPER (X) Converte as letras para maiúscula, onde o texto é informado na parâmetro X
--INITCAP (X)
--Converte a letra inicial de cada palavra em maiúscula, onde o texto é informado na parâmetro X

--EXEMPLO DE TABELA

--SELECT 
--    LOWER(DESC_PRODUTO),
--    UPPER(DESC_PRODUTO),
--    INITCAP(DESC_PRODUTO)
--FROM PRODUTO;


--FUNCTIONS DE TEXTO
 

-- 19:16

