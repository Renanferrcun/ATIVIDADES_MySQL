
CREATE DATABASE db_pizza_legal;

USE db_pizza_legal;

DROP DATABASE db_pizza_legal;

CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    preco DECIMAL(5, 2) NOT NULL
);

CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    massa VARCHAR(255) NOT NULL,
    borda VARCHAR(255) NOT NULL,
    adicional DECIMAL(5, 2) NOT NULL,
    categoriasID INT NOT NULL,
    FOREIGN KEY (categoriasID) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (tipo, tamanho, preco)
VALUES ('Doce', 'Pequena', 14.90),
    ('Doce', 'Média', 19.90),
    ('Doce', 'Grande', 29.90),
    ('Salgada', 'Pequena', 24.90),
    ('Salgada', 'Média', 29.90),
    ('Salgada', 'Grande', 39.90);
    
DROP TABLE tb_categorias;

INSERT INTO tb_pizzas (sabor, massa, borda, adicional, categoriasID)
VALUES
    ('Chocolate', 'Tradicional', 'Doce de Leite', 14.90, 1),
    ('Morango com Chocolate', 'Integral', 'Chantily', 24.90, 2),
    ('Banana com Canela', 'Fina', 'Sem Recheio', 29.90, 3),
    ('Romeu e Julieta', 'Tradicional', 'Sem Recheio', 29.90, 4),
    ('Mussarela', 'Integral', 'Cheddar', 24.90, 5),
    ('Calabresa', 'Tradicional', 'Catupiry', 24.90, 4),
    ('Frango com Catupiry', 'Integral', 'Sem Recheio', 29.90, 5),
    ('Portuguesa', 'Fina', 'Sem Recheio', 34.90, 6);
    
DROP TABLE tb_pizzas;

    SELECT * FROM tb_categorias;
    SELECT * FROM tb_pizzas;


SELECT tb_categorias.tipo, tb_pizzas.sabor, tb_pizzas.massa, tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.preco + tb_pizzas.adicional AS total
FROM tb_pizzas
    INNER JOIN tb_categorias
    ON tb_pizzas.categoriasID = tb_categorias.id
    WHERE (tb_categorias.preco + tb_pizzas.adicional > 45.00);
    
SELECT tb_categorias.tipo, tb_pizzas.sabor, tb_pizzas.massa, tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.preco + tb_pizzas.adicional AS total
FROM tb_pizzas
    INNER JOIN tb_categorias
    ON tb_pizzas.categoriasID = tb_categorias.id
    WHERE (tb_categorias.preco + tb_pizzas.adicional > 50.00 AND tb_categorias.preco + tb_pizzas.adicional < 100.00);
    
SELECT tb_categorias.tipo, tb_pizzas.sabor, tb_pizzas.massa, tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.preco + tb_pizzas.adicional AS total
FROM tb_pizzas
INNER JOIN tb_categorias
    ON tb_pizzas.categoriasID = tb_categorias.id
    WHERE sabor LIKE "%m%";
    
SELECT tb_categorias.tipo, tb_pizzas.sabor, tb_pizzas.massa, tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.preco + tb_pizzas.adicional AS total
FROM tb_pizzas
    INNER JOIN tb_categorias
    ON tb_pizzas.categoriasID = tb_categorias.id;
    
SELECT tb_categorias.tipo, tb_pizzas.sabor, tb_pizzas.massa, tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.preco + tb_pizzas.adicional AS total
FROM tb_pizzas
    INNER JOIN tb_categorias
    ON tb_pizzas.categoriasID = tb_categorias.id
    WHERE tipo LIKE 'Doce';
    
    


