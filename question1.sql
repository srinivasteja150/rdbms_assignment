
-- Creating a new database named employee
CREATE DATABASE employee;
USE employee;

-- creating the table emp_record_table with emp_id as Primary Key
CREATE TABLE emp_record_table(
	emp_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender VARCHAR(10),
    role VARCHAR(50),
    dept VARCHAR(20),
    exp INT,
    country VARCHAR(30),
    continent VARCHAR(30),
    salary INT,
    emp_rating INT,
	manager_id VARCHAR(20),
    proj_id VARCHAR(20)
);

-- Creating the table proj_table with project_id as primary key
CREATE TABLE proj_table(
	project_id VARCHAR(20) PRIMARY KEY,
    project_name VARCHAR(100),
    domain VARCHAR(20),
    start_date DATE,
    closure_date DATE,
    dev_qtr VARCHAR(20),
    status VARCHAR(20)
);

-- Creating the table data science table with employee_id as primary key
CREATE TABLE data_science_team(
	emp_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender VARCHAR(10),
    role VARCHAR(50),
    dept VARCHAR(20),
    exp INT,
    country VARCHAR(30),
    continent VARCHAR(30)
);
