# Estudos de SQL

Aqui ficam as minhas resoluções e anotações enquanto estudo SQL do básico ao avançado,
seguindo a [Trilha SQL do Carlos Oliveira](https://github.com/ckoliveiraa/TrilhaSQL).

Cada pasta é um módulo, com os exemplos que pratiquei, os desafios que resolvi
e as anotações do que aprendi e onde travei.

## Ambiente

- Banco: PostgreSQL hospedado no Render
- Ferramenta: DBeaver
- Tabelas: categorias, produtos, clientes, pedidos, itens_pedido, pagamentos e avaliacoes
- Dados: e-commerce fictício, gerado com apoio de IA seguindo o modelo de tabelas da trilha

## Como recriar o banco

1. Crie um banco PostgreSQL (local ou no Render)
2. Abra o arquivo [banco/dados_ecommerce.sql](banco/dados_ecommerce.sql) no DBeaver
3. Execute o script inteiro (Alt+X). Ele apaga e recria todas as tabelas com os dados

## Estrutura de cada módulo

- `exemplos.sql`: exercícios das aulas
- `desafios.sql`: desafios finais do módulo
- `anotacoes.md`: o que aprendi, onde travei e os erros que cometi

## Progresso

A numeração começa no 01 porque o módulo de introdução da trilha é só a configuração do ambiente.

| Módulo | Tema | O que pratico | Status |
|---|---|---|---|
| 01 | [Fundamentos](01-Fundamentos-SELECT) | SELECT, AS, DISTINCT, LIMIT, ORDER BY, WHERE, AND, OR, IS NULL | ✅ |
| 02 | [Filtros avançados](02-Filtros-Avancados) | NOT, IN, NOT IN, BETWEEN, LIKE, ILIKE | ✅ |
| 03 | [Funções de string](03-Funcoes-de-String) | CONCAT, UPPER, LOWER, SUBSTRING, TRIM, LENGTH | 🔄 |
| 04 | [Funções de data](04-Funcoes-de-Data) | CURRENT_DATE, EXTRACT, DATE_PART, INTERVAL, TO_CHAR | ⬜ |
| 05 | [Conversão de dados](05-Conversao-de-Dados) | CAST, ::, COALESCE, NULLIF | ⬜ |
| 06 | [Condicionais](06-Condicionais) | CASE WHEN | ⬜ |
| 07 | [Funções de agregação](07-Funcoes-de-Agregacao) | COUNT, COUNT DISTINCT, SUM, AVG, MIN, MAX | ⬜ |
| 08 | [Agrupamento](08-Agrupamento) | GROUP BY, HAVING | ⬜ |
| 09 | [JOINs](09-JOINs) | INNER, LEFT, RIGHT e FULL OUTER JOIN | ⬜ |
| 10 | [Combinando resultados](10-Combinando-Resultados) | UNION, UNION ALL | ⬜ |
| 11 | [Subconsultas](11-Subconsultas) | Subqueries, IN, EXISTS | ⬜ |
| 12 | [Window functions](12-Window-Functions) | ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, LAG, LEAD | ⬜ |
| 13 | [CTEs](13-CTEs) | WITH, CTE recursiva | ⬜ |
| 14 | [Manipulação de dados](14-Manipulacao-de-Dados) | CREATE TABLE, CREATE VIEW, INSERT, UPDATE, DELETE, DROP | ⬜ |