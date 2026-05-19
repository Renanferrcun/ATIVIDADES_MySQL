
CREATE DATABASE DB_colaboradores;

USE DB_colaboradores;


CREATE TABLE TB_colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_contratacao DATE NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    numero_dependentes INT NOT NULL
);

SELECT * FROM TB_colaboradores;


INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('João Silva', 'Vendedor', 3000.00, '2020-01-15', 'Vendas', 'joao.silva@example.com', '(11) 99999-9999', 'Rua Exemplo, 123', '1990-05-15', 'Brasileira', 2);

INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('Maria Oliveira', 'Recepcionista', 2500.00, '2021-03-10', 'Administração', 'maria.oliveira@example.com', '(11) 98888-8888', 'Avenida Exemplo, 456', '1985-10-20', 'Brasileira', 3);

INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('Carlos Pereira', 'Estagiário de TI', 1500.00, '2022-06-01', 'TI', 'carlos.pereira@example.com', '(11) 97777-7777', 'Travessa Exemplo, 789', '1992-12-10', 'Brasileira', 1);

INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('Ana Santos', 'Faxineira', 1950.00, '2018-08-20', 'Administração', 'ana.santos@example.com', '(11) 96666-6666', 'Praça Exemplo, 321', '1995-08-12', 'Brasileira', 2);

INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('Pedro Costa', 'Cozinheiro', 3500.00, '2017-11-05', 'Cozinha', 'pedro.costa@example.com', '(11) 95555-5555', 'Rua Exemplo, 987', '1990-03-25', 'Brasileira', 2);

INSERT INTO TB_colaboradores (nome, cargo, salario, data_contratacao, departamento, email, telefone, endereco, data_nascimento, nacionalidade, numero_dependentes) VALUES 
('Luciana Almeida', 'Analista de Recursos Humanos', 4500.00, '2019-09-15', 'RH', 'luciana.almeida@example.com', '(11) 94444-4444', 'Praça Exemplo, 654', '1993-07-18', 'Brasileira', 1);


SELECT * FROM TB_colaboradores;

SELECT * FROM TB_colaboradores WHERE (salario > 2000.00);

SELECT * FROM TB_colaboradores WHERE (salario < 2000.00);

UPDATE TB_colaboradores SET CARGO = "Desenvolvedor Junior" WHERE id = 3;
UPDATE TB_colaboradores SET salario = 3100.00 WHERE id = 3;

SELECT * FROM TB_colaboradores WHERE id = 3;

SELECT * FROM TB_colaboradores;

