SET sql_safe_updates = 0;

use empresa_xpto;
UPDATE funcionarios set nome = "Vitor Hugo Almeida" 
WHERE nome = "Monica Yates";

select * from funcionarios where nome = "Vitor Hugo Almeida";

UPDATE funcionarios 
set nome = "Vitor Hugo Almeida";

select * from funcionarios;

delete from funcionarios;

-- Exclusão da Monica Yates
delete from funcionarios where nome = "Monica Yates";
select * from funcionarios where nome = "Monica Yates";

-- Todos os professores(cargo: Professor) 
-- receberam um reajuste de 10% em seus salários 
-- (184 rows affected)
UPDATE funcionarios 
set salario = salario * 1.1 where cargo = "Professor";

-- Funcionários com salários abaixo do salário mínimo 
-- tiveram os seus salários reajustados para o salário mínimo. 
-- (204 rows affected)
UPDATE funcionarios 
set salario = 1302 where salario < 1302;

-- Atualize o cadastro do Alan Robinson 
-- alterando o seu cargo para Desenvolvedor Front-End;
UPDATE funcionarios 
set cargo = "Desenvolvedor Front-End" 
where nome = "Alan Robinson";

select * from funcionarios where nome = "Alan Robinson";

SELECT NOW() as 'Data e Hora atual';
SELECT year(CURDATE());
SELECT DAY('2023-10-20');
SELECT MONTH('2023-10-20');
SELECT YEAR('2023-10-20');

-- calcula idade funcionarios
SELECT nome, year(CURDATE()) - year(nascimento) as 'Idade' 
from funcionarios;