SELECT 
  title, 
  author, 
  price, 
  amount, 
  price * amount AS total 
FROM 
  book 
WHERE 
  (
    amount BETWEEN 5 
    AND 10
  ) 
  AND (
    author LIKE '%А%' 
    OR title LIKE '_% _%'
  ) 
ORDER BY 
  total;