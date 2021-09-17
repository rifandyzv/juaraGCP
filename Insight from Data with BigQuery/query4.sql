SELECT SUM(cumulative_confirmed) as total_confirmed_cases, SUM(cumulative_deceased) as total_deaths, SUM(cumulative_deceased)/SUM(cumulative_confirmed) * 100 as case_fatality_ratio 
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE country_name = 'Italy' AND date between '2020-04-01' AND '2020-04-30'