SELECT 
  name, 
  city, 
  ABS(
    DATEDIFF(date_first, date_last) -1
  ) AS Длительность 
FROM 
  trip 
WHERE 
  city NOT IN (
    'Москва', 'Санкт-Петербург'
  ) 
ORDER BY 
  Длительность DESC, 
  city DESC