

begin try

	select 1/0

end try
begin catch
	print 'N�o pode dividir por zero'
end catch