
# SQL Server

## Resumo

* SQL Linguagem padrão de bancos relacionais.

* T-SQL Extensão do SQL feita pela Microsoft.

* SQL Server Banco de dados da Microsoft que usa T-SQL como linguagem principal.

## SQL = SQL (Structured Query Language) 
É a linguagem padrão para manipulação de bancos de dados relacionais.
Com SQL você faz:

* DDL (Data Definition Language): criar tabelas, alterar colunas etc.

* DML (Data Manipulation Language): inserir, atualizar, excluir registros.

* DQL (Data Query Language): consultas (SELECT).

* DCL (Data Control Language): permissões, usuários etc.

Ou seja, é a base comum usada em praticamente todos os SGBDs relacionais (MySQL, PostgreSQL, Oracle, SQL Server, SQLite, etc.).

## T-SQL (Transact-SQL)
É a extensão da Microsoft para o SQL, usada no SQL Server (e também no Azure SQL Database).
Ele pega o SQL padrão e adiciona recursos extras, como:

* Procedures e funções definidas pelo usuário.

* Controle de fluxo (IF, WHILE, BEGIN…END).

* Variáveis locais (DECLARE, SET).

* Tratamento de erros (TRY...CATCH).

* Funções de sistema (datas, strings, matemática específicas do SQL Server).

* Triggers (gatilhos automáticos em eventos do banco).

## O SQL Server 
É o SGBD (Sistema Gerenciador de Banco de Dados Relacional) da Microsoft.
Ele entende SQL, mas na prática você usa T-SQL para explorar todas as funcionalidades avançadas que só existem nele.