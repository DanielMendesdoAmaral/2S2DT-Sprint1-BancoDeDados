USE clinicaVeterinaria;
SELECT * FROM Dono;
SELECT * FROM Pet;
SELECT * FROM Raca;
SELECT * FROM TipoDePet;
SELECT * FROM Veterinario;

SELECT SUM(idDono) FROM Dono AS somaId; --Operador de soma

SELECT AVG(idRaca) FROM Raca AS somaId; --Operador de média