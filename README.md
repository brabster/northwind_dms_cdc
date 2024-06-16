Resources supporting my series on CDC with AWS DMS.

## CDC Dataset: [cdc](cdc)

Want to get hands on with CDC output? This directory contains the complete CSV dataset produced when I ran the example transactions are run through an instance of the CDC pipeline described by this repository.

## Setup CDC Pipeline: [cloudformation](cloudformation)

Cloudformation templates and bootstrapping resources to set up a minimal RDS (Aurora PostgreSQL Serverless) instance and a DMS full load with CDC replication to an S3 bucket.
Instructions in the [README](cloudformation/README.md).

## Setup Athena Analytics: [athena](athena)

Athena SQL queries to create external table resources over `orders` and `order_details` CDC output.

## Example Transactions: [transactions](transactions)

Example transactions used in the series to illustrate various aspects of CDC behaviour.

