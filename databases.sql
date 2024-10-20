CREATE DATABASE myDB;


--to drop a database: DROP DATABASE myDB

-- ALTER DATABASE myDB READ ONLY = 1;

-- DROP DATABASE myDB;

--TO DISABLE ALTER

-- ALTER DATABASE myDB READ ONLY = 0;

USE myDB

CREATE TABLE employees( --within the set of brackets above, list the columns
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

--TO SELECT A TABLE

SELECT * FROM employees


--to rename a table
RENAME TABLE employees TO workers;


RENAME TABLE workers to employees;
