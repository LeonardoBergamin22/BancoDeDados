/*Exercícios SELECT I*/
/*Ex 01 - Selecione o nome e siglas da tabela departamento;*/
SELECT nome_depto, sigla_depto FROM departamento; 

/*Ex 02 - Selecione sigla e nome dos departamentos de forma não repetida;*/
SELECT DISTINCT nome_depto, sigla_depto FROM departamento;

/*Ex 03 - Selecione os nomes dos funcionarios.*/
SELECT nome_funcionario FROM funcionario;

/*Ex 04 - Selecione todos os nomes diferentes dos funcionarios.*/
SELECT DISTINCT nome_funcionario FROM funcionario;

/*Ex 05 - Selecione todos os projetos diferentes e seus nomes.*/
SELECT DISTINCT nome_projeto FROM projeto;

/*Ex 06 - Selecione todos os departamentos com um número menor do que 11 funcionários.*/
SELECT * FROM departamento WHERE qtd_funcionarios_depto<11;

/*Ex 07 - Selecione todos os departamentos com um número maior ou igual a 15 funcionários.*/
SELECT * FROM departamento WHERE qtd_funcionarios_depto>=15;

/*Ex 08 - Selecione todos os funcionários de um departamento específico (no nosso caso será TI).*/
SELECT * FROM funcionario WHERE sigla_depto = 'TI';

/*Ex 09 - Selecione todos os funcionários com seus respectivos cargos em ordem alfabética descendente.*/
 SELECT nome_funcionario, cargo FROM funcionario ORDER BY cargo DESC;
 
 /*Ex 10 - Selecione todos os nomes dos departamentos com suas respectivos siglas em ordem alfabética ascendente*/
SELECT nome_depto, sigla_depto FROM departamento ORDER BY sigla_depto ASC;

 /*Ex 11 - Selecione todos os projetos em ordem alfabética descendente com base em seus nomes.*/
SELECT nome_projeto FROM projeto ORDER BY nome_projeto DESC;

 /*Ex 12 - Considere que a tabela funcionário precisa ser alterada, será necessário adicionar a coluna data_admissao (tipo date), salario (tipo decimal com até duas casas de precisão) */
ALTER TABLE funcionario ADD COLUMN data_admissao DATETIME DEFAULT current_timestamp; 
ALTER TABLE funcionario ADD COLUMN salario DECIMAL(10,2) NOT NULL;

 /*Ex 13 - Considere que a tabela projeto também precisa ser alterada, será necessário adicionar a coluna duração (tipo numérico) deve representar em meses a duração de um projeto.*/
 ALTER TABLE projeto ADD COLUMN duracao INT NOT NULL;
 
 /*Ex 14 - a) Para garantir a consistência dos dados você deve fazer os inserts (de data de admissão e salário) nas duplas já existentes.*/
 UPDATE funcionario SET data_admissao = '2015-09-28', salario = 9329.00 WHERE codigo_funcionario = 100;
 UPDATE funcionario SET data_admissao = '2014-12-03', salario = 8321.00 WHERE codigo_funcionario = 101;
 UPDATE funcionario SET data_admissao = '2017-02-24', salario = 8523.00 WHERE codigo_funcionario = 102;
 UPDATE funcionario SET data_admissao = '2019-03-15', salario = 5234.00 WHERE codigo_funcionario = 103;
 UPDATE funcionario SET data_admissao = '2020-01-12', salario = 4801.00 WHERE codigo_funcionario = 104;
 UPDATE funcionario SET data_admissao = '2019-04-09', salario = 6521.00 WHERE codigo_funcionario = 105;
 UPDATE funcionario SET data_admissao = '2021-08-07', salario = 3291.00 WHERE codigo_funcionario = 106;
 UPDATE funcionario SET data_admissao = '2022-05-30', salario = 5421.00 WHERE codigo_funcionario = 107;
 UPDATE funcionario SET data_admissao = '2023-06-19', salario = 2850.00 WHERE codigo_funcionario = 108;
 UPDATE funcionario SET data_admissao = '2022-11-21', salario = 4289.00 WHERE codigo_funcionario = 109;
 UPDATE funcionario SET data_admissao = '2023-09-02', salario = 8241.00 WHERE codigo_funcionario = 110;
 UPDATE funcionario SET data_admissao = '2023-09-21', salario = 3248.00 WHERE codigo_funcionario = 111;
 UPDATE funcionario SET data_admissao = '2020-09-21', salario = 5895.00 WHERE codigo_funcionario = 112;
 
 /*Ex 14 - b) Agora faça as alterações necessárias para deixar os campos data_admissao e salario como itens obrigatórios para futuros inserts.*/
 ALTER TABLE funcionario MODIFY COLUMN data_admissao DATE NOT NULL, MODIFY COLUMN salario DECIMAL(10,2) NOT NULL;