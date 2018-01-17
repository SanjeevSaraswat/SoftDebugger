CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Krish001,@';

CREATE DATABASE SCOPED CREDENTIAL Comapnyadmincredential WITH IDENTITY = 'Sanjeev02Saraswat', SECRET = 'Krish001,@';

CREATE EXTERNAL DATA SOURCE RemoteReferenceData
WITH
(
	TYPE=RDBMS,
	LOCATION='softdebugger.database.windows.net',
	DATABASE_NAME='CompanyAdmin_ERP_SD',
	CREDENTIAL= Comapnyadmincredential
);

CREATE EXTERNAL TABLE Agent_Master( --what we want to call this table locally
    [AgentID] [int]  NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ISAdmin] [bit] NULL,
	[ISActive] [bit] NULL,
	[Password] [varchar](200) NULL,
	[TIMESTAMP] [varchar](100) NULL,
	[CompanyID] [varchar](10) NULL,
	[Tokenid] [varchar](100) NULL
)    
WITH
(
  DATA_SOURCE = CompanyAdmin_ERP_SD,
  SCHEMA_NAME = 'dbo', --schema name of remote table
  OBJECT_NAME = 'Agent_Master' --table name of remote table
);




CREATE EXTERNAL TABLE ApplicAtionMaster( --what we want to call this table locally
   [ApplicationID] [int]  NOT NULL,
	[ApplicationName] [varchar](100) NULL,
	[CompanyID] [varchar](3) NULL
)    
WITH
(
  DATA_SOURCE = CompanyAdmin_ERP_SD,
  SCHEMA_NAME = 'dbo', --schema name of remote table
  OBJECT_NAME = 'ApplicAtionMaster' --table name of remote table
);




CREATE EXTERNAL TABLE PageMaster( --what we want to call this table locally
  [PageID] [int] NOT NULL,
	[ApplicationID] [int] NULL,
	[PageName] [varchar](300) NULL,
	[CompanyID] [varchar](3) NULL
)    
WITH
(
  DATA_SOURCE = CompanyAdmin_ERP_SD,
  SCHEMA_NAME = 'dbo', --schema name of remote table
  OBJECT_NAME = 'PageMaster' --table name of remote table
);




Select * from Agent_Master


