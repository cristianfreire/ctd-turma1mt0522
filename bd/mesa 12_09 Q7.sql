select 
ator.ator_id as 'ID DO ATOR',
concat(ator.primeiro_nome, " ", ator.ultimo_nome) as 'NOME DO AUTOR',
count(*) as 'QUANTIDADE DE FILMES ESTRELADOS'
from ator
inner join filme_ator on filme_ator.ator_id = ator.ator_id
inner join filme on filme_ator.filme_id = filme.filme_id
group by concat(ator.primeiro_nome, " ", ator.ultimo_nome), ator.ator_id
having ator.ator_id = 9;