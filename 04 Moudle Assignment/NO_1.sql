-- A. Student table
CREATE TABLE Student (
    Student_Name VARCHAR(200),
    Student_ID INT primary key,
    Address VARCHAR(200)
);

-- B. Library table
CREATE TABLE Library (
    Book_Name VARCHAR(200),
    Book_Id INT,
    Student_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

-- C. Fees table
CREATE TABLE Fees (
    FeeId INT,
    Student_ID INT,
    Amount FLOAT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);