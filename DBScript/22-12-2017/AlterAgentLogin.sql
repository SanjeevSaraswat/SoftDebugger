USE [PackageModule_ERP_SD]
GO
/****** Object:  StoredProcedure [dbo].[FSP_Agentlogin]    Script Date: 23-12-2017 18:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FSP_Agentlogin]
(
@CompnayID VARCHAR(10),
@Email VARCHAR(50),
@Password VARCHAR(50),
@TokenID VARCHAR(100),
@TimeStamp Varchar(50)
)

AS

BEGIN
IF (SELECT COUNT(*) FROM Agent_Master WHERE Email = @Email and Password=@Password and CompanyID=@CompnayID)>0  
  BEGIN
  
		Update Agent_Master set Tokenid=@TokenID,Timestamp=@TimeStamp where Email = @Email and Password=@Password
  
  SELECT 'True' as Status
  
  END
  ELSE  
BEGIN  
Select 'False' as Status
END  

END