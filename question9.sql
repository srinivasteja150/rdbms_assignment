

SELECT DISTINCT role, 
MIN(salary) OVER(PARTITION BY role) AS "Min_in_role",		
MAX(salary) OVER(PARTITION BY role) AS "Max_in_role"
FROM emp_record_table
