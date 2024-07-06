CREATE EXTERNAL TABLE northwind_cdc.orders (
    cdc_operation STRING,
    transaction_commit_timestamp STRING,
    order_id STRING,
    customer_id STRING,
    employee_id STRING,
    order_date STRING,
    required_date STRING,
    shipped_date STRING,
    ship_via STRING,
    freight STRING,
    ship_name STRING,
    ship_address STRING,
    ship_city STRING,
    ship_region STRING,
    ship_postal_code STRING,
    ship_country STRING,
    transaction_sequence_number STRING,
    before_order_id string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
LOCATION 's3://your-target-bucket/cdc/public/orders/'
