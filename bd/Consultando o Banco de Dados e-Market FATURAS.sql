-- 1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.
SELECT * FROM FATURAS ORDER BY DATAFATURA ASC;

-- 2) Agora é necessário uma lista de faturas com o país de envio "EUA" e
-- que a FormaeEnvio seja diferente de 3.
SELECT *
FROM faturas
WHERE PAISENVIO = 'USA' AND FormaEnvio != 3;

-- 3) O cliente 'GOURL' fez um pedido? Sim.
SELECT * FROM FATURAS where CLIENTEID = 'GOURL';

-- 4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT * FROM FATURAS WHERE EMPREGADOID >= 2 AND EMPREGADOID <= 9;

-- 	DETALHEFATURA
-- 1) Obtenha uma lista de FaturaId, Produto, Quantidade.
SELECT FATURAID, PRODUTOID, QUANTIDADE FROM DETALHEFATURA; 

-- 2) Classifique a lista acima por Quantidade decrescente. 
SELECT FATURAID, PRODUTOID, QUANTIDADE FROM DETALHEFATURA ORDER BY QUANTIDADE ASC; 

-- 3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100. 
SELECT FATURAID, PRODUTOID, QUANTIDADE 
FROM DETALHEFATURA 
WHERE QUANTIDADE BETWEEN 50 AND 100
ORDER BY QUANTIDADE ASC ; 

-- 4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: 
-- Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)
SELECT FATURAID AS 'FATURA', PRODUTOID as 'PRODUTO', PRECOUNITARIO*QUANTIDADE AS 'TOTAL' FROM DETALHEFATURA; 

-- EXTRAS
-- 1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México”
-- ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);
SELECT * FROM CLIENTES WHERE PAIS = 'Brasil' OR 'México' OR 
TITULO LIKE 'Sales%';

-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa
-- que comece com a letra “A”.
select * from clientes where empresa like 'A%';

-- 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), 
-- Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
select CIDADE, CONTATO AS 'NOME E SOBRENOM', TITULO AS 'CARGO' from CLIENTES WHERE CIDADE = 'Madrid'; 

-- 4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500
select * from faturas where faturaid between 10000 and 10500;

-- 5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de
-- clientes com IDs começando com "B".
select * from faturas where faturaid between 10000 and 10500 or clienteid = 'B%';

-- 6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?
SELECT * FROM FATURAS WHERE CIDADEENVIO = 'Vancouver' or formaenvio = 3;

-- 7) Qual é a identificação do funcionário de “Buchanan”? 5.
select empregadoid from empregados where TITULO LIKE 'Buchanan'






