
SELECT emp_id AS "Employee Id", 	
first_name AS "First Name", 
last_name AS "Last Name", 
role,
dept AS "Department",
emp_rating AS "Employee Rating",
MAX(emp_rating) OVER(PARTITION BY dept) AS "max_rating_in_dept" 	-- calculates the max emp_rating partitioned by department
FROM emp_record_table;