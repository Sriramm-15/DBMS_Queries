--Q24 Find those ratings for which the average age of sailors is the minimum over all ratings.

SELECT S.rating
FROM Sailors S
WHERE AVG (S.age) = ( SELECT MIN (AVG (S2.age))
                      FROM Sailors S2 GROUP BY S2.rating )

SELECT S.rating FROM Sailors S WHERE AVG (S.age) = ( SELECT MIN (AVG (S2.age)) FROM Sailors S2 GROUP BY S2.rating )
