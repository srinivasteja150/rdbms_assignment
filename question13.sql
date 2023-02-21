
DELIMITER $$
CREATE PROCEDURE emp_data()						-- Creating procedure named emp_data
BEGIN
	DECLARE v_emp_id VARCHAR(20);				-- declaring a local variable that stores emp_id
    DECLARE v_exp INT;							-- declaring a local variable that stores emp experience
    DECLARE finished INT DEFAULT 0;				-- delcaring a flag variable initially has default value as 0
    
    DECLARE curName CURSOR FOR					-- declaring a cursor for fetching the records of employees 
    SELECT emp_id, exp 							-- as it is possible to return multiple rows.
    FROM emp_record_table
	WHERE exp > 3;								-- Fetches all the records of emp whose experience id greater thatn 3

    DECLARE CONTINUE HANDLER FOR NOT FOUND		-- declaring a exception handler for not found exception which executes
    SET finished =1;							-- when cursor reaches end of records, it sets finished flag as 1
    
    OPEN curName;								-- Opening the cursor
    
    getData: LOOP							
		FETCH curName INTO v_emp_id, v_exp;		-- Fetches one record of employee at a time	
        IF finished =1 THEN						-- If cursor reaches the end of the records, then it leaves the loop
			LEAVE getData;
		END IF;
        
        SELECT v_emp_id AS "employee id", 		-- Displaying the emp data 
        v_exp AS "experience";
    END LOOP getData;
    CLOSE curName;								-- finally closing the cursor.
END $$
DELIMITER ;

CALL emp_data();								-- Calling the cursor emp_data.
