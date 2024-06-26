/* 1 - Query para buscar o nome e ano dos filmes */
SELECT Nome, Ano 
FROM Filmes;

/* 2 - Query para buscar o nome e ano dos filmes
ordenados por ordem crescente de ano */
SELECT Nome, Ano, Duracao 
FROM Filmes
ORDER BY Ano ASC;

/* 3 - Query para buscar pelo filme de volta para o futuro, 
trazendo o nome, ano e a dura��o */
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

/* 4 - Query para buscar filmes lan�ados em 1997 */
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997;

/* 5 - Query para buscar filmes lan�ados ap�s 2000 */
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000;

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
ordenando pela duracao em ordem crescente */
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao;

/* 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, 
ordenando pela duracao em ordem decrescente */
SELECT Ano, COUNT(*) AS [Quantidade] 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

/* 8 - Buscar os Atores do g�nero masculino, 
retornando o PrimeiroNome, UltimoNome */ 
SELECT * 
FROM Atores
WHERE Genero = 'M';

/* 9 - Buscar os Atores do g�nero femino, 
retornando o PrimeiroNome, UltimoNome e ordenando pelo Primeiro Nome */ 
SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

/* 10 - Buscar o nome do filme e o g�nero */
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

/* 11 - Buscar o nome do filme e o g�nero do tipo 'Mist�rio' */
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio';

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome,
UltimoNome e seu Papel */
SELECT 
	Filmes.Nome, 
	Atores.PrimeiroNome, 
	Atores.UltimoNome, 
	ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;