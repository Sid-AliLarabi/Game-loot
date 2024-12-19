
IF NOT EXISTS (SELECT * FROM sys.database WHERE name = 'UserData')
BEGIN 
    CREATE DATABASE UserData;
END ;

USE loot_system;
GO

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'NewUserName')
BEGIN 
    CREATE USER [NewUserName] FOR LOGIN [NewUserName] ;
    EXEC sp_addrolmember N'db_owner', N'NewUserName' ;
END;

GO


