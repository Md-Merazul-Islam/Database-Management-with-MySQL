-- What is a subquery? Write with an example

A subquery as a nested query or inner query, is a w nested within another query. 
It is query within another query and is enclosed within parentheses.

SELECT First_Name, SALARY
FROM EMPLOYEES
WHERE SALARY IN (
    SELECT MAX(SALARY) FROM EMPLOYEES 
)