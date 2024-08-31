-- Unions

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name, "Old Man" AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 and gender = "Male"
UNION
SELECT first_name, last_name, "Old Lady" AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 and gender = "Female"
UNION 
SELECT first_name, last_name, "High Paid Employee" AS label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name 
;