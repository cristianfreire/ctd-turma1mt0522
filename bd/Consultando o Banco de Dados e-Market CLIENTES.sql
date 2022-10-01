-- 1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.
SELECT CONTATO, EMPRESA, PAIS FROM CLIENTES ORDER BY PAIS;

-- 2) Queremos atender todos os clientes que possuem o título de  “Proprietário". 
-- Esse título estará em inglês (Owner).
SELECT * FROM CLIENTES WHERE TITULO = 'Owner';

-- 3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". 
-- Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?
SELECT
*
FROM CLIENTES
WHERE CLIENTEID LIKE 'C%'; 


