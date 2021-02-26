SELECT
    c.FirstName,
    c.LastName,
    c.customerid,
    c.country
FROM Customer c
WHERE NOT c.country = "USA"