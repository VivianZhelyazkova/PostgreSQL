CREATE VIEW view_wizard_deposits_with_expiration_date_before_1983_08_17 AS
SELECT concat(first_name, ' ', last_name) as wizard_name,
       deposit_start_date                 as start_date,
       deposit_expiration_date            as expiration_date,
       deposit_amount                     as amount
FROM wizard_deposits
WHERE deposit_expiration_date :: DATE <= '1983-08-17'
GROUP BY wizard_name, start_date, expiration_date, amount
ORDER BY expiration_date;
