SELECT 
    i.total,
    c.firstname,
    c.lastname,
    c.country,
    e.firstname as efname,
    e.lastname as elname   
FROM customer c
JOIN invoice i
    ON c.customerid = i.customerid
JOIN Employee e
    ON c.supportrepid = e.EmployeeId;
