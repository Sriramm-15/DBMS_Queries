--Q11 Find the sids of sailors who have reserved a red boat.

SELECT R.sid
FROM Reverves R, Boats B
WHERE R.bid=B.bid AND B.color='red'

/*Output
SID
22
22
31
31
64
*/
