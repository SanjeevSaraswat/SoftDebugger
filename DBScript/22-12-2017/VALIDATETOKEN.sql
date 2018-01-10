USE [PackageModule_ERP_SD]
GO
/****** Object:  StoredProcedure [dbo].[ValidateToken]    Script Date: 23-12-2017 19:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[ValidateToken]
(
@CompanyID varchar(2),
@TokenID varchar(100),
@ExpireMinute  int
)
as

BEGIN
--Declare @SESSIONDIFF AS INT;
--SET @SESSIONDIFF=SELECT Email FROM Agent_Master WHERE Tokenid = @TokenID;
IF (SELECT COUNT(*) FROM Agent_Master WHERE Tokenid = @TokenID and CompanyID=@CompanyID)>0--AND(DATEDIFF(MINUTE,@SESSIONDIFF,GETDATE())>@EXPIREMINUTE
BEGIN
Select * from Agent_Master Where Tokenid = @TokenID
END

END