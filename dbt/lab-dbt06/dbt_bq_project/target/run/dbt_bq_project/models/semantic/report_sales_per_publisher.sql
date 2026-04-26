
  
    

    create or replace table `uam-proj`.`bookstore_semantic`.`report_sales_per_publisher`
      
    
    

    
    OPTIONS()
    as (
      -- models/semantic/report_sales_per_publisher.sql


SELECT
    p.publisher_name,
    SUM(f.total_item_price) as total_revenue,
    SUM(f.quantity) as total_units_sold,
    COUNT(DISTINCT f.transaction_id) as total_transactions
FROM `uam-proj`.`bookstore_dwh`.`fct_transactions` f
JOIN `uam-proj`.`bookstore_dwh`.`dim_publishers` p ON f.publisher_id = p.publisher_id
GROUP BY 1
ORDER BY total_revenue DESC
    );
  