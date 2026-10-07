DECLARE 
v_salary NUMBER :=5000;
BEGIN
             IF v_salary >= 5000 THEN GOTO high_salary;
             ELSE GOTO low_salary;
             END IF;

             <<high_salary>>
             DBMS_OUTPUT.PUT_LINE('Salary of ' || v_salary || ' is high');
             GOTO exit_program;

             <<low_salary>>
             DBMS_OUTPUT.PUT_LINE('Salary of ' || v_salary || ' is low');
             GOTO exit_program;

             <<exit_program>>
             DBMS_OUTPUT.PUT_LINE('End of Program');
END;
/             
