set sql_safe_updates = 0;

use empresa_xpto;

SELECT nome, cargo from funcionarios where NOT cargo = "Recepcionista";


select * from funcionarios;

delete from funcionarios where nome = "Monica Yates";

update funcionarios set cargo = 'Desenvolvedor Front-End' where nome = "Alan Robinson";

select nome, year(nascimento) from funcionarios;

select year(now()) - year(nascimento) as Idade from funcionarios;
