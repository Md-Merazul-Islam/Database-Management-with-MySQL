-- /*Create a table of Employees which has the following fields
-- First Name
-- Last Name
-- Date of Birth
-- Department Id
-- Salary
-- Create a table of Departments which has the following fields
-- Department Id
-- Department Name
-- Create both of the tables using proper constraints --



CREATE TABLE EMPLOYEES (
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Department_Id INT NOT NULL,
    Salary INT NOT NULL,
    PRIMARY KEY (First_Name),
    CONSTRAINT FK_DEPT_ID FOREIGN KEY (Department_Id) REFERENCES DEPARTMENTS(Department_Id)
); 

CREATE TABLE DEPARTMENTS (
    Department_Id INT PRIMARY KEY NOT NULL,
    Department_Name VARCHAR(20) NOT NULL
);

