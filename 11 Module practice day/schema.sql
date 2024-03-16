-- Table for Students
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Grade VARCHAR(10),
    Date_of_Birth DATE,
    Contact_Info VARCHAR(100)
);

-- Table for Teachers
CREATE TABLE Teachers (
    Teacher_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Subjects VARCHAR(255),
    Contact_Info VARCHAR(100)
);

-- Table for Classes
CREATE TABLE Classes (
    Class_ID INT PRIMARY KEY,
    Subject VARCHAR(100),
    Schedule VARCHAR(100),
    Room_Number VARCHAR(20)
);

-- Junction table for the many-to-many relationship between Classes and Teachers
CREATE TABLE Class_Teacher (
    Class_ID INT,
    Teacher_ID INT,
    FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID),
    FOREIGN KEY (Teacher_ID) REFERENCES Teachers(Teacher_ID),
    PRIMARY KEY (Class_ID, Teacher_ID)
);

-- Table for Attendance Records
CREATE TABLE Attendance_Records (
    Attendance_ID INT PRIMARY KEY,
    Date DATE,
    Class_ID INT,
    Student_ID INT,
    Attendance_Status VARCHAR(20),
    FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);
