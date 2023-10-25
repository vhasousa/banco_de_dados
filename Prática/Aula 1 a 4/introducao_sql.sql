CREATE DATABASE nome_do_banco_de_dados;

USE nome_do_banco_de_dados;

CREATE TABLE nome_da_tabela (
	codigo INT,
    nome VARCHAR(45),
    cpf CHAR(12),
    salario FLOAT,
    nascimento DATE
);funcionariosfuncionarios

INSERT INTO nome_da_tabela (codigo, nome, cpf, salario, nascimento) 
VALUES (100, 'Vitor Hugo', '111111111-11', 2000.00, '1998-09-04');

SELECT * FROM nome_da_tabela;
