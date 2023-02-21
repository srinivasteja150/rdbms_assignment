
DELIMITER $$
CREATE PROCEDURE emp_check()						-- creating a procedure to check where all 
BEGIN 												-- employee's role satisfies organisation's conditions
	DECLARE v_emp_id VARCHAR(20);					-- declare local variable v_emp_id stores emp_id
    DECLARE v_exp INT;								-- declare local variable v_exp stores employees experience
    DECLARE v_role VARCHAR(50);						-- declare local variable v_role stores employee role
    DECLARE finished INT DEFAULT 0;					-- declare finished flag that have default value 0
	DECLARE mismatched INT DEFAULT 0;				-- delcare a flag variable mismatched that have default value 0
    
	DECLARE curName CURSOR FOR						-- declaring cursor to fetch multiple records
    SELECT emp_id as "Employee Id", 				-- Fetches all records from data_science_team 
    exp as "Experience", 
    role as "Role"
    FROM data_science_team;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND			-- exception handler which handles not found exception when cursor reaches end of records
		SET finished =1;
    OPEN curName;									-- Opening the cursor
    
    getData: LOOP					
		FETCH curName INTO v_emp_id, v_exp, v_role;	-- Fetching each record and assigning it to declared variables.
        
        IF v_role != get_emp_role(v_exp) THEN		-- Check whether fetched role is same as organistion standard role
			SELECT CONCAT("employee no: ", v_emp_id, 
			" role doesn't match with the organisation's standards") 
            AS "error message";
			SET mismatched =1;						-- If they are not matched, print message, set mismatached =1 and leave the loop
            LEAVE getData;
        END IF;
        IF finished =1 THEN							-- If cursor reaches end of records, leave the loop
			LEAVE getData;
		END IF;
    END LOOP getData;
    CLOSE curName;									-- Close the cursor
    IF mismatched  = 0 THEN							-- If all the records are matched then print the message
		SELECT "All employees role is matched with organisation standards" 
        AS "success message";
	END IF;
END $$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION get_job_profile(experience INT)  	-- creating the function that return type varchar
RETURNS VARCHAR(50)
DETERMINISTIC	
BEGIN
    IF experience <= 2 THEN							-- conditions that return organisation standard roles based on employee experience;
        RETURN '"JUNIOR DATA SCIENTIST"';
    ELSEIF experience > 2 AND experience <= 5 THEN
        RETURN '"ASSOCIATE DATA SCIENTIST"';
    ELSEIF experience > 5 AND experience <= 10 THEN
        RETURN '"SENIOR DATA SCIENTIST"';
    ELSEIF experience > 10 AND experience <= 12 THEN
        RETURN '"LEAD DATA SCIENTIST"';
    ELSEIF experience > 12 AND experience <= 16 THEN
        RETURN '"MANAGER"';
    END IF;
END $$
DELIMITER ;

CALL emp_check();									-- call the procedure emp_check