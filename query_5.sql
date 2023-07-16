--Q5 Find the names of sailors who have reserved a red or a green boat.

SELECT S.sname
FROM Sailors S, Reserves R, Boats B 
WHERE S.sid = R.sid AND R.bid = B.bid
      AND (B.color = ‘red’ OR B.color = ‘green’)

                  -- or
SELECT S.sname
FROM Sailors S, Reserves R, Boats B
WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = ‘red’
UNION
SELECT S2.sname
FROM Sailors S2, Boats B2, Reserves R2
WHERE S2.sid = R2.sid AND R2.bid = B2.bid AND B2.color = ‘green’

/*Output
SNAME
Dustin
Dustin
Dustin
Lubber
Lubber
Lubber
Horatio
Horatio
*/
