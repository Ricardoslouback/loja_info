CREATE DATABASE loja_info;
USE loja_info;
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);
-- Inserir produtos na tabela "produto"
INSERT INTO produtos (nome, preco, estoque)
VALUES
    ('Laptop Dell Inspiron', 999.99, 20),
    ('Monitor Samsung 24"', 199.99, 30),
    ('Teclado sem Fio Logitech', 29.99, 50),
    ('Mouse Óptico HP', 9.99, 100),
    ('Roteador Wi-Fi TP-Link', 49.99, 40),
    ('HD Externo Seagate 1TB', 79.99, 25),
    -- ... adicione mais produtos aqui ...
    ('Impressora HP LaserJet', 149.99, 15);
-- Criar tabela "estoque"
CREATE TABLE estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produtos_id INT,
    tipo_movimento ENUM('entrada', 'saída') NOT NULL,
    quantidade INT NOT NULL,
    data_movimento DATE NOT NULL,
    FOREIGN KEY (produtos_id) REFERENCES produtos(id)
);
