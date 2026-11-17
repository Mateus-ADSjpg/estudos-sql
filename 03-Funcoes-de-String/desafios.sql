-- Desafio Final 1: Relatório de Contato Padronizado
-- Crie um relatório para a equipe de marketing que contenha:
-- - O nome completo do cliente em maiúsculas.
-- - O email do cliente em minúsculas.
-- - Uma coluna "Localização" formatada como "Cidade (UF)". Ex: "São Paulo (SP)".
SELECT
	UPPER(nome) AS "Nome cliente",
	LOWER(email) AS "Email",
	concat(cidade, ' (', estado, ')') AS "Localização"
FROM clientes;

-- Desafio Final 2: Análise de Marcas
-- Encontre todas as marcas únicas de produtos.
-- Exiba o nome da marca em maiúsculas e o número de caracteres do nome da marca.
-- Ordene pelo nome da marca.
SELECT 
	UPPER(marca) AS "Nome maiúscula",
	length(marca) AS "Número de Caracteres"
FROM produtos
WHERE marca IS NOT NULL
GROUP BY marca
ORDER BY "marca";

-- Desafio Final 3: Nomes Curtos de Produtos
-- Liste todos os produtos cujos nomes (sem espaços no início ou fim) tenham 10 caracteres ou menos.
-- Exiba o nome e o comprimento do nome.
SELECT 
	nome,
	length(TRIM(nome)) AS "Cumprimento do nome"
FROM produtos
WHERE length(trim(nome)) <= 10;

-- Desafio Final 4: (Avançado) Gerador de Nome de Usuário
-- Crie uma sugestão de nome de usuário para cada cliente.
-- O nome de usuário deve ser:
-- - As 3 primeiras letras do primeiro nome (em minúsculas).
-- - Concatenado com o comprimento total do nome completo.
-- - Exemplo: Para "Ana Clara", o resultado seria "ana8".
-- Dica: Você precisará combinar SUBSTRING, LOWER, LENGTH e CONCAT.
SELECT 
	nome,
	LOWER(substring(nome FROM 1 FOR 3)) || length(nome) AS "Sugestão de Usuário"
FROM clientes;
