# Módulo 04 – Funções de Data

## O que aprendi
Nesse módulo aprendi a trabalhar com datas: CURRENT_DATE para pegar a data de hoje,
EXTRACT para tirar partes da data (ano, mês, dia e dia da semana), AGE para calcular
a diferença entre duas datas, INTERVAL para somar e subtrair tempo e TO_CHAR para
formatar a data do jeito que eu quiser.
Também aprendi que subtrair uma data de outra já devolve o número de dias.

## Onde travei
Travei no desafio dos pedidos recentes, na hora de montar a data por extenso
("Dia da semana, DD de Mês"). Não sabia como colocar o texto fixo "de" no meio
do formato. Precisa ficar entre aspas duplas dentro do TO_CHAR.
Também estranhei a consulta voltar vazia, mas era porque os dados do banco vão só
até setembro de 2026, então não tinha pedido nos últimos 30 dias.

## Erros que cometi
- Usei TO_CHAR quando o desafio pedia número; para número é o EXTRACT (DOW para dia da semana)
- AGE devolve um intervalo ("35 years 2 mons"), para ter só a idade precisa do EXTRACT(YEAR FROM AGE(...))
- 'Day' e 'Month' no TO_CHAR deixam espaços sobrando; com TMDay e TMMonth eles somem
- Esqueci a vírgula entre as colunas no SELECT
- Tirei o WHERE do desafio 3 porque voltava vazio, mas o filtro tinha que ficar