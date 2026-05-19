

CREATE DATABASE DB_ecommerce;

USE DB_ecommerce;

CREATE TABLE TB_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(255) NOT NULL
);

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Smartphone XYZ', 'Smartphone com tela de 6.5 polegadas, câmera de 48MP e bateria de 4000mAh.', 1999.99, 50, 'Eletrônicos');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Notebook ABC', 'Notebook com processador Intel Core i7, 16GB de RAM e SSD de 512GB.', 3499.99, 30, 'Eletrônicos');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído e bateria de longa duração.', 299.99, 100, 'Acessórios');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Camiseta Estampada', 'Camiseta de algodão com estampa exclusiva e disponível em várias cores.', 49.99, 200, 'Roupas');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Tênis Esportivo', 'Tênis confortável e durável, ideal para atividades físicas e uso diário.', 149.99, 80, 'Calçados');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Relógio Inteligente', 'Relógio com monitoramento de atividades físicas, notificações e resistência à água.', 499.99, 40, 'Eletrônicos');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Mochila de Viagem', 'Mochila resistente e espaçosa, perfeita para viagens e uso diário.', 199.99, 60, 'Acessórios');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Livro de Ficção Científica', 'Livro envolvente com uma trama futurista e personagens cativantes.', 39.99, 150, 'Livros');

INSERT INTO TB_produtos (nome, descricao, preco, estoque, categoria) VALUES 
('Câmera Digital', 'Câmera com alta resolução, zoom óptico e recursos avançados para fotografia.', 899.99, 25, 'Eletrônicos');

SELECT * FROM TB_produtos;

SELECT * FROM TB_produtos WHERE (preco > 500.00);

SELECT * FROM TB_produtos WHERE (preco < 500.00);

UPDATE TB_produtos SET preco = 1799.99 WHERE id = 1;

SELECT * FROM TB_produtos WHERE id = 1;
