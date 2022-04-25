CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, name, surname FROM Suspect
	WHERE LOWER(name) LIKE "b%" 
	AND LOWER(surname) LIKE "gre_n"
	AND height <= 170
	ORDER BY ID ASC;
END