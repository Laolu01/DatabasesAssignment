SELECT SUM(
			case
			when amount < 0 then
					1
			else
					0
			end
)AS "net_depositors_count",
	SUM(
		case
		when amount > 0 then 
					1
		else
					0
		end
	) AS "net_withdrawers_count"
	from agent_transactions
	where (when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP - interval '1 week'))
	and (when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP));