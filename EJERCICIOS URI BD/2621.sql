SELECT products.name
FROM providers
INNER JOIN products 
ON providers.id = products.id_providers
WHERE products.amount>= 10 
  AND products.amount <= 20 
  AND providers.name LIKE 'P%'