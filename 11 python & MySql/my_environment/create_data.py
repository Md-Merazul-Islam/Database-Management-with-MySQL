
import mysql.connector

mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="password",)

mycursor = mydbconnection.cursor()
db_name= "my_practice"
sqlquery = "CREATE DATABASE " + db_name 

mycursor.execute(sqlquery)
print("SUccessfully created database")