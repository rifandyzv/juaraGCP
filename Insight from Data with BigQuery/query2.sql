#standardSQL

SELECT COUNT(*)
from (
SELECT subregion1_name
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE country_code = 'US' AND subregion1_name is not null AND date = '2020-04-10'
GROUP BY subregion1_name 
HAVING sum(cumulative_deceased) > 100)