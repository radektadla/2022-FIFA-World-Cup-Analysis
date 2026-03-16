/*What is the average number of goals scored in a World Cup?
Was the number of goals in the Qatar World Cup higher or lower than the average?
Historically, which World Cup had the highest number of goals?*/

SELECT 
ROUND(AVG(`Goals Scored`), 2) AS `Average Wc Goals`
,(SELECT `Goals Scored` FROM world_cups WHERE `Host Country`='Qatar') AS `Qatar WC Goals`
,(SELECT  `Year` FROM world_cups WHERE `Goals Scored` = (SELECT MAX(`Goals Scored`) FROM world_cups)) AS `WC year with most goals`
FROM world_cups

/*Answer: The average number of goals scored in a World Cup is 123.64.
Qatar World Cup had more goals than the average, and is also the tournament 
with the highest number of goals in World Cup history – 172.*/
