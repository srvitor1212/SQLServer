

select ISNULL(pa.AddressLine2, 'n/a') as Address2
from Person.Address pa;


select 
	NULLIF(pd.Revision, pd.ChangeNumber) as ComparaColunas
	, *
from Production.Document pd;


select
	sso.MaxQty, sso.MinQty
	, coalesce(MaxQty, MinQty, 999) as qty
from Sales.SpecialOffer sso