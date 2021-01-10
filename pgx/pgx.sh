#!/bin/bash
set +x

DOCKER_IMAGE=hairyrabbit/pgx:latest
DOCKER_CONTAINER=db
POSTGRES_USER=dba
POSTGRES_DB=mydb
POSTGRES_PASSWORD=root
PORT=5432
PATH_DATA=/path/to/data
PATH_CONFIG=/path/to/postgres.conf

  function usage {
  echo "./$(basename $0) -h --> shows usage"
}

optstring=":vh:"

function main() {
 
  

    while getopts ${optstring} arg; do
        case ${arg} in
            v)
              echo "1.0"
              ;;
            h)
              echo "showing usage!"
              usage
              ;;
            :)
              echo "$0: Must supply an argument to -$OPTARG." >&2
              exit 1
            ;;
            ?)
              echo "Invalid option: -${OPTARG}."
              exit 2
            ;;
        esac
    done
}

while getopts ${optstring} arg; do
        case ${arg} in
            v)
              echo "1.0"
              exit 0
              ;;
            h)
              echo "showing usage!"
              usage
              ;;
            :)
              echo "$0: Must supply an argument to -$OPTARG." >&2
              exit 1
            ;;
            ?)
              echo "Invalid option: -${OPTARG}."
              exit 2
            ;;
        esac
    done