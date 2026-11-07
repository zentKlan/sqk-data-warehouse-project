/*
==============================================================================
Create Database and Schemas
==============================================================================
Script Purpose: 
    This script creates a new database named DataWarehouse after checking if it already exists. If the database exists, 
    it is dropeed and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'

WARNING:
    Rinning this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    And ensure you have proper backups before running this script. 
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEME bronze;
GO

CREATE SCHEME silver;
GO

CREATE SCHEME gold;
GO


