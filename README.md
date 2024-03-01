# Database-Management-with-MySQL



Data: ডেটা হল  অর্থহীন তথ্য যা সংগ্রহে অনুপাতিকভাবে সংগ্রহিত হয়েছে। এটি অপরিষ্কার অবস্থায় থাকে এবং সাধারণভাবে যে কোন ধরণের তথ্য থাকতে পারে, যেমন সংখ্যা, টেক্সট, ছবি, অডিও বা ভিডিও। ডেটা তথ্য এমন সাধারণ প্রকারের ব্যবহারের জন্য ব্যবহৃত হয়, যেখানে কোনও সুস্থিত অর্থনৈতিক বা মৌলিক অবস্থার সাথে যুক্তি বা কোনও মানসিকতা নেই।

Infomation: তথ্য হল ডেটা থেকে সংগঠিত, সমন্বিত এবং ব্যাখ্যামূলক তথ্য। তথ্য হল সংগঠিত ডেটা যা কোনও নির্দিষ্ট ধারণা, উত্তর, বা ধরনের জন্য ব্যবহৃত হয়। তথ্য হল ডেটা যা মানের সাথে যুক্ত করা হয়েছে এবং তার সাথে যুক্ত বিশেষ পরিপ্রেক্ষিত সংদেহ বা সীমান্ত থাকতে পারে।


Database and type of database:  https://www.geeksforgeeks.org/types-of-databases/

*Table,field ,values,record:

full table -> table

EmployeeID	FirstName	LastName	Department	    Position	       Salary     <-record
1	        John	    Doe	          IT	        Developer	       60000
2	        Jane	    Smith	      HR	        Manager	           75000
3	        Alice	    Johnson	      Sales	        Associate	       50000
4	        Bob	        Brown        Marketing	   (Coordinator)	   55000
                                        ^               ^
                                        |               |
                                       field         values
                                        
In this example:

* The table is named "Employees".
* Each row represents a record, which contains information about a single employee.
* Each column represents a field, such as EmployeeID, FirstName, LastName, Department, Position, and Salary.
* The values in each row correspond to the specific attributes of each employee, such as their ID, name, department, position, and salary.



* DBMS & RDBMS: 

ডাটাবেস ম্যানেজমেন্ট সিস্টেম (DBMS) এবং রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS) উভয়ই ডাটাবেস সংজ্ঞার সাথে সম্পর্কিত। 
DBMS হল এমন একটি সফটওয়্যার যা ডাটাবেস সংরক্ষণ, বিশ্লেষণ, বিন্যাস, অ্যাক্সেস এবং নিয়ন্ত্রণ করতে সাহায্য করে। 
RDBMS হল একটি বিশেষ ধরণের DBMS যা ডাটা রিলেশনাল মডেল অনুযায়ী ব্যবস্থাপনা করে। 


* Key & primary key: 

"Key" শব্দটি ডেটাবেসে ব্যবহৃত হলে এটি প্রাথমিকভাবে একটি অনুসন্ধানের স্থান নির্দেশ করে যা ডেটাবেস সার্চ করার সময় ব্যবহৃত হয়। ডেটাবেস টেবিলে একটি ক্লাস্টার বা রো নির্দেশিত করার জন্য এটি অদ্ভুতপূর্ব আদর্শ নির্দেশিকা। এটি একটি সিন্থ্যাক্সে একত্রিত কলাম সেট সনাক্ত করে যা টেবিলের ইনফরমেশন বা ডেটা সম্পর্কে সম্পূর্ণ অনুসন্ধান বা প্রদর্শন করার জন্য ব্যবহৃত হয়। প্রধানত তিনটি ধরণের কী আছে:

প্রাইমারি কী (Primary Key): প্রাইমারি কী টেবিলের প্রতিটি রোতে অনন্য এবং ইউনিক অবস্থান নিশ্চিত করে। এটি সাধারণত একটি ইন্টিজার বা স্ট্রিং টাইপের কলাম হয়, যা একটি সাধারণ অনুমান তৈরি করে।

ফরেন কী (Foreign Key): ফরেন কী একটি অন্য টেবিলের প্রাইমারি কীর সাথে সম্পর্কিত হতে পারে। এটি সাধারণত সাংখ্যিক বা স্ট্রিং ফিল্ড হয়, যা একটি সুপারকি টেবিলের প্রাইমারি কীর সাথে সংযুক্ত করে।

এগুলির উদাহরণ একটি টেবিলের সঙ্গে নিচে দেওয়া হয়েছে:

mathematica
Copy code
Students Table:
---------------------------------------
| StudentID | Name     | Age | Gender |
|-----------|----------|-----|--------|
| 1         | John     | 20  | Male   |
| 2         | Alice    | 22  | Female |
| 3         | Bob      | 21  | Male   |
| 4         | Emily    | 23  | Female |
---------------------------------------
Courses Table:
--------------------------------------------
| CourseID  | Name            | Instructor |
|-----------|-----------------|------------|
| 101       | Mathematics     | Dr. Smith  |
| 102       | English         | Prof. Brown|
| 103       | Science         | Dr. Johnson|
| 104       | History         | Prof. White|
--------------------------------------------
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/6bd4fb00-3832-4643-a84d-8b1f0cefd05f)

One-to-One (একে এক):

একে এক রিলেশনশিপে, একটি রো একটি অপরটির সাথে মাত্র একটি সম্পর্ক রেখে।
এটি প্রাইমারি কী এবং ফরেন কী ব্যবহার করে যা দুটি টেবিলে একে অপরের সাথে সংযোগ প্রদান করে।
একটি উদাহরণ হলে, পাসপোর্ট নং একে সংবেদনশীল ধরনের তথ্য সংরক্ষণ করতে পারে, যেমন একজন ব্যক্তির তথ্য।

One-to-One Relationship (একে এক):
Consider two tables: Person and Passport. Each person has exactly one passport, and each passport is issued to only one person.

sql
Copy code
Person Table:
| PersonID | Name     | Age | Address     |
|----------|----------|-----|-------------|
| 1        | John     | 30  | New York    |
| 2        | Alice    | 25  | Los Angeles|

Passport Table:
| PassportID | PassportNumber | ExpiryDate | PersonID (Foreign Key) |
|------------|----------------|------------|------------------------|
| 101        | ABC123         | 2025-12-31 | 1                      |
| 102        | XYZ456         | 2024-10-15 | 2                      |



One-to-Many (এক থেকে বেশি):

এক থেকে বেশি রিলেশনশিপে, একটি রো এক টেবিলের সাথে একের অধিক সম্পর্ক রেখে।
এটি ফরেন কী ব্যবহার করে যা একটি টেবিলের প্রাইমারি কীর সাথে অন্য টেবিলের ফরেন কী সংযোজন করে।
একটি উদাহরণ হলে, একটি স্টুডেন্ট রো মাল্টিপল কোর্সের তথ্য সংরক্ষণ করতে পারে, যেমন একজন ছাত্রের কোর্সের তথ্য।

One-to-Many Relationship (এক থেকে বেশি):
Consider two tables: Department and Employee. Each department can have many employees, but each employee belongs to only one department.

sql
Copy code
Department Table:
| DeptID | Name       | Location    |
|--------|------------|-------------|
| 1      | IT         | New York    |
| 2      | Marketing  | Los Angeles|

Employee Table:
| EmployeeID | Name     | Age | DepartmentID (Foreign Key) |
|------------|----------|-----|----------------------------|
| 101        | John     | 30  | 1                          |
| 102        | Alice    | 25  | 2                          |
| 103        | Bob      | 28  | 1                          |



Many-to-Many (বেশি থেকে বেশি):

বেশি থেকে বেশি রিলেশনশিপে, একটি রো এক টেবিলের সাথে একের অধিক সম্পর্ক রেখে, এবং এক রো অন্য টেবিলের সাথে একের অধিক সম্পর্ক রেখে।
এটি একটি জড়িত টেবিল বা জড়িত তৃতীয় টেবিল ব্যবহার করে যা উভয় টেবিলের প্রাইমারি কীগুলি সংযোজিত করে।
একটি উদাহরণ হলে, একটি ছাত্র বা শিক্ষার্থী যখন একে একের বেশি কোর্স নিতে পারে, এবং একই কোর্স বা বিষয় বিষয়গুলি একের অধিক শিক্ষার্থী অংশগ্রহণ করতে পারে।

Many-to-Many Relationship (বেশি থেকে বেশি):
Consider two tables: Student and Course. Each student can enroll in multiple courses, and each course can have multiple students enrolled.

sql
Copy code
Student Table:
| StudentID | Name     | Age | 
|-----------|----------|-----|
| 1         | John     | 20  |
| 2         | Alice    | 22  |
| 3         | Bob      | 21  |

Course Table:
| CourseID  | Name            | Instructor |
|-----------|-----------------|------------|
| 101       | Mathematics     | Dr. Smith  |
| 102       | English         | Prof. Brown|
| 103       | Science         | Dr. Johnson|

Enrollment Table:
| EnrollmentID | StudentID (Foreign Key) | CourseID (Foreign Key) |
|--------------|--------------------------|------------------------|
| 1            | 1                        | 101                    |
| 2            | 1                        | 102                    |
| 3            | 2                        | 101                    |
| 4            | 3                        | 103                    |



Query -এটা হলো এমন একটা কাজ, যেটা আমরা ডাটাবেজে ডাটা খোজার জন্য করে থাকি। কোয়েরি এর মাধ্যমে আমরা ডাটার বিভিন্ন পরিবর্তন করতে পারি. যেমন: ubdate ,delete,add ইত্যাদি করতে পারি .

* SELECT Query ঃ এটা শুধু ডাটা নিয়ে আসে ।
* Parameter Query ঃ প্যারাম টা ইউজ করে খুঁজে নিয়ে আসে ডাটাকে।
* CrossTab query ঃ যে ধরনের কোয়ারি ডাটাকে গ্রুপ বা সামারি আকারে প্রকাশ করে তাকে বলে
* Unmatch : যেগুলো ম্যাচ করবে না সেইরকম ডাটা দেখাবে এই query
* Action : ডাটা বেজে টেবিল ক্রিয়েট, আপডেট,ডিলিট, অ্যাপেন্ট ইত্যাদি কাজ করার জন্যই  ব্যবহার করা হয়.


DML- select,insert,ubdate,delete এই কাজ গুলাকেই DML বলে।
DDL- Create,append,drop .এইখানে structure গত change হবে। 

studentCREATE DATABASE hello;                                                   
USE hello;                                                                      
                                                                                
CREATE TABLE IF NOT EXISTS student (                                            
    Roll CHAR(4) PRIMARY KEY,                                                   
    Name VARCHAR(50),                                                          
    Marks DOUBLE                                                                
);                                                                              
# https://www.educba.com/mysql-dml/
INSERT INTO student (Roll, Name, Marks) VALUES ('1', 'Meraz', 20);              
INSERT INTO student (Roll, Name, Marks) VALUES ('2', 'AKSH', 10);               
                                                                              
SET SQL_SAFE_UPDATES=0;                                                        
UPDATE student                                                                 
SET Name = 'MD MERAZUL ISLAM'                                                   |
WHERE Roll = 2;                                                                
SET SQL_SAFE_UPDATES=1;                                                         
                                                                                
SET SQL_SAFE_UPDATES=0;                                                        
DELETE FROM student                                                             
WHERE Roll = 2;                                                                
SET SQL_SAFE_UPDATES =1;                                                        

![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/5430b61f-6085-4f1b-85ed-14353ef3038e)



![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/e8191c7d-c42b-4997-8f12-6eab0a80a623)


![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/a3ff3d0a-5d4d-4d98-970e-ea6bef47a3ed)
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/32f8fcce-5e0d-4a46-88ec-31f98445a340)
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/75999a82-7bd4-4d9f-88af-973e4d8cd30d)

# find character from a sentance:
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/2088dc8f-de02-492c-bacd-3e2fa1f89c02)

# Logical Operation :
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/07783dbf-61fe-4d12-9871-1b16dd9f0ec9)

# Sort :
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/8d7d9f81-d12f-42b3-8537-3baad2a24ea3)

# Disticnct :
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/d849607d-727c-4bcc-a1a5-1b88411fd872)

# As:
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/76d949ec-2151-46c8-8c4f-fb1d8f8f0d9d)

# Like , Offset ;
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/89ca56a4-4da1-4760-afb0-4852e54e65a6)

# Group By:
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/d7c855d2-6682-4e27-97d4-18e43c3d5085)


# SQL WHERE  :
if condition about table then use Where .
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/49e7c4c7-50de-4b23-b3c3-2a75696630b2)


# Having:
If group fucntion has any condition then having.
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/c36a49cb-3d73-43db-8770-efa35c2f89ab)

# ALTER TABLE ( ADD Column,DROP COLUMN,RENAME COLUMN,ALTER/MODIFY DATATYPE etc)
![image](https://github.com/Md-Merazul-Islam/Database-Management-with-MySQL/assets/129538030/3cdb0656-0dc4-4cf2-bcf7-58b1020100ac)




