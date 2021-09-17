#standardSQL

SELECT subregion1_name as state, sum(cumulative_confirmed) as total_confirmed_cases
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE country_code = 'US'and date = '2020-04-10' and subregion1_name is not null
GROUP BY subregion1_name
HAVING total_confirmed_cases > 1000
order by total_confirmed_cases DESC


