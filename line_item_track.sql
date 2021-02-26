SELECT
    il.invoicelineid,
    t.name
FROM 
    invoiceline il,
    track t
ON
    il.trackid = t.trackid
ORDER BY ABS(il.invoicelineid);
