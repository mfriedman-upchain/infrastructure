#!/usr/bin/env bash



sqlcmd -U sa -P UpCh@1nMssql  -Q "RESTORE DATABASE DEVELOPERS_TEST41 FROM DISK='/opt/bak/plm.bak' \
    WITH MOVE 'WFLY_PLM' TO '/opt/DEVELOPERS_TEST41.mdf', MOVE 'WFLY_PLM_log' TO '/opt/WFLY_PLM_log.ldf'  "


