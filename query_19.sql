--Q19 Find the name and age of the oldest sailor.

SELECT S.sname, S.age
FROM Sailors S
WHERE S.age=(SELECT MAX(S2.age)
             FROM Sailors S2 )
--because of the use of the aggregate operation, the subquery is guaranteed to return a single tuple with a single field, and SQL converts such a relation to a field value for the sake of the comparison.
    (or)
SELECT S.sname, S.age
FROM Sailor S
where S.age >= ALL(SELECT S2.age 
                   FROM Sailors S2)

/*Output
SNAME  AGE
Bob   63.5
*/
