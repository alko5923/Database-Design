import mysql.connector
from prettytable import PrettyTable

group_number="10" 

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht21_1_group_"+group_number,
  passwd="pwd_"+group_number,
  database="ht21_1_project_group_"+group_number
)

mycursor = mydb.cursor() 

name = input("Department ID? ")
mycursor.execute("SELECT Leaf_dept FROM DEPARTMENT WHERE Title = \""+name+"\"")
is_leaf = mycursor.fetchone()[0]

if is_leaf:
  mycursor.execute("SELECT * FROM PRODUCT WHERE Department_title = \""+name+"\"")
  myresult = mycursor.fetchall()
  t = PrettyTable(['Name', 'Price after discount'])
  for x in myresult:
    discount_percent = x[4]/100
    retail_price = x[6]
    price_after_discount = (1-discount_percent)*retail_price
    name = x[0]
    t.add_row([name, price_after_discount])
  print(t)
else:
  mycursor.execute("SELECT Title FROM DEPARTMENT WHERE Super_title = \""+name+"\"")
  myresult = mycursor.fetchall()
  print("Subdepartments for "+name)
  for x in myresult:
    print(x[0])

mydb.close()
