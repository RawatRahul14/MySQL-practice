-- String functions

SELECT LENGTH("skyfall");

SELECT first_name, LENGTH(first_name) AS length_of_the_name
FROM parks_and_recreation.employee_demographics
ORDER BY length_of_the_name, first_name
;

SELECT UPPER("sky");
SELECT LOWER("Sky");

SELECT first_name, UPPER(first_name)
FROM parks_and_recreation.employee_demographics
;

SELECT TRIM("       sky       ");
SELECT LTRIM("    sky       ");
SELECT RTRIM("     sky       ");

SELECT first_name, LEFT(first_name, 4)
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM parks_and_recreation.employee_demographics;

SELECT first_name, REPLACE(first_name, "a", "z")
FROM parks_and_recreation.employee_demographics
;

SELECT LOCATE("x", "Alexender");

SELECT first_name, LOCATE("An", first_name)
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name," " , last_name) AS full_name
FROM parks_and_recreation.employee_demographics
;