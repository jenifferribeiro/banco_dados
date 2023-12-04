CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date NOT NULL,
serie varchar(255) NOT NULL,
nota decimal (6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, nota)
VALUES ("Joana Matos", "2013-12-18", "5ºA", 8.5),
("Bruno Souza", "2010-01-25", "8ºC", 9.0),
("Layla Silva", "2010-08-26", "8ºA", 6.5),
("Bruna Lopes", "2014-08-05", "4ºB", 5.5),
("João Melo", "2012-06-14", "6ªB", 7.5);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7.00;
SELECT * FROM tb_estudantes WHERE nota < 7.00;

