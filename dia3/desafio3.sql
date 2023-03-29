CREATE DATABASE desafio3;

USE desafio3;

CREATE TABLE pessoa(
	nome VARCHAR(10),
    idade INT,
    cpf BIGINT PRIMARY KEY,
    sexo VARCHAR(10)
);

CREATE TABLE vendaingresso(
	idvenda SMALLINT PRIMARY KEY AUTO_INCREMENT,
    horavenda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    datavenda DATE
    
);

CREATE TABLE filme(
	nome VARCHAR(100) PRIMARY KEY,
    genero VARCHAR(10),
    diretor VARCHAR(20),
    ano YEAR 
);

ALTER TABLE pessoa ADD COLUMN altura FLOAT;
ALTER TABLE vendaingresso ADD COLUMN horaevento TIME;
ALTER TABLE filme ADD COLUMN tempominuto INT;

SELECT * FROM pessoa;
INSERT INTO pessoa (nome,idade,cpf,sexo,altura)
VALUES
('BRUNA',18,45904761856,'F',1.60),
('LUCAS',19,98765845678,'M',1.70),
('ANA',19,87589618566,'F',1.65);

SELECT * FROM vendaingresso;
INSERT INTO vendaingresso (datavenda,horaevento)
VALUES
("2018-12-03", "13:40:00"),
("2019-04-24", "14:58:00"),
("2004-04-06", "04:45:00");

SELECT * FROM filme;
INSERT INTO filme (nome,genero,diretor,ano,tempominuto)
VALUES
('VOLVER','DRAMA','ALMODOVAR',2006,120),
('EYESWIDESHUT','THRILLER','KUBRICK',1999,150),
('RRR','ACTION','RAJAMOULI',2022,182);

ALTER TABLE pessoa DROP COLUMN cpf;
ALTER TABLE vendaingresso DROP COLUMN  horavenda;
ALTER TABLE filme DROP COLUMN genero;

SELECT * FROM pessoa WHERE sexo = 'F';
SELECT * FROM vendaingresso WHERE datavenda = "2018-12-03";
SELECT * FROM filme WHERE ano = 1999;

SELECT * FROM titles;
DROP TABLE titles;
