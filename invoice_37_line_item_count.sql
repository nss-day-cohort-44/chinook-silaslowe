SELECT
    COUNT(il.invoicelineid) 
FROM InvoiceLine il
JOIN Invoice i
    ON il.invoiceid = i.invoiceid
WHERE i.InvoiceId = 37;

Select COUNT(il.InvoiceId)
From 
 InvoiceLine il, 
 Invoice i 
ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceId = 37