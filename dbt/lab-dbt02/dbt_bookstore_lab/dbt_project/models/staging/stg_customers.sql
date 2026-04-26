-- models/staging/stg_customers.sql
-- Model wybierający dane z tabeli załadowanej przez 'dbt seed'
{{
  config(
    materialized='table' 
  )
}}
select
   *
from {{ ref('customers') }} -- Użycie funkcji ref() do odwołania się do seeda (lub innego modelu)
