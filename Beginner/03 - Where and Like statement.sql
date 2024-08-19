-- Where clause

SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary <= 50000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = "Female";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != "Female";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01";

-- AND OR NOT -- LOGICAL OPERATORS

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = "male";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01"
OR gender = "male";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01"
OR NOT gender = "male";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55;

-- LIKE statement
-- % (means anything) and _ (means specific value)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "%er%";

SELECT *
FROM parks_and_recreation.employee_demographics
# __ means that there must only be 2 values after the word "a"
WHERE first_name LIKE "a__";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1989%";