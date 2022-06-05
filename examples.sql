select country, avg(budget) as avg_budget , avg(gross) as avg_gross
from films 
group by country
having count(title) > 10
order by country
limit 5

SELECT title, release_year
FROM films
WHERE language  = 'Spanish'
AND release_year < '2000'

SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');
