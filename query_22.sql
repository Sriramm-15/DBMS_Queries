--Q22 For each red boat, find the number of reservations for this boat.

SELECT B.bid, COUNT (*) AS sailorcount 
FROM Boats B, Reserves R
WHERE R.bid = B.bid AND B.color = 'red'
GROUP BY B.bid

/*Output
BID COUNT(R.sid)
102   3
104   2
*/
