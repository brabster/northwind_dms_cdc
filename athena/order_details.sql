CREATE EXTERNAL TABLE northwind_cdc.order_details (
  cdc_operation STRING,
  transaction_commit_timestamp STRING,
  order_id STRING, 
  product_id STRING, 
  unit_price STRING, 
  quantity STRING, 
  discount STRING,
  transaction_sequence_number STRING,
  before_order_id STRING,
  before_product_id STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
LOCATION 's3://your-target-bucket/cdc/public/order_details/'
