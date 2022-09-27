SELECT name, customers_number 
FROM Lawyers
WHERE customers_number = (SELECT MAX(customers_number) FROM Lawyers)
UNION ALL
SELECT name, customers_number 
FROM Lawyers
WHERE customers_number = (SELECT MIN(customers_number) FROM Lawyers)
UNION ALL
SELECT 'Average'as name,cast(avg(customers_number)as int)as customers_number FROM lawyers
