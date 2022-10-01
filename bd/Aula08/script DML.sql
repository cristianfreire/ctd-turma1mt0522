INSERT INTO ASSOCIADOS (rg, nome, sobrenome, endereco, cidade, estado)
VALUE ('1234567', 'FREIRE', 'CRISTIAN', 'RUA 01', 'ITA', 'AM'),
('1234567', 'PASSOS', 'CRISTIAN', 'RUA 01', 'ITA', 'AM'),
('1234567', 'RENAN', 'FREIRE', 'RUA 01', 'ITA', 'AM'),
('1234567', 'PASSOS', 'RENAN', 'RUA 01', 'ITA', 'AM'),
('1234567', 'CRISTIAN', 'FREIRE', 'RUA 01', 'ITA', 'AM');

SELECT * FROM ASSOCIADOS;

INSERT INTO TELEFONES (telefone_socio, idAssociado)
VALUES ('23534', 1),
('554546', 2),
('45234', 3),
('2321354', 3),
('341234', 4),
('353', 1),
('4353', 2),
('234', 1);

SELECT * FROM TELEFONES;

INSERT INTO AUTORES (nome, sobrenome)
VALUES ('ROSA', 'IZABEL');

SELECT * FROM AUTORES;

INSERT INTO EDITORAS (razao_social, telefone)
VALUES ('POSITIVO', '8678'),
('DATA', '4345'),
('TERRA', '34543');

SELECT * FROM EDITORAS;


INSERT INTO LIVROS (cod_ISBN, titulo, ano_criacao, cod_autor, ano_publicacao, cod_editora)
VALUES ('6876', 'java', '2019', 1, '2021', 1),
('25', 'python', '2018', 1, '2021', 2),
('6235476', 'sql', '2034', 1, '2045', 3),
('68723456', 'php', '2042', 1, '2064', 2),
('6823476', 'lua', '2041', 1, '2053', 1);

SELECT * FROM LIVROS;


INSERT INTO EXEMPLARES (cod_livro, sinistro)
VALUES (6, 1),
(7, 0),
(8, 0),
(9, 0),
(10, 1);

SELECT * FROM EXEMPLARES;

INSERT INTO EMPRESTIMOS (id_associado, date, prazo_devolucao, data_devolucao)
VALUES (1, '2020-01-11', '2302-12-01', null),
(2, '3323-12-01', '0323-09-01', '2233-10-01'),
(1, '3232-09-30', '2121-12-01', null)

select * from emprestimos;


INSERT INTO EMPRESTIMO_EXEMPLARES (cod_emprestimo, cod_exemplar)
VALUES (1, 6),
(2, 9),
(1, 7);

select * from emprestimo_exemplares;

select * from associados;

delete from associados where id = 4;

select * from livros;
delete from livros where id = 10;

UPDATE associados set endereco = "Rua das Flores 860" where id = 3;

SELECT * from associados where id = 3;
