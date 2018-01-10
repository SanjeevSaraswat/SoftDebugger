USE [PackageModule_ERP_SD]
GO
/****** Object:  StoredProcedure [dbo].[FSP_SignUpAgentUser]    Script Date: 24-12-2017 16:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[FSP_SignUpAgentUser]
(
@FirstName Varchar(100),
@LastName Varchar(100),
@Email Varchar(200),
@Password Varchar(50),
@CultureCode Varchar(10)='en-US',
@CompanyID VARCHAR(2)
)
AS
BEGIN
Insert into Agent_Master(FirstName,LastName,Email,Password,CompanyID) values(@FirstName,@LastName,@Email,@Password,@CompanyID)
END