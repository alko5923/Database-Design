-- 1. Set welcome text
SELECT Description_text FROM DEPARTMENT
WHERE Title = 'Home';

-- 2. List of the top level departments with fields needed for the homepage
SELECT Title, Description_text, Link_Dept_Page FROM DEPARTMENT
WHERE Super_title = 'Home';

-- 3. List of the featured products with fields needed for the homepage
SELECT Product_name, Link_Product_Page, Retail_price FROM PRODUCT
WHERE Featured = 1;

-- 4. Given a product, list all keyword-related products
SELECT DISTINCT Prod_name FROM KEYWORD
WHERE Prod_name != 'Tomato' AND Keyword IN (SELECT Keyword FROM KEYWORD
					WHERE Prod_name = 'Tomato');
                    
-- 5. Given an department, list of all its products (title, short description, current retail price) with their
--    average rating
SET @list_all_departments = 'Gaming-essentials';

SELECT Product_name, Short_description, Retail_price, 
		avg(IFNULL(Rating, 0)) AS Avg_rating 
	FROM PRODUCT
LEFT JOIN REVIEW on Product_name = Item_name 
WHERE Department_title = @list_all_departments
GROUP BY Product_name;

-- 6. List of all products on sale sorted by the discount percentage (starting with the biggest discount)
SELECT * FROM PRODUCT
WHERE Discount > 0
ORDER BY Discount DESC;