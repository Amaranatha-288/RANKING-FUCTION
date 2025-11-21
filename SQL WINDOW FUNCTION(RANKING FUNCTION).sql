-- WINDOW FUCTION (RANKING FUCTION)
SELECT
  unit_price,
  ROW_NUMBER() OVER(PARTITION BY category ORDER BY unit_price) AS 'row_number',
  RANK() OVER (ORDER BY unit_price) AS 'rank',
  DENSE_RANK () OVER (ORDER BY unit_price) AS 'dense_rank'
FROM
    dim_product;