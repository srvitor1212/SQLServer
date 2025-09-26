

-- Com um # Só existe durante a sessão do usuário atual;
-- Com um ## existe para todos os usuários da sessão que ela foi criada
CREATE TABLE #StoreInfoLocal 
(	EmployeeID int, 
	ManagerID int, 
	Num int
)

INSERT INTO #StoreInfoLocal (EmployeeID, ManagerID, Num) VALUES (1, 2, 3);

SELECT * FROM #StoreInfoLocal

--DROP TABLE #StoreInfoLocal