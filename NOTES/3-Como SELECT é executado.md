# Fluxo passo-a-passo

### Fluxo Sem cache

Parse > Resolve > Optimize > Compile > Execute

## Fluxo Com cache

Parse > Resolve > Optimize > Compile > Execute (Primeira execu��o)

Procedure Cache > Execute (Demais execu��es)

---

# Oque � cada etapa?

### Parse (An�lise Sint�tica)

- O SQL Server recebe o comando T-SQL como texto.

- Ele faz a tokeniza��o (quebra em partes) e valida a sintaxe.

- Se houver erro de sintaxe (ex: SELEC * FRM Tabela), ele para aqui.

### Resolve (Binding / Resolu��o de nomes)

- O otimizador confirma se os objetos existem: tabela, colunas, fun��es, etc.

- Verifica permiss�es do usu�rio.

- Associa cada coluna ao tipo de dado real.

- Exemplo: LastName � nvarchar(50) na tabela Person.Person.

### Optimize (Otimiza��o)

- O SQL Server gera diversos planos de execu��o poss�veis (�ndice A, �ndice B, scan completo etc.).

- Calcula o custo estimado de cada plano usando estat�sticas.

- Escolhe o plano com menor custo estimado.

- Aqui entra o "Query Optimizer" (um dos m�dulos mais complexos do SQL Server).

### Compile (Compila��o do Plano)

- O plano escolhido vira um plano de execu��o f�sico, pronto para ser executado.

- Esse plano � armazenado no Procedure Cache (parte do "Plan Cache" em mem�ria).

### Execute (Execu��o)

- O mecanismo de execu��o (Query Processor) percorre o plano.

- O Storage Engine busca os dados nas p�ginas do buffer pool ou no disco.

- O resultado � retornado para o cliente.