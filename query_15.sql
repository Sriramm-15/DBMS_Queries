--Q15 Find all sids of sailors who have a rating of 10 or have reserved boat 104.

SELECT S.sid
FROM Sailors S 
WHERE S.rating = 10
UNION
SELECT R.sid
FROM Reserves R 
WHERE R.bid = 104

/*Output
sid
58
71
22
31
*/
