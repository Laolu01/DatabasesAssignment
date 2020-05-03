select transfers.source_wallet_id, transfers send_amount_scalar from transfers
where send_amount_currency = 'CFA'
and send_amount_scalar > 10000000