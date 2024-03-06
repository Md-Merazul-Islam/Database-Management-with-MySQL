-- Write SQL Query to get the second max salary 

SELECT MAX(SALARY) 
FROM EMPLOYEES 
WHERE SALARY < (
    SELECT MAX(SALARY) 
    FROM EMPLOYEES
);

