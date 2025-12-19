***QUERY 1***

SELECT o.staff_id , s.first_name AS 'employee_first_name', s.last_name AS 'employee_last_name', s.active, o.store_id, COUNT(*) AS num_of_sales
FROM orders o 
	JOIN staffs s 
		ON o.staff_id = s.staff_id 
GROUP BY o.staff_id 
ORDER BY num_of_sales DESC;


*** QUERY 2***

SELECT o.store_id , ROUND(SUM((oi.list_price - (oi.list_price * oi.discount)) * oi.quantity), 2) AS total_sales
FROM orders o 
	JOIN order_items oi 
		ON o.order_id = oi.order_id 
GROUP BY o.store_id 
ORDER BY total_sales DESC;


***QUERY 3***

SELECT b.brand_name, c.category_name , COUNT(*) AS num_of_products
FROM products p 
	JOIN brands b 
		ON p.brand_id = b.brand_id 
	JOIN categories c 
		ON p.category_id = c.category_id 
GROUP BY b.brand_name  
ORDER BY num_of_products DESC; 

SELECT b.brand_name, c.category_name , COUNT(*) AS num_of_products
FROM products p 
	JOIN brands b 
		ON p.brand_id = b.brand_id 
	JOIN categories c 
		ON p.category_id = c.category_id 
GROUP BY b.brand_name, c.category_name  
ORDER BY num_of_products DESC, c.category_name DESC;


***QUERY 4***

SELECT b.brand_name , ROUND(AVG(p.list_price), 2) AS avg_price, MIN(p.list_price) AS min_price, MAX(p.list_price) AS max_price
FROM products p 
	JOIN brands b 
		ON p.brand_id = b.brand_id 
WHERE p.product_name LIKE "%Trek%";


***QUERY 5***

SELECT c.first_name , c.last_name , ROUND(SUM((oi.list_price - (oi.list_price * oi.discount)) * oi.quantity), 2) AS total_sales
FROM orders o 
	JOIN order_items oi 
		ON o.order_id =	oi.order_id 
	JOIN customers c 
		ON o.customer_id = c.customer_id 
GROUP BY c.first_name  
ORDER BY total_sales DESC
LIMIT 5;