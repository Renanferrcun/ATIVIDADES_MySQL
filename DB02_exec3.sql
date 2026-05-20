CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    origem VARCHAR(255) NOT NULL

);

CREATE TABLE tb_produtos (
    ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    unidade VARCHAR(255) NOT NULL,
    preco DECIMAL(5, 2) NOT NULL,

    categoriasID BIGINT,
    FOREIGN KEY (categoriasID) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (tipo, origem) VALUES
('Bovino', 'Nacional'),
('Suíno', 'Nacional'),
('Aves', 'Nacional'),
('Bovino', 'Importado'),
('Suíno', 'Importado'),
('Aves', 'Importado');

INSERT INTO tb_produtos (nome, marca, unidade, preco, categoriasID) VALUES
('Picanha', 'Friboi', 'Kg', 59.90, 1),
('Alcatra', 'Friboi', 'Kg', 39.90, 1),
('Costela', 'Friboi', 'Kg', 29.90, 1),
('Lombo', 'Sadia', 'Kg', 19.90, 2),
('Pernil', 'Sadia', 'Kg', 14.90, 2),
('Coxa e Sobrecoxa', 'Sadia', 'Kg', 9.90, 3),
('Peito de Frango', 'Sadia', 'Kg', 12.90, 3),
('Picanha Bovina Importada', 'Angus Beef', 'Kg', 89.90, 4),
('Lombo Suíno Importado', 'Smithfield', 'Kg', 29.90, 5),
('Coxa e Sobrecoxa de Frango Importada', 'Tyson Foods', 'Kg', 14.90, 6);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT nome, marca, unidade, preco, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE (tb_produtos.preco > 50.00);

SELECT nome, marca, unidade, preco, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE (tb_produtos.preco > 50.00 AND tb_produtos.preco < 150.00);

SELECT nome, marca, unidade, preco, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE nome LIKE '%c%';

SELECT nome, marca, unidade, preco, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id;

SELECT nome, marca, unidade, preco, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE tipo LIKE 'Aves';

