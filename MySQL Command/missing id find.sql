--Missing ID find out,Its not exact,but we will general knowledge for missing id, and then you can easily find it manually from thausand of account

SELECT t1.id + 1 AS MissingID
FROM users t1
LEFT JOIN users t2 ON t1.ID + 1 = t2.id
WHERE t2.id IS NULL
AND t1.id < (SELECT MAX(ID) FROM users);
