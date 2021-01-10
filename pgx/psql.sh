POSTGRES_USER=dba
POSTGRES_DB=lyxs
POSTGRES_PASSWORD=901004az.
DOCKER_IMAGE=registry.cn-zhangjiakou.aliyuncs.com/yuffiy-project-docker/pgx:latest
PORT=4111
HOST=47.92.102.243

docker run \
    -it \
    --rm \
    $DOCKER_IMAGE \
    -c postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$HOST:$PORT/$POSTGRES_DB