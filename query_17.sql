--Q17 Find the sailors with the highest rating.

SELECT S.sid
FROM Sailors S
WHERE S.rating>=ALL(SELECT S2.rating
                    FROM Sailors S2 )
/*Output
SID
58
71
*/
