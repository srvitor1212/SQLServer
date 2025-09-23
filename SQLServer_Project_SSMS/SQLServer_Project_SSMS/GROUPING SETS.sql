

-- Grouping Sets
SELECT 
    YEAR(h.OrderDate) AS Ano,
    p.Name AS Produto,
    SUM(d.LineTotal) AS Total,
    GROUPING(YEAR(h.OrderDate)) AS G_Ano,
    GROUPING(p.Name) AS G_Produto
FROM Sales.SalesOrderHeader h
INNER JOIN Sales.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
INNER JOIN Production.Product p ON d.ProductID = p.ProductID
GROUP BY GROUPING SETS
(
    (YEAR(h.OrderDate), p.Name), -- Ano + Produto
    (YEAR(h.OrderDate)),         -- Apenas Ano
    (p.Name),                    -- Apenas Produto
    ()                           -- Total geral
)
ORDER BY Ano, Produto;
