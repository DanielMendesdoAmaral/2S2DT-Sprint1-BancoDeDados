--DQL -> Data Query Language - Linguagem de Consulta de Dados

USE boletim;

--Seleciona todos os dados da tabela
USE boletim;
SELECT * FROM Aluno;

--Seleciona um dado específico
USE boletim;
SELECT * FROM Aluno
WHERE IdAluno = 5;

--Busca parcial
SELECT * FROM Aluno
WHERE Nome LIKE '%A%';

--Filtrando ainda mais
SELECT * FROM Aluno
WHERE IdAluno = 6 OR
IdAluno = 5;

--Selecionando com condições especiais
SELECT * FROM Aluno
WHERE IdAluno >= 6 OR
IdAluno <= 5;

--Ordenar dados de forma crescente (padrão)
SELECT * FROM Aluno 
ORDER BY Nome;

--Ordenar dados de forma decrescente (padrão)
SELECT * FROM Aluno 
ORDER BY Nome DESC;

--Selecionar dados entre valores específicos
SELECT * FROM Trabalho WHERE
DataEntrega BETWEEN '2020-08-05T00:00:00' AND '2020-08-16T00:00:00';