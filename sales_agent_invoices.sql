SELECT 
    i.invoiceid,
    e.firstname,
    e.lastname    
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN Employee e
    ON c.supportrepid = e.EmployeeId;

