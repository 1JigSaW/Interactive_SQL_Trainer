SELECT
  city,
  COUNT(name) AS Количество
FROM 
  trip
GROUP BY
  city
ORDER BY
  Количество DESC
LIMIT 2;