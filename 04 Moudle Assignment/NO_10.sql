CREATE TABLE Employee(
	EmployeeID INT PRIMARY KEY ,
    FirstName VARCHAR(20) UNIQUE,
    LastName VARCHAR(20) NOT NULL,
    Age INT,
    Department VARCHAR(30) NOT NULL
    
);
INSERT INTO Employee (EmployeeID ,FirstName,LastName,Age,Department) 
VALUES(1, 'John', 'Doe', 28, 'HR'),
(2, 'Jane', 'Smith', 32, 'Sales'),
(3, 'Michael', 'Johnson', 35, 'Marketing'),
(4, 'Sarah', 'Brown', 30, 'Finance'),
(5, 'William', 'Davis', 25, 'Engineering'),
(6, 'Emily', 'Wilson', 28, 'Sales'),
(7, 'Robert', 'Lee', 33, 'Marketing'),
(8, 'Laura', 'Thomas', 29, 'Finance'),
(9, 'Hall', 'White', 31, 'HR'),
(10, 'Olivia', 'Clark', 27, 'Marketing');

-- Write a query to get the engineers

SELECT EmployeeID, FirstName, LastName ,Age, Department  FROM Employee WHERE  Department='Engineering'  ;
