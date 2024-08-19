SELECT *
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10
FROM employee_demographics; 

# PEMDAS - Order of operations for math within MySQL
# Paranthesis, Exponential, Multiplication, Divide, Addition, Subtraction

SELECT DISTINCT first_name, gender
from employee_demographics;

