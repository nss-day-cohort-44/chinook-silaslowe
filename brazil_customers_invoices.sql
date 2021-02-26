SELECT
    c.FirstName,
    c.LastName,
    i.invoiceid,
    i.invoicedate,
    i.billingcountry
From Customer c
JOIN Invoice i
    ON c.customerid = i.CustomerId
WHERE c.country = "Brazil";