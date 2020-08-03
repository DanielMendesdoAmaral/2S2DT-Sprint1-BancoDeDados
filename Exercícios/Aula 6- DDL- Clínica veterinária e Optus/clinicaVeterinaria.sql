CREATE DATABASE clinicaVeterinaria;

USE clinicaVeterinaria;
CREATE TABLE TipoDePet(
	idTipoDePet INT PRIMARY KEY IDENTITY NOT NULL,
	tipo VARCHAR(20) UNIQUE NOT NULL --Unique para não ter valores repetidos.
);

USE clinicaVeterinaria;
CREATE TABLE Veterinario(
	idVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	crmv VARCHAR(15) UNIQUE NOT NULL
);

USE clinicaVeterinaria;
CREATE TABLE Raca(
	idRaca INT PRIMARY KEY IDENTITY NOT NULL,
	nomeRaca VARCHAR(25) UNIQUE NOT NULL
);

USE clinicaVeterinaria;
CREATE TABLE Dono(
	idDono INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(100) NOT NULL, 
	cpf VARCHAR(15) UNIQUE NOT NULL
);

USE clinicaVeterinaria;
CREATE TABLE Pet(
	idPet INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(20) NOT NULL,
	dataNascimento DATETIME NOT NULL,
	--FKs
	idDono INT FOREIGN KEY REFERENCES Dono(idDono),
	idRaca INT FOREIGN KEY REFERENCES Raca(idRaca),
	idTipoDePet INT FOREIGN KEY REFERENCES TipoDePet(idTipoDePet),
	idVeterinario INT FOREIGN KEY REFERENCES Veterinario(idVeterinario)
);