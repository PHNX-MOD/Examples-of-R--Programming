select country, avg(budget) as avg_budget , avg(gross) as avg_gross
from films 
group by country
having count(title) > 10
order by country
limit 5
