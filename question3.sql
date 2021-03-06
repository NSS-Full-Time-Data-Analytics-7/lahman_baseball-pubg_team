-- Question 3

SELECT SUM(SA.SALARY) AS DOUGH,
	S.SCHOOLNAME,
	P.NAMEFIRST,
	P.NAMELAST
FROM SCHOOLS S
INNER JOIN COLLEGEPLAYING C ON S.SCHOOLID = C.SCHOOLID
INNER JOIN PEOPLE P ON P.PLAYERID = C.PLAYERID
INNER JOIN SALARIES SA ON P.PLAYERID = SA.PLAYERID
WHERE LOWER(S.SCHOOLNAME) LIKE '%vanderbilt%'
GROUP BY NAMEFIRST,
	NAMELAST,
	S.SCHOOLNAME
ORDER BY DOUGH DESC