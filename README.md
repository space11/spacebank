# spacebank 🌌 🏦 
A simple bank implementation in GO 

- Create and manage account
  - Owner, balance, currency
- Record all balance changes
  - Create an account entry for each change
- Money transfer transaction
  - Perform money transfer between 2 accounts consistently within a transaction


## Run development environment
Install locally:
- Docker
- Migration tool: [golang-migrate](https://github.com/golang-migrate/migrate)
- A SQL Compiler: [sqlc](https://github.com/kyleconroy/sqlc)


### Start Postgres database in docker container
`$ make postgres`

### Start Postgres shell
`$ docker exec -it space-bank-db psql`


