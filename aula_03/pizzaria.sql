CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
sabor varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo, sabor)
VALUES ("esfiha", "doce"),
("esfiha", "salgada"),
("pizza", "doce"),
("pizza", "salgada");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
preco decimal(6, 2),
quantidade int, 
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, descricao, preco, quantidade, categoria_id)
VALUES ("Frango", "Frango temperado", 54.00, 2, 4),
("Romeu e julieta", "Goiabada e mussarela", 45.00, 3, 3),
("Frango", "Frango temperado", 7.00, 5, 2),
("Romeu e julieta", "Goiabada e mussarela", 9.00, 4, 1),
("4 queijos ", "Mussarela, provolone, catupiry e parmesão", 98.00, 3, 4),
("Napolitana", "Mussarela, tomate e parmesão", 50.00, 5, 4),
("Chocolate", "Chocolate e granulado", 7.00, 6, 1),
("Queijo", "Mussarela", 5.00, 3, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, descricao, preco, quantidade, tb_categorias.tipo, tb_categorias.sabor
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, descricao, preco, quantidade, tb_categorias.tipo, tb_categorias.sabor
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo LIKE "%pizza%" AND tb_categorias.sabor LIKE "%doce%";