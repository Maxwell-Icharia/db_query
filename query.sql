/* Query 1 */

SELECT 
    `stop_name`
FROM
    `stops`
WHERE
    `stop_name` != 'Ngong'

ORDER BY `stop_name` ASC;

/* Query 2 */

SELECT 
	`frequencies`.`start_time`,
	 `frequencies`.`end_time`,
     (`frequencies`.`headway_secs` / 60) AS `timetotrip(minutes)`,
     `trips`.`trip_headsign`
     
FROM
    `frequencies`, `trips`
    
WHERE
	`frequencies`.`trip_id` = `trips`.`trip_id`

/* Query 3 */

SELECT 
	(`frequencies`.`end_time` - `frequencies`.`start_time`) AS `duration`,
    ((`frequencies`.`end_time` - `frequencies`.`start_time`) * 150) AS `fare`,
    `frequencies`.`start_time`, `frequencies`.`end_time`
FROM
    `frequencies`
    
/* Query 4 */

SELECT 
	`routes`.`route_short_name`,
    `routes`.`route_desc`,
    `trips`.`trip_headsign`     
FROM
    `routes`, `trips`
    
WHERE
	`routes`.`route_id` = `trips`.`route_id`
