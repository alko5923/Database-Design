# Group 10 - DB Design Project 

This repository contains complementary deliverables (sql files, additional diagrams etc) for the database project.



### Prerequisites

* PrettyTables
  ```sh
  pip install prettytables
  ```
* or
  ```sh
  pip install requirements.txt
  ```

### Usage

* DBApp.py
```
  Prompts you with "Department ID?" (Department title). If you enter a leaf department you are presented with the products of that department and their price after discount.
  If it's a non-leaf department you are presented with the entered departments' sub-departments.
 ```
* DBApp2.py
```
  Prompts you with "Product ID?" (Product name) and shows the price after discount for that item. You are then given a question if you want to change that discount (y/n). If you chose yes then you can enter a new discount for that item and the price gets updated and the new price is displayed. 
```