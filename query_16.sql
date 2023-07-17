--Q16 Find sailors whose rating is better than some sailor called Horatio.

SELECT S.sid
FROM Sailors S
WHERE S.rating > ANY ( SELECT S2.rating
                       FROM Sailors S2
                       WHERE S2.sname = 'Horatio')

/*Output
SID
31
32
58
71
74
*/
