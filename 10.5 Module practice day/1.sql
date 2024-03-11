-- Create Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

-- Create Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

-- Create Enroll Table with foreign keys and specified deletion actions
CREATE TABLE Enroll (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    -- ON DELETE CASECADE
    FOREIGN KEY (student_id) REFERENCES Student(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE SET CASCADE
    -- ON DELETE NULL
    FOREIGN KEY (student_id) REFERENCES Student(student_id) ON DELETE NULL,
    FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE SET NULL
);

-- Differences between UNION and UNION ALL
-- UNION: Combines the results of two or more SELECT statements, eliminating duplicate rows.
-- UNION ALL: Combines the results of two or more SELECT statements, including all rows, even if there are duplicates.

-- Example usage of UNION:
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;

-- Example usage of UNION ALL:
SELECT column1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2;


USE DUMMYDB;

