/* QUERY TO BE OPTIMIZED: */

EXPLAIN SELECT Product_name, Link_Product_Page, Retail_price FROM PRODUCT
WHERE Featured = 1;

/* RESULT OF EXPLAIN BEFORE INDEXES */

# id	select_type	table	type	possible_keys	key	key_len	ref	rows	Extra
  1		SIMPLE		PRODUCT	ALL										12		Using where


/* CREATE INDEXES */

CREATE INDEX featured_idx
ON PRODUCT(Featured); */

/* RESULT OF EXPLAIN AFTER INDEXES */

# id	select_type 	table	type	possible_keys	key	         key_len	ref  	rows	Extra
  1		SIMPLE		   PRODUCT	ref		featured_idx	featured_idx	2	   const	 5	
