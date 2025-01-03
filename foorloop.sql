accept startno number prompt 'Enter the Starting no'
accept endno number prompt 'Enter the Ending no'
declare 

	i number:=1;	
	s number;
	e number;
begin
	startno:=&s;
	endno:=&e;

	for i in startno..endno loop
	dbms_output.put_line(i);

	end loop;
end;
/