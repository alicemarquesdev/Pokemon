INSERT INTO Tipo (NomeTipo) VALUES
('Fogo'), ('Água'), ('Grama'), ('Elétrico'), ('Psíquico'), ('Normal'), ('Voador'), ('Pedra'), ('Terra'), 
('Inseto'), ('Veneno'), ('Lutador'), ('Fantasma'), ('Gelo'), ('Dragão'), ('Noturno'), ('Aço'), ('Fada');

INSERT INTO Pokemon (Nome) VALUES
('Bulbasaur'), ('Ivysaur'), ('Venusaur'),
('Charmander'), ('Charmeleon'), ('Charizard'),
('Squirtle'), ('Wartortle'), ('Blastoise'),
('Pikachu'), ('Raichu'),
('Jigglypuff'), ('Clefairy'),
('Pidgey'), ('Pidgeotto'), ('Pidgeot'),
('Sandshrew'), ('Sandslash'),
('Nidoran♀'), ('Nidorina'), ('Nidoqueen'),
('Zubat'), ('Golbat'),
('Oddish'), ('Gloom'), ('Vileplume'),
('Machop'), ('Machoke'), ('Machamp'),
('Gastly'), ('Haunter'), ('Gengar'),
('Onix'), ('Steelix'), 
('Magikarp'), ('Gyarados'),
('Eevee'), ('Vaporeon'), ('Jolteon'), ('Flareon'),
('Snorlax'), ('Articuno'), ('Zapdos'), ('Moltres'),
('Dratini'), ('Dragonair'), ('Dragonite');

INSERT INTO PokemonTipo (IdPokemon, IdTipo) VALUES
(1, 3),   (1, 10),
(2, 3),   (2, 10),
(3, 3),   (3, 10),
(4, 1),
(5, 1),
(6, 1),   (6, 7),
(7, 2),
(8, 2),
(9, 2),
(10, 4),
(11, 4),
(12, 6), (12, 18),
(13, 6), (13, 18),
(14, 6), (14, 7),
(15, 6), (15, 7),
(16, 6), (16, 7),
(17, 9),
(18, 9), (18, 8),
(19, 10), (19, 11),
(20, 10), (20, 11),
(21, 10), (21, 11),
(22, 10), (22, 7),
(23, 10), (23, 7),
(24, 3), (24, 10),
(25, 3), (25, 10),
(26, 3), (26, 10),
(27, 12),
(28, 12),
(29, 12),
(30, 13), (30, 11),
(31, 13), (31, 11),
(32, 13), (32, 11),
(33, 8), (33,9),
(34, 8), (34, 17),
(35, 2),
(36, 2), (36, 7),
(37, 6),
(38, 2),
(39, 4),
(40, 1),
(41, 6),
(42, 14), (42, 7), (43, 4), (43, 7), (44, 1), (44, 7),
(45, 15),
(46, 15),
(47, 15), (47, 7);

INSERT INTO Treinador (Nome, Idade, Regiao) VALUES
('Ash Ketchum', 11, 'Kanto'),
('Misty', 12, 'Kanto'),
('Brock', 15, 'Kanto'),
('Gary Oak', 12, 'Kanto'),
('Erika', 18, 'Kanto'),
('Lt. Surge', 28, 'Kanto'),
('Sabrina', 22, 'Kanto'),
('Blaine', 54, 'Kanto'),
('Giovanni', 42, 'Kanto'),
('Lance', 28, 'Johto'),
('Whitney', 16, 'Johto'),
('Falkner', 20, 'Johto'),
('Jasmine', 18, 'Johto'),
('Steven', 25, 'Hoenn'),
('Wallace', 27, 'Hoenn'),
('Cynthia', 29, 'Sinnoh'),
('Iris', 15, 'Unova'),
('Alder', 55, 'Unova'),
('Korrina', 18, 'Kalos'),
('Leon', 25, 'Galar');

INSERT INTO Insignia (NomeInsignia, Ginasio, TipoPrincipal) VALUES
('Insígnia da Pedra', 'Pewter', 8),
('Insígnia da Cascata', 'Cerulean', 2),
('Insígnia do Trovão', 'Vermilion', 4),
('Insígnia da Planta', 'Celadon', 3),
('Insígnia da Alma', 'Fuchsia', 11),
('Insígnia da Pira', 'Cinnabar', 1),
('Insígnia da Terra', 'Viridian', 9),
('Insígnia Psíquica', 'Saffron', 5),
('Insígnia de Gelo', 'Mahogany', 14),
('Insígnia do Dragão', 'Blackthorn', 15),
('Insígnia de Fada', 'Laverre', 18),
('Insígnia do Metal', 'Olivine', 17);

INSERT INTO TreinadorPokemon (IdTreinador, IdPokemon, Nivel) VALUES
-- Ash
(1, 4, 15), (1, 7, 17), (1, 10, 25), (1, 14, 13), (1, 27, 11), (1, 37, 21),
-- Misty
(2, 7, 21), (2, 8, 23), (2, 9, 28), (2, 35, 12), (2, 38, 17), 
-- Brock
(3, 33, 30), (3, 17, 26), (3, 18, 31), (3, 12, 18),
-- Gary
(4, 2, 34), (4, 5, 33), (4, 8, 29), (4, 24, 28),
-- Erika
(5, 25, 32), (5, 24, 26), (5, 3, 38),
-- Lt. Surge
(6, 10, 29), (6, 11, 34), (6, 39, 28),
-- Sabrina
(7, 30, 40), (7, 31, 38), (7, 32, 41),
-- Blaine
(8, 6, 48), (8, 40, 43), 
-- Giovanni
(9, 21, 34), (9, 18, 36), (9, 33, 39),
-- Lance
(10, 47, 60), (10, 46, 55), (10, 45, 50), (10, 36, 52),
-- Wallace
(15, 38, 41), (15, 36, 34),
-- Steven
(14, 34, 58), (14, 33, 47),
-- Jasmine
(13, 34, 49), (13, 33, 40),
-- Cynthia
(16, 47, 62), (16, 26, 55), (16, 32, 53);

INSERT INTO TreinadorInsignia (IdTreinador, IdInsignia, DataConquista) VALUES
(1,1,'2024-01-10'), (1,2,'2024-01-12'), (1,3,'2024-01-14'), (1,4,'2024-01-16'), 
(1,5,'2024-01-19'), (1,6,'2024-01-22'), (1,7,'2024-01-25'), (1,8,'2024-01-28'),
(2,2,'2023-12-25'),
(3,1,'2023-12-26'),
(4,3,'2023-12-27'),
(5,4,'2023-12-28'),
(6,3,'2023-12-30'),
(7,8,'2023-12-31'),
(10,9,'2024-01-05'), (10,10,'2024-01-07'),
(13,12,'2024-01-08'), (14,12,'2024-01-09'),
(16,10,'2024-02-10'), (16,8,'2024-02-12');