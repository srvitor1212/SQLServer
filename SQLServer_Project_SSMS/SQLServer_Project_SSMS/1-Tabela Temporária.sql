

-- Com um # S� existe durante a sess�o do usu�rio atual;
-- Com um ## existe para todos os usu�rios da sess�o que ela foi criada
CREATE TABLE #StoreInfoLocal 
(	EmployeeID int, 
	ManagerID int, 
	Num int
)

INSERT INTO #StoreInfoLocal (EmployeeID, ManagerID, Num) VALUES (1, 2, 3);

SELECT * FROM #StoreInfoLocal

--DROP TABLE #StoreInfoLocal