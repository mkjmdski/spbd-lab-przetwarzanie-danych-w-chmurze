-- models/semantic/report_top_10_authors.sql


SELECT
    a.author_name,
    SUM(f.total_item_price) as total_revenue,
    SUM(f.quantity) as total_units_sold,
    COUNT(DISTINCT f.transaction_id) as total_transactions
FROM `uam-proj`.`bookstore_dwh`.`fct_transactions` f
JOIN `uam-proj`.`bookstore_dwh`.`dim_authors` a ON f.author_id = a.author_id
GROUP BY 1
ORDER BY total_revenue DESC
LIMIT 10