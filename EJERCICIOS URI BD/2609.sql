SELECT categories.name,sum(amount) "sum"
FROM products
INNER JOIN categories on products.id_categories=categories.id
GROUP BY categories.name;