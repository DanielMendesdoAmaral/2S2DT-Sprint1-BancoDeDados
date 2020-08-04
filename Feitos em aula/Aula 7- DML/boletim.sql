--DML -> Data Manipulation Language -> Linguagem de Manipulação de Dados

--Insere dados na tabela Aluno.
USE boletim;
INSERT INTO Aluno 
(Nome, Ra, Idade) VALUES 
('Daniel', 'R123456', 16),
('Thiago', 'R123457', 19),
('Luana', 'R123458', 16);

--Seleciona tudo da tabela Aluno. É um DQL.
USE boletim;
SELECT * FROM Aluno;

--Deleta todos os dados
USE boletim;
DELETE FROM Aluno;

--Delete personalizado
USE boletim;
DELETE FROM Aluno
WHERE IdAluno = 4;

--Update -> Atualizando dados da tabela.
USE boletim;
UPDATE Aluno
SET Idade = 17
WHERE IdAluno = 6;

/*OBS: NO DELETE E NO UPDATE, NUNCA ESQUEÇA DE USAR O WHERE, POIS SE NÃO ELE APLICARÁ AS MUDANÇAS PARA TODA A TABELA.*/

/*Populando outras tabelas.*/
USE boletim;
SELECT * FROM Aluno;
SELECT * FROM Materia;
SELECT * FROM Trabalho;

USE boletim;
INSERT INTO Materia VALUES
('Português'),
('Matemática'),
('Física');

USE boletim;
INSERT INTO Trabalho VALUES
(5, 2, 5, '2020-08-07T23:59:59'); --Formato DateTime