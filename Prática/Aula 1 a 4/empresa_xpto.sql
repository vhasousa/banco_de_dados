-- criando banco de dados
create database empresa_xpto;

drop database empresa_xpto;

-- ativando banco de dados
use empresa_xpto;

-- criar tabela
create table funcionarios(
	nome varchar(60),
    cpf char(12),
    cargo varchar(60),
    salario float,
    nascimento date
);

describe funcionarios;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
INTO TABLE funcionarios
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nome, cpf, cargo, salario, nascimento);

select * from funcionarios;
