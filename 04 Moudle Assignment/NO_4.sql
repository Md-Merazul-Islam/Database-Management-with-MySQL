
-- In MySQL, Update and Delete queries weren't executing because initially, the "SET SQL_SAFE_UPDATES"  mode is disabled.So, if we want to use Delete and Update queries, we need to enable the "SET SQL_SAFE_UPDATES" mode.-- 

CREATE TABLE Student (
    Student_Name VARCHAR(200),
    Student_ID INT primary key,
    Address VARCHAR(200)
);

INSERT INTO Student(Student_Name ,Student_ID, Address) 
VALUES ("Meraz",11,"Dhaka"),
		("Rakib",12,"Gazipur"),
        ("Sakib",13,"Mym"),
        ("Antor",14,"Rajshahi");
        
 SET SQL_SAFE_UPDATES =0;
 UPDATE Student SET  Student_ID='200' WHERE Student_ID='12' ;
 DELETE FROM Student WHERE  Student_ID='11';
 SET SQL_SAFE_UPDATES=1;