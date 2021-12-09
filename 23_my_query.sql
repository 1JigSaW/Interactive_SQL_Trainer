SELECT
  title,
  AVG(price) AS Средняя_цена,
  COUNT(*) AS Количество_строк,
  MIN(amount) AS Минимальное_количество
FROM
  book
WHERE
  price < 500
GROUP BY
  title
ORDER BY
  title DESC;