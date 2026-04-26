

  create or replace view `uam-proj`.`bookstore_stg`.`stg_transactions`
  OPTIONS()
  as SELECT
    transaction_id,
    customer_id,
    CAST(transaction_date AS DATE) as transaction_date,
    items,
    cash_register,
    cashier
FROM `uam-proj`.`bookstore_src`.`ext_transactions`;

