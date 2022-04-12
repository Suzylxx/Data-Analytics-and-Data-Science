CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT a.name FROM (
		SELECT name, price * quantity as total FROM Products
		ORDER BY total DESC, name ASC
		LIMIT 1
	) AS a;
END