SELECT nome as 'Genero', COUNT(*) as 'Numero de filmes'
FROM filmes
INNER JOIN generos ON generos.id = filmes.genero_id
GROUP BY nome 
having  count(*) >= 5