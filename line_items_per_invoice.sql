SELECT COUNT(il.invoicelineid)
FROM 
    InvoiceLine il,
    invoice i
ON 
    il.invoiceid = i.invoiceid
GROUP BY i.invoiceid