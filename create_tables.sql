CREATE TABLE DEPARTMENT (
	Title varchar(40),
	Description_text varchar(140),
	Link_Dept_Page varchar(140),
	Super_title varchar(40),
	Leaf_dept tinyint,
	PRIMARY KEY (Title),
	FOREIGN KEY (Super_title) REFERENCES DEPARTMENT(Title)
	ON DELETE SET NULL
	ON UPDATE CASCADE);

CREATE TABLE PRODUCT (
	Product_name varchar(40),
	Short_description varchar(140),
	Link_Product_Page varchar(140),
	VAT int,
	Discount decimal(4,2),
	Stock int,
	Retail_price decimal(10,2),
	Department_title varchar(40),
    Featured boolean DEFAULT false,
	CHECK(Discount <= 100 and Discount >= 0),
	CHECK(Stock >= 0),
	PRIMARY KEY (Product_name),
	FOREIGN KEY (Department_title) REFERENCES DEPARTMENT(Title)
	ON DELETE SET NULL
	ON UPDATE CASCADE);

CREATE TABLE KEYWORD (
	Keyword varchar(20),
	Prod_name varchar(40) NOT NULL,
	PRIMARY KEY (Keyword, Prod_name),
	FOREIGN KEY (Prod_name) REFERENCES PRODUCT(Product_name)
	ON DELETE CASCADE
	ON UPDATE CASCADE);

CREATE TABLE USER_REG (
	Person_nr bigint,
	User_name varchar(40) NOT NULL,
	User_password varchar(40) NOT NULL,
	Address varchar(80) NOT NULL,
	Phone int NOT NULL,
	Email varchar(40) NOT NULL,
	Flag_newsletter boolean,
	PRIMARY KEY (Person_nr));

CREATE TABLE REVIEW (
	Review_ID int,
	Rating int,
	Text_content varchar(140),
	Item_name varchar(40) NOT NULL,
	Author_ID bigint,
	CHECK (Rating >= 1 and Rating <= 5),
	PRIMARY KEY (Review_ID),
	FOREIGN KEY (Item_name) REFERENCES PRODUCT(Product_name)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (Author_ID) REFERENCES USER_REG(Person_nr)
	ON DELETE SET NULL
	ON UPDATE CASCADE);

CREATE TABLE ORDER_PLACED (
	Order_ID int,
	Date_placed datetime,
	date_changed datetime NOT NULL,
	Payment_REF int,
	Track_nr int,
	Status varchar(10),
	/*Total_sum could be derived but we chose to do it this way.*/
	Total_sum decimal(11,2),
	Customer bigint,
	CHECK (Total_sum > 0),
	PRIMARY KEY (Order_ID),
	FOREIGN KEY (Customer) REFERENCES USER_REG(Person_nr)
	ON DELETE CASCADE
	ON UPDATE CASCADE);

CREATE TABLE CONTAINS_ORDER (
	Order_placed_ID int,
	Item_name varchar(40),
	Item_checkout_price decimal(10,2),
	Quantity int,
	CHECK (Item_checkout_price > 0),
	CHECK (Quantity > 0),
	PRIMARY KEY (Order_placed_ID, Item_name),
	FOREIGN KEY (Item_name) REFERENCES PRODUCT(Product_name)
	ON DELETE CASCADE
	ON UPDATE CASCADE);
