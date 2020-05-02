Select extract(month from when_created )  as "By month", sum(amount) from agent_transactions  
where when_created  < '2019-01-01'
group by extract(month from when_created );