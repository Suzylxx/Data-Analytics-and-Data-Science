# Write your MySQL query statement below
SELECT a.name AS Employee FROM Employee AS a
INNER JOIN Employee AS b ON a.managerID = b.id AND a.salary > b.salary;