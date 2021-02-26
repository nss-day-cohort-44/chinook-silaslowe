SELECT
    il.invoicelineid,
    t.name as trackname,
    ar.name
FROM invoiceline il
JOIN track t
ON
    il.trackid = t.trackid
JOIN album a     
ON
    t.albumid =  a.albumid
JOIN artist ar
ON
    a.artistid = ar.artistid
ORDER BY ABS(il.invoicelineid);