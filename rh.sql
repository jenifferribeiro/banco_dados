CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
data_nascimento date NOT NULL,
salario decimal (6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, cargo, data_nascimento, salario)
VALUES ("Joana Matos", "advogada", "2000-12-18", 9000.00),
("Bruno Souza", "contador", "1995-08-10", 8000.00),
("Layla Silva", "assistente administrativa", "2004-06-15", 1900.00),
("Bruna Lopes", "analista de marketing", "1995-12-09", 3000.00),
("João Melo", "estagiário", "2008-12-23", 1500.00);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;
