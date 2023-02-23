## RDBMS Assignment

### Question 1
Create a database named employee, then import data_science_team.csv proj_table.csv
and emp_record_table.csv into the employee database from the given resources.

<img width="291" alt="Screenshot 2023-02-22 at 3 43 06 PM" src="https://user-images.githubusercontent.com/122455311/220590095-e76e3153-5375-40d8-945a-9c8bfef166e9.png">

### Question 2
Create an ER diagram for the given employee database.

<img width="949" alt="Screenshot 2023-02-23 at 5 14 21 PM" src="https://user-images.githubusercontent.com/122455311/220896998-e3f3e93b-0d6e-4901-9ba6-e9c32c17084b.png">


### Question 3
Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department.

<img width="1000" alt="question3" src="https://user-images.githubusercontent.com/122455311/220598358-003e9828-1529-45fb-bcff-185e80a91f11.png">

### Question 4
Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is:
- less than two

<img width="835" alt="question4a" src="https://user-images.githubusercontent.com/122455311/220598573-2ceb6135-f190-4670-aba3-666c860d5dc7.png">

- greater than four

<img width="904" alt="question4b" src="https://user-images.githubusercontent.com/122455311/220598629-2ab96032-7a1e-497a-94e5-279b389377f7.png">

- between two and four

<img width="891" alt="question4c" src="https://user-images.githubusercontent.com/122455311/220598695-4f26d2d3-dab4-432d-a05e-6f3858563d41.png">

### Question 5
Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.

<img width="1050" alt="question5" src="https://user-images.githubusercontent.com/122455311/220598754-74d11928-b220-4e92-9b71-d0e2574ba22c.png">

### Question 6
Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).

<img width="1076" alt="question6" src="https://user-images.githubusercontent.com/122455311/220598889-06203bc1-299e-42fb-a14e-fdbfa7930f70.png">

### Question 7
Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.

<img width="1086" alt="question7" src="https://user-images.githubusercontent.com/122455311/220598975-c02e53e7-153c-43c4-b582-f24badf4132d.png">

### Question 8
Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the max emp rating for the department.

<img width="1083" alt="question8" src="https://user-images.githubusercontent.com/122455311/220599061-5342e4a6-09e8-45a6-90b5-7e1828cb13f5.png">

### Question 9
Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.

<img width="825" alt="question9" src="https://user-images.githubusercontent.com/122455311/220599145-7b5cf1c8-6740-4928-9515-2b40079403ec.png">

### Question 10
Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.

<img width="1098" alt="question10" src="https://user-images.githubusercontent.com/122455311/220599231-0e0d1f6a-d2ef-41bf-be42-c1a92facd2ed.png">

### Question 11
Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table.

<img width="1144" alt="question11" src="https://user-images.githubusercontent.com/122455311/220599303-699ae791-2332-46e2-aecb-ed067c7b57a0.png">

### Question 12
Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.

<img width="1077" alt="question12" src="https://user-images.githubusercontent.com/122455311/220599412-6bd17a8d-8768-479f-bae3-3df966afb08e.png">

### Question 13
Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table.

<img width="1079" alt="question13" src="https://user-images.githubusercontent.com/122455311/220599492-6e558350-1310-43a5-8607-67b8d59caef8.png">

### Question 14
 Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard.
 The standard being:
- For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST', For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',
- For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',
- For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',
- For an employee with the experience of 12 to 16 years assign 'MANAGER'
 
 <img width="1145" alt="question14" src="https://user-images.githubusercontent.com/122455311/220599590-ef9a0909-e3c3-4c41-a9bc-d4d26bc63bdb.png">

### Question 15
Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan.

<img width="1152" alt="question15" src="https://user-images.githubusercontent.com/122455311/220599771-066f12c7-c466-4aa3-a05a-8e8af7ffce5c.png">

### Question 16
Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating).

<img width="1039" alt="question16" src="https://user-images.githubusercontent.com/122455311/220599839-80a25af5-cfb4-42e6-b5de-f7e9148422fc.png">

### Question 17
Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.

<img width="1036" alt="question17" src="https://user-images.githubusercontent.com/122455311/220599920-8d7ae935-5a1a-42bb-9927-68e5157bd5c4.png">


