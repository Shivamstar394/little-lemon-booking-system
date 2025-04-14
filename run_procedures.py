
import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='your_password',
    database='littlelemon'
)

cursor = conn.cursor()

# Example call to stored procedure
cursor.callproc('GetMaxQuantity')

for result in cursor.stored_results():
    print("Max Quantity:", result.fetchall())

cursor.close()
conn.close()
