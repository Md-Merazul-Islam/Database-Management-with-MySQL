import mysql.connector

db_name = "my_practice"
mydbconnection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database=db_name
)

mycursor = mydbconnection.cursor()
sqlquery1 = """
        UPDATE STUDENT 
        SET NAME = "ANTOR ALI"
        WHERE ROLL = 12
"""


mycursor.execute(sqlquery1)
mydbconnection.commit()  # Commit the transaction

print("Successfully Updated")
