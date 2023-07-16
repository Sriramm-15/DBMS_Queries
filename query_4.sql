Q4 Find the names of sailors who have reserved at least one boat.

SELECT S.sname
FROM Sailors S, Reserves R
WHERE S.sid = R.sid

/* result
SNAME
Dustin
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Horatio
Horatio
Horatio
*/
