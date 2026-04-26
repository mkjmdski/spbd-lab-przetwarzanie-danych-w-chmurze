
  
    

    create or replace table `uam-proj`.`bookstore_security`.`user_keys`
      
    
    

    
    OPTIONS()
    as (
      

SELECT
    customer_id,
    TO_HEX(KEYS.NEW_KEYSET('AEAD_AES_GCM_256')) as encryption_key
FROM `uam-proj`.`bookstore_src`.`ext_customers`


    );
  