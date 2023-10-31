SELECT *
  FROM {{ ref("stg_raw__sales") }}
 WHERE EXTRACT(YEAR FROM date) = 2021;