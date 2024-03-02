SELECT *FROM departments;

SELECT MAX(SALARY) FROM employees ;

SELECT AVG(SALARY) FROM employees WHERE department_id=(
						SELECT department_id FROM departments WHERE department_name = 'MARKETING');
                        
                        
SELECT COUNT(*) AS MEMBERS  
FROM employees 
WHERE department_id=(
						
					SELECT department_id 
                    FROM departments 
                    WHERE department_name = 'IT');
          
SELECT SUM(SALARY)
FROM employees
WHERE JOB_ID =(
SELECT JOB_ID
FROM JOBS
WHERE JOB_TITLE ='PROGRAMMER');
                    
SET SQL_SAFE_UPDATES=0;
DELETE FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);




-- 2ND MAXIMUM SALARY FIND AND EMPLOYEES NAME 

-- way -1
SELECT DISTINCT SALARY 
FROM employees
LIMIT 1
OFFSET 1;

SELECT * FROM employees
WHERE SALARY =(SELECT DISTINCT SALARY 
FROM employees
LIMIT 1
OFFSET 1);


-- way 2

SELECT *
FROM employees 
WHERE SALARY = (select MAX(salary) 
				FROM employees
                WHERE SALARY < (SELECT MAX(salary) 
                FROM employees));
                
                
SELECT * FROM employees AS EMP
WHERE SALARY > (SELECT SALARY FROM employees AS MAG
WHERE EMP.manager_id = MAG.employee_id);
                
                
SELECT * 
FROM employees AS EMP
WHERE JOB_ID = (SELECT JOB_ID FROM employees MGR 
WHERE EMP.manager_id = MGR.employee_id);
                
	