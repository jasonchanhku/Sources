select 
  c.NAME, 
  c.PLACE_ID 

from 
  companies c
  
where
  c.PLACE_ID <> 3
  
  or
  
  c.NAME like 'Toyota'

ORDER BY
  
  c.NAME ASC 

;

select
  c.company_id,
  c.name,
  p.city,
  p.country

from
  companies c
  
  INNER JOIN
    places p
  
  ON
    c.place_id = p.place_id
;

SELECT
  b.first_name ||' '|| b.last_name AS "Broker Name",
  b.broker_id

FROM
  brokers b
  ;
  
SELECT
  t.broker_id AS "Broker ID",
  b.first_name ||' '|| b.last_name AS "Broker Name",
  count(t.share_id) AS "Types of Shares",
  sum(t.share_amount) AS "Sum of Shares",
  sum(t.price_total) AS "Price Total"

FROM 
  TRADES t
  
  INNER JOIN
    BROKERS b

  ON 
    t.BROKER_ID = b.BROKER_ID 
    
HAVING
  sum(t.share_amount) > 100000

group by 
  t.broker_id, 
  b.first_name ||' '|| b.last_name

order by
  sum(t.price_total) DESC
;

select* from trades;