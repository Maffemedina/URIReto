SELECT customers.name,orders.id
FROM customers
INNER JOIN orders 
ON customers.id = orders.id_customers
WHERE orders.orders_date>='2016-01-01' 
  AND orders.orders_date <= '2016-06-30'