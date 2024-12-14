	

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
