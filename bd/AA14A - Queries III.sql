-- Referência de Tabelas #1 - 
-- Faça uma consulta no banco de dados onde mostre todos os registros que contenham 
-- músicas com seus gêneros, E que o compositor seja Willie Dixon, E que tenham o gênero
--  Blues. A 2ª música encontrada foi:
use musimundos;
select  cancoes.nome, generos.nome as 'genero' , cancoes.compositor from  cancoes
inner join generos on
	generos.id = cancoes.id_genero
where compositor like 'Willie Dixon' and generos.nome = 'Blues';

-- Joins #1 - Faça uma consulta ao nosso banco de dados que nos retorna as únicas músicas 
-- que possuem gênero rock. Qual é a música que aparece em quarto lugar?

select cancoes.nome, generos.nome as 'genreo' from cancoes
inner join generos on
	generos.id = cancoes.id_genero
where generos.nome = 'Rock';

-- Joins #2 -Faça uma consulta ao nosso banco de dados que nos traga o título do álbum e o 
-- autor, para saber se o que estamos vendendo está correto.Qual o título do álbum que 
-- aparece na posição número 10?

select * from albuns
inner join artistas on
	albuns.id_artista = artistas.id
LIMIT 10;

-- Joins #3 - Faça uma consulta que retorne o nome das músicas e o tipo de arquivo 
-- "MPEG audio file". Qual o nome da músca que aparece na posição número 4?

SELECT * FROM cancoes
inner join tipos_de_arquivo on
	cancoes.id_tipo_de_arquivo = tipos_de_arquivo.id limit 4;
    
-- Distinct #1 - Faça uma consulta na tabela empregados. O cargo que aparece na 3a. 
-- posição é: 
-- sem respostaaaaaa


-- Distinct #2 - Ranking cancoes: Faça uma consulta com o nome de todas as 
-- músicas que estão em uma lista de reprodução, e o nome da lista de reprodução 
-- a que pertencem.Observação! Tenhamos cuidado para não repetir os nomes das 
-- músicas.Para esta consulta, teremos que usar informações das tabelas cancoes, 
-- cancoes_playlists e playlists. O título da música na 5a. posição é:

select distinct cancoes.nome, playlists.nome from cancoes
inner join cancoes_playlists on
	cancoes_playlists.id_cancao = cancoes.id
inner join playlists on
	cancoes_playlists.id_playlist = playlists.id;
    
-- 7 Funcoes MySQL I #1 - Ranking cancoes 2: 
-- O departamento de desenvolvimento da Musimundos está preparando a parte do 
-- aplicativo em que acessamos uma determinada música. Eles nos dizem que um 
-- texto específico deve aparecer abaixo da imagem da música:"A música" 
-- (nome do tema) "foi composta por" (compositor do tema).Faça uma consulta ao 
-- nosso banco de dados que nos traga o nome e o compositor de cada música, sem 
-- repetições, adicionando o texto acima. O primeiro resultado é:
select distinct CONCAT("A música ", cancoes.nome , " foi composta por " ,cancoes.compositor)
from cancoes;

-- 8 Funcoes MySQL I #2 - Faturas: 
-- Faça uma consulta ao banco de dados que nos traga a primeira coluna não nula 
-- que encontrar entre as colunas estado_cobranca, pais_cobranca e cep_cobranca.
-- O primeiro resultado obtido é:
select coalesce(estado_cobranca, pais_cobranca, cep_cobranca) from faturas; 


-- Funcoes MySQL I #3 - Idade Empregados: 
-- Faça uma consulta no banco de dados que mostre a diferença entre sua data 
-- de nascimento e a data de contratação. Digite a terceira diferença que você 
-- obteve. DICA: Lembre-se de que DATEDIFF () retorna a diferença entre as 
-- datas expressas em DIAS. Levando isso em consideração e sabendo que um ano 
-- tem 365 dias, como você faria a consulta?Para ajudá-lo, apresentamos a 
-- função FLOOR (), que arredonda qualquer número para casas decimais.
select floor(datediff(data_contratacao, data_nascimento)/365) from empregados;
    
-- Funções MySQL I #4 - Última fatura: 
-- Faça uma consulta ao banco de dados que traga todas as faturas do cliente 
-- número 2 solicitadas por sua data e extraia o mês. Qual foi o mês da sua 
-- última fatura?
select id_cliente, extract(month from data_fatura) from faturas where id_cliente = 2
    








