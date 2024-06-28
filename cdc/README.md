Copy the contents of the CDC directory to S3

Using AWS CLI in a Cloud Shell session.

```console
$ git clone https://github.com/brabster/northwind_dms_cdc.git
Cloning into 'northwind_dms_cdc'...
remote: Enumerating objects: 215, done.
remote: Counting objects: 100% (215/215), done.
remote: Compressing objects: 100% (189/189), done.
remote: Total 215 (delta 89), reused 53 (delta 5), pack-reused 0
Receiving objects: 100% (215/215), 163.36 KiB | 9.08 MiB/s, done.
Resolving deltas: 100% (89/89), done.
$ cd northwind_dms_cdc
$ aws s3 cp --recursive cdc/ s3://my-bucket/cdc/
upload: cdc/public/customers/LOAD00000001.csv to s3://my-bucket/cdc/public/customers/LOAD00000001.csv
upload: cdc/public/employee_territories/LOAD00000001.csv to s3://my-bucket/cdc/public/employee_territories/LOAD00000001.csv
upload: cdc/public/categories/LOAD00000001.csv to s3://my-bucket/cdc/public/categories/LOAD00000001.csv
upload: cdc/public/order_details/20240612-103127367.csv to s3://my-bucket/cdc/public/order_details/20240612-103127367.csv
upload: cdc/public/employee_territories/LOAD00000001.csv to s3://my-bucket/cdc/public/employee_territories/LOAD00000001.csv
upload: cdc/public/categories/LOAD00000001.csv to s3://my-bucket/cdc/public/categories/LOAD00000001.csv
upload: cdc/public/order_details/20240612-103127367.csv to s3://my-bucket/cdc/public/order_details/20240612-103127367.csv
```
