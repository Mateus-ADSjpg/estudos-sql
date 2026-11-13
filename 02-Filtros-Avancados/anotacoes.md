# Módulo 02 – Filtros Avançados

## O que aprendi
Nesse módulo aprendi a usar filtros mais completos no WHERE: NOT para negar uma condição,
IN e NOT IN para filtrar por uma lista de valores, BETWEEN e NOT BETWEEN para intervalos
de números e datas, e LIKE com os coringas % e _ para buscar padrões de texto.
Também descobri o ILIKE, que ignora maiúscula e minúscula, mas só funciona no PostgreSQL.
Em outros bancos dá para fazer o mesmo com LOWER(coluna) LIKE.

## Onde travei
Travei na parte de combinar o LIKE, tipo buscar nomes que contenham "Smart" ou "Pro".
O LIKE só aceita um padrão por vez, então precisa de dois LIKE ligados por OR.
Também travei no ORDER BY com duas colunas: coloquei ORDER BY duas vezes, mas só precisa
de uma vírgula e a próxima coluna.
O restante foi mais tranquilo de fazer.

## Erros que cometi
- Esqueci os parênteses no OR misturado com AND, e o filtro trouxe produtos errados
- Escrevi "sonny" em vez de "sony" e a marca sumiu do resultado sem dar erro
- Digitei a data final como 2025-12-21 em vez de 2025-12-31