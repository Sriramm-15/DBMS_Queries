--Q2.Find the names of sailors who have reserved a red boat.

SELECT S.sname
FROM Sailors S, Boats B, Reserves R
WHERE B.color='red' AND B.bid=R.bid AND S.sid = R.sid
              -- or nested
SELECT S.sname
FROM Sailors S
WHERE S.sid IN ( SELECT R.sid
                 FROM Reserves R
                 WHERE R.bid IN(SELECT B.bid
                                FROM Boats B
                                WHERE B.color = 'red')
/*Output
SNAME
Dustin
Dustin
Lubber
Lubber
Horatio
*/
