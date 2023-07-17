--Q13 Find the ages of sailors whose name begins and ends with B and has at least three characters.

SELECT S.age
FROM Sailors S
WHERE S.sname LIKE' B_%B'

/*Output
AGE
63.5
*/
