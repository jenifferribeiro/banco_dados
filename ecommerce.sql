CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
preço decimal (6,2) NOT NULL,
frete decimal (6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preço, frete)
VALUES ("caneta", 200, 6.50, 5.00),
("caderno", 150, 28.60, 6.50),
("garrafa", 350, 54.99, 7.00),
("impressora", 100, 850.00, 25.00),
("borracha", 300, 1.50, 3.00);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preço > 500.00;
SELECT * FROM tb_produtos WHERE preço < 500.00;