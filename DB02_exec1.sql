
CREATE DATABASE DB_generation_game_online;

USE db_generation_game_online;

CREATE TABLE TB_classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE TB_personagens (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    classe VARCHAR(255) NOT NULL,
    raca VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    forca INT NOT NULL,
    destreza INT NOT NULL,
    agilidade INT NOT NULL,
    inteligencia INT NOT NULL,
    vitalidade INT NOT NULL,
    carisma INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    magia INT NOT NULL,
    classesID INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classesID) REFERENCES TB_classes (id)
);


INSERT INTO TB_classes (nome, descricao) VALUES 
('Guerreiro', 'Classe de combate corpo-a-corpo'),
('Mago', 'Classe de magia'),
('Arqueiro', 'Classe de ataque à distância'),
('Assassino', 'Classe furtiva'),
('Paladino', 'Classe defensiva'),
('Druida', 'Classe de Suporte');


INSERT INTO TB_personagens (nome, classe, raca, nivel, forca, destreza, agilidade, inteligencia, vitalidade, carisma, ataque, defesa, magia, classesID) VALUES 
('Arthas', 'Guerreiro', 'Humano', 10, 15, 10, 5, 8, 12, 10, 3500, 2500, 700, 1),
('Jaina', 'Mago', 'Elfo', 12, 5, 8, 15, 10, 10, 14, 500, 800, 6300, 2),
('Sylvanas', 'Arqueiro', 'Elfo Noturno', 11, 10, 15, 8, 12, 10, 14, 4200, 2000, 500, 3),
('Valeera', 'Assassino', 'Humano', 11, 9, 12, 18, 6, 14, 8, 5000, 1600, 1000, 4),
('Uther', 'Paladino', 'Humano', 13, 18, 8, 10, 12, 15, 10, 2000, 4000, 1600, 5),
('Malfurion', 'Druida', 'Elfo Noturno', 14, 8, 10, 18, 14, 12, 15, 1000, 1500, 4000, 6),
('Muradin', 'Guerreiro', 'Anão', 10, 16, 12, 6, 10, 14, 8, 3800, 2000, 600, 1),
('Kael', 'Mago', 'Elfo Sangrento', 12, 6, 9, 16, 11, 9, 13, 400, 1800, 6500, 2),
('Tyrande', 'Arqueiro', 'Elfo Noturno', 11, 9, 14, 7, 13, 11, 12, 3000, 1000, 2000, 3),
('Garrosh', 'Assassino', 'Orc', 9, 14, 16, 5, 11, 9, 10, 4500, 500, 800, 4),
('Varian', 'Paladino', 'Humano', 13, 17, 9, 11, 13, 14, 9, 2200, 3200, 1000, 5),
('Cenarius', 'Druida', 'Tauren', 14, 9, 11, 17, 15, 13, 16, 1200, 1800, 3200, 6);


SELECT * FROM TB_classes;

SELECT * FROM TB_personagens;

SELECT * FROM TB_personagens WHERE (ataque > 2000);

SELECT * FROM TB_personagens WHERE (defesa > 1000 AND defesa < 2000);

SELECT * FROM TB_personagens WHERE nome LIKE '%c%';

SELECT nome, classe, raca, nivel, forca, destreza, agilidade, inteligencia, vitalidade, carisma, ataque, defesa, magia, TB_classes.nome, TB_classes.descricao
FROM TB_personagens INNER JOIN TB_classes
ON TB_personagens.classesid = TB_classes.id;

SELECT nome, classe, raca, nivel, forca, destreza, agilidade, inteligencia, vitalidade, carisma, ataque, defesa, magia, TB_classes.tipo, TB_classes.descricao
FROM TB_personagens INNER JOIN TB_classes
ON TB_personagens.classesid = TB_classes.id
WHERE (classe = 'Arqueiro');

