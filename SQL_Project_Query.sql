SELECT

COUNT(CASE WHEN b.review_count < 1 THEN 'No Reviews' ELSE NULL END) AS '0',
  

COUNT (CASE WHEN b.review_count BETWEEN 1 AND 5 THEN '1-5 Reviews' ELSE NULL END) AS '1-5',

COUNT (CASE WHEN b.review_count BETWEEN 6 AND 45 THEN '6-45 Reviews' ELSE NULL END) AS '6-45',

COUNT (CASE WHEN b.review_count > 46 THEN 'Many Reviews' ELSE NULL END) AS '46+',

CASE 

  WHEN b.review_count = 'None' THEN '0'

  WHEN b.review_count BETWEEN 1 AND 5 THEN '001 to 005'

  WHEN b.review_count BETWEEN 6 AND 45 THEN '006 to 045'

  WHEN b.review_count BETWEEN 46 AND 80 THEN '046 to 080'

  WHEN b.review_count BETWEEN 81 AND 165 THEN '081 to 165'

  WHEN b.review_count > 166 THEN '166 +'

  END AS how_many_reviews,

AVG(b.stars) AS avg_stars,

AVG(b.is_open) AS percent_open,

COUNT(p.caption) AS total_photo_captions

FROM business b

INNER JOIN category c

ON b.id = c.business_id

LEFT JOIN photo p

ON b.id = p.business_id

GROUP BY how_many_reviews

ORDER BY how_many_reviews

ASC