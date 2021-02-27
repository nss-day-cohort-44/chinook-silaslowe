-- Which sales agent made the most in sales over all?

SELECT 
    Max(totalSales),
    fullName
FROM(
    SELECT
        e.firstname || " " || e.lastname as fullName,
        "$" || " " || printf("%.2f",  SUM(i.total))  as totalSales
    FROM
    invoice i,
    employee e,
    customer c

    WHERE
        i.customerid=c.customerid
        AND c.supportrepid=e.employeeid
    GROUP BY
        fullname
) as sales;