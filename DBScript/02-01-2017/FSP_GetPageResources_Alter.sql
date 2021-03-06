USE [PkgLocalization]
GO
/****** Object:  StoredProcedure [dbo].[FSP_GetPageResources]    Script Date: 02-01-2018 11:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FSP_GetPageResources]
(
@CompanyID varchar(2),
@ApplicationName varchar(100),
@PageName varchar(100),
@Culture varchar(5)
)

AS
BEGIN
DECLARE @PageID as int
DECLARE @ApplicationID AS INT
SET @ApplicationID=(Select ApplicationID from CompanyAdmin_ERP_SD..ApplicAtionMaster WHERE ApplicationName=@ApplicationName)
SET @PageID=(Select PageID from CompanyAdmin_ERP_SD..PageMaster WHERE PageName=@PageName AND ApplicationID=@ApplicationID)
select ResourceID,ResourceValue FROM Localization WHERE PageID=@PageID AND CompanyID=@CompanyID AND Culture=@Culture

END