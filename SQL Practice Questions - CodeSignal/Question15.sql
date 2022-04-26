CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT * FROM expressions
	WHERE (operation = '+' AND a + b = c) OR 
          (operation = '-' AND a - b = c) OR 
          (operation = '*' AND a * b = c) OR
          (operation = '/' AND a / b = c);
END