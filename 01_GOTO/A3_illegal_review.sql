SET SERVEROUTPUT ON;

-- PART 1: Demonstration of Illegal GOTO statement
-- You cannot jump from an outer block into an inner sub-block!

/*
BEGIN
    GOTO inner_label; 

    -- Inner Sub-Block
    BEGIN
        <<inner_label>>
        DBMS_OUTPUT.PUT_LINE('Inside inner block');
    END;
END;
/
*/

-- PART 2: CORRECTED FIX
-- Remove the illegal GOTO and let the inner block run naturally.

BEGIN
    DBMS_OUTPUT.PUT_LINE('=== Corrected Version ===');
    
    -- Inner Sub-Block runs naturally without GOTO
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Inside inner block safely!');
    END;
    
    DBMS_OUTPUT.PUT_LINE('Program completed successfully.');
END;
/