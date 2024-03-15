import pymysql

db_name = 'School'

connection = pymysql.connect(
    host='localhost',
    user='root',
    password='password',
)

query = "CREATE DATABASE " + db_name

cursor = connection.cursor()
cursor.execute(query)
print("Successfully created database:", db_name)
