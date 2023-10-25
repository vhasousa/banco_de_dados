create database cine_senai_max;

use cine_senai_max;
drop table filmes;

CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES (1, "Tropa de Elite", "Ação", 115, 2007, 5.99);

select * from filmes;

drop table filmes;

-- Localize o nome e gênero do filme com id 6
select titulo, genero from filmes where id_filme = 6;

-- Localize o nome e ano de lançamento do filme com id 33
select titulo, ano_lancamento from filmes where id_filme = 33;

-- O registro com id 73 foi cadastrado
-- incorretamente. Localize esse registro, confirme
-- se realmente não se trata de um filme. Caso não
-- seja um filme, realize a exclusão
select * from filmes where id_filme = 73;

delete from filmes where id_filme = 73;

/*O filme Rio 2 foi cadastrado como filme de Ação,
porém se trata de uma Animação. Primeiro
consulte o filme Rio 2 pelo nome, para
identificar qual é o seu ID e em seguida atualize
o gênero utilizando o id do filme como filtro.*/
select * from filmes where titulo = "Rio 2";

update filmes set genero = "Animação" where id_filme = 71;

-- Consulte o titulo, gênero e preço do aluguel dos filmes que são de Drama OU Comédia
SELECT titulo, genero, preco_aluguel FROM filmes
WHERE genero = "Drama" OR genero = "Comédia";

-- Consulte titulo e ano lançamento dos filmes lançados entre 2001 E 2005
SELECT titulo, genero, preco_aluguel FROM filmes
WHERE ano_lancamento > 2001 AND ano_lancamento < 2005;

-- Consulte titulo, ano lançamento e gênero dos filmes de Drama ou Animação que foram lançados depois de 2009
SELECT titulo, genero, preco_aluguel FROM filmes
WHERE genero = "Drama" OR genero = "Animação" AND ano_lancamento > 2009;

-- Consulte titulo, ano lançamento e gênero dos filmes de
-- Ação e Aventura ou Mistério e Suspense que foram lançados
-- entre 2005 e 2010
SELECT titulo, ano_lancamento, genero FROM filmes
WHERE (genero = "Ação e Aventura" OR genero = "Mistério e Suspense")
and (ano_lancamento > 2005 AND ano_lancamento < 2010);

-- Consulte titulo, ano lançamento e gênero dos filmes de
-- Ação e Aventura ou Mistério e Suspense que foram lançados
-- entre 2005 e 2010 com preço de aluguel maior que 3 reais
SELECT titulo, ano_lancamento, genero FROM filmes
WHERE (genero = "Ação e Aventura" OR genero = "Mistério e Suspense")
and (ano_lancamento > 2005 AND ano_lancamento < 2010)
and preco_aluguel > 3;

set sql_safe_updates = 0;

-- Aumente em 10% o preço de aluguel dos filmes que possuem o
-- preço de aluguel entre 4 e 5 reais.
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1
WHERE preco_aluguel >= 4 and preco_aluguel <= 5;

-- Aumente em 15% o preço de aluguel dos filmes que possuem o
-- preço de aluguel entre 2 e 3 reais
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.15
WHERE preco_aluguel >= 2 and preco_aluguel <= 3;

-- Os filmes lançados entre 2001 e 2003 terão
-- um desconto de 10% no preço de aluguel
UPDATE filmes SET preco_aluguel = preco_aluguel-preco_aluguel * 0.1
WHERE ano_lancamento >= 2001 and ano_lancamento <= 2003;

-- Os filmes de comédia lançados em 2001
-- terão um desconto de 15%
UPDATE filmes SET preco_aluguel = preco_aluguel - preco_aluguel * 0.15
WHERE ano_lancamento = 2001 and genero = "Comédia";
