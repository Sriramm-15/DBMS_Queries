--Q23 Find the average age of sailors for each rating level that has at least two sailors.

SELECT S.rating, AVG(S.age) AS avgage
FROM Sailors S
GROUP BY S.rating
HAVING COUNT(*) > 1
      (or)
SELECT S.rating, AVG(S.age) AS avgage
FROM Sailors S
GROUP BY S.rating
HAVING 1 < ( SELECT COUNT (*)
             FROM Sailors S2
             WHERE S.rating = S2.rating )

/*Output
RATING  AVG(S.age)
7         40
8         40.5
10        25.5
3         44.5
*/
