CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id IN NUMBER) 
RETURN VARCHAR2 IS
    v_salary employees.salary%TYPE;
    v_hire_date employees.hire_date%TYPE;
BEGIN
    SELECT salary, hire_date INTO v_salary, v_hire_date 
    FROM employees WHERE employee_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Invalid Salary';
    ELSIF v_hire_date > SYSDATE THEN
        RETURN 'INVALID: Future Hire Date';
    ELSE
        RETURN 'VALID: Your Payroll Ready';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee Not Found';
END;
/