#!/usr/bin/env bash

# The volume mapping below maps the directory that contains the backup files
# into the /opt/bak directory that will appear in the container.
docker run --name mssql \
    -v $HOME/workspace/db-backups:/opt/bak  \
    -e 'ACCEPT_EULA=Y' \
    -e 'SA_PASSWORD=UpCh@1nMssql' \
    -p 1433:1433 -d mssql-dev


