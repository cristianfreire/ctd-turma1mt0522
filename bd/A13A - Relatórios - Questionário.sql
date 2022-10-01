-- Funcões, Group by y Having #1 - Clientes de Brasil: A quantidade de clientes do Brasil é:
select pais, count(*)
from clientes 
where pais = 'Brazil'
GROUP BY PAIS;

-- Funções, Group by e Having #2 - Canções por gênero: 
-- Faça uma consulta ao banco de dados que mostre a identificação do gênero e o 
-- número de músicas que possui. O número que você obteve como resultado do número 
-- de músicas do gênero com id = 6 foi:

select id_genero, count(*)
from generos
INNER JOIN cancoes ON generos.ID = cancoes.id_genero
GROUP BY generos.nome;

-- 3 SQL- Funções, Group by e Having #3 - 
-- Balanço comercial: Faça uma consulta ao nosso banco de dados que
-- some o total de todas as notas fiscais emitidas pela empresa. 
-- O resultado  encontrado foi:
select sum(valor_total) from faturas;

-- Funções, Group by e Having #4 - Duração dos álbuns: 
-- Obtenha uma lista de todos os álbuns e sua duração média (milissegundos). 
-- O número da média obtida para o álbum 4 foi:

select albuns.id, albuns.titulo, avg(cancoes.duracao_milisegundos) from cancoes
inner join albuns on cancoes.id_album = albuns.id
group by albuns.titulo;

-- Funções, Group by e Having #5 - Movendo arquivos: 
-- Faça uma consulta ao banco de dados e informe qual é o arquivo de música  com o 
-- menor peso em bytes.
select min(bytes) from
cancoes;

-- Funções, Group by e Having #6 - Desconto: 
-- Faça uma consulta ao banco de dados que nos traga por cliente_id 
-- a soma total de suas faturas. Filtre aqueles em que a soma do total é > 45. 
-- Qual é a soma total do cliente com id = 6? 
-- ERRADOOOOOOO
select sum(faturas.valor_total) from 
faturas 
inner join clientes
on faturas.id_cliente = clientes.id
where id_cliente = 6
group by id_cliente;





