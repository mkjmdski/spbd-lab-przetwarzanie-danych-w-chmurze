

SELECT
    customer_id,
    TO_HEX(KEYS.NEW_KEYSET('AEAD_AES_GCM_256')) as encryption_key
FROM `uam-proj`.`bookstore_src`.`ext_customers`

