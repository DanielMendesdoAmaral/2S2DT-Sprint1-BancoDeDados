/*
	DDL - Data Definition Language - Linguagem de Definição de Dados
*/ 

--Comandos em caixa alta.

--Criando o banco
CREATE DATABASE boletim;
GO -- O go serve para, se der erro nesta linha, o SQL vai prosseguir lendo as outras.

--Apaga o banco
--DROP DATABASE boletim;

--Usando o banco boletim, cria-se a entidade "aluno"
USE boletim;
CREATE TABLE Aluno (        --Identity: Auto incremento
	IdAluno INT PRIMARY KEY IDENTITY NOT NULL, --O SQL não deixará inserir dados nulos para este atributo. Por ser identity, não precisaria, mas é só uma segurança.
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20) NOT NULL,
	Idade INT NOT NULL
);
GO

USE boletim;
CREATE TABLE Materia (
	IdMateria INT PRIMARY KEY IDENTITY NOT NULL,
	NomeMateria VARCHAR(50) NOT NULL --NomeMateria porque não pode ter o mesmo nome do banco.
);
GO

USE boletim;
CREATE TABLE Trabalho (
	IdTrabalho INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL,
	--Adicionando FKs. Tem que ser o mesmo tipo e tem que adicionar nas referências o nome do bd e o nome da tabela.
	IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria) NOT NULL,
	IdAluno   INT FOREIGN KEY REFERENCES Aluno(IdAluno) NOT NULL
);
GO

--Apagando tabelas
USE boletim;
DROP TABLE Aluno;
GO
DROP TABLE Materia;
GO
DROP TABLE Trabalho;
GO

--Incluindo colunas em tabelas
USE boletim;
ALTER TABLE Trabalho 
ADD DataEntrega DATETIME NOT NULL;
GO

USE boletim;
ALTER TABLE Trabalho 
ADD Teste DATETIME NOT NULL;
GO

--Excluíndo colunas em tabelas
USE boletim;
ALTER TABLE Trabalho
DROP COLUMN Teste;
GO

--Alterando a tabela com o uso do decimal. Coloque quantas casas ao todo e depois quantas casas terão depois da vírgula.
USE boletim;
ALTER TABLE Trabalho
ALTER COLUMN Nota Decimal(10,2);