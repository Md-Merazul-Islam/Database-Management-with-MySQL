-- Create Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    student_age INT,
    student_gender VARCHAR(10)
);
-- Insert more data into Student table
INSERT INTO Student (student_id, student_name, student_age, student_gender) VALUES
(7, 'Sophia Martinez', 22, 'Female'),
(8, 'Alexander Garcia', 21, 'Male'),
(9, 'Olivia Lopez', 20, 'Female'),
(10, 'William Perez', 23, 'Male');

-- Create Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_description TEXT,
    course_credit INT
);
-- Insert more data into Course table
INSERT INTO Course (course_id, course_name, course_description, course_credit) VALUES
(107, 'Biology', 'Study of living organisms and their interactions', 4),
(108, 'Economics', 'Introduction to economic principles', 3),
(109, 'Art History', 'Survey of art throughout history', 3),
(110, 'Psychology', 'Basic principles of human behavior and mental processes', 3);


-- -- Create Enroll table with foreign keys to Student and Course
CREATE TABLE Enroll (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
   CONSTRAINT FK_SDT  FOREIGN KEY (student_id) REFERENCES Student(student_id),
   CONSTRAINT FK_COR  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


-- Insert more data into Enroll table
INSERT INTO Enroll (enroll_id, student_id, course_id) VALUES
(7, 7, 108),
(8, 8, 110),
(9, 9, 107),
(10, 10, 109);



SET SQL_SAFE_UPDATES = 0;

-- Add the ON UPDATE CASCADE constraint to the existing foreign key

ALTER TABLE Enroll
DROP FOREIGN KEY FK_SDT;

ALTER TABLE Enroll
Add FOREIGN KEY(course_id)
ON UPDATE CASCADE
ON DELETE CASCADE ;












