CREATE DATABASE DHTUBE;
USE DHTUBE;


CREATE TABLE AVATAR(
	ID_AVATAR INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(45),
    URLIMAGEM VARCHAR(100)
);

CREATE TABLE PAIS(
	ID_PAIS INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NOME VARCHAR(100)
);

CREATE TABLE USUARIO (
	ID_USUARIO INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(45),
    EMAIL VARCHAR(45),
    SENHA VARCHAR(45),
    DATA_NASCIMENTO DATETIME,
    CEP VARCHAR(45),
    ID_PAIS INT(11),
    ID_AVATAR INT(11),
    CONSTRAINT FK_USUARIO_PAIS FOREIGN KEY (ID_PAIS) REFERENCES PAIS (ID_PAIS),
    CONSTRAINT FK_USUARIO_AVATAR FOREIGN KEY (ID_AVATAR) REFERENCES AVATAR (ID_AVATAR)
);

CREATE TABLE PLAYLIST(
	ID_PLAYLIST INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(45),
    DATA_CRIACAO DATETIME,
    PRIVADO SMALLINT(6),
    ID_USUARIO INT(11),
    CONSTRAINT FK_PLAYLIST_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID_USUARIO)
);

CREATE TABLE PLAYLIST_VIDEO(
	ID_PLAYLIST_VIDEO INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_PLAYLIST INT(11),
    CONSTRAINT FK_PLAYLIST_VIDEO_PLAYLIST FOREIGN KEY (ID_PLAYLIST) REFERENCES PLAYLIST (ID_PLAYLIST)
);

CREATE TABLE CANAL(
	ID_CANAL INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(45),
    DESCRICAO TEXT,
    DATA_CRIACAO DATETIME,
    ID_USUARIO INT(11),
    CONSTRAINT FK_CANAL_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID_USUARIO)
);

CREATE TABLE VIDEO(
	ID_VIDEO INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_USUARIO INT(11),
	TITULO VARCHAR(100),
    DESCRICAO TEXT,
    TAMANHO DOUBLE,
    NOME_ARQUIVO VARCHAR(100),
    DURACAO DOUBLE,
    IMAGEM VARCHAR(100),
    QTD_REPRODUCAO INT(11),
    QTD_LIKES INT(11),
    QTD_DESLIKE INT(11),
    PRIVADO SMALLINT(6),
    DATA_PUBLICACAO DATETIME,
    CONSTRAINT FK_VIDEO_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID_USUARIO)
);

SELECT id 'Dados' FROM atores;

