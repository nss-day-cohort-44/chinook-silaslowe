SELECT COUNT(invoicedate)
FROM Invoice
WHERE invoicedate LIKE "%2009%" OR invoicedate LIKE "%2011%";