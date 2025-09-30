

begin tran t1;

drop table Sales.CountryRegionCurrency;

select * from Sales.CountryRegionCurrency

commit;
rollback;