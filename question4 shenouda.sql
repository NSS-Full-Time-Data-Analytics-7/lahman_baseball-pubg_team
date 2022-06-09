--Answers Question 4

SELECT SUM(PO) AS putouts, 
	  CASE WHEN pos in ('SS', '1B', '2B', '3B') 
            THEN 'Infield'
	       WHEN pos = 'OF' 
            THEN 'Outfield'
	       WHEN pos in ('P', 'C') 
            THEN 'Battery' 
            END AS positional_family
FROM fielding
WHERE yearid = '2016'
GROUP BY positional_family
