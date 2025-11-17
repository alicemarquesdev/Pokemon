CREATE DATABASE PokemonDB;
GO

USE PokemonDB;
GO

CREATE TABLE Tipo (
    IdTipo INT PRIMARY KEY IDENTITY(1,1),
    NomeTipo VARCHAR(50) NOT NULL
);

CREATE TABLE Treinador (
    IdTreinador INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Idade INT CHECK (Idade > 0),
    Regiao VARCHAR(50)
);

CREATE TABLE Pokemon (
    IdPokemon INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
);

CREATE TABLE PokemonTipo (
    IdPokemon INT NOT NULL,
    IdTipo INT NOT NULL,
    PRIMARY KEY (IdPokemon, IdTipo),
    FOREIGN KEY (IdPokemon) REFERENCES Pokemon(IdPokemon),
    FOREIGN KEY (IdTipo) REFERENCES Tipo(IdTipo)
);

CREATE TABLE TreinadorPokemon (
    IdTreinador INT NOT NULL,
    IdPokemon INT NOT NULL,
    Nivel INT CHECK (Nivel >= 1)
    PRIMARY KEY (IdTreinador, IdPokemon),
    FOREIGN KEY (IdTreinador) REFERENCES Treinador(IdTreinador),
    FOREIGN KEY (IdPokemon) REFERENCES Pokemon(IdPokemon)
);

CREATE TABLE Insignia (
    IdInsignia INT PRIMARY KEY IDENTITY(1,1),
    NomeInsignia VARCHAR(100) NOT NULL,
    Ginasio VARCHAR(100),
    TipoPrincipal INT,
    FOREIGN KEY (TipoPrincipal) REFERENCES Tipo(IdTipo)
);

CREATE TABLE TreinadorInsignia (
    IdTreinador INT NOT NULL,
    IdInsignia INT NOT NULL,
    DataConquista DATE,
    PRIMARY KEY (IdTreinador, IdInsignia),
    FOREIGN KEY (IdTreinador) REFERENCES Treinador(IdTreinador),
    FOREIGN KEY (IdInsignia) REFERENCES Insignia(IdInsignia)
);
GO