
DELIMITER $$
CREATE PROCEDURE check_emp_details()					-- creating a procedure to check where all 
BEGIN 												
	IF check_emp_profile() THEN					-- employee's role satisfies organisation's conditions
		SELECT CONCAT("employee no: ", v_emp_id, 
			" role doesn't match with the organisation's standards") 
            AS "error message";
	ELSE								-- all employees roles doesn't satisfy organisation's conditions
		SELECT "All employees role is matched with organisation standards" 
        AS "success message";
	END IF;
END $$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION check_emp_profile()  	-- creating the function that return type boolean
RETURNS TINYINT(1)
DETERMINISTIC	
BEGIN

    DECLARE v_emp_id VARCHAR(20);					-- declare local variable v_emp_id stores emp_id
    DECLARE v_exp INT;							-- declare local variable v_exp stores employees experience
    DECLARE v_role VARCHAR(50);						-- declare local variable v_role stores employee role
    DECLARE finished INT DEFAULT 0;					-- declare finished flag that have default value 0
	DECLARE mismatched INT DEFAULT 0;				-- delcare a flag variable mismatched that have default value 0
    DECLARE exp_role VARCHAR(50);
    
	DECLARE curName CURSOR FOR					-- declaring cursor to fetch multiple records
    SELECT emp_id as "Employee Id", 					-- Fetches all records from data_science_team 
    exp as "Experience", 
    role as "Role"
    FROM data_science_team;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND		-- exception handler which handles not found exception when cursor reaches end of records
		SET finished =1;
    OPEN curName;					-- Opening the cursor
    
    getData: LOOP					
		FETCH curName INTO v_emp_id, v_exp, v_role;	-- Fetching each record and assigning it to declared variables.
        
        IF experience <= 2 THEN					-- conditions that return organisation standard roles based on employee experience;
			SET exp_role = '"JUNIOR DATA SCIENTIST"';
		ELSEIF experience > 2 AND experience <= 5 THEN
			SET exp_role = '"ASSOCIATE DATA SCIENTIST"';
		ELSEIF experience > 5 AND experience <= 10 THEN
			SET exp_role = '"SENIOR DATA SCIENTIST"';
		ELSEIF experience > 10 AND experience <= 12 THEN
			SET exp_role = '"LEAD DATA SCIENTIST"';
		ELSEIF experience > 12 AND experience <= 16 THEN
			SET exp_role = '"MANAGER"';
		END IF;
        
        IF v_role != emp_role THEN			-- Check whether fetched role is same as organistion standard role
			RETURN FALSE;			-- if not directly return false
        END IF;
        IF finished =1 THEN				-- If cursor reaches end of records, leave the loop
			LEAVE getData;
		END IF;
    END LOOP getData;
    CLOSE curName;					-- Close the cursor
    RETURN TRUE;					-- if all roles satisfy the organisation conditions then return true
    
END $$
DELIMITER ;

CALL check_emp_details();				-- call the procedure check_emp_details
