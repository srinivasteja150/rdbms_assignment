

SELECT concat(first_name, ' ', last_name) AS "NAME"  -- concat function concatinates the values passee to it.
FROM emp_record_table
WHERE dept = 'Finance'