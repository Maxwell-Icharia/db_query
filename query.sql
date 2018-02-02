SELECT 
    `stop_name`
FROM
    `stops`
WHERE
    `stop_name` != 'Ngong'

ORDER BY `stop_name` ASC;


SELECT 
	`frequencies`.`start_time`,
	 `frequencies`.`end_time`
FROM
    `frequencies`

ORDER BY `frequencies`.`start_time` ASC;

SELECT 
	(`frequencies`.`end_time` - `frequencies`.`start_time`) AS `duration`,
    ((`frequencies`.`end_time` - `frequencies`.`start_time`) * 150) AS `fare`,
    `frequencies`.`start_time`, `frequencies`.`end_time`
FROM
    `frequencies`
