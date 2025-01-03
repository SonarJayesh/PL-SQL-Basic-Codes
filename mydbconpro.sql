CREATE OR REPLACE PROCEDURE mydbpro(id IN NUMBER, name IN VARCHAR2)
IS 
BEGIN
	insert into studdetail values(id,name);
 
END mydbpro;
/