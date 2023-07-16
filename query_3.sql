--Q3 Find the colors of boats reserved by Lubber

SELECT B.color
FROM Sailors S, Reserves R, Boats B
WHERE S.sname = 'Lubber' and S.sid = R.sid and R.bid = B.bid;

/*Output
color
red
green
red
*/
