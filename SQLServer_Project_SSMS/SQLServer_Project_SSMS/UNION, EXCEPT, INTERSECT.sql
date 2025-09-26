-- UNION: unifica as linhas distintas das duas tabelas
SELECT ProductID FROM Production.Product
UNION
SELECT ProductID FROM Production.WorkOrder

-- UNION ALL: unifica todo o resultado das duas tabelas (independentemente se a linha é repetida ou não)
SELECT ProductID FROM Production.Product
UNION ALL
SELECT ProductID FROM Production.WorkOrder

-- Except: retorna as linhas da esquerda que não existem na direita
SELECT ProductID FROM Production.Product
EXCEPT
SELECT ProductID FROM Production.WorkOrder

-- Intersect: retorna apenas as linhas comuns em ambas as tabelas)
SELECT ProductID FROM Production.Product
INTERSECT
SELECT ProductID FROM Production.WorkOrder

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