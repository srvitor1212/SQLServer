# Fluxo passo-a-passo

### Fluxo Sem cache

Parse > Resolve > Optimize > Compile > Execute

## Fluxo Com cache

Parse > Resolve > Optimize > Compile > Execute (Primeira execução)

Procedure Cache > Execute (Demais execuções)

---

# Oque é cada etapa?

### Parse (Análise Sintática)

- O SQL Server recebe o comando T-SQL como texto.

- Ele faz a tokenização (quebra em partes) e valida a sintaxe.

- Se houver erro de sintaxe (ex: SELEC * FRM Tabela), ele para aqui.

### Resolve (Binding / Resolução de nomes)

- O otimizador confirma se os objetos existem: tabela, colunas, funções, etc.

- Verifica permissões do usuário.

- Associa cada coluna ao tipo de dado real.

- Exemplo: LastName é nvarchar(50) na tabela Person.Person.

### Optimize (Otimização)

- O SQL Server gera diversos planos de execução possíveis (índice A, índice B, scan completo etc.).

- Calcula o custo estimado de cada plano usando estatísticas.

- Escolhe o plano com menor custo estimado.

- Aqui entra o "Query Optimizer" (um dos módulos mais complexos do SQL Server).

### Compile (Compilação do Plano)

- O plano escolhido vira um plano de execução físico, pronto para ser executado.

- Esse plano é armazenado no Procedure Cache (parte do "Plan Cache" em memória).

### Execute (Execução)

- O mecanismo de execução (Query Processor) percorre o plano.

- O Storage Engine busca os dados nas páginas do buffer pool ou no disco.

- O resultado é retornado para o cliente.