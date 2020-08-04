USE clinicaVeterinaria;
SELECT * FROM Dono;
SELECT * FROM Raca;
SELECT * FROM TipoDePet;
SELECT * FROM Veterinario;
SELECT * FROM Pet;

INSERT INTO Dono VALUES
('Daniel', '123312312356'),
('Juninho', '14725836989');

INSERT INTO Raca VALUES
('Pitbull'),
('Pastor alemão');

INSERT INTO TipoDePet VALUES
('Cachorro'),
('Gato');

INSERT INTO Veterinario VALUES
('Kamilly', '123456'),
('Fred', '123478');

INSERT INTO Pet VALUES
('Sheik', '2010-08-20T15:08:07', '1', '2', '2', '1'),
('Pitoco', '2010-08-20T15:08:07', '2', '1', '1', '2');
