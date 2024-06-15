Resources supporting my series on CDC with AWS DMS.

## [cloudformation](cloudformation)

Cloudformation templates and bootstrapping resources to set up a minimal RDS (Aurora PostgreSQL Serverless) instance and a DMS full load with CDC replication to an S3 bucket.
Instructions in the [README](cloudformation/README.md),

## [cdc](cdc)

Complete CSV dataset produced when:

- the cloudformation stack above is used to create and configure an RDS and DMS pipeline.
- a sequence of transactions is executed following the bootstrap.

