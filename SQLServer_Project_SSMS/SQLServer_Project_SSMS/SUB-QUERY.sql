

-- Seleciona producos cuja cor n�o � igual a cor do produto 317, que � Black
SELECT ProductID, Name, Color FROM Production.Product
WHERE Color NOT IN (SELECT Color FROM Production.Product WHERE ProductID = 317)

select * from Production.ProductCostHistory ppch
where ppch.ProductID in 
	(select distinct pp.ProductID from Production.Product pp where pp.DaysToManufacture > 2)

-- Subconsultas como express�es
SELECT 
	Name, ListPrice, 
	(SELECT AVG(ListPrice) FROM Production.Product) AS Average, 
	ListPrice - (SELECT AVG(ListPrice) FROM Production.Product) AS Difference
FROM Production.Product
WHERE ProductSubcategoryID = 1