USE optus;
INSERT INTO Estilo VALUES
('Black');

USE optus;
INSERT INTO AlbumEstilo VALUES
('1', '2');

USE optus;
SELECT Album.descricao, Estilo.nomeEstilo FROM Album
INNER JOIN AlbumEstilo 
ON Album.idAlbum = AlbumEstilo.idAlbum
INNER JOIN Estilo
ON Estilo.idEstilo = AlbumEstilo.idEstilo;