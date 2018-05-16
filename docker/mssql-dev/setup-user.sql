-- noinspection SqlNoDataSourceInspectionForFile

IF EXISTS
    (SELECT name FROM master.sys.server_principals WHERE name = 'app')
BEGIN
    DROP LOGIN [app]
END

CREATE LOGIN [app] WITH PASSWORD = N'app', CHECK_POLICY=OFF;

USE DEVELOPERS_TEST41

IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'app')
  DROP USER [app]
GO

CREATE USER [app] for LOGIN [app];
ALTER ROLE [db_owner] ADD MEMBER [app];

USE DEVELOPERS_TEST42

IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'app')
  DROP USER [app]
GO

CREATE USER [app] for LOGIN [app];
ALTER ROLE [db_owner] ADD MEMBER [app];

GO

sp_configure "clr enabled", 1
go
reconfigure
go

EXEC sp_configure "show advanced options", 1
go
reconfigure
go

exec sp_configure "clr strict security", 0;
go
reconfigure;
go

use DEVELOPERS_TEST41;
go
exec sp_changedbowner 'sa'
go

use DEVELOPERS_TEST42;
go
exec sp_changedbowner 'sa'
go


