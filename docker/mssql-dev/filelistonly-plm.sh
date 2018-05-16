#!/usr/bin/env bash

sqlcmd -U sa -P UpCh@1nMssql -Q "RESTORE FILELISTONLY FROM DISK='/opt/bak/plm.bak' "
