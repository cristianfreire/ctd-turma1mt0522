select
cliente.cliente_id as 'ID DO CLIENTE',
concat(cliente.primeiro_nome, " ", cliente.ultimo_nome) as 'NOME COMPLETO',
count(*)
from cliente
inner join aluguel on aluguel.cliente_id = cliente.cliente_id
group by concat(cliente.primeiro_nome, " ", cliente.ultimo_nome)
having cliente.cliente_id = 11;

