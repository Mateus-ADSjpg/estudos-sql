-- Aula 18 - Desafio 1: Crie uma coluna com "Nome - Marca" para produtos
-- Exiba o nome do produto, a marca e a nova coluna concatenada.
SELECT
	nome,
	marca,
	CONCAT(nome, ' - ', marca) AS "Nome - Marca"
FROM produtos;

-- Aula 18 - Desafio 2: Crie o endereço completo dos clientes
-- Concatene cidade, estado e CEP em uma única coluna chamada "Endereço Completo". Ex: "São Paulo - SP, 01000-000"
SELECT 
	cidade,
	estado,
	cep,
	concat(cidade, ', ', estado, ' - ', cep) AS "Endereço Completo"
FROM clientes;

-- Aula 19 - Desafio 1: Mostrar todos os nomes de produtos em maiúsculas
-- Exiba o nome original e o nome em maiúsculas para comparação.
SELECT 
	nome AS "Nome original", 
	UPPER(nome) AS "Nome Maiúsculo"
FROM produtos;

-- Aula 19 - Desafio 2: Mostrar nomes de clientes em maiúsculas
-- Crie um relatório com os nomes de todos os clientes em caixa alta.
SELECT UPPER(nome) AS "Nome Maiúsculo" 
FROM clientes;

-- Aula 20 - Desafio 1: Mostrar todos os emails dos clientes em minúsculas
-- Ideal para criar uma lista de marketing padronizada.
SELECT
	nome,
	email AS "Email Original",
	LOWER(email) AS "Email Padronizado"
FROM clientes;

-- Aula 20 - Desafio 2: Padronizar nomes de categorias em minúsculas
-- Exiba os nomes das categorias em sua forma original e em minúsculas.
SELECT
	nome AS "Nome Original",
	LOWER(nome) AS "Nome Padronizado"
FROM categorias;

-- Aula 21 - Desafio 1: Extrair apenas o primeiro nome dos clientes
-- Dica: Use a função POSITION(' ' IN nome) para encontrar o primeiro espaço.
SELECT
	nome AS "Nome Completo",
	SUBSTRING(TRIM(nome) FROM 1 FOR POSITION(' ' IN TRIM(nome)) - 1) AS "Primeiro nome"
FROM clientes;

-- Aula 21 - Desafio 2: Extrair o DDD dos telefones dos clientes
-- Considere que os telefones podem ter formatos diferentes, como '(XX) YYYYY-ZZZZ' ou 'XX YYYYY ZZZZ'.
SELECT
	nome,
	telefone,
	SUBSTRING(telefone FROM 2 FOR 2) AS "DDD"
FROM clientes
WHERE telefone IS NOT NULL
AND telefone LIKE '(%)%';

-- Aula 22 - Desafio 1: Limpar espaços extras nos nomes de produtos
-- Suponha que alguns produtos foram cadastrados com espaços no início ou fim do nome. Mostre o nome original e o nome limpo.
SELECT 
	nome AS "Nome Original",
	TRIM(nome) AS "Nome Limpo"
FROM produtos;

-- Aula 22 - Desafio 2: Remover espaços de emails antes de comparar
-- Encontre os clientes cujo email, após a remoção dos espaços em branco
-- no início e no final do texto, comece com a letra 'c' e termine com '.com'.
SELECT
	nome,
	email AS "Email original",
	LOWER(TRIM(email)) AS "Email Limpo e Padronizado" 
FROM clientes
WHERE LOWER(TRIM(email)) LIKE 'c%'
	AND LOWER(TRIM(email)) LIKE '%.com';

-- Aula 23 - Desafio 1: Mostrar produtos cujo nome tenha mais de 20 caracteres
-- Exiba o nome do produto e o seu comprimento.
SELECT nome, LENGTH(nome) AS "Qtd de Caracteres"
FROM produtos
WHERE LENGTH(nome) > 20;

-- Aula 23 - Desafio 2: Validar CPFs que não tenham exatamente 14 caracteres (incluindo pontos e traço)
-- Liste os clientes com CPFs de tamanho inválido.
SELECT 
	nome,
	cpf,
	length(cpf) AS "Tamanho cpf"
FROM clientes 
WHERE length(cpf) <> 14
AND cpf IS NOT NULL;
