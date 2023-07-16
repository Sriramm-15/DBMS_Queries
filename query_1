Q1 Find the names of sailors who have reserved boat 103.

SELECT S.sname 
FROM Sailors S, Reserves R
WHERE S.sid = R.sid and R.bid=103
-- we recommend the explicit use of range variables and full qualification of all occurrences of columns with a range variable to improve the readability of your queries. We will follow this convention in all our examples.
       -- or nested
SELECT S.sname
FROM Sailors S
WHERE S.sid IN(SELECT R.sid
              FROM Reserves R 
              WHERE R.bid = 103 )
/* output
SNAME
Dustin
Lubber
Horatio
*/
