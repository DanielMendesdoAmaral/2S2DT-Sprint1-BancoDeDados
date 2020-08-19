USE Nyous;

INSERT INTO Acesso (Tipo) VALUES
	('Administrador'),
	('Padrao');

INSERT INTO Categoria (titulo) VALUES
	('Meetup'),
	('Workshop'),
	('Hackaton'),
	('Live'),
	('Palestra');

INSERT INTO Localizacao (logradouro, numero, bairro, cidade, uf, cep) VALUES
	('Alameda Barão de Limeira', 539, 'Santa Cecília', 'São Paulo', 'SP', '01202-001');

INSERT INTO Usuario (nome, email, senha, dataNascimento, idAcesso) VALUES
	('Daniel Amaral', 'daniel.amaral720@gmail.com', 'daniel-amaral123', '2003-08-13T02:00:00', 1);

INSERT INTO Evento (dataEvento, capacidade, acessoRestrito, idCategoria, idLocalizacao) VALUES
	('2020-10-15T22:00:00', 100, 0, 3, 1);