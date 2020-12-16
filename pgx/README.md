# pgx

PostgreSQL

- postgreSQL 13
- pgxn
- pgTap
- plv8 (TODO)

[dockerhub postgres](https://hub.docker.com/_/postgres/)
[pgxn homepage](https://pgxn.org)

## Usage

run container 

```sh
docker run --name db -e POSTGRES_USER=root -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=root -p 5432:5432 -d hairyrabbit/pgx
```

use psql

```sh
docker run -it --rm --net=host hairyrabbit/pgx psql -h localhost -U root -d mydb
```

