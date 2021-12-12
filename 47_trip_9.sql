SELECT 
  name, 
  city, 
  date_first, 
  (
    ABS(
      DATEDIFF(date_first, date_last) -1
    ) * per_diem
  ) AS Сумма 
FROM 
  trip 
WHERE 
  (
    MONTH(date_first) = 2 
    OR MONTH(date_first) = 3
  ) 
  AND YEAR(date_first) = 2020 
ORDER BY 
  name, 
  Сумма DESC;