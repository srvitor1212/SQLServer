USE AdventureWorks2022
GO

SELECT * FROM Person.Person p 
WHERE p.LastName = 'Simpson'
GO

SELECT * FROM Person.Person p 
WHERE p.LastName LIKE 'Sim%%%n'
GO

SELECT * FROM Person.Person p 
WHERE p.LastName LIKE '%Sim%'
GO


/*
Esse erro significa que você está tentando usar CONTAINS (ou FREETEXT) 
em uma tabela que não possui um índice de Full-Text configurado.

No SQL Server, CONTAINS e FREETEXT só funcionam se a tabela/coluna 
estiver habilitada para Full-Text Search.
*/
SELECT * FROM Person.Person p 
WHERE CONTAINS (p.LastName, 'Sim')
GO
SELECT * FROM Person.Person p 
WHERE FREETEXT (p.LastName, 'Sim')
GO
