CREATE OR ALTER PROCEDURE sp_TreinadoresPorTipoPokemon
    @TipoNome VARCHAR(50)
AS
BEGIN
    SELECT 
        T.Nome AS NomeTreinador,
        COUNT(DISTINCT P.IdPokemon) AS QuantidadePokemonsDoTipo
    FROM Treinador T
    INNER JOIN TreinadorPokemon TP ON T.IdTreinador = TP.IdTreinador
    INNER JOIN Pokemon P ON TP.IdPokemon = P.IdPokemon
    INNER JOIN PokemonTipo PT ON P.IdPokemon = PT.IdPokemon
    INNER JOIN Tipo Ti ON PT.IdTipo = Ti.IdTipo
    WHERE LOWER(TI.NomeTipo) = LOWER(@TipoNome)
    GROUP BY T.Nome
    ORDER BY QuantidadePokemonsDoTipo DESC;
END;
GO

-----------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_PokemonsPorTipo
    @TipoNome VARCHAR(50)
AS
BEGIN
    SELECT 
        P.Nome AS NomePokemon,
        T.NomeTipo AS Tipo
    FROM Pokemon P
    INNER JOIN PokemonTipo PT ON P.IdPokemon = PT.IdPokemon
    INNER JOIN Tipo T ON PT.IdTipo = T.IdTipo
    WHERE LOWER(T.NomeTipo) = LOWER(@TipoNome)
END;
GO

-----------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_ListarPokemonsPorTreinador
    @IdTreinador INT
AS
BEGIN
    SELECT 
        TR.Nome AS NomeTreinador,
        P.Nome AS NomePokemon,
        TP.Nivel,
        STRING_AGG(T.NomeTipo, ', ') AS Tipos
    FROM Treinador TR
    JOIN TreinadorPokemon TP ON TR.IdTreinador = TP.IdTreinador
    JOIN Pokemon P ON TP.IdPokemon = P.IdPokemon
    JOIN PokemonTipo PT ON P.IdPokemon = PT.IdPokemon
    JOIN Tipo T ON PT.IdTipo = T.IdTipo
    WHERE TR.IdTreinador = @IdTreinador
    GROUP BY TR.Nome, P.Nome, TP.Nivel
    ORDER BY TP.Nivel DESC;
END;
GO

-----------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_GerenciarTipo 
    @Id INT, 
    @Nome VARCHAR(50), 
    @Operacao VARCHAR(1) = 'i' 
AS 
IF @Operacao = 'i' 
BEGIN 
    INSERT INTO Tipo (NomeTipo) 
    VALUES (@Nome); 
    SELECT SCOPE_IDENTITY(); 
END 
ELSE 
    BEGIN 
        IF @Operacao = 'd' 
        BEGIN 
            DELETE FROM Tipo 
            WHERE IdTipo = @Id; 
        END 
        ELSE 
        BEGIN
            IF @Operacao = 'u' 
            BEGIN 
                UPDATE Tipo 
                SET NomeTipo = @Nome 
                WHERE IdTipo = @Id; 
            END 
        END 
    END 
    
GO

-----------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE sp_ResumoDoTreinador 
    @IdTreinador INT 
AS 
BEGIN 
    SELECT 
        T.Nome AS Treinador, 
        COUNT(TP.IdPokemon) AS QtdPokemons, 
        AVG(TP.Nivel) AS MediaNivel_DoTime
    FROM 
        Treinador T 
        INNER JOIN TreinadorPokemon TP ON T.IdTreinador = TP.IdTreinador 
    WHERE 
        T.IdTreinador = @IdTreinador
    GROUP BY 
        T.IdTreinador,
        T.Nome

END 
GO