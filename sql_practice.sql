	

/*	Question 13: Finding Employees with Above-Average Salaries in Their Department
You have the following tables:

employees:
id (INT)
name (VARCHAR)
department_id (INT)
salary (DECIMAL)

departments:
department_id (INT)
department_name (VARCHAR)

Write a query to find employees who earn more than the average salary in their department.
Display the name, department_name, and the salary of these employees. */


SELECT
	e.name,
	d.department_name,
	e.salary
FROM
	employees e 
JOIN	
	departments d ON e.department_id = d.department_id
WHERE
	e.salary > AVG(salary)


-- Correct query using CTE

WITH DepartmentAverages AS (
    SELECT 
        department_id, 
        AVG(salary) AS avg_salary 
    FROM employees 
    GROUP BY department_id
)
SELECT 
    e.name, 
    d.department_name, 
    e.salary 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN DepartmentAverages da ON e.department_id = da.department_id
WHERE e.salary > da.avg_salary;



/* Question 14: Customers Who Placed More Than One Order
You have the following tables:

customers:
customer_id (INT)
customer_name (VARCHAR)

orders:
order_id (INT)
customer_id (INT)
order_date (DATE)

Write a query to find customers who have placed more than one order. 
Display the customer_name and the order_count (the number of orders they have placed). */

SELECT 
	c.customer_name,
	COUNT(o.order_id) as order_count
FROM
	customers c 
JOIN orders o ON c.customer_id = o.customer_id
WHERE
	order_count > 0
GROUP BY
	c.customer_name,
	order_count


-- Correct query

SELECT 
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM
    customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;


/* Example 1: Employees with a Minimum Number of Projects

Tables:

employees:
id (INT)
name (VARCHAR)

projects:
project_id (INT)
employee_id (INT)

Question:
Find employees who are working on at least 3 projects. Display the name of the employee and the project_count. */

SELECT 
	e.name,
	COUNT(p.project_id) as project_cound
FROM 
	employees e 
JOIN projects p ON e.id = p.employee_id
GROUP BY e.name
HAVING COUNT(p.project_id) >= 3;



/* Example 2: Customers Who Spent Above the Average

Tables:

customers:
customer_id (INT)
customer_name (VARCHAR)

orders:
order_id (INT)
customer_id (INT)
total_amount (DECIMAL)

Question:
Find customers who have spent more than the average total spending. Display the customer_name and the total_spent. */


SELECT 
    c.customer_name, 
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.total_amount) > (
    SELECT AVG(total_amount) FROM orders
);


/* Example 3: Products with Sales Above a Threshold
Tables:

products:
product_id (INT)
product_name (VARCHAR)
price (DECIMAL)

sales:
sale_id (INT)
product_id (INT)
quantity_sold (INT)

Question:
Find products that have generated more than $10,000 in total sales. Display the product_name and total_sales. */

SELECT
	p.product_name,
	SUM(p.price * s.quantity_sold) as total_sales
FROM
	products p
JOIN 	
	sales s ON p.product_id = s.product_id
GROUP BY
	p.product_name
HAVING
	SUM(p.price * s.quantity_sold) > 10000; 



/* Example 4: Departments with High Average Salaries

Tables:

departments:
department_id (INT)
department_name (VARCHAR)

employees:
id (INT)
name (VARCHAR)
department_id (INT)
salary (DECIMAL) 

Question:
Find departments where the average salary is greater than $70,000. Display the department_name and the average_salary. */

SELECT
	d.department_name,
	AVG(e.salary) as average_salary
FROM
	department d
JOIN 
	employees e ON d.department_id = e.department_id
GROUP BY
	d.department_name
HAVING
	AVG(e.salary) > 70000

	















