
-- For this Question, we have derived table which will 
-- return managerIds and number of employeesreporting him.
-- Now as we have to find details of managers, we have to j
-- oin our emp_record_table and derived table.
SELECT emp_id AS "Employee Id", 
first_name AS "First Name", 
last_name AS "LAST NAME",
num_emp_reporting
FROM emp_record_table a,				
	(
     SELECT manager_id AS "Manager_Id", 
     COUNT(emp_id) as "num_emp_reporting"
	 FROM emp_record_table
	 GROUP BY manager_id
     ) b												-- derived table b, returns manager id and num of emp reporting him
WHERE a.emp_id = b.manager_id							-- Joining emp_record_table and derived table.
ORDER BY emp_id;
