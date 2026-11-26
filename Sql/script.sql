create database QuizPokemon;
use QuizPokemon;

CREATE TABLE perguntas (
    Id_pergunta int auto_increment primary key,
    pergunta varchar(100)
);

CREATE TABLE respostasCerta (
    Id_resposta int auto_increment primary key,
    Id_pergunta int,
    resposta varchar(100),

    FOREIGN KEY (Id_pergunta)
    REFERENCES perguntas(Id_pergunta)
);

CREATE TABLE respostasErradas (
    Id_resposta int auto_increment primary key,
    Id_pergunta int,
    resposta varchar(100),

    FOREIGN KEY (Id_pergunta)
    REFERENCES perguntas(Id_pergunta)
);
 
INSERT INTO respostasErradas (Id_pergunta, resposta) VALUES
(1, 'Charizard'), (1, 'Mewtwo'), (1, 'Bulbasaur'),
(2, 'Fogo'), (2, 'Água'), (2, 'Terra'),
(3, 'Charizard'), (3, 'Blastoise'), (3, 'Ivysaur'),
(4, 'Ivysaur'), (4, 'Charizard'), (4, 'Blastoise'),
(5, 'Pikachu'), (5, 'Charmander'), (5, 'Squirtle'),
(6, 'Fogo'), (6, 'Elétrico'), (6, 'Planta'),
(7, 'Pikachu'), (7, 'Meowth'), (7, 'Eevee'),
(8, 'Pichu'), (8, 'Jolteon'), (8, 'Electabuzz'),
(9, 'Squirtle'), (9, 'Bulbasaur'), (9, 'Psyduck'),
(10, 'Fogo'), (10, 'Água'), (10, 'Elétrico'),
(11, 'Squirtle'), (11, 'Pikachu'), (11, 'Eevee'),
(12, 'Dragonite'), (12, 'Butterfree'), (12, 'Lapras'),
(13, 'Pikachu'), (13, 'Mewtwo'), (13, 'Gengar'),
(14, 'Fogo'), (14, 'Água'), (14, 'Pedra'),
(15, 'Snorlax'), (15, 'Onix'), (15, 'Machamp'),
(16, 'Brock'), (16, 'Giovanni'), (16, 'Professor Carvalho'),
(17, 'Meowth'), (17, 'Charizard'), (17, 'Bulbasaur'),
(18, 'Fogo e Água'), (18, 'Elétrico'), (18, 'Planta'),
(19, 'Psyduck'), (19, 'Magikarp'), (19, 'Meowth'),
(20, 'Flareon'), (20, 'Jolteon'), (20, 'Umbreon'),
(21, 'Pikachu'), (21, 'Charmander'), (21, 'Eevee'),
(22, 'Água'), (22, 'Planta'), (22, 'Psíquico'),
(23, 'Raichu'), (23, 'Pichu'), (23, 'Magnemite'),
(24, 'Johto'), (24, 'Hoenn'), (24, 'Sinnoh'),
(25, 'Charmander'), (25, 'Squirtle'), (25, 'Pikachu'),
(26, 'Fogo'), (26, 'Água'), (26, 'Lutador'),
(27, 'Geodude'), (27, 'Steelix'), (27, 'Onix'),
(28, 'Butterfree'), (28, 'Beedrill'), (28, 'Venomoth'),
(29, 'Meowth'), (29, 'Pikachu'), (29, 'Psyduck'),
(30, 'Fogo'), (30, 'Água'), (30, 'Fantasma'),
(31, 'Pikachu'), (31, 'Charizard'), (31, 'Bulbasaur'),
(32, 'Wartortle'), (32, 'Blastoise'), (32, 'Gyarados'),
(33, 'Haunter'), (33, 'Gastly'), (33, 'Misdreavus'),
(34, 'Fogo'), (34, 'Planta'), (34, 'Terra'),
(35, 'Growlithe'), (35, 'Eevee'), (35, 'Ponyta'),
(36, 'Equipe Plasma'), (36, 'Equipe Magma'), (36, 'Equipe Aqua'),
(37, 'Gyarados'), (37, 'Charizard'), (37, 'Salamence'),
(38, 'Raichu'), (38, 'Jolteon'), (38, 'Electabuzz'),
(39, 'Machamp'), (39, 'Gengar'), (39, 'Onix'),
(40, 'Água'), (40, 'Fogo'), (40, 'Elétrico'),
(41, 'Pikachu'), (41, 'Magikarp'), (41, 'Psyduck'),
(42, 'Gengar'), (42, 'Haunter'), (42, 'Gastly'),
(43, 'Psyduck'), (43, 'Starmie'), (43, 'Tentacool'),
(44, 'Fogo'), (44, 'Elétrico'), (44, 'Voador'),
(45, 'Articuno'), (45, 'Zapdos'), (45, 'Lugia'),
(46, 'Growlithe'), (46, 'Flareon'), (46, 'Arcanine'),
(47, 'Charmander'), (47, 'Squirtle'), (47, 'Eevee'),
(48, 'Professor Elm'), (48, 'Professor Oak de Hoenn'), (48, 'Giovanni'),
(49, 'Onix'), (49, 'Steelix'), (49, 'Graveler'),
(50, 'Dragonite'), (50, 'Blastoise'), (50, 'Venusaur');
 
 
 insert into perguntas values ();
 select*from perguntas;
 delete from perguntas where nome = "lucia santana";