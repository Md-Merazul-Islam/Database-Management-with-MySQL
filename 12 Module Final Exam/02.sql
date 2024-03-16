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
