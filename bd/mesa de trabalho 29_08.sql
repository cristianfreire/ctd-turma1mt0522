-- Utilizando a tabela Faturas, extraia a quantidade de faturas emitidas por data. Responda:
-- Em qual data foram emitidas mais faturas?
select data_fatura, count(*) from faturas
group by data_fatura;

-- Quantas faturas foram emitidas nesta data? 45

-- Liste o país de cobrança, a quantidade, o total,  a média e o maior valor das faturas emitidas por país, 
-- na data encontrada no exercício anterior.. 
select pais_cobranca, count(*), sum(valor_total), avg(valor_total), max(valor_total) from faturas
where data_fatura = '2010-02-12'
group by pais_cobranca; 

-- Qual o valor total de faturas do Canadá? 
-- Qual a média das faturas do Brasil? 
-- Quantas faturas a Argentina possui? 
-- Qual o maior valor da fatura dos Estados Unidos?

-- Utilizando a tabela Clientes, liste os países que possuem mais de 4 clientes. Responda:
select *, count(*) from clientes 
group by pais
having count(*) > 4;

-- Liste os clientes do Brasil que moram no estado de São Paulo.
select * from clientes where pais = 'Brazil' and estado = 'SP';

-- Na tabela cancoes, liste a quantidade de canções, o preço unitário e o valor total das canções por id do gênero. Responda:
select count(*), preco_unitario, sum(preco_unitario), id_genero from cancoes
group by id_genero;






