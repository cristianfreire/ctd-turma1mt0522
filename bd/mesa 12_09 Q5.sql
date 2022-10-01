select 
cliente.cliente_id as 'ID DO CLIENTE',
concat(cliente.primeiro_nome, " ", cliente.ultimo_nome) as 'NOME COMPLETO',
count(*) as 'QUANTIDADE DE FILMES ALUGADO'
from aluguel
inner join cliente on aluguel.cliente_id = cliente.cliente_id
group by 
concat(cliente.primeiro_nome, " ", cliente.ultimo_nome), 
cliente.cliente_id 
having count(*) >= 39
order by count(*) desc;


 

