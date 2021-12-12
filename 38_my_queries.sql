INSERT INTO supply(title, author, price, amount)
SELECT
  title,
  author, 
  price,
  amount
FROM
  book
WHERE
  price < (
    SELECT 
      AVG(amount)
    FROM
      book
  );