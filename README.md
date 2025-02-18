# Nginx Unit ASGI Django Project

This project demonstrates how to reproduce bug when running ASGI Django on Nginx Unit

## Prerequisites

- Docker installed on your machine

## Building and running containers

To run all servers (granian, daphne, uvicorn, unit):

```sh
docker compose up
```

If you want to only run one of the servers:

```sh
docker compose up <service_name>
```

## Running the Test Script

Execute the `test.sh` script:

```sh
./test.sh
```
