select 
cliente.cliente_id as 'ID DO CLIENTE',  
concat(cliente.primeiro_nome, " ", cliente.ultimo_nome) as "NOME COMPLETO", 
filme.titulo as 'NOME DO FILME ALUGADO',
filme.descricao as 'DESCRIÇÃO DO FILME ALUGADO',
idioma.nome as 'IDIOMA DO FILME ALUGADO',
filme.classificacao as 'CLASSIFICAÇÃO',
date_format(aluguel.data_de_aluguel, '%d/%m/%Y') as 'DATA DE ALUGUEL',
date_format(aluguel.data_de_devolucao, '%d/%m/%Y') as 'DATA DE DEVOLUÇÃO', 
concat(funcionario.primeiro_nome, " ", funcionario.ultimo_nome) as 'NOME DO FUNCIONÁRIO'
from cliente
inner join aluguel on aluguel.cliente_id = cliente.cliente_id
inner join inventario on aluguel.inventario_id = inventario.inventario_id
inner join filme on inventario.filme_id = filme.filme_id
inner join idioma on filme.idioma_id = idioma.idioma_id
inner join funcionario on funcionario.funcionario_id = aluguel.funcionario_id
where cliente.cliente_id = 3;

