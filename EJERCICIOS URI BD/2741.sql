SELECT CONCAT('Approved: ',name) AS "name",grade
FROM Students
WHERE grade>=7
ORDER BY grade DESC
