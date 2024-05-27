SELECT deposit_group,
       is_deposit_expired,
       FLOOR(AVG(deposit_interest)) as deposit_interest
FROM wizard_deposits
WHERE deposit_start_date::DATE > '1985-01-01'
GROUP BY is_deposit_expired, deposit_group
ORDER BY deposit_group DESC,
         is_deposit_expired;