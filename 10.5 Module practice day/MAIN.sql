-- Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

-- Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

-- Enroll Table
CREATE TABLE Enroll (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
  constraint FK_SDT  FOREIGN KEY (student_id) REFERENCES Student(student_id) ,
   constraint FOREIGN FK_COR KEY (course_id) REFERENCES Course(course_id) 
);


-- Add foreign key constraint for Student table with ON DELETE CASCADE
ALTER TABLE Enroll
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id) REFERENCES Student(student_id)
ON DELETE CASCADE;

-- Add foreign key constraint for Course table with ON DELETE SET NULL
ALTER TABLE Enroll
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id) REFERENCES Course(course_id)
ON DELETE SET NULL;
