

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