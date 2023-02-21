

CREATE OR REPLACE 				-- Creates a view named disp_emp which gives employee records with salary greater than 6000.
VIEW disp_emp AS
SELECT * 
FROM emp_record_table
WHERE salary > 6000;

SELECT * FROM disp_emp;			-- selecting the view disp_emp