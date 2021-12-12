SELECT 
  name, 
  SUM(
    ABS(
      DATEDIFF(date_first, date_last) -1
    ) * per_diem
  ) AS Сумма 
FROM 
  trip 
GROUP BY 
  name 
HAVING 
  COUNT(name) > 3 
ORDER BY 
  Сумма DESC;