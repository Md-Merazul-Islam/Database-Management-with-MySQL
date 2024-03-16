-- There is a table named Employee. In that table there is a field named Salary. Determine the second lowest salary.


SELECT MIN(Salary)
FROM Employee
WHERE Salary > (
    SELECT MIN(Salary)
    FROM Employee
   
);

