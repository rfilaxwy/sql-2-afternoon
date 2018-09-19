-- 1.
Select * 
FROM Invoice i
join InvoiceLine il ON il.invoiceId = i.invoiceId
where il.unitprice> .99;
-- 2.
Select i.InvoiceDate, c.firstname, c.lastname, i.total
FROM Invoice i
Join Customer c ON i.customerid= c.customerid
--3.
Select c.firstname, c.lastname, sr.firstname,sr.lastname
FROM customer c
JOIN employee sr
on sr.employeeid = c.supportrepid;
--4.
SELECT a.title, ar.Name
From Album a
JOIN Artist ar on a.artistid =ar.artistid;
--5.
Select pt.TrackId
FROM PlaylistTrack pt
Join Playlist p
ON pt.playlistid= p.playlistid
WHERE p.name = 'Music';
--6.
SELECT t.name
FROM Track t
JOIN PlaylistTrack plt
ON t.Trackid = plt.trackID
WHERE plt.PlaylistId = 5;
--7.
SELECT t.name, pl.name
FROM Track t
JOIN PlaylistTrack p ON t.TrackId= p.trackid
JOIN Playlist pl on p.PlaylistId =pl.playlistid;
--9.
SELECT t.name, a.title
FROM Track t
JOIN Album a ON a.albumid= t.albumid
JOIN Genre g ON t.genreid =g.genreid
Where g.name='Alternative';