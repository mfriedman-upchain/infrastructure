# How to use this image

## Obtain the mssql bak files

Put them in a suitable directory on the host machine such as
`$HOME/workspace/db-backups`.

## Build 

    docker build -t mssql-dev .
    
## Run

    docker run --name mssql \
        -v $HOME/workspace/db-backups:/opt/bak \
        -e 'ACCEPT_EULA=Y' \
        -e 'SA_PASSWORD=UpCh@1nMssql' \
        -p 1433:1433 -d mssql-dev    
        
In this example `$HOME/workspace/db-backups` is the directory
where the mssql bak files live.

## Get a shell in the running container

    docker exec -it mssql bash

## Run the restore scripts

    ./restore-dms.sh
    ./restore-plm.sh
    ./exec-setup-user.sh
    
    
        