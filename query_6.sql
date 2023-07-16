--Q6 Find the names of sailors who have reserved a red and a green boat.

SELECT S.sname
FROM Sailors S, Reserves R1, Boats B1, Reserves R2, Boats B2
WHERE S.sid = R1.sid 
      AND R1.bid = B1.bid
      AND S.sid = R2.sid 
      AND R2.bid = B2.bid
      AND B1.color=‘red’ 
      AND B2.color = ‘green’
      
               -- or 
SELECT S.sname
FROM Sailors S, Reserves R, Boats B
WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = ‘red’
INTERSECT
SELECT S2.sname
FROM Sailors S2, Boats B2, Reserves R2
WHERE S2.sid = R2.sid AND R2.bid = B2.bid AND B2.color = ‘green’

/*Output
SNAME
Dustin
Dustin
Lubber
Lubber
*/
