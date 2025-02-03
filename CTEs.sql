

/* Exercise 1: Recap of Basic CTE Syntax

Scenario:

You have a table named sales:

sale_id (INT)
product_id (INT)
quantity_sold (INT)
sale_amount (DECIMAL)

Write a query using a CTE to calculate the total sales (SUM(sale_amount)) for each product_id. */


WITH total_sales_per_product AS (
    SELECT  
        product_id,
        SUM(sale_amount) as total_sales
    FROM
        sales
    GROUP BY 
        product_id
)

SELECT *
FROM total_sales_per_product


/* Exercise 2: Filtering with a CTE
Scenario:
You have the following tables:

employees:
employee_id (INT)
name (VARCHAR)
department_id (INT)
salary (DECIMAL)

departments:
department_id (INT)
department_name (VARCHAR)

Write a query using a CTE to:

Calculate the average salary for each department.
Find the employees who earn more than their department's average salary.

Display:
name
department_name
salary
average_salary */


WITH DepartmentAverages AS (
    SELECT 
        department_id, 
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT 
    e.name, 
    d.department_name, 
    e.salary, 
    da.average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN DepartmentAverages da ON e.department_id = da.department_id
WHERE e.salary > da.average_salary;
