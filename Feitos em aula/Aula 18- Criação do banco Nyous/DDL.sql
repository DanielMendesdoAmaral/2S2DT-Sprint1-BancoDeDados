CREATE DATABASE Nyous;
USE Nyous;

CREATE TABLE Acesso(
	idAcesso INT PRIMARY KEY IDENTITY NOT NULL,
	tipo VARCHAR(50),
);

CREATE TABLE Categoria(
	idCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	titulo VARCHAR(50)
);

CREATE TABLE Localizacao(
	idLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
	logradouro VARCHAR(100) NOT NULL,
	numero VARCHAR(50),
	complemento VARCHAR(50),
	bairro VARCHAR(50) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	UF CHAR(2),
	CEP VARCHAR(10)
);

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(80) NOT NULL,
	senha VARCHAR(150) NOT NULL,
	dataNascimento DATETIME,
	--FK
	idAcesso INT FOREIGN KEY REFERENCES Acesso(idAcesso)
);

CREATE TABLE Evento(
	idEvento INT PRIMARY KEY IDENTITY NOT NULL,
	dataEvento DATETIME NOT NULL,
	acessoRestrito BINARY DEFAULT 0 NOT NULL,
	capacidade INT NOT NULL,
	descricao VARCHAR(255),
	--FKs
	idLocalizacao INT FOREIGN KEY REFERENCES Localizacao(idLocalizacao),
	idCategoria INT FOREIGN KEY REFERENCES Categoria(idCategoria)
);

CREATE TABLE Presenca(
	idPresenca INT PRIMARY KEY IDENTITY NOT NULL,
	confirmado BIT NOT NULL,
	--FKs
	idEvento INT FOREIGN KEY REFERENCES Evento(idEvento),
	idUsuario INT FOREIGN KEY REFERENCES Usuario(idUsuario),
);

CREATE TABLE Convite(
	idConvite INT PRIMARY KEY IDENTITY NOT NULL,
	confirmado BIT DEFAULT NULL,
	--FKs
	idEvento INT FOREIGN KEY REFERENCES Evento(idEvento),
	idUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario(idUsuario),
	idUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(idUsuario),
);