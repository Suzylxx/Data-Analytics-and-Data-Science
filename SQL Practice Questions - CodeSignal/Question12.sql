CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, name, surname FROM Suspect
	WHERE LOWER(name) NOT LIKE "b%"
	OR LOWER(surname) NOT LIKE "gre_n"
	OR height <= 170
	ORDER BY id;
END