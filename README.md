# Estudos de SQL

Aqui ficam as minhas resoluções e anotações enquanto estudo SQL do básico ao avançado,
seguindo a [Trilha SQL do Carlos Oliveira](https://github.com/ckoliveiraa/TrilhaSQL).

Cada pasta é um módulo, com os exemplos que pratiquei, os desafios que resolvi
e as anotações do que aprendi ou onde travei.

## Ambiente

- Banco: PostgreSQL hospedado no Render
- Ferramenta: DBeaver
- Tabelas: categorias, produtos, clientes, pedidos, itens_pedido, pagamentos e avaliacoes
- Dados: e-commerce fictício, gerado com apoio de IA seguindo o modelo de tabelas da trilha

## Como recriar o banco

1. Crie um banco PostgreSQL (local ou no Render)
2. Abra o arquivo [banco/dados_ecommerce.sql](banco/dados_ecommerce.sql) no DBeaver
3. Execute o script inteiro (Alt+X). Ele apaga e recria todas as tabelas com os dados

## Progresso

| Módulo | Tema | O que pratico | Status |
|---|---|---|---|
| 01 | Fundamentos | SELECT, AS, DISTINCT, LIMIT, ORDER BY, WHERE, AND, OR, IS NULL | ✅ |
| 02 | Filtros avançados | LIKE, IN, BETWEEN, NOT | 🔄 |
| 03 | Funções de texto | CONCAT, UPPER, LOWER, TRIM, SUBSTRING | ⬜ |
| 04 | Funções de data | Extrair partes de datas, somar e calcular diferenças | ⬜ |
| 05 | Conversão de dados | CAST, COALESCE | ⬜ |
| 06 | Condicionais | CASE WHEN | ⬜ |
| 07 | Agregações | COUNT, SUM, AVG, MIN, MAX | ⬜ |
| 08 | Agrupamento | GROUP BY, HAVING | ⬜ |
| 09 | JOINs | INNER, LEFT, RIGHT e FULL JOIN | ⬜ |
| 10 | Combinando resultados | UNION, INTERSECT, EXCEPT | ⬜ |
| 11 | Subconsultas | Subqueries, EXISTS, IN | ⬜ |
| 12 | Window functions | ROW_NUMBER, RANK, LAG, LEAD | ⬜ |
| 13 | CTEs | WITH | ⬜ |
| 14 | Manipulação de dados | CREATE, INSERT, UPDATE, DELETE, DROP | ⬜ |