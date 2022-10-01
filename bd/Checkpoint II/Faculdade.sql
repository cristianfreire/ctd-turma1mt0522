CREATE database FACULDADE;

USE FACULDADE;

create table PROFESSOR(
	idProfessor INT auto_increment NOT NULL primary KEY,	
	nome VARCHAR(150) NOT NULL,
    matricula VARCHAR(45) NOT NULL,
    email VARCHAR(150) NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    telefone VARCHAR(45) NOT NULL
);

create table CURSO (
	idCurso INT auto_increment NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL, 
    descricao VARCHAR(45) NOT NULL,
    codTurma INT NOT NULL
);

create table TURMA(
	idTurma INT auto_increment NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    idCurso INT NOT NULL,
    CONSTRAINT FK_TURMA_CURSO FOREIGN KEY (idCurso) REFERENCES CURSO (idCurso)
);

create table ALUNO (
	idAluno INT auto_increment NOT NULL primary KEY,
    nome VARCHAR(45) NOT NULL,
    matricula VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    codTurma INT NOT NULL,
    CONSTRAINT FK_ALUNO_TURMA FOREIGN KEY (codTurma) REFERENCES TURMA (idTurma)
);

create table DISCIPLINA(
	idDisciplina INT NOT NULL auto_increment PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    codProfessor INT NOT NULL,
    codCurso INT NOT NULL,
    CONSTRAINT FK_DISCIPLINA_PROFESSOR FOREIGN KEY (codProfessor) references PROFESSOR (idProfessor),
    CONSTRAINT FK_DISCIPLINA_CURSO FOREIGN KEY (codCurso) references CURSO (idCurso)
);







