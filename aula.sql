-- 1. CRIANDO E SELECIONANDO O BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS 3at_db;
USE 3at_db;

-- 2. CRIANDO A TABELA DE ALUNOS
CREATE TABLE IF NOT EXISTS alunos (
    numero_chamada INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- 3. CRIANDO A PROCEDURE
DELIMITER $$
CREATE PROCEDURE CadastrarAluno(
    IN p_chamada INT,
    IN p_nome VARCHAR(50)
)
BEGIN
    INSERT INTO alunos (numero_chamada, nome)
    VALUES (p_chamada, p_nome);
END $$
DELIMITER ;

-- 4. EXECUTANDO A PROCEDURE (Cadastre os alunos aqui)
CALL CadastrarAluno(1, 'Ana Silva');
CALL CadastrarAluno(2, 'Bruno Souza');
CALL CadastrarAluno(3, 'Carla Dias');

-- 5. VENDO O RESULTADO FINAL
SELECT * FROM alunos;