-- A. Student table
CREATE TABLE Student (
    StudentId INT UNIQUE,
    Student_Name VARCHAR(200) NOT NULL,
    Address VARCHAR(200)
);

-- B. Library table
CREATE TABLE Library (
    BookId INT,
    StudentId INT ,
    Book_Name VARCHAR(200) NOT NULL,
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    CONSTRAINT pk_rule PRIMARY KEY (BookId) 
    
);

-- C. Fees table
CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    StudentId INT,
    Amount FLOAT NOT NULL,
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
);
