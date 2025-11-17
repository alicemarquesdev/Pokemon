CREATE VIEW vw_PokemonsETipos
AS
SELECT 
    P.Nome AS NomePokemon,
    T.NomeTipo AS TipoPokemon
FROM Pokemon P
INNER JOIN PokemonTipo PT ON P.IdPokemon = PT.IdPokemon
INNER JOIN Tipo T ON PT.IdTipo = T.IdTipo
ORDER BY P.Nome;
GO

-----------------------------------------------------------------------------------------

CREATE VIEW vw_GinasiosPorTipo
AS
SELECT 
    I.Ginasio,
    I.NomeInsignia,
    T.NomeTipo AS TipoPrincipal,
    COUNT(TI.IdTreinador) AS TreinadoresConquistaram
FROM Insignia I
INNER JOIN Tipo T ON I.TipoPrincipal = T.IdTipo
LEFT JOIN TreinadorInsignia TI ON I.IdInsignia = TI.IdInsignia
GROUP BY I.Ginasio, I.NomeInsignia, T.NomeTipo;
GO

-----------------------------------------------------------------------------------------

CREATE VIEW vw_TreinadorResumo
AS
SELECT 
    T.IdTreinador,
    T.Nome AS NomeTreinador,
    T.Regiao,
    COUNT(DISTINCT TP.IdPokemon) AS QtdePokemons,
    COUNT(DISTINCT TI.IdInsignia) AS QtdeInsignias
FROM Treinador T
LEFT JOIN TreinadorPokemon TP ON T.IdTreinador = TP.IdTreinador
LEFT JOIN TreinadorInsignia TI ON T.IdTreinador = TI.IdTreinador
GROUP BY T.IdTreinador, T.Nome, T.Regiao;
GO