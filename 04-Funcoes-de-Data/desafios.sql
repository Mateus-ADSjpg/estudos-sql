-- Desafio Final 1: Relatório de Pedidos com Datas Formatadas
-- Crie um relatório que mostre:
-- - pedido_id
-- - data_pedido formatada como "DD/MM/YYYY"
-- - dia da semana do pedido (número: 0=Dom, 6=Sáb)
-- - mês do pedido (número)
SELECT
	pedido_id,
	to_char(data_pedido, 'DD/MM/YYYY') AS "Data",
	EXTRACT(DOW FROM data_pedido) AS "Dia da Semana",
	EXTRACT(MONTH FROM data_pedido) AS "Mês do pedido"
FROM pedidos;

-- Desafio Final 2: Análise de Tempo de Entrega
-- Para pedidos com data_entrega preenchida, mostre:
-- - pedido_id
-- - data_pedido
-- - data_entrega
-- - dias para entrega (data_entrega - data_pedido)
-- Dica: Use WHERE data_entrega IS NOT NULL
SELECT 
	pedido_id,
	data_pedido,
	data_entrega_realizada,
	data_entrega_realizada - data_pedido AS "Dias para Entrega"
FROM pedidos
WHERE data_entrega_realizada IS NOT NULL;

-- Desafio Final 3: Pedidos Recentes
-- Mostre os pedidos dos últimos 30 dias:
-- - pedido_id
-- - data_pedido formatada como "DD/MM/YYYY"
-- - data_pedido formatada como "Dia da semana, DD de Mês"
-- Dica: Use WHERE data_pedido >= CURRENT_DATE - INTERVAL '30 days'
SELECT
	pedido_id,
	to_char(data_pedido, 'DD/MM/YYYY') AS "Data Formatada",
	to_char(data_pedido, 'TMDay, DD "de" TMMonth') AS "Data por extensão"
FROM pedidos
WHERE data_pedido >= CURRENT_DATE - INTERVAL '30 days';
-- Volta vazio porque os dados do banco vão só até set/2026


-- Desafio Final 4: Clientes e Idades
-- Crie um relatório de clientes com:
-- - nome
-- - data_nascimento formatada como "DD/MM/YYYY"
-- - idade em anos (use EXTRACT com AGE)
-- Ordene pelos mais velhos primeiro
SELECT
	nome,
	to_char(data_nascimento, 'DD/MM/YYYY') AS "Data Nascimento Formatada",
	EXTRACT(YEAR FROM age(current_date, data_nascimento)) AS idade
FROM clientes
WHERE data_nascimento IS NOT NULL
ORDER BY data_nascimento ASC;
-- Exiba o nome do cliente, a data de nascimento, o mês atual e o mês de aniversário.
-- Em seguida, calcule a diferença em meses entre o mês atual e o mês de nascimento do cliente.
SELECT
	nome,
	data_nascimento,
	EXTRACT(MONTH FROM data_nascimento) AS mes_niver,
	EXTRACT(MONTH FROM current_date) AS mes_atual,
	EXTRACT( MONTH FROM data_nascimento) - EXTRACT(MONTH FROM current_date) AS diferenca_mes
FROM clientes
WHERE data_nascimento IS NOT NULL;


-- Desafio Final 5 (Boss Final!): Relatório Completo de Pedidos
-- Crie um relatório detalhado que mostre:
-- - pedido_id
-- - data_pedido formatada como "Dia da semana, DD de Mês de YYYY"
-- - há quantos dias o pedido foi realizado
-- - data_entrega formatada (se existir)
SELECT
	pedido_id,
	to_char(data_pedido, 'Day, DD "de" Month "de" YYYY') AS "Data Completa",
	CURRENT_DATE - data_pedido AS "Dias desde o pedido",
	to_char(data_entrega_realizada, 'DD/MM/YYYY') AS "Data Entrega Formatada"
FROM pedidos;