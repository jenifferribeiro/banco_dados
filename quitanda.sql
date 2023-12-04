-- Criar o banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maça", 100, "2023-12-18", 11.00),
("laranja", 100, "2023-12-10", 15.00),
("banana", 100, "2023-12-15", 11.90),
("uva", 100, "2023-12-09", 30.00),
("melancia", 100, "2023-12-23", 20.00);

SELECT * FROM tb_produtos;

SELECT nome_produto, preco FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 1;
SELECT * FROM tb_produtos WHERE data_validade = "2023-12-20";
SELECT * FROM tb_produtos WHERE preco > 15.00;
SELECT * FROM tb_produtos WHERE preco > 10.00 OR  nome_produto = "maça";
SELECT * FROM tb_produtos WHERE preco > 10.00 AND  nome_produto = "maça";
SELECT * FROM tb_produtos WHERE NOT id = 1;
SELECT nome_produto, CONCAT('R$', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos; 
SELECT nome_produto, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("jaboticaba", 200, "2023-12-18", 15.00);

-- alteracao do nome do atributo da tabela
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

-- 0000.00 modificar a tabela existente
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- adicionar um novo atributo na tabela
ALTER TABLE  tb_produtos ADD descricao varchar(255);

-- mudar preço de um produto
UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

-- TIRAR A TRAVA que permite fazer o update sem where
SET SQL_SAFE_UPDATES = 0;
-- recuperar a trava
SET SQL_SAFE_UPDATES = 1;

DELETE FROM tb_produtos WHERE id = 3;

-- remove atributo na tabela
ALTER TABLE tb_produtos DROP descricao;
-- excluir tabela
DROP TABLE TB_PRODUTOS;

-- apaga o banco
DROP DATABASE db_quitanda;

SELECT @@collation_database;