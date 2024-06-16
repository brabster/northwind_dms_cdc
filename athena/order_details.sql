CREATE EXTERNAL TABLE northwind_cdc.order_details (
  cdc_operation string,
  transaction_commit_timestamp string,
  order_id string, 
  product_id string, 
  unit_price string, 
  quantity string, 
  discount string,
  transaction_sequence_number string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
LOCATION 's3://your-target-bucket/cdc/public/order_details'
