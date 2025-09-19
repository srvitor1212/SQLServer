

select
	p.FirstName, p.MiddleName, p.LastName
	, (p.LastName + ',' + p.FirstName + isnull(SUBSTRING(p.MiddleName, 1 ,1), '') ) as NomeFormatado
from Person.Person as p
