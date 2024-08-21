-- Having vs. Where

-- WHERE
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
WHERE age > 40
GROUP BY gender;

-- HAVING 
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

-- Using WHERE and HAVING in a same query
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 75000