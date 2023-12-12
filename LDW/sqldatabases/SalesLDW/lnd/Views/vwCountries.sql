CREATE VIEW lnd.vwCountries
AS
SELECT * FROM 
OPENROWSET 
(
    BULK 'Application_Countries/*.csv',
    DATA_SOURCE = 'MIdlakedevBronze',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    FIRSTROW = 2,
    FIELDTERMINATOR ='|'
)
WITH
(
    CountryID TINYINT 1,
    Country VARCHAR(50) 2,
    IsoCode3 CHAR(3) 4,
    CountryType VARCHAR(50) 6,
    LatestRecordedPopulation INT 7,
    Continent VARCHAR(50) 8,
    Region VARCHAR(50) 9,
    Subregion VARCHAR(50) 10
) AS fct;
GO

