CREATE OR REPLACE FUNCTION fn_calculate_tax(p_salary IN NUMBER) 
RETURN NUMBER IS
BEGIN
    IF p_salary > 4000 THEN RETURN p_salary * 0.20;
    ELSIF p_salary > 2000 THEN RETURN p_salary * 0.10;
    ELSE RETURN 0;
    END IF;
END;
/