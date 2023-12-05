CREATE DATABASE  db_farmacia_bem_estar;

USE  db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
tipo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, tipo)
VALUES ("Remédio", "Dor de cabeça"),
("Remédio", "Gripe"),
("Remédio", "Febre"),
("Cosmético", "Cabelo"),
("Cosmético", "maquiagem");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
preco decimal(6, 2),
quantidade int, 
dtvalidade date NOT NULL,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (produto, preco, quantidade, dtvalidade, categoria_id)
VALUES ("Adivil", 15.00, 36, "2024-08-26", 1),
("Cimegripe", 25.00, 28, "2024-06-15", 2),
("Tylenol", 26.00, 20, "2024-08-26", 3),
("Shampoo", 55.00, 15, "2024-09-16", 4),
("Base", 78.00, 12, "2025-08-26", 5),
("Benegripe", 12.00, 16, "2024-08-26", 2),
("Dorflex", 18.00, 22, "2024-06-19", 1),
("Batom", 26.00, 26, "2025-08-07", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT produto, preco, quantidade, dtvalidade, tb_categorias.categoria, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT produto, preco, quantidade, dtvalidade, tb_categorias.categoria, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria LIKE "%cosmético%" AND tb_categorias.tipo LIKE "%cabelo%";

