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