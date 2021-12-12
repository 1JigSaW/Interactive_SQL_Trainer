SELECT 
  MONTHNAME(date_first) AS Месяц, 
  COUNT(name) AS Количество 
FROM 
  trip 
GROUP BY 
  Месяц 
ORDER BY 
  Количество DESC, 
  Месяц;