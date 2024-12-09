	

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