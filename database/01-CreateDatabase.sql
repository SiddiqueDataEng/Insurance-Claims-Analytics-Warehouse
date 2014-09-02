/*
 * Insurance Claims Analytics Warehouse
 * Project #40 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSRS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ClaimsDW')
BEGIN
    ALTER DATABASE ClaimsDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ClaimsDW;
END
GO

CREATE DATABASE ClaimsDW
ON PRIMARY
(
    NAME = 'ClaimsDW_Data',
    FILENAME = 'C:\SQLData\ClaimsDW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ClaimsDW_Log',
    FILENAME = 'C:\SQLData\ClaimsDW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ClaimsDW SET RECOVERY SIMPLE;
ALTER DATABASE ClaimsDW SET AUTO_UPDATE_STATISTICS ON;
GO

USE ClaimsDW;
GO

PRINT 'Database ClaimsDW created successfully';
PRINT 'Project: Insurance Claims Analytics Warehouse';
PRINT 'Description: Claims trend and risk analysis enablement';
GO
