accept startno number prompt'Enter the Starting number'
accept endno number prompt 'Enter the Ending Number'
declare 
	i number;
	e number;
	
	begin
		i:=&startno;
		e:=&endno;
	loop
		exit when i>e; 
		dbms_output.put_line(i);
		i:=i+1;
	end loop;
end;
/
	