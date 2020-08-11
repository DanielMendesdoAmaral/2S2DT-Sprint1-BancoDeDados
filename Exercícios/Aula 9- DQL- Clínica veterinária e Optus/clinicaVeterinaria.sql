--Selecionamos os nomes dos veterinários que cuidam dos pets.
USE clinicaVeterinaria;
SELECT Pet.nome, Veterinario.nome FROM Pet 
INNER JOIN Veterinario ON Pet.idVeterinario = Veterinario.idVeterinario;