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
print("Please enter the product ID: ")
prodID = input()
prodIDString = '"' + prodID + '"'
mycursor.execute('SELECT * FROM PRODUCT WHERE Product_name =' + prodIDString+';')

myresult = mycursor.fetchall()
#Need to figure out how to check if a department is a leaf department
t = PrettyTable(['Name', 'Price after discount'])
for x in myresult:
  discount_percent = x[4]/100
  retail_price = x[6]
  price_after_discount = (1-discount_percent)*retail_price
  name = x[0]
  t.add_row([name, price_after_discount])

print(t)

#mycursor = mydb.cursor()

answer = input("Do you want to change the discount?(y/n)")
if answer == 'y':
    
    print("Please enter the new discount: ")
    newDiscount = input()
    newDiscountString = '"' + newDiscount + '"'
    mycursor.execute('UPDATE PRODUCT SET Discount = '+ newDiscount +' WHERE Product_name = ' + prodIDString)
    mydb.commit()

    mycursor.execute('SELECT * FROM PRODUCT WHERE Product_name =' + prodIDString+';')

    myresult = mycursor.fetchall()
    #Need to figure out how to check if a department is a leaf department
    t = PrettyTable(['Name', 'Price after discount'])
    for x in myresult:
      discount_percent = x[4]/100
      retail_price = x[6]
      price_after_discount = (1-discount_percent)*retail_price
      name = x[0]
      t.add_row([name, price_after_discount])
    print(t)
    print("Discount updated")
mydb.close()
