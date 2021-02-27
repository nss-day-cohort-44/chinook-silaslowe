-- Provide a query that shows total sales made by each sales agent.

SELECT 
    '$' || printf("%.2f", SUM(i.total)) as total,
    e.firstname,
    e.lastname    
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN Employee e
    ON c.supportrepid = e.EmployeeId
GROUP BY e.firstname;
    
 