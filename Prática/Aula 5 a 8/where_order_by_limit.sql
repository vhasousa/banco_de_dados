-- Consultado todas as colunas de uma tabela
select * from funcionarios;

-- Consultado as colunas nome e nascimento de uma tabela
select nome, nascimento from funcionarios;

-- Consultar todas as colunas dos funcionário que são Arquiteto de Software
select * from funcionarios 
WHERE cargo = "Arquiteto de Software";

-- Consulte as colunas nome, cargo e salariodos funcionários que são Gerente de Projetos.
select nome, cargo, salario from funcionarios 
where cargo = "Gerente de Projetos";

-- Consulte as colunas salario e cargo e salario dos funcionários que são Professor
select salario, cargo from funcionarios
where cargo = "Professor";

-- Consulte nome cargo e salario de quem recebe acima de 10000 reais.
select nome, cargo, salario from funcionarios where salario > 10000;

-- Consulte nome de quem recebe abaixo do salário mínimo no estado do RJ
select nome from funcionarios where salario < 1320;

-- Consulte os cargos que o salário é maior ou igual a 28 mil reais
select cargo from funcionarios where salario >= 28000;

-- Procure no Sistema a funcionária Monica Yates
select * from funcionarios where nome = "Monica Yates";

-- Procure no Sistema o cargo e salario da funcionária Jennifer Gardner
select cargo from funcionarios where nome = "Jennifer Gardner";

-- Qual é a data de nascimento do Russell Cole?
select nascimento from funcionarios where nome = "Russell Cole";

-- Qual o nome e o cargo do funcionário com CPF 84716339531?
select nome, cargo from funcionarios where cpf = "84716339531";

SELECT 
	nome as 'Nome completo',
    salario as 'Salário',
    nascimento as 'Data de Nascimento'
FROM funcionarios
WHERE nascimento > '1998-01-01';

-- Todos os funcionários em ordem alfabética
SELECT * FROM funcionarios ORDER BY nome;

-- Consulte somente as colunas nome, cargo e salário de todos os funcionários ordenado pelo salário do maior para menor
SELECT nome, cargo, salario FROM funcionarios ORDER BY salario DESC;

-- Consulte as colunas salario e cargo de todos os funcionários ordenado do mais velho até o mais novo
SELECT salario, cargo FROM funcionarios ORDER BY nascimento;

-- Consulte nome, salário e cargo dos funcionários que são do cargo Professor em ordem alfabética pelo nome do professor
SELECT nome, salario, cargo FROM funcionarios WHERE cargo = "Professor" ORDER BY nome;

-- Consulte nome, salário e cargo dos funcionários dos Médico com os 5 maiores salários
SELECT nome, salario, cargo FROM funcionarios WHERE cargo = "Professor" ORDER BY nome;

-- Consulte o nome e CPF do funcionário no cargo de Recepcionista com menor salário
