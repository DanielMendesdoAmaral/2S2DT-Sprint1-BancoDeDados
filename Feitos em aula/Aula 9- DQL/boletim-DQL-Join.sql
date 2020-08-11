--DQL - JOINS
USE boletim;
SELECT 
	Aluno.Nome,
	Materia.NomeMateria,
	Trabalho.Nota
FROM Trabalho
INNER JOIN Aluno ON 
Trabalho.IdAluno = Aluno.IdAluno
INNER JOIN Materia ON 
Trabalho.IdMateria = Materia.IdMateria;