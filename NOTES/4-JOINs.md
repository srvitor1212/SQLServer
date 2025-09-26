# Resumo

- INNER JOIN: só correspondências.

- LEFT JOIN: todos da esquerda + correspondências.

- RIGHT JOIN: todos da direita + correspondências.

- FULL JOIN: todos de ambos os lados.

- CROSS JOIN: todas as combinações.

- SELF JOIN: join da tabela com ela mesma.


## JOIN (ou INNER JOIN)

- Retorna apenas as linhas que têm correspondência em ambas as tabelas.

- Se não existir correspondência, a linha é descartada.

## LEFT JOIN (ou LEFT OUTER JOIN)

- Retorna todas as linhas da tabela da esquerda, e os dados da tabela da direita só se houver correspondência.

- Quando não encontra, os campos da direita ficam NULL.

## RIGHT JOIN (ou RIGHT OUTER JOIN)

- É o oposto do LEFT JOIN.

- Retorna todas as linhas da tabela da direita, mesmo sem correspondência na esquerda e quando não encontra, os campos da esquerda ficam NULL.

## FULL JOIN (ou FULL OUTER JOIN)

- Junta o resultado de LEFT JOIN e RIGHT JOIN.

- Retorna todas as linhas de ambas as tabelas, mesmo que não haja correspondência.

- Onde não existe relação, os campos ficam NULL.

## CROSS JOIN

- Faz o produto cartesiano: combina todas as linhas de uma tabela com todas da outra.

- Normalmente usado em cenários específicos (como gerar combinações).

- Se houver 10 clientes e 5 produtos, o resultado terá 50 linhas.

## SELF JOIN

- Não é um tipo diferente, mas o uso de JOIN em uma tabela com ela mesma.

- Útil para hierarquias (ex: funcionário x gerente).