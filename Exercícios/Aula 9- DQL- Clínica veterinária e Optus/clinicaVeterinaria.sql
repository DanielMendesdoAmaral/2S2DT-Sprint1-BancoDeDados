--Selecionamos os nomes dos veterin�rios que cuidam dos pets.
USE clinicaVeterinaria;
SELECT Pet.nome, Veterinario.nome FROM Pet 
INNER JOIN Veterinario ON Pet.idVeterinario = Veterinario.idVeterinario;