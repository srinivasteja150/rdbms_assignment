

SELECT emp_id AS "EMPLOYEE ID",
exp as "Experience",
RANK() OVER(ORDER BY exp DESC) AS "rank_by_experience"	 -- gives the ranking to employees based on descending order of experience
FROM emp_record_table;