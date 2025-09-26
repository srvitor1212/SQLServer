# Resumo

- INNER JOIN: s� correspond�ncias.

- LEFT JOIN: todos da esquerda + correspond�ncias.

- RIGHT JOIN: todos da direita + correspond�ncias.

- FULL JOIN: todos de ambos os lados.

- CROSS JOIN: todas as combina��es.

- SELF JOIN: join da tabela com ela mesma.


## JOIN (ou INNER JOIN)

- Retorna apenas as linhas que t�m correspond�ncia em ambas as tabelas.

- Se n�o existir correspond�ncia, a linha � descartada.

## LEFT JOIN (ou LEFT OUTER JOIN)

- Retorna todas as linhas da tabela da esquerda, e os dados da tabela da direita s� se houver correspond�ncia.

- Quando n�o encontra, os campos da direita ficam NULL.

## RIGHT JOIN (ou RIGHT OUTER JOIN)

- � o oposto do LEFT JOIN.

- Retorna todas as linhas da tabela da direita, mesmo sem correspond�ncia na esquerda e quando n�o encontra, os campos da esquerda ficam NULL.

## FULL JOIN (ou FULL OUTER JOIN)

- Junta o resultado de LEFT JOIN e RIGHT JOIN.

- Retorna todas as linhas de ambas as tabelas, mesmo que n�o haja correspond�ncia.

- Onde n�o existe rela��o, os campos ficam NULL.

## CROSS JOIN

- Faz o produto cartesiano: combina todas as linhas de uma tabela com todas da outra.

- Normalmente usado em cen�rios espec�ficos (como gerar combina��es).

- Se houver 10 clientes e 5 produtos, o resultado ter� 50 linhas.

## SELF JOIN

- N�o � um tipo diferente, mas o uso de JOIN em uma tabela com ela mesma.

- �til para hierarquias (ex: funcion�rio x gerente).