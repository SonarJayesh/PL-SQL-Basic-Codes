accept id employee.eid%TYPE prompt 'Enter the Employee ID='
declare
	salary employee.esalary%TYPE;
	bonus number(6,2);
	ha number(6,2);
	id2 employee.eid%TYPE;
	
begin
	id2:=&id;	

	select esalary into salary from employee where eid=id2;
	dbms_output.put_line('Employee salary='||salary);

	bonus:=salary*0.15;
	dbms_output.put_line('Bonus='||bonus);

	ha:=salary*0.10;
	dbms_output.put_line('HA='||ha);

	salary:=salary+bonus+ha;
	update employee set esalary=salary where eid=id2;
	dbms_output.put_line('Employee bonus and Ha Added');

commit;
	
end;
/