SELECT
  author,
  title,
  (
    SELECT
      title
    FROM
      book
    WHERE title LIKE '_р%'
  ) as Random
FROM
  book
WHERE amount > (
  SELECT
    MIN(amount)
  FROM 
    book
  );