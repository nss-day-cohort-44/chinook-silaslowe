SELECT
    a.title as album,
    m.name as media,
    g.name as genre
FROM
    track t
JOIN album a    
ON
    t.albumid = a.albumid
JOIN genre g
ON 
    t.genreid = g.genreid
JOIN mediatype m
ON t.mediatypeid = m.mediatypeid;