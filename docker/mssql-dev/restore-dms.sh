#!/usr/bin/env bash





sqlcmd -U sa -P UpCh@1nMssql  -Q "RESTORE DATABASE DEVELOPERS_TEST42 FROM DISK='/opt/bak/dms.bak' \
    WITH MOVE 'DMS_PROD' TO '/opt/DEVELOPERS_TEST42.mdf', MOVE 'DMS_PROD_log' TO '/opt/DMS_PROD_log.ldf'  "
