

-- Trecho da tabela a ser usado como exemplo
SELECT *
FROM Production.ProductInventory
WHERE ProductID < 6
order by ProductID, Shelf

-- Exemplo 1
SELECT ProductID, Shelf, SUM(Quantity) AS QtySum
FROM Production.ProductInventory
WHERE ProductID < 6
GROUP BY ROLLUP (ProductID, Shelf)

-- Exemplo 2
SELECT ProductID, Shelf, LocationID, SUM(Quantity) AS QtySum
FROM Production.ProductInventory
WHERE ProductID < 6
GROUP BY ROLLUP (ProductID, Shelf, LocationID)

-- Exemplo 3
SELECT 
	case when grouping(ProductID)	= 1 then 'TOTAL GERAL' else cast(ProductID as varchar) end as ProductID
	, case when grouping(Shelf)		= 1 then 'Shelf SUB GERAL' else cast(Shelf as varchar) end as Shelf
	, case when grouping(LocationID)= 1 then 'Location SUB GERAL' else cast(LocationID as varchar) end as LocationID
	, SUM(Quantity) AS QtySum
FROM Production.ProductInventory
WHERE ProductID < 6
GROUP BY ROLLUP (ProductID, Shelf, LocationID)

/*
grouping serve para indicar se uma coluna foi “agregada” pelo ROLLUP, CUBE ou GROUPING SETS.
Retorna:
0 ? quando a coluna participa normalmente do agrupamento (ou seja, não foi "reduzida").
1 ? quando a coluna foi reduzida a NULL porque o SQL Server está calculando um subtotal ou total.
*/
