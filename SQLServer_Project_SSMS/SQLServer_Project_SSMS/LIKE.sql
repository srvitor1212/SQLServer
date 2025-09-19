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
Esse erro significa que voc� est� tentando usar CONTAINS (ou FREETEXT) 
em uma tabela que n�o possui um �ndice de Full-Text configurado.

No SQL Server, CONTAINS e FREETEXT s� funcionam se a tabela/coluna 
estiver habilitada para Full-Text Search.
*/
SELECT * FROM Person.Person p 
WHERE CONTAINS (p.LastName, 'Sim')
GO
SELECT * FROM Person.Person p 
WHERE FREETEXT (p.LastName, 'Sim')
GO
