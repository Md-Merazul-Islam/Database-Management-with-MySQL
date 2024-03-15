import pymysql

db_name = "school"

connection = pymysql.connect(
    host="localhost",
    user="root",
    password="password",
    database=db_name
)

def create_table(tb_name):
    query = f"""
        CREATE TABLE IF NOT EXISTS {tb_name} (
            ID INT AUTO_INCREMENT PRIMARY KEY,
            Name VARCHAR(255),
            Age INT,
            Grade INT,
            Address VARCHAR(255)
            )
    """
    cursor = connection.cursor()
    cursor.execute(query)
    print("Created table successfully")

def add_student(tb_name,  name, age, grade, address):
    query = f"""
            INSERT INTO {tb_name} ( Name, Age, Grade, Address)
            VALUES (%s, %s, %s, %s) 
    """
    cursor = connection.cursor()
    cursor.execute(query, ( name, age, grade, address))
    connection.commit()
    print("Student added successfully")

def update_grade(tb_name, id, grade):
    query = f"""
    UPDATE {tb_name}
    SET Grade = %s
    WHERE ID = %s
    """
    cursor = connection.cursor()
    cursor.execute(query, (grade, id))
    connection.commit()
    print("Grade updated successfully")

def increase_age(tb_name, id, val):
    query = f"""
        SELECT Age FROM {tb_name} WHERE ID = %s
    """
    cursor = connection.cursor()
    cursor.execute(query, (id,))
    result = cursor.fetchone()
    new_age = result[0] + val
    cursor.execute(f"""
                   UPDATE {tb_name}
                   SET Age = %s
                   WHERE ID = %s
                   """, (new_age, id))
    connection.commit()
    print("Successfully increased")

def view_all_students():
    query = f"""
        SELECT * FROM Std
    """
    cursor = connection.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    print(f'Id  Name  Age  Grade ')
    print(f'---------------------- ')
    for row in result:
        id, name, age, grade, _ = row
        print(f"{id} - {name} - {age} - {grade}")
        
while True:
    print("""
        1. Create Table
        2. Add Student information
        3. Update Grade
        4. Increase Age
        5. View all students
        6. Exit
          """)

    op = input("Enter your choice option: ")

    if op == '1':
        tb_name = input("Enter the table name: ")
        create_table(tb_name)

    elif op == '2':
        tb_name = input("Enter the table name: ")
        name = input("Enter the student name: ")
        age = int(input("Enter the student age: "))
        grade = int(input("Enter the student grade: "))
        address = input("Enter the student address: ")
        add_student(tb_name,  name, age, grade, address)

    elif op == '3':
        tb_name = input("Enter the table name: ")
        id = int(input("Enter the student id: "))
        grade = int(input("Enter the student grade: "))
        update_grade(tb_name, id, grade)
        
    elif op == '4':
        tb_name = input("Enter the table name: ")
        id = int(input("Enter the student id: "))
        val = int(input("Enter the value to increase the student age: "))
        increase_age(tb_name, id, val)
        
    elif op == '5':
        view_all_students()
        
    elif op == '6':
        print("exited")
        break
        
    else:
        print("Please select a correct option")
