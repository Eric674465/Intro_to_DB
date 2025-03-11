import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL server (without specifying a database)
    mydb_master = mysql.connector.connect(
        host="localhost",
        user="db_master",
        password="MySQL_Secure#@!"
    )

    cursor = mydb_master.cursor()
    
    # Create the database if it does not exist
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'mydb_master' in locals() and mydb_master.is_connected():
        mydb_master.close()
        print("MySQL connection closed.")