SET SERVEROUTPUT ON;
DECLARE

  V_number NUMBER := 67;
BEGIN
    IF V_number > 0 THEN GOTO pos_label;
    ELSIF V_number < 0 THEN GOTO neg_label;
    ELSE GOTO zero_label;
    END IF;

    <<pos_label>>
    DBMS_OUTPUT.PUT_LINE('The number is positive');
    GOTO end_label;

    <<neg_label>>
    DBMS_OUTPUT.PUT_LINE('The number is negative');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('The number is zero');
    GOTO end_label;

    <<end_label>>
    NULL;
END;
/