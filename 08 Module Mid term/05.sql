-- Write SQL Query to show  the department names and the average salary of the departments

SELECT 
D.Department_Name, AVG(E.SALARY) AS Avarage_Salary
FROM EMPLOYEES AS E
JOIN DEPARTMENTS AS D 
ON E.Department_Id = D.Department_Id
GROUP BY D.Department_Id;