# Módulo 03 – Funções de String

## O que aprendi
Nesse módulo aprendi a tratar e transformar textos: CONCAT para juntar colunas,
UPPER e LOWER para padronizar maiúsculas e minúsculas, TRIM para tirar espaços
do início e do fim, LENGTH para contar caracteres e SUBSTRING para extrair
uma parte do texto. Também usei o POSITION para achar onde está um caractere,
como o primeiro espaço do nome.

## Onde travei
Esse foi o módulo mais complexo até agora para entender algumas lógicas.
Travei bastante no LENGTH e no SUBSTRING, principalmente quando precisava
combinar os dois com o POSITION.
Consegui pegar a lógica olhando a resposta, comparando com o que eu tinha
escrito e depois reescrevendo da maneira certa.

## Erros que cometi
- Escrevi LENGHT em vez de LENGTH e a consulta deu erro
- Limpei o email com TRIM e LOWER só na coluna exibida, mas o filtro precisava usar o email limpo também
- Nomes com espaço no início fizeram o primeiro nome sair vazio; resolvi aplicando TRIM antes do SUBSTRING
- CONCAT ignora NULL, mas o || transforma o resultado inteiro em NULL