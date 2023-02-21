
SELECT emp_id AS "Employee Id",
first_name AS "First Name", 
last_name AS "Last Name", 
gender, 
dept as "Department",
emp_rating AS "Employee Rating"
FROM emp_record_table
WHERE emp_rating < 2;    -- Only fetch the rows where emp_rating less than 2.


SELECT emp_id AS "Employee Id",
first_name AS "First Name", 
last_name AS "Last Name", 
gender, 
dept as "Department",
emp_rating AS "Employee Rating"
FROM emp_record_table
WHERE emp_rating > 4;    -- Only fetch the rows where emp_rating greater than 4.

SELECT emp_id AS "Employee Id",
first_name AS "First Name", 
last_name AS "Last Name", 
gender, 
dept as "Department",
emp_rating AS "Employee Rating"
FROM emp_record_table
WHERE emp_rating between 2 and 4;    -- Only fetch the rows where emp_rating is between 2 and 4.