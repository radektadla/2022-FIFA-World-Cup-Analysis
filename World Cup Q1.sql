/*How have World Cup host countries performed historically?
Did Qatar follow a similar path?*/

#Hosts results
SELECT `Year`, `Host Country`, Winner, `Runners-Up`, Third, Fourth,
CASE 
	WHEN `Host Country` LIKE CONCAT('%', Winner, '%') THEN 'Winner'
	WHEN `Host Country` LIKE CONCAT('%',`Runners-Up`, '%') THEN 'Finalist'
	WHEN `Host Country` LIKE CONCAT('%', Third, '%') 
		OR `Host Country`LIKE CONCAT('%', Fourth, '%') THEN 'Top 4'
	ELSE 'Outside of Top 4'
END AS `Host Result`
FROM world_cups
ORDER BY YEAR desc

#Counting results
SELECT `Host Result`, Count(*) AS Count
FROM (
	SELECT
		CASE 
			WHEN `Host Country` LIKE CONCAT('%', Winner, '%') THEN 'Winner'
			WHEN `Host Country` LIKE CONCAT('%',`Runners-Up`, '%') THEN 'Finalist'
			WHEN `Host Country` LIKE CONCAT('%', Third, '%') 
				OR `Host Country`LIKE CONCAT('%', Fourth, '%') THEN 'Top 4'
			ELSE 'Outside of Top 4'
		END AS `Host Result`
	FROM world_cups
)t
GROUP BY `Host Result` 
ORDER BY count desc

/*Answer: Historically, host nations finished outside of top 4 the most times (9).
They won the tournament 6 times, finished either third or fourth 5 times and were the
runners-ups the least amount of times (2).

Overall, host nations have finished in the top four in 59% of World Cups (13 out of 22).

Qatar finished the tournament outside the top 4, so it can be concluded that their performance
was worse than that of most host nations historically.*/



