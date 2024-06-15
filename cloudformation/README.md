- copy the CloudFormation template into your own bucket
- create a stack based on that template, setting database admin username and password parameters
- when the stack is created, start Query Editor in the `postgres` database and execute the statements in [the prep script](rds_prep_db-sql)
- switch the Query Editor database to `northwind` and run the Northwind bootstrap from [this repo (external resource)](https://github.com/pthom/northwind_psql/blob/master/northwind.sql)
  - leave Query Editor running a transaction per statement to avoid a very long running transaction

    
