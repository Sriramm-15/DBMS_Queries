--Q8 Find the sids of sailors with age over 20 who have not reserved a red boat.

SELECT S.sname
FROM Sailors S, Reserves R, Boats B 
WHERE B.color != 'red' and B.bid = R.bid and S.sid = R.sid and S.sid > 20

/*Output
SNAME
Dustin
Dustin
Lubber
Horatio
Horatio
*/
