# pgx

PostgreSQL

- [postgreSQL 13.1](postgres)
- [pgxn](pgxn)
- pgTap
- plv8 (TODO)

## Usage

basic usage:

```sh
docker run --name db -e POSTGRES_USER=root -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=root -p 5432:5432 -d hairyrabbit/pgx:latest
```

advance options:

```sh
DOCKER_IMAGE=hairyrabbit/pgx:latest
DOCKER_CONTAINER=db
POSTGRES_USER=dba
POSTGRES_DB=mydb
POSTGRES_PASSWORD=root
PORT=5432
PATH_DATA=/path/to/data
PATH_CONFIG=/path/to/postgres.conf

docker run \
    --name $DOCKER_CONTAINER \
    --restart unless-stopped \
    -e POSTGRES_USER=$POSTGRES_USER \
    -e POSTGRES_DB=$POSTGRES_DB \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -e LANG_SETUP=$LANG_SETUP \
    -v $PATH_DATA:/var/lib/postgresql/data \
    -v $PATH_CONFIG:/etc/postgresql/postgresql.conf \
    -p $PORT:5432 \
    -d $DOCKER_IMAGE
```

use psql

```sh
docker run -it --rm --net=host hairyrabbit/pgx psql -h localhost -U root -d mydb
```

[postgres]:(https://hub.docker.com/_/postgres/)
[pgxn]:(https://pgxn.org)