-- Show the names of Departments which doesn’t have any employees


SELECT Department_Name
FROM DEPARTMENTS AS D 
    LEFT JOIN EMPLOYEES AS E
        ON D.Department_Id = E.Department_Id
WHERE E.Department_Id IS NULL;
