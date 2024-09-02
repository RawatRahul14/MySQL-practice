-- Subqueries

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN (
	SELECT employee_id
	FROM parks_and_recreation.employee_salary
	WHERE dept_id = 1
)
;

SELECT first_name, salary,
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary
) 
FROM parks_and_recreation.employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT AVG(max_age)
FROM 
(
SELECT gender, AVG(age) avg_age, MAX(age) max_age, MIN(age) min_age, COUNT(age) age_count
FROM parks_and_recreation.employee_demographics
GROUP BY gender
) AS agg_table;