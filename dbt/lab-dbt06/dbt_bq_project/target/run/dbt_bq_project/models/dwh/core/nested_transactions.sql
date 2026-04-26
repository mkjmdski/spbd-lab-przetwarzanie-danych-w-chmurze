
  
    

    create or replace table `uam-proj`.`bookstore_dwh`.`nested_transactions`
      
    
    

    
    OPTIONS()
    as (
      

SELECT * FROM `uam-proj`.`bookstore_int`.`prep_transactions_enriched`
    );
  