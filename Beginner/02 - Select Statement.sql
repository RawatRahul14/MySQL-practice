SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10
FROM Parks_and_Recreation.employee_demographics; 

# PEMDAS - Order of operations for math within MySQL
# Paranthesis, Exponential, Multiplication, Divide, Addition, Subtraction

SELECT DISTINCT first_name, gender
from Parks_and_Recreation.employee_demographics;
