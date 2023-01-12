SELECT
    product_name
FROM ORDERS JOIN CUSTOMERS C ON ORDERS.customer_id = C.id