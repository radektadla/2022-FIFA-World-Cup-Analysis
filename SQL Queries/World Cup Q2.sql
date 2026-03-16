#Where did Poland finish the 2022 World Cup?

SELECT m.Date, m.Stage, m.`Home Team`, m.`Away Team`, g.`Home Goals`, g.`Away Goals`
FROM wc_2022_matches m
JOIN (
	SELECT '2022-11-22' AS Date, 0 AS `Home Goals`, 0 AS `Away Goals`
	UNION ALL
	SELECT '2022-11-26', 2, 0
	UNION ALL
	SELECT '2022-11-30', 0, 2
	UNION ALL
	SELECT '2022-12-04', 3, 1
)g
ON m.Date=g.Date
WHERE m.`Home Team` = 'Poland' OR m.`Away Team` = 'Poland'

/*Answer: Poland reached the Round of 16, where they lost 1–3 to France.*/
