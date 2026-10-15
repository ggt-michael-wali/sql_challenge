SELECT account_id, SUM(
  CASE
    when transaction_type = 'Deposit' THEN amount
    when transaction_type = 'Withdrawal' THEN -amount
  END
) FROM transactions GROUP BY account_id;