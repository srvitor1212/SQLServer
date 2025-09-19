

begin try

	select 1/0

end try
begin catch
	print 'Não pode dividir por zero'
end catch