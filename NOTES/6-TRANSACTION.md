# TRANSACTION (TRAN)

No SQL Server, quando falamos de transactions (transações), estamos tratando de unidades lógicas de trabalho que garantem as propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade).

## Transações Implícitas (Implicit Transactions)

O SQL Server inicia automaticamente uma transação quando você executa certos comandos (como INSERT, UPDATE, DELETE, ALTER TABLE, etc.). 

Porém é o padrão do SQL Server que cada comando DML (INSERT, UPDATE, DELETE) seja tratado como uma transação isolada, ou seja, commit é automático.

Ativar: `SET IMPLICIT_TRANSACTIONS ON;`

Ver se está ativo: `DBCC USEROPTIONS;` quando SET é true.

ou

`SELECT CASE WHEN (@@OPTIONS & 2) = 2 THEN 'ON'ELSE 'OFF' END AS IMPLICIT_TRANSACTIONS;`

## Transações Explícitas (Explicit Transactions)

Você controla manualmente o início (BEGIN TRANSACTION ou TRAN), a confirmação (COMMIT) e o cancelamento (ROLLBACK).

### Níveis de isolamento

No SQL Server, o nível de isolamento de uma transação define como os dados lidos podem ser afetados por outras transações concorrentes.

Ativar: `SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;`

### READ UNCOMMITTED

- Mais baixo nível de isolamento.

- Permite ler dados que ainda não foram confirmados por outra transação (dirty reads).

> Problemas que podem ocorrer:

- Dirty Read: ler dados que depois são desfeitos com ROLLBACK.

- Non-Repeatable Read: um mesmo SELECT pode retornar valores diferentes se outra transação atualizar no meio.

- Phantom Read: linhas podem “aparecer” ou “sumir” entre execuções do mesmo SELECT.

