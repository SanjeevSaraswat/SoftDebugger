
ALTER Procedure [dbo].[FSP_GetPackageDetails]
(
@CompanyID VARCHAR(2),
@PackageCode varchar(10),
@PackageLanguage varchar(5)
)
As

Begin
IF (SELECT COUNT(*) FROM PackageList WHERE PackageCode = @PackageCode and CompanyID=@CompanyID)>0
BEGIN

SELECT PackageCode,PackageName,PackageLanguage,PackageTitle FROM PackageDetails AS BasicPackageDetails  WHERE PackageCode = @PackageCode and CompanyID=@CompanyID AND PackageLanguage=@PackageLanguage

SELECT PackageMarket,PackageSaleMarket,PackageValidityStartDate,PackageValidityEndDate,PackageBookingEndDate,PackageBookingStartDate,PackageDuration,ChildMinAge,ChildMaxAge,PackageLastPaymentDue,PackagePaymentCutOffDay,DiscountonFullPayment FROM PackageCriteria AS BasicPackageCreteria where PackageCode=@PackageCode 
END

END