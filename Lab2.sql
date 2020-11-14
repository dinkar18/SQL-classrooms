SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE 
v_last_name VARCHAR2(15);
v_hire_date DATE;
v_salary NUMBER;
v_employee_id NUMBER := &sv_employee_id;
BEGIN
	SELECT last_name, hire_date , salary
	INTO v_last_name, v_hire_date, v_salary
	FROM Employee
	WHERE Employee_ID = v_employee_id;
	
	DBMS_OUTPUT.PUT_LINE('Employee Name '||v_last_name);
	DBMS_OUTPUT.PUT_LINE(' He is hired on '|| TO_CHAR(v_hire_date, 'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE(', having a monthly salary of '||v_salary);
EXCEPTION
	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('Employee ID '||v_employee_id||' NOT FOUND');
END;
/