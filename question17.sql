

SELECT DISTINCT continent,											
AVG(salary) OVER(PARTITION BY continent) AS "avg_sal_continent",	-- calculating the avg partition by continent
country,
AVG(salary) OVER(PARTITION BY country) AS "avg_sal_country"			-- calculating the avg partition by country
FROM emp_record_table;