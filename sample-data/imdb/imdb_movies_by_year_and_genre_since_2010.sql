SELECT
    year,
    count(*) as total,
    SUM(CASE WHEN genre = 'Drama' THEN 1 ELSE 0 END) as Drama,
    SUM(CASE WHEN genre = 'Action' THEN 1 ELSE 0 END) as Action,
    SUM(CASE WHEN genre = 'Comedy' THEN 1 ELSE 0 END) as Comedy,
    SUM(CASE WHEN genre = 'Horror' THEN 1 ELSE 0 END) as Horror,
    SUM(CASE WHEN genre NOT IN ('Drama', 'Action', 'Comedy', 'Horror')  THEN 1 ELSE 0 END) as Other
FROM
    movies
WHERE
    year >= 2010
GROUP BY
    year
;


	
