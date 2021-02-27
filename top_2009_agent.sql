-- Which sales agent made the most in sales in 2009?

SELECT 
    Max(totalSales),
    fullName
FROM(
    SELECT
        e.firstname || " " || e.lastname as fullName,
        "$" || " " || printf("%2f",  SUM(i.total))  as totalSales,
        strftime('%Y', i.invoicedate) as invoiceYear
    FROM
    invoice i,
    employee e,
    customer c

    WHERE
        i.customerid=c.customerid
        AND c.supportrepid=e.employeeid
        And invoiceYear='2009'

    GROUP BY
        fullname,
        invoiceyear
) as sales;


