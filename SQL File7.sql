select agents.city, agents.country, SUM(agent_transactions.amount) AS transaction_volume
	FROM agents, agent_transactions
	WHERE (agent_transactions.when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP - interval '1 week'))
	AND agent_transactions.when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP)
	GROUP BY city, country;