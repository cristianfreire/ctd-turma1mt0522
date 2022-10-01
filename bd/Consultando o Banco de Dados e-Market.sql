-- 1) Queremos ter uma lista de todas as categorias.
SELECT
*
FROM
CATEGORIAS;

-- 2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
SELECT 
CATEGORIANOME, DESCRICAO
FROM 
CATEGORIAS;

-- 3) Obtenha uma lista dos produtos.
SELECT 
* 
FROM 
PRODUTOS;

-- 4) Existem produtos descontinuados? (Descontinuado = 1). Não.
SELECT 
* 
FROM 
PRODUTOS 
WHERE DESCONTINUADO = 1;

-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
