

SELECT emp_id AS "Employee Id", 
salary, 
emp_rating AS "Employee Rating", 
(0.05 * salary * emp_rating) AS bonus
FROM emp_record_table;