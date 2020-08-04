USE optus;
SELECT * FROM Album;
SELECT * FROM Artista;
SELECT * FROM Estilo;
SELECT * FROM AlbumEstilo;
SELECT * FROM TipoPermissao;
SELECT * FROM Usuario;

INSERT INTO Album VALUES
('7', 'Álbum mais vendido do ano.', '1');

INSERT INTO Artista VALUES
('Rashid', '27');

INSERT INTO Estilo VALUES
('Rap');

INSERT INTO AlbumEstilo VALUES
('1', '1');

INSERT INTO TipoPermissao VALUES
('Administrador');

INSERT INTO Usuario VALUES
('Daniel', 'daniel@gmail.com', '123', '1');