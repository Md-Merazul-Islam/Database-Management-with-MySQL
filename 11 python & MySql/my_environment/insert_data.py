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
        INSERT INTO STUDENT(ROLL, NAME)
        VALUES
            (90, 'MERAZ'),
            (12, 'KJH'),
            (11, 'SKDJH'),
            (34, 'ASLKDJF')
"""

sqlquery2 = """
    INSERT INTO EMPLOYES (emp_id, name)
    VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Alice Johnson');

"""

mycursor.execute(sqlquery1)
mydbconnection.commit()  # Commit the transaction
mycursor.execute(sqlquery2)
mydbconnection.commit()  # Commit the transaction
print("Successfully inserted")
