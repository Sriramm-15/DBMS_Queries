--Q21 Find the age of the youngest sailor who is eligible to vote (i.e., is at least 18 years old) for each rating level with at least two such sailors.

SELECT S.rating, MIN(S.age) AS minage
FROM Sailors S
WHERE S.age>18
GROUP BY S.rating
HAVING COUNT(*) > 1 

/*Output
RATING  MINAGE
7         35
8         25.5
3         25.5
*/
