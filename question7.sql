


SELECT emp_id AS "Employee Id", 		-- fetches the records of employees who are under Healthcare
first_name AS "First Name", 
last_name AS "Last Name", 
dept AS "Department" 
FROM emp_record_table
WHERE dept = 'Healthcare'
UNION 									-- Gives all the records which are unique in both queries
SELECT emp_id AS "Employee Id", 		-- fetches the records of employees who are under Finance
first_name AS "First Name", 
last_name AS "Last Name", 
dept AS "Department" 
FROM emp_record_table
WHERE dept = 'Finance'