SELECT year, sender, receiver
FROM packages AS p INNER JOIN (
	SELECT id_package, name AS sender 
	FROM packages 
	INNER JOIN users 
	ON id_user_sender = id 
	WHERE address <> 'Taiwan'
) AS sub1
ON sub1.id_package = p.id_package
INNER JOIN (
	SELECT id_package, name AS receiver 
	from packages 
	INNER JOIN users 
	ON id_user_receiver = id 
	WHERE address <> 'Taiwan'
) AS sub2
ON sub2.id_package = p.id_package
WHERE color = 'blue' OR year = 2015
ORDER BY year DESC, sender DESC