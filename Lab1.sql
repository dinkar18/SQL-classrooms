SET SERVEROUTPUT ON
DECLARE 
v_last_name VARCHAR2(15);
v_hire_date DATE;
v_salary NUMBER;

BEGIN
	SELECT last_name, hire_date , salary
	INTO v_last_name, v_hire_date, v_salary
	FROM Employee
	WHERE Employee_ID = 7950;
	
	DBMS_OUTPUT.PUT_LINE('Employee Name '||v_last_name);
	DBMS_OUTPUT.PUT_LINE(' He is hired on '|| TO_CHAR(v_hire_date, 'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE(', having a monthly salary of '||v_salary);
END;
/