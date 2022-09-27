select amount, count(amount) as 'most_frecuent_value'
from value_table
group by amount;