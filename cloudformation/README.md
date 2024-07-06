- copy the [CloudFormation template](./rds_dms.yml) into your own bucket
- create a stack based on that template, setting database admin username and password parameters
- when the stack is created, start Query Editor in the `postgres` database and execute the statements in [the prep script](rds_prep_db-sql)
- switch the Query Editor database to `northwind`
  - set Query Editor to run in transaction and stop on first error
  - run the contents of SQL files in [data](data) directory in order (eachfile might take 2-4 minutes to run - the Query Editor isn't great for bulk import)
  
If something goes wrong with the data load, you can start again. The `northwind` database can be dropped by switching Query Editor to the `postgres` schema, running `DROP DATABASE northwind WITH (FORCE)`. Recreate the database, switch back to the `northwind` database and try again.

Contents of [data](data) derived from [pthom/northwind_psql](https://github.com/pthom/northwind_psql), licence information in that repo.
