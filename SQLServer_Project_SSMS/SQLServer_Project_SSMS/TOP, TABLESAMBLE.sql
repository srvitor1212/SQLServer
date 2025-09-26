-- TOP: retorna cinco linhas da tabela Person
SELECT TOP (5) FirstName, LastName
FROM Person.Person
ORDER BY Person.FirstName

-- TOP: retorna cinco porcento da tabela Person
SELECT TOP 5 PERCENT FirstName, LastName
FROM Person.Person
ORDER BY Person.FirstName

-- TABLESAMBLE: retorna uma amostra aleatória de 5% da tabela Person
SELECT FirstName, LastName
FROM Person.Person
TABLESAMPLE (5 PERCENT)
ORDER BY Person.FirstName