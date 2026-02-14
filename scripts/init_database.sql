-- create database - "DataWarehouse"

/* WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

use master; 

-- verifie if it exists already 
if exists (select 1 from sys.databases where name ='DataWarehouse')
BEGIN 
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
END ; 
GO
-- Create the database
create database DataWarehouse;
GO
use DataWarehouse;
GO
-- Create schemas 
create schema bronze;
Go
create schema silver;
GO
create schema gold;
GO
