import mysql.connector

db_name= "my_practice"

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",
    database=db_name)

mycursor = mydbconnection.cursor()

sqlquery1="""
CREATE TABLE STUDENT(
    ROLL VARCHAR(255) NOT NULL,
    NAME VARCHAR(255) NOT NULL
    )
    
"""
sqlquery2="""
CREATE TABLE EMPLOYES
    (
    EMP_ID INT NOT NULL,
    NAME VARCHAR(255) NOT NULL
    )
    
"""
mycursor.execute(sqlquery1)
mycursor.execute(sqlquery2)
print("TABLE CREATE SUCCESSFULLY DONE")