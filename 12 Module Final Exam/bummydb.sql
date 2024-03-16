

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    TotalCopies INT NOT NULL,
    AvailableCopies INT NOT NULL
);

CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    ISBN VARCHAR(13),
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);



INSERT INTO Student (Name,Email,phone,Address) 
            VALUES('John', 'John@gmail.com', '0140149393','Dhaka'),
            ('Mary', 'Mary@gmail.com', '01401443553','Gazipur'),
            ('Peter', 'Peter@gmail.com', '0140143454','Sreepur'),
            ('Kasim', 'kasim@gmail.com', '015253454623','lokkhipu');

-- 02

INSERT Borrowing(StudentID,ISBN,BorrowDate,DueDate,ReturnDate)
            VALUES(3, 
                    (
                        SELECT ISBN 
                    FROM BOOK 
                    WHERE AvailableCopies >0 
                    ORDER BY AvailableCopies DESC 
                    limit 1
                    ),
                    CURDATE(), DATE_ADD(CURDATE(),INTERVAL 21 DAY),DATE_ADD(CURDATE(),INTERVAL 16 DAY));


-- 03 

UPDATE Book
SET AvailableCopies =AvailableCopies- 1
WHERE ISBN="9781234567890";

-- 04. Retrieve the names of students who have borrowed the most books.

SELECT S.Name
FROM Student S 
JOIN Borrowing B 
ON S.StudentID = B.StudentID 
GROUP BY S.Name
ORDER BY COUNT(B.BorrowID) DESC
limit 1;

-- 05 Retrieve the books that are overdue (i.e., the return date is before the current date).

SELECT BK.Title
FROM BOOK BK 
JOIN Borrowing BR 
ON BK.ISBN = BR.ISBN
WHERE BR.ReturnDate < CURDATE();


