DECLARE
    v_num NUMBER := -67;
BEGIN
    IF v_num > 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Positive');
    ELSIF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Negative');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Zero');
    END IF;
END;
/