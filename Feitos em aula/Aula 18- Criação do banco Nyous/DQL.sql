USE Nyous;

SELECT * FROM Categoria;

SELECT * FROM Localizacao;

SELECT Usuario.*, Acesso.tipo AS permissaoAcesso FROM Usuario 
INNER JOIN Acesso ON Usuario.idAcesso = Acesso.idAcesso;

SELECT * FROM Evento 
INNER JOIN Categoria ON Evento.idCategoria = Categoria.idCategoria
INNER JOIN Localizacao ON Evento.idLocalizacao = Localizacao.idLocalizacao;