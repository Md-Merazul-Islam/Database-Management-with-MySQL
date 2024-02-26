"""
Query -এটা হলো এমন একটা কাজ, যেটা আমরা ডাটাবেজে ডাটা খোজার জন্য করে থাকি। কোয়েরি এর মাধ্যমে আমরা ডাটার বিভিন্ন পরিবর্তন করতে পারি. যেমন: ubdate ,delete,add ইত্যাদি করতে পারি .

SELECT Query ঃ এটা শুধু ডাটা নিয়ে আসে ।
Parameter Query ঃ প্যারাম টা ইউজ করে খুঁজে নিয়ে আসে ডাটাকে।
CrossTab query ঃ যে ধরনের কোয়ারি ডাটাকে গ্রুপ বা সামারি আকারে প্রকাশ করে তাকে বলে
Unmatch : যেগুলো ম্যাচ করবে না সেইরকম ডাটা দেখাবে এই query
Action : ডাটা বেজে টেবিল ক্রিয়েট, আপডেট,ডিলিট, অ্যাপেন্ট ইত্যাদি কাজ করার জন্যই  ব্যবহার করা হয়.


DML- select,insert,ubdate,delete এই কাজ গুলাকেই DML বলে।
DDL- Create,append,drop .এইখানে structure গত change হবে। 


---------------------------------------------------------------------------------
studentCREATE DATABASE hello;                                                   |
USE hello;                                                                      |
                                                                                |
CREATE TABLE IF NOT EXISTS student (                                            |
    Roll CHAR(4) PRIMARY KEY,                                                   |
    Name VARCHAR(50),                                                           |
    Marks DOUBLE                                                                |
);                                                                              |
# https://www.educba.com/mysql-dml/
INSERT INTO student (Roll, Name, Marks) VALUES ('1', 'Meraz', 20);              |
INSERT INTO student (Roll, Name, Marks) VALUES ('2', 'AKSH', 10);               |
                                                                                |
SET SQL_SAFE_UPDATES=0;                                                         |
UPDATE student                                                                  |
SET Name = 'MD MERAZUL ISLAM'                                                   |
WHERE Roll = 2;                                                                 |
SET SQL_SAFE_UPDATES=1;                                                         |
                                                                                |
SET SQL_SAFE_UPDATES=0;                                                         |
DELETE FROM student                                                             |
WHERE Roll = 2;                                                                 |
SET SQL_SAFE_UPDATES =1;                                                        |
---------------------------------------------------------------------------------

"""


