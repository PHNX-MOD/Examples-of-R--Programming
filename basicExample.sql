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

--AND OR
SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');

--inclusive
SELECT title
FROM films
WHERE release_year
BETWEEN 1994 AND 2000;

--OR
SELECT name
FROM kids
WHERE age IN (2, 4, 6, 8, 10);

--is null, not null
SELECT name
FROM people
WHERE birthdate IS NOT NULL;

--like where 
SELECT name
FROM people
WHERE name LIKE 'B%';
