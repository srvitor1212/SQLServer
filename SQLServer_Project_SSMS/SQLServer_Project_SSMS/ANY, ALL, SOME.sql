

-- ANY: retorna nome de produtos cujo preço de lista seja maior ou igual a ALGUM dos preços listados pela subconsulta
-- SOME: mesma coisa que o ANY, só que aný é exclusivo do t-sql
SELECT Name, ListPrice
FROM Production.Product 
WHERE ListPrice >= SOME (SELECT MAX(ListPrice) FROM Production.Product GROUP BY ProductSubcategoryID)
ORDER BY ListPrice


-- ALL: retorna nome de produtos cujo preço de lista seja maior ou igual a TODOS os preços listados pela subconsulta
SELECT Name, ListPrice
FROM Production.Product 
WHERE ListPrice >= ALL (SELECT MAX(ListPrice) FROM Production.Product GROUP BY ProductSubcategoryID)