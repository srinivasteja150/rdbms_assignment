


SELECT emp_id AS "Employee Id", 					-- Displaying the detials of employees where emp_id in subquery.
first_name AS "First Name", 
last_name AS "Last Name", 
dept AS "Department",
exp AS "Experience"
FROM emp_record_table
WHERE emp_id IN (										-- subquery returing the emp_ids with experience greater than 10.
				SELECT emp_id 
                FROM emp_record_table 
                WHERE exp > 10
                )