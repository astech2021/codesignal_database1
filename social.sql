CREATE PROCEDURE solution()
BEGIN
	SELECT  id, IF(country IS NULL, 'unknown', country) as country
    FROM users u LEFT JOIN cities c ON u.city=c.city
    ORDER BY id;
END
