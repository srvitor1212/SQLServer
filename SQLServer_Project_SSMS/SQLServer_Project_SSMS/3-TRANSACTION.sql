

-- Depois de rodar o comando no commit � feito a confirma��o.
SET IMPLICIT_TRANSACTIONS ON	-- ON / OFF
select * from Sales.CreditCard;
update Sales.CreditCard set CardType='SuperiorCard teste' where CreditCardID = 1;
commit;
rollback;


-- 
DBCC USEROPTIONS;
SET TRANSACTION ISOLATION LEVEL 
	READ UNCOMMITTED;

BEGIN TRAN testeIsolationLevel
commit testeIsolationLevel;
rollback testeIsolationLevel;