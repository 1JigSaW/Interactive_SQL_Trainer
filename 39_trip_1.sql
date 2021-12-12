SELECT
  name, 
  city,
  per_diem,
  date_first,
  date_last
FROM 
  trip
WHERE
  name LIKE '%_а _%'
ORDER BY
  date_last DESC;