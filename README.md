# DEV SQL DOCKER IMAGE

## Pre-reqs
Have docker hub installed on your machine
Change the docker hub preferences to assign 4GB memory to docker.

## Running

### Running using docker can be completed by performing the following steps:
1. Change directory into the data directory
``` cd data ```

2. Build the docker image.
``` docker build -t dbdev:latest . ```

3. Run the docker container.

``` docker run -e ACCEPT_EULA=Y -e SA_PASSWORD=someThingComplicated1234 -p 1433:1433 dbdev:latest ```

### Running using docker-compose can be completed by performing the following steps:

from the root directory use the following command:

``` docker-compose up --build```

## Techy explanation

