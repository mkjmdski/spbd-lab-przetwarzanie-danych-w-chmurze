-- models/dwh/core/dim_authors.sql


WITH base AS (
    SELECT DISTINCT
        author as author_name,
        author_rating
    FROM `uam-proj`.`bookstore_stg`.`stg_books`
)

SELECT
    ABS(FARM_FINGERPRINT(author_name)) as author_id,
    author_name,
    author_rating
FROM base