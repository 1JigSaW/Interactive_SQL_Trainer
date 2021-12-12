SELECT 
  title, 
  author, 
  amount, 
  (
    (
      SELECT 
        MAX(amount) 
      FROM 
        book
    ) - amount
  ) AS Заказ 
FROM 
  book 
WHERE 
  amount NOT IN (
    SELECT 
      MAX(amount) 
    FROM 
      book
  )