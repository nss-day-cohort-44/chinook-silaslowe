SELECT COUNT(i.invoiceid),
    i.billingcountry as country
FROM
    invoice i
GROUP BY i.billingcountry;