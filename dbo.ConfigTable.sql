USE [CovidReport]

CREATE TABLE [dbo].[Configs](
	[Id] INT IDENTITY(1,1) NOT NULL
	,[RelativeURL] VARCHAR(max) NOT NULL
	,[BasicURL] VARCHAR(max) NOT NULL
	,[FileName] VARCHAR(max) NOT NULL
	,[IsActive] BIT NOT NULL
	,[CreatedAt] DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
)
GO

INSERT INTO [dbo].[Configs](
	[BasicURL]
	,[RelativeURL]
	,[FileName]
	,[IsActive]
)
VALUES
('https://raw.githubusercontent.com', 'cloudboxacademy/covid19/main/ecdc_data/cases_deaths.csv', 'cases_deaths.csv', 1),
('https://raw.githubusercontent.com', 'cloudboxacademy/covid19/main/ecdc_data/hospital_admissions.csv', 'hospital_admissions.csv', 1),
('https://raw.githubusercontent.com', 'cloudboxacademy/covid19/main/ecdc_data/testing.csv', 'testing.csv', 1),
('https://raw.githubusercontent.com', 'cloudboxacademy/covid19/main/ecdc_data/country_response.csv', 'country_response.csv', 1)