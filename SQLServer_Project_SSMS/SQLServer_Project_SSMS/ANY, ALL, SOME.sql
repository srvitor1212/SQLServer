

-- ANY: retorna nome de produtos cujo pre�o de lista seja maior ou igual a ALGUM dos pre�os listados pela subconsulta
-- SOME: mesma coisa que o ANY, s� que an� � exclusivo do t-sql
SELECT Name, ListPrice
FROM Production.Product 
WHERE ListPrice >= SOME (SELECT MAX(ListPrice) FROM Production.Product GROUP BY ProductSubcategoryID)
ORDER BY ListPrice


-- ALL: retorna nome de produtos cujo pre�o de lista seja maior ou igual a TODOS os pre�os listados pela subconsulta
SELECT Name, ListPrice
FROM Production.Product 
WHERE ListPrice >= ALL (SELECT MAX(ListPrice) FROM Production.Product GROUP BY ProductSubcategoryID)