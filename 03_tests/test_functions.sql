SET SERVEROUTPUT ON;

PROMPT TESTING PL/SQL FUNCTIONS 
PROMPT __________________________________________________;

DECLARE
    v_annual_sal NUMBER;
    v_years      NUMBER;
    v_tax        NUMBER;
    v_dept       VARCHAR2(50);
BEGIN
    -- 1. Test fn_annual_salary
    v_annual_sal := fn_annual_salary(3500);
    DBMS_OUTPUT.PUT_LINE('Test 1 - Annual Salary (Monthly 3500): ' || v_annual_sal);

    -- 2. Test fn_years_of_service
    v_years := fn_years_of_service(TO_DATE('2020-01-15', 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Test 2 - Years of Service (Hire Date 2020-01-15): ' || v_years || ' years');

    -- 3. Test fn_calculate_tax (High Tier > 4000)
    v_tax := fn_calculate_tax(5000);
    DBMS_OUTPUT.PUT_LINE('Test 3a - Tax for Salary 5000 (20%): ' || v_tax);

    -- Test fn_calculate_tax (Mid Tier > 2000)
    v_tax := fn_calculate_tax(3000);
    DBMS_OUTPUT.PUT_LINE('Test 3b - Tax for Salary 3000 (10%): ' || v_tax);

    -- 4. Test fn_dept_name (Valid Dept ID)
    v_dept := fn_dept_name(10);
    DBMS_OUTPUT.PUT_LINE('Test 4a - Dept Name for ID 10: ' || v_dept);

    -- Test fn_dept_name (Invalid Dept ID to trigger Exception)
    v_dept := fn_dept_name(999);
    DBMS_OUTPUT.PUT_LINE('Test 4b - Dept Name for ID 999: ' || v_dept);

    DBMS_OUTPUT.PUT_LINE('__________________________________________________');
END;
/