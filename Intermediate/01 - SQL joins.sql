-- Joins

SELECT * 
FROM parks_and_recreation.employee_demographics AS t1
INNER JOIN parks_and_recreation.employee_salary AS t2
	ON t1.employee_id = t2.employee_id;
    
-- Inner JOINS
SELECT t1.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS t1
INNER JOIN parks_and_recreation.employee_salary AS t2
	ON t1.employee_id = t2.employee_id;
    
-- Outer Left JOINS
SELECT *
FROM parks_and_recreation.employee_demographics AS t1
LEFT JOIN parks_and_recreation.employee_salary AS t2
	ON t1.employee_id = t2.employee_id;
    
-- Outer Right JOINS
SELECT *
FROM parks_and_recreation.employee_demographics AS t1
RIGHT JOIN parks_and_recreation.employee_salary AS t2
	ON t1.employee_id = t2.employee_id;
    
-- Sefl JOIN
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS first_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_name,
emp2.last_name AS first_name_name
FROM parks_and_recreation.employee_salary emp1
JOIN parks_and_recreation.employee_salary emp2 
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining Multiple Tables
SELECT dem.employee_id, dem.first_name, dem.last_name, sal.occupation, pd.department_name, sal.salary
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_and_recreation.parks_departments;