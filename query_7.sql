--Q7 Find the names of sailors who have reserved at least two boats.

SELECT S.sname
FROM Sailors S, Reserves R, Sailors S2, Reserves R2
WHERE S.sid = R.sid 
  and S2.sid = R2.sid 
  and S.sid = S2.sid 
  and R.bid != R2.bid

/*Output
SNAME
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Lubber
Lubber
Lubber
Horatio
Horatio
*/
