create database QuizPokemon;
drop database quizpokemon;
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
 
  
 select*from perguntas;
 select*from respostasErradas;
 select*from respostasCerta;
 
 SELECT
    p.Id_pergunta,
    p.pergunta,
    r.resposta
FROM perguntas p
INNER JOIN respostasCerta r
ON p.Id_pergunta = r.Id_pergunta;

 delete from perguntas where nome = "lucia santana";