

-- Trecho da tabela a ser usado como exemplo
SELECT *
FROM Production.ProductInventory
WHERE ProductID < 6
order by ProductID, Shelf

-- Exemplo cube
SELECT ProductID, Shelf, SUM(Quantity) AS QtySum
FROM Production.ProductInventory
WHERE ProductID < 6
GROUP BY CUBE (ProductID, Shelf)

