insert into curso(nome, descricao, codTurma)
values("Banco de Dados I", "conceitos básicos de bando de dados", 1); 

insert into turma (nome, idCurso)
values ("Turma01", 1);

insert into aluno (nome, matricula, email, endereco, telefone, codTurma)
values("Cristian", "01234", "cristian@email.com", "Rua 01, Centro", "(92) 9999-999", 1);

select * from aluno;

select aluno.nome as "Aluno" , turma.nome "Turma"  from aluno 
inner join turma 
on aluno.codTurma = turma.idTurma;

update aluno set nome = "Renan", matricula = "43210", email = "renan@email.com", endereco = "Rua 02, Centro", telefone = "(92) 99888-888" where idAluno = 1;

delete from aluno where idAluno = 1;

