


select sc.Name from Sales.Currency sc										-- 105 rows
union all
select scc.CardType from Sales.CreditCard scc where scc.CreditCardID <= 100 -- 100 rows

select sc.Name from Sales.Currency sc
union
select scc.CardType from Sales.CreditCard scc where scc.CreditCardID <= 100





