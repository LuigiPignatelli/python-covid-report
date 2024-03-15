-- CREATE LOGIN ON MASTER
USE [master]
GO

CREATE LOGIN [admin_covid_report]
WITH PASSWORD ='admincovidreport'
	,CHECK_POLICY=OFF
	,CHECK_EXPIRATION=OFF
	,DEFAULT_DATABASE=[CovidReport]
GO

-- CREATE USER ON DB
USE [CovidReport]
GO

CREATE USER [admin_covid_report]
FOR LOGIN [admin_covid_report]
GO

ALTER ROLE [db_datawriter] ADD MEMBER [admin_covid_report]
GO

GRANT
	CREATE PROCEDURE
	,CREATE TABLE
	,INSERT
	,SELECT
	,EXECUTE
	,VIEW DEFINITION
TO [admin_covid_report]

GRANT ALTER ON SCHEMA::dbo TO [admin_covid_report]
GRANT EXECUTE ON SCHEMA::dbo TO [admin_covid_report]
GO

-- GRANT CONNECTION TO SQL
USE [master]
GRANT CONNECT SQL TO [admin_covid_report]
GO
