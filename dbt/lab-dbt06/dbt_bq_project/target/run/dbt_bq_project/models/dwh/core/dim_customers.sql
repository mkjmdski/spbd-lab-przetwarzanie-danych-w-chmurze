
  
    

    create or replace table `uam-proj`.`bookstore_dwh`.`dim_customers`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    customer_id,
    first_name,
    last_name,
    email,
    registration_date
FROM `uam-proj`.`bookstore_stg`.`stg_customers`
    );
  