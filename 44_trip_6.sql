SELECT 
  name, 
  city, 
  date_first, 
  date_last 
FROM 
  trip 
WHERE 
  ABS(
    DATEDIFF(date_first, date_last)
  ) <= (
    SELECT 
      MIN(
        ABS(
          DATEDIFF(date_first, date_last)
        )
      ) 
    FROM 
      trip
  );