USE Empresa;

#1 ENCONTRE O MAIOR SALÁRIO
SELECT CONCAT('R$', FORMAT(MAX(salario), 2 ,'de_DE'))  AS 'Maior_Salario' FROM Funcionarios;

#2 ENCONTRE O MENOR SALARIO
SELECT CONCAT('R$', FORMAT(MIN(salario), 2 ,'de_DE'))  AS 'Menor_Salario' FROM Funcionarios;

#3 QUAL A QUANTIDADE DE FUNCIONARIOS
SELECT COUNT(id) AS 'Quantidade_funcionarios' FROM Funcionarios;

#4 FILTRE OS FUNCIONARIOS NASCIDOS A PARTIR DE 1990
SELECT * FROM Funcionarios WHERE YEAR(data_nascimento) >= 1990;

#5 ENCONTRE A MÉDIA SALARIAL
SELECT CONCAT('R$', FORMAT(AVG(salario), 2 ,'de_DE'))  AS 'Media_salarial' FROM Funcionarios;

#6 EXTRAIA OS 3 PRIMEIROS CARACTERES DO NOME
SELECT SUBSTRING(nome, 1, 3) AS 'Nome' FROM Funcionarios;

#7 CONTAR QUANTOS FUNCIONÁRIOS POR DEPARTAMENTO
SELECT COUNT(id) AS 'Funcionarios_por_departamento' FROM Funcionarios GROUP BY departamento_id;

#8 CONTAR QUANTOS FUNCIONÁRIOS POR CARGO
SELECT COUNT(id) AS 'Funcionarios_por_cargo' FROM Funcionarios GROUP BY cargo_id;

# QUAL O DEPARTAMENTO DE CADA FUNCIONÁRIO
SELECT f.nome AS 'Funcionario', d.nome AS 'Departamento' FROM Funcionarios f INNER JOIN Departamentos d ON f.id = d.id;

# QUAL O CARGO E NIVEL DE CADA FUNCIONÁRIO
SELECT f.nome AS 'Funcionario', c.nome AS 'Cargo', c.nivel AS 'Nivel' FROM Funcionarios f INNER JOIN Cargos c ON f.id = c.id;