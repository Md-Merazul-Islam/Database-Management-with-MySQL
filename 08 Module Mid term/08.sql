
-- Show the names of the employees who get less salary than Steven


SELECT First_Name
FROM EMPLOYEES
WHERE  SALARY < (SELECT MAX(SALARY) 
FROM EMPLOYEES
WHERE First_Name = 'STEVEN'
)



