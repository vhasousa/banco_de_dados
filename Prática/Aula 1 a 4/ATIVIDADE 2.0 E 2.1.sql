-- Atividade 2.0
create database escola_feliz;

create table alunos(
	matricula int,
    nome varchar(45),
    curso varchar(45)
);

insert into alunos (matricula, nome, curso)
values (100, "Leon Martins", "Programador"),
(101, "Eduardo Madureira", "Programador"),
(200, "Lucas Cavalheiro", "Eletricista");


-- Atividade 2.1
create table cursos (
	codigo int,
    nome varchar(60),
    qtd_vagas int
);

insert into cursos (codigo, nome, qtd_vagas)
values (1, "Programador", 30),
(2, "Eletrotécnica", 20),
(1, "Auxiliar Administrativo", 40);