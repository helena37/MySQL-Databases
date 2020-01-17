#Exercise 1 - Find All Information About Departments
SELECT *
FROM departments
ORDER BY department_id ASC;

#Exercise 2 - Find all Department Names
SELECT name
FROM departments
ORDER BY department_id ASC;

#Exercise 3 - Find salary of Each Employee
SELECT first_name, last_name, salary
FROM employees
ORDER BY employee_id ASC;

#Exercise 4 - Find Full Name of Each Employee
SELECT first_name, middle_name, last_name
FROM employees
ORDER BY employee_id ASC;

#Exercise 5 - Find Email Address of Each Employee
SELECT CONCAT(first_name, '.', last_name, '@', 'softuni.bg') AS 'full_ email_address'
FROM employees;

#Exercise 6 - Find All Different Employee’s Salaries
SELECT DISTINCT salary
FROM employees;

#Exercise 7 - Find all Information About Employees
SELECT *
FROM employees
WHERE job_title = 'Sales Representative'
ORDER BY employee_id ASC;

#Exercise 8 - Find Names of All Employees by salary in Range
SELECT first_name, last_name, job_title
FROM employees
WHERE salary >= 20000
  AND salary <= 30000
ORDER BY employee_id ASC;

#Exercise 9 - Find Names of All Employees - 25000, 14000, 12500 or 23600
SELECT CONCAT(first_name, ' ', middle_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE salary = 25000
   OR salary = 14000
   OR salary = 12500
   OR salary = 23600;

#Exercise 10 - Find All Employees Without Manager
SELECT first_name, last_name
FROM employees
WHERE manager_id IS NULL;

#Exercise 11 - Find All Employees with salary More Than 50000
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;

#Exercise 12 - Find 5 Best Paid Employees
SELECT first_name, last_name
FROM employees
ORDER BY salary DESC
LIMIT 5;

#Exercise 13 - Find All Employees Except Marketing
SELECT first_name, last_name
FROM employees
WHERE department_id <> 4;

#Exercise 14 - Sort Employees Table
/*
 •	First by salary in decreasing order
•	Then by first name alphabetically
•	Then by last name descending
•	Then by middle name alphabetically
 */

SELECT *
FROM employees
ORDER BY salary DESC,
         first_name ASC,
         last_name DESC,
         middle_name ASC,
         employee_id ASC;

#Exercise 15 - Create View Employees with Salaries
CREATE VIEW v_employees_salaries
AS SELECT first_name, last_name, salary FROM employees;
SELECT * FROM v_employees_salaries;

#Exercise 16 - Create View Employees with Job Titles
CREATE VIEW v_employees_job_titles
AS SELECT
CONCAT(first_name, ' ', IFNULL(middle_name, ''), ' ', last_name), job_title
FROM employees
WHERE first_name IS NOT NULL AND last_name IS NOT NULL;
SELECT * FROM v_employees_job_titles;

#Exercise 17 - Distinct Job Titles
SELECT DISTINCT job_title FROM employees
ORDER BY job_title ASC;

#Exercise 18 - Find First 10 Started Projects
SELECT * FROM projects
ORDER BY start_date ASC,
         name ASC,
         project_id ASC
LIMIT 10;

#Exercise 19 - Last 7 Hired Employees
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date DESC
LIMIT 7;

#Exercise 20 - Increase Salaries
UPDATE employees
SET salary = salary * 1.12
WHERE department_id = 1 OR department_id = 2 OR department_id = 4 OR department_id = 11;
SELECT salary FROM employees;

#Exercise 21 - All Mountain Peaks
SELECT peak_name FROM peaks
ORDER BY peak_name ASC;

#Exercise 22 - Biggest Countries by Population
SELECT country_name, population FROM countries
WHERE continent_code = 'EU'
ORDER BY population DESC,
         country_name ASC
LIMIT 30;

#Exercise 23 - Countries and Currency (Euro / Not Euro)
SELECT country_name, country_code, 
IF(`currency_code` = 'EUR', 'Euro', 'Not Euro') as `currency` 
FROM countries as c
ORDER BY c.country_name;


#Exercise 24 - All Diablo Characters
Use diablo;
SELECT name FROM characters
ORDER BY name ASC;
