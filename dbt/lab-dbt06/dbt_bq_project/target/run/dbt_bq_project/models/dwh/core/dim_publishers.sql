
  
    

    create or replace table `uam-proj`.`bookstore_dwh`.`dim_publishers`
      
    
    

    
    OPTIONS()
    as (
      -- models/dwh/core/dim_publishers.sql


WITH base AS (
    SELECT DISTINCT
        publisher as publisher_name
    FROM `uam-proj`.`bookstore_stg`.`stg_books`
)

SELECT
    ABS(FARM_FINGERPRINT(publisher_name)) as publisher_id,
    publisher_name
FROM base
    );
  