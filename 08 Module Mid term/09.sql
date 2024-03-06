-- Count the number of employees of each job type

SELECT 
D.Department_Name,
COUNT(E.DEPARTMENT_ID) AS COUNT_EMPLOYEES
FROM EMPLOYEES AS E 
JOIN DEPARTMENTS AS D 
ON D.Department_Id = E.Department_Id
GROUP BY D.Department_Name;

