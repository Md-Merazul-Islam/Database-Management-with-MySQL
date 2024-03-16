

UNION and UNION ALL are set operators in SQL used to concatenate the results of two or more SELECT statements. However, they differ in how they handle duplicate records.

UNION:
The UNION command combines two or more SELECT statements but removes duplicates from the final result set.

example : 

CREATE TABLE Student1 (
    student_id INT,
    name VARCHAR(50),
);

CREATE TABLE student2 (
    student_id INT,
    name VARCHAR(50),
);

SELECT *
FROM Student1
UNION 
SELECT *
FROM student2



UNION ALL:
It is simple concatenates all records, including duplicate from the select statement. whereas the union all statement does not remove the duplicate from the result. 

example : 

CREATE TABLE Student1 (
    student_id INT,
    name VARCHAR(50),
);

CREATE TABLE student2 (
    student_id INT,
    name VARCHAR(50),
);

SELECT *
FROM Student1
UNION ALL
SELECT *
FROM student2
