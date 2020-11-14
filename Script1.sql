SET SERVEROUTPUT ON
SET VERIFY ON
DECLARE 
v_first_name VARCHAR2(35);
v_last_name VARCHAR2(35);
v_hire_date DATE;
BEGIN
	SELECT first_name, last_name, hire_date
	INTO  v_first_name, v_last_name, v_hire_date
	FROM  Employee
	WHERE Employee_ID = &sv_Employee_ID;
	
	DBMS_OUTPUT.PUT_LINE(' Valeur : '||&sv_Employee_ID);
	DBMS_OUTPUT.PUT_LINE(' Employee Name: '|| 
	                     v_first_name ||' '||
						 v_last_name);
						 
	DBMS_OUTPUT.PUT_LINE(' Employee Hire Date: '|| 
	                     TO_CHAR(v_hire_date , 'DD-MM-YYYY'));	

EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE(' Employee ID not found ');	
END;
.
/