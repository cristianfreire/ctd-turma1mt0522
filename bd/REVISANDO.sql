-- 1
SELECT 
*
FROM artistas
inner join albuns on albuns.id_artista = artistas.id;

-- 2
SELECT 
*
FROM
clientes 
INNER JOIN FATURAS ON
	FATURAS.ID_CLIENTE = CLIENTES.ID;
    
-- 3
SELECT * FROM cancoes
INNER JOIN tipos_de_arquivo ON
	tipos_de_arquivo.ID = CANCOES.ID_TIPO_DE_ARQUIVO;

